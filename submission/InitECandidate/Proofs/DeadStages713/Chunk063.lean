import InitECandidate.Proofs.DeadStages713.Chunk062
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input16128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16127 input5110)).val
theorem input16128_def : input16128 = (.seq input16127 input5110) := by
  unfold input16128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16127 output5110)).val
theorem output16128_def : output16128 = (.seq output16127 output5110) := by
  unfold output16128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16128_skip : Flapjack.WordAlloc.isSkip output16128 = false := by
  rw [output16128_def]
  conv => lhs; cbv
  try rfl
theorem node16128_eq : Flapjack.WordAlloc.removeDeadStructural input16128 value5 value1 value2 = (output16128, value6896, value1) := by
  rw [input16128_def, output16128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5110_eq]
  try dsimp only
  rw [node16127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16128 input5107)).val
theorem input16129_def : input16129 = (.seq input16128 input5107) := by
  unfold input16129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16128 output5107)).val
theorem output16129_def : output16129 = (.seq output16128 output5107) := by
  unfold output16129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16129_skip : Flapjack.WordAlloc.isSkip output16129 = false := by
  rw [output16129_def]
  conv => lhs; cbv
  try rfl
theorem node16129_eq : Flapjack.WordAlloc.removeDeadStructural input16129 value2552 value1 value2 = (output16129, value6896, value1) := by
  rw [input16129_def, output16129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5107_eq]
  try dsimp only
  rw [node16128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16129 input5096)).val
theorem input16130_def : input16130 = (.seq input16129 input5096) := by
  unfold input16130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16129)).val
theorem output16130_def : output16130 = (output16129) := by
  unfold output16130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16130_skip : Flapjack.WordAlloc.isSkip output16130 = false := by
  rw [output16130_def]
  conv => lhs; cbv
  try rfl
theorem node16130_eq : Flapjack.WordAlloc.removeDeadStructural input16130 value2552 value1 value2 = (output16130, value6896, value1) := by
  rw [input16130_def, output16130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5096_eq]
  try dsimp only
  rw [node16129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16130 input5095)).val
theorem input16131_def : input16131 = (.seq input16130 input5095) := by
  unfold input16131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16130 output5095)).val
theorem output16131_def : output16131 = (.seq output16130 output5095) := by
  unfold output16131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16131_skip : Flapjack.WordAlloc.isSkip output16131 = false := by
  rw [output16131_def]
  conv => lhs; cbv
  try rfl
theorem node16131_eq : Flapjack.WordAlloc.removeDeadStructural input16131 value2551 value1 value2 = (output16131, value6896, value1) := by
  rw [input16131_def, output16131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5095_eq]
  try dsimp only
  rw [node16130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16131 input5094)).val
theorem input16132_def : input16132 = (.seq input16131 input5094) := by
  unfold input16132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16131 output5094)).val
theorem output16132_def : output16132 = (.seq output16131 output5094) := by
  unfold output16132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16132_skip : Flapjack.WordAlloc.isSkip output16132 = false := by
  rw [output16132_def]
  conv => lhs; cbv
  try rfl
theorem node16132_eq : Flapjack.WordAlloc.removeDeadStructural input16132 value5 value1 value2 = (output16132, value6896, value1) := by
  rw [input16132_def, output16132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5094_eq]
  try dsimp only
  rw [node16131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16132 input5091)).val
theorem input16133_def : input16133 = (.seq input16132 input5091) := by
  unfold input16133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16132 output5091)).val
theorem output16133_def : output16133 = (.seq output16132 output5091) := by
  unfold output16133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16133_skip : Flapjack.WordAlloc.isSkip output16133 = false := by
  rw [output16133_def]
  conv => lhs; cbv
  try rfl
theorem node16133_eq : Flapjack.WordAlloc.removeDeadStructural input16133 value2544 value1 value2 = (output16133, value6896, value1) := by
  rw [input16133_def, output16133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5091_eq]
  try dsimp only
  rw [node16132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16133 input5080)).val
theorem input16134_def : input16134 = (.seq input16133 input5080) := by
  unfold input16134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16133)).val
theorem output16134_def : output16134 = (output16133) := by
  unfold output16134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16134_skip : Flapjack.WordAlloc.isSkip output16134 = false := by
  rw [output16134_def]
  conv => lhs; cbv
  try rfl
theorem node16134_eq : Flapjack.WordAlloc.removeDeadStructural input16134 value2544 value1 value2 = (output16134, value6896, value1) := by
  rw [input16134_def, output16134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5080_eq]
  try dsimp only
  rw [node16133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16134 input5079)).val
theorem input16135_def : input16135 = (.seq input16134 input5079) := by
  unfold input16135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16134 output5079)).val
theorem output16135_def : output16135 = (.seq output16134 output5079) := by
  unfold output16135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16135_skip : Flapjack.WordAlloc.isSkip output16135 = false := by
  rw [output16135_def]
  conv => lhs; cbv
  try rfl
theorem node16135_eq : Flapjack.WordAlloc.removeDeadStructural input16135 value2543 value1 value2 = (output16135, value6896, value1) := by
  rw [input16135_def, output16135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5079_eq]
  try dsimp only
  rw [node16134_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16135 input5078)).val
theorem input16136_def : input16136 = (.seq input16135 input5078) := by
  unfold input16136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16135 output5078)).val
theorem output16136_def : output16136 = (.seq output16135 output5078) := by
  unfold output16136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16136_skip : Flapjack.WordAlloc.isSkip output16136 = false := by
  rw [output16136_def]
  conv => lhs; cbv
  try rfl
theorem node16136_eq : Flapjack.WordAlloc.removeDeadStructural input16136 value5 value1 value2 = (output16136, value6896, value1) := by
  rw [input16136_def, output16136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5078_eq]
  try dsimp only
  rw [node16135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16136 input5075)).val
theorem input16137_def : input16137 = (.seq input16136 input5075) := by
  unfold input16137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16136 output5075)).val
theorem output16137_def : output16137 = (.seq output16136 output5075) := by
  unfold output16137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16137_skip : Flapjack.WordAlloc.isSkip output16137 = false := by
  rw [output16137_def]
  conv => lhs; cbv
  try rfl
theorem node16137_eq : Flapjack.WordAlloc.removeDeadStructural input16137 value2536 value1 value2 = (output16137, value6896, value1) := by
  rw [input16137_def, output16137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5075_eq]
  try dsimp only
  rw [node16136_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16137 input5064)).val
theorem input16138_def : input16138 = (.seq input16137 input5064) := by
  unfold input16138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16137)).val
theorem output16138_def : output16138 = (output16137) := by
  unfold output16138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16138_skip : Flapjack.WordAlloc.isSkip output16138 = false := by
  rw [output16138_def]
  conv => lhs; cbv
  try rfl
theorem node16138_eq : Flapjack.WordAlloc.removeDeadStructural input16138 value2536 value1 value2 = (output16138, value6896, value1) := by
  rw [input16138_def, output16138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5064_eq]
  try dsimp only
  rw [node16137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16138 input5063)).val
theorem input16139_def : input16139 = (.seq input16138 input5063) := by
  unfold input16139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16138 output5063)).val
theorem output16139_def : output16139 = (.seq output16138 output5063) := by
  unfold output16139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16139_skip : Flapjack.WordAlloc.isSkip output16139 = false := by
  rw [output16139_def]
  conv => lhs; cbv
  try rfl
theorem node16139_eq : Flapjack.WordAlloc.removeDeadStructural input16139 value2535 value1 value2 = (output16139, value6896, value1) := by
  rw [input16139_def, output16139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5063_eq]
  try dsimp only
  rw [node16138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16139 input5062)).val
theorem input16140_def : input16140 = (.seq input16139 input5062) := by
  unfold input16140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16139 output5062)).val
theorem output16140_def : output16140 = (.seq output16139 output5062) := by
  unfold output16140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16140_skip : Flapjack.WordAlloc.isSkip output16140 = false := by
  rw [output16140_def]
  conv => lhs; cbv
  try rfl
theorem node16140_eq : Flapjack.WordAlloc.removeDeadStructural input16140 value5 value1 value2 = (output16140, value6896, value1) := by
  rw [input16140_def, output16140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5062_eq]
  try dsimp only
  rw [node16139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16140 input5059)).val
theorem input16141_def : input16141 = (.seq input16140 input5059) := by
  unfold input16141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16140 output5059)).val
theorem output16141_def : output16141 = (.seq output16140 output5059) := by
  unfold output16141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16141_skip : Flapjack.WordAlloc.isSkip output16141 = false := by
  rw [output16141_def]
  conv => lhs; cbv
  try rfl
theorem node16141_eq : Flapjack.WordAlloc.removeDeadStructural input16141 value2528 value1 value2 = (output16141, value6896, value1) := by
  rw [input16141_def, output16141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5059_eq]
  try dsimp only
  rw [node16140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16141 input5048)).val
theorem input16142_def : input16142 = (.seq input16141 input5048) := by
  unfold input16142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16141)).val
theorem output16142_def : output16142 = (output16141) := by
  unfold output16142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16142_skip : Flapjack.WordAlloc.isSkip output16142 = false := by
  rw [output16142_def]
  conv => lhs; cbv
  try rfl
theorem node16142_eq : Flapjack.WordAlloc.removeDeadStructural input16142 value2528 value1 value2 = (output16142, value6896, value1) := by
  rw [input16142_def, output16142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5048_eq]
  try dsimp only
  rw [node16141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16142 input5047)).val
theorem input16143_def : input16143 = (.seq input16142 input5047) := by
  unfold input16143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16142 output5047)).val
theorem output16143_def : output16143 = (.seq output16142 output5047) := by
  unfold output16143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16143_skip : Flapjack.WordAlloc.isSkip output16143 = false := by
  rw [output16143_def]
  conv => lhs; cbv
  try rfl
theorem node16143_eq : Flapjack.WordAlloc.removeDeadStructural input16143 value2527 value1 value2 = (output16143, value6896, value1) := by
  rw [input16143_def, output16143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5047_eq]
  try dsimp only
  rw [node16142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16143 input5046)).val
theorem input16144_def : input16144 = (.seq input16143 input5046) := by
  unfold input16144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16143 output5046)).val
theorem output16144_def : output16144 = (.seq output16143 output5046) := by
  unfold output16144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16144_skip : Flapjack.WordAlloc.isSkip output16144 = false := by
  rw [output16144_def]
  conv => lhs; cbv
  try rfl
theorem node16144_eq : Flapjack.WordAlloc.removeDeadStructural input16144 value5 value1 value2 = (output16144, value6896, value1) := by
  rw [input16144_def, output16144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5046_eq]
  try dsimp only
  rw [node16143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16144 input5043)).val
theorem input16145_def : input16145 = (.seq input16144 input5043) := by
  unfold input16145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16144 output5043)).val
theorem output16145_def : output16145 = (.seq output16144 output5043) := by
  unfold output16145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16145_skip : Flapjack.WordAlloc.isSkip output16145 = false := by
  rw [output16145_def]
  conv => lhs; cbv
  try rfl
theorem node16145_eq : Flapjack.WordAlloc.removeDeadStructural input16145 value2520 value1 value2 = (output16145, value6896, value1) := by
  rw [input16145_def, output16145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5043_eq]
  try dsimp only
  rw [node16144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16145 input5032)).val
theorem input16146_def : input16146 = (.seq input16145 input5032) := by
  unfold input16146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16145)).val
theorem output16146_def : output16146 = (output16145) := by
  unfold output16146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16146_skip : Flapjack.WordAlloc.isSkip output16146 = false := by
  rw [output16146_def]
  conv => lhs; cbv
  try rfl
theorem node16146_eq : Flapjack.WordAlloc.removeDeadStructural input16146 value2520 value1 value2 = (output16146, value6896, value1) := by
  rw [input16146_def, output16146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5032_eq]
  try dsimp only
  rw [node16145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16146 input5031)).val
theorem input16147_def : input16147 = (.seq input16146 input5031) := by
  unfold input16147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16146 output5031)).val
theorem output16147_def : output16147 = (.seq output16146 output5031) := by
  unfold output16147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16147_skip : Flapjack.WordAlloc.isSkip output16147 = false := by
  rw [output16147_def]
  conv => lhs; cbv
  try rfl
theorem node16147_eq : Flapjack.WordAlloc.removeDeadStructural input16147 value2519 value1 value2 = (output16147, value6896, value1) := by
  rw [input16147_def, output16147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5031_eq]
  try dsimp only
  rw [node16146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16147 input5030)).val
theorem input16148_def : input16148 = (.seq input16147 input5030) := by
  unfold input16148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16147 output5030)).val
theorem output16148_def : output16148 = (.seq output16147 output5030) := by
  unfold output16148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16148_skip : Flapjack.WordAlloc.isSkip output16148 = false := by
  rw [output16148_def]
  conv => lhs; cbv
  try rfl
theorem node16148_eq : Flapjack.WordAlloc.removeDeadStructural input16148 value5 value1 value2 = (output16148, value6896, value1) := by
  rw [input16148_def, output16148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5030_eq]
  try dsimp only
  rw [node16147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16148 input5027)).val
theorem input16149_def : input16149 = (.seq input16148 input5027) := by
  unfold input16149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16148 output5027)).val
theorem output16149_def : output16149 = (.seq output16148 output5027) := by
  unfold output16149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16149_skip : Flapjack.WordAlloc.isSkip output16149 = false := by
  rw [output16149_def]
  conv => lhs; cbv
  try rfl
theorem node16149_eq : Flapjack.WordAlloc.removeDeadStructural input16149 value2512 value1 value2 = (output16149, value6896, value1) := by
  rw [input16149_def, output16149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5027_eq]
  try dsimp only
  rw [node16148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16149 input5016)).val
theorem input16150_def : input16150 = (.seq input16149 input5016) := by
  unfold input16150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16149)).val
theorem output16150_def : output16150 = (output16149) := by
  unfold output16150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16150_skip : Flapjack.WordAlloc.isSkip output16150 = false := by
  rw [output16150_def]
  conv => lhs; cbv
  try rfl
theorem node16150_eq : Flapjack.WordAlloc.removeDeadStructural input16150 value2512 value1 value2 = (output16150, value6896, value1) := by
  rw [input16150_def, output16150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5016_eq]
  try dsimp only
  rw [node16149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16150 input5015)).val
theorem input16151_def : input16151 = (.seq input16150 input5015) := by
  unfold input16151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16150 output5015)).val
theorem output16151_def : output16151 = (.seq output16150 output5015) := by
  unfold output16151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16151_skip : Flapjack.WordAlloc.isSkip output16151 = false := by
  rw [output16151_def]
  conv => lhs; cbv
  try rfl
theorem node16151_eq : Flapjack.WordAlloc.removeDeadStructural input16151 value2511 value1 value2 = (output16151, value6896, value1) := by
  rw [input16151_def, output16151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5015_eq]
  try dsimp only
  rw [node16150_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16151 input5014)).val
theorem input16152_def : input16152 = (.seq input16151 input5014) := by
  unfold input16152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16151 output5014)).val
theorem output16152_def : output16152 = (.seq output16151 output5014) := by
  unfold output16152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16152_skip : Flapjack.WordAlloc.isSkip output16152 = false := by
  rw [output16152_def]
  conv => lhs; cbv
  try rfl
theorem node16152_eq : Flapjack.WordAlloc.removeDeadStructural input16152 value5 value1 value2 = (output16152, value6896, value1) := by
  rw [input16152_def, output16152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5014_eq]
  try dsimp only
  rw [node16151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16152 input5011)).val
theorem input16153_def : input16153 = (.seq input16152 input5011) := by
  unfold input16153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16152 output5011)).val
theorem output16153_def : output16153 = (.seq output16152 output5011) := by
  unfold output16153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16153_skip : Flapjack.WordAlloc.isSkip output16153 = false := by
  rw [output16153_def]
  conv => lhs; cbv
  try rfl
theorem node16153_eq : Flapjack.WordAlloc.removeDeadStructural input16153 value2504 value1 value2 = (output16153, value6896, value1) := by
  rw [input16153_def, output16153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5011_eq]
  try dsimp only
  rw [node16152_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16153 input5000)).val
theorem input16154_def : input16154 = (.seq input16153 input5000) := by
  unfold input16154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16153)).val
theorem output16154_def : output16154 = (output16153) := by
  unfold output16154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16154_skip : Flapjack.WordAlloc.isSkip output16154 = false := by
  rw [output16154_def]
  conv => lhs; cbv
  try rfl
theorem node16154_eq : Flapjack.WordAlloc.removeDeadStructural input16154 value2504 value1 value2 = (output16154, value6896, value1) := by
  rw [input16154_def, output16154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5000_eq]
  try dsimp only
  rw [node16153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16154 input4999)).val
theorem input16155_def : input16155 = (.seq input16154 input4999) := by
  unfold input16155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16154 output4999)).val
theorem output16155_def : output16155 = (.seq output16154 output4999) := by
  unfold output16155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16155_skip : Flapjack.WordAlloc.isSkip output16155 = false := by
  rw [output16155_def]
  conv => lhs; cbv
  try rfl
theorem node16155_eq : Flapjack.WordAlloc.removeDeadStructural input16155 value2503 value1 value2 = (output16155, value6896, value1) := by
  rw [input16155_def, output16155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4999_eq]
  try dsimp only
  rw [node16154_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16155 input4998)).val
theorem input16156_def : input16156 = (.seq input16155 input4998) := by
  unfold input16156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16155 output4998)).val
theorem output16156_def : output16156 = (.seq output16155 output4998) := by
  unfold output16156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16156_skip : Flapjack.WordAlloc.isSkip output16156 = false := by
  rw [output16156_def]
  conv => lhs; cbv
  try rfl
theorem node16156_eq : Flapjack.WordAlloc.removeDeadStructural input16156 value5 value1 value2 = (output16156, value6896, value1) := by
  rw [input16156_def, output16156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4998_eq]
  try dsimp only
  rw [node16155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16156 input4995)).val
theorem input16157_def : input16157 = (.seq input16156 input4995) := by
  unfold input16157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16156 output4995)).val
theorem output16157_def : output16157 = (.seq output16156 output4995) := by
  unfold output16157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16157_skip : Flapjack.WordAlloc.isSkip output16157 = false := by
  rw [output16157_def]
  conv => lhs; cbv
  try rfl
theorem node16157_eq : Flapjack.WordAlloc.removeDeadStructural input16157 value2496 value1 value2 = (output16157, value6896, value1) := by
  rw [input16157_def, output16157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4995_eq]
  try dsimp only
  rw [node16156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16157 input4984)).val
theorem input16158_def : input16158 = (.seq input16157 input4984) := by
  unfold input16158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16157)).val
theorem output16158_def : output16158 = (output16157) := by
  unfold output16158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16158_skip : Flapjack.WordAlloc.isSkip output16158 = false := by
  rw [output16158_def]
  conv => lhs; cbv
  try rfl
theorem node16158_eq : Flapjack.WordAlloc.removeDeadStructural input16158 value2496 value1 value2 = (output16158, value6896, value1) := by
  rw [input16158_def, output16158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4984_eq]
  try dsimp only
  rw [node16157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16158 input4983)).val
theorem input16159_def : input16159 = (.seq input16158 input4983) := by
  unfold input16159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16158 output4983)).val
theorem output16159_def : output16159 = (.seq output16158 output4983) := by
  unfold output16159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16159_skip : Flapjack.WordAlloc.isSkip output16159 = false := by
  rw [output16159_def]
  conv => lhs; cbv
  try rfl
theorem node16159_eq : Flapjack.WordAlloc.removeDeadStructural input16159 value2495 value1 value2 = (output16159, value6896, value1) := by
  rw [input16159_def, output16159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4983_eq]
  try dsimp only
  rw [node16158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16159 input4982)).val
theorem input16160_def : input16160 = (.seq input16159 input4982) := by
  unfold input16160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16159 output4982)).val
theorem output16160_def : output16160 = (.seq output16159 output4982) := by
  unfold output16160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16160_skip : Flapjack.WordAlloc.isSkip output16160 = false := by
  rw [output16160_def]
  conv => lhs; cbv
  try rfl
theorem node16160_eq : Flapjack.WordAlloc.removeDeadStructural input16160 value5 value1 value2 = (output16160, value6896, value1) := by
  rw [input16160_def, output16160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4982_eq]
  try dsimp only
  rw [node16159_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16160 input4979)).val
theorem input16161_def : input16161 = (.seq input16160 input4979) := by
  unfold input16161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16160 output4979)).val
theorem output16161_def : output16161 = (.seq output16160 output4979) := by
  unfold output16161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16161_skip : Flapjack.WordAlloc.isSkip output16161 = false := by
  rw [output16161_def]
  conv => lhs; cbv
  try rfl
theorem node16161_eq : Flapjack.WordAlloc.removeDeadStructural input16161 value2488 value1 value2 = (output16161, value6896, value1) := by
  rw [input16161_def, output16161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4979_eq]
  try dsimp only
  rw [node16160_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16161 input4968)).val
theorem input16162_def : input16162 = (.seq input16161 input4968) := by
  unfold input16162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16161)).val
theorem output16162_def : output16162 = (output16161) := by
  unfold output16162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16162_skip : Flapjack.WordAlloc.isSkip output16162 = false := by
  rw [output16162_def]
  conv => lhs; cbv
  try rfl
theorem node16162_eq : Flapjack.WordAlloc.removeDeadStructural input16162 value2488 value1 value2 = (output16162, value6896, value1) := by
  rw [input16162_def, output16162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4968_eq]
  try dsimp only
  rw [node16161_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16162 input4967)).val
theorem input16163_def : input16163 = (.seq input16162 input4967) := by
  unfold input16163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16162 output4967)).val
theorem output16163_def : output16163 = (.seq output16162 output4967) := by
  unfold output16163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16163_skip : Flapjack.WordAlloc.isSkip output16163 = false := by
  rw [output16163_def]
  conv => lhs; cbv
  try rfl
theorem node16163_eq : Flapjack.WordAlloc.removeDeadStructural input16163 value2487 value1 value2 = (output16163, value6896, value1) := by
  rw [input16163_def, output16163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4967_eq]
  try dsimp only
  rw [node16162_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16163 input4966)).val
theorem input16164_def : input16164 = (.seq input16163 input4966) := by
  unfold input16164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16163 output4966)).val
theorem output16164_def : output16164 = (.seq output16163 output4966) := by
  unfold output16164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16164_skip : Flapjack.WordAlloc.isSkip output16164 = false := by
  rw [output16164_def]
  conv => lhs; cbv
  try rfl
theorem node16164_eq : Flapjack.WordAlloc.removeDeadStructural input16164 value5 value1 value2 = (output16164, value6896, value1) := by
  rw [input16164_def, output16164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4966_eq]
  try dsimp only
  rw [node16163_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16164 input4963)).val
theorem input16165_def : input16165 = (.seq input16164 input4963) := by
  unfold input16165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16164 output4963)).val
theorem output16165_def : output16165 = (.seq output16164 output4963) := by
  unfold output16165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16165_skip : Flapjack.WordAlloc.isSkip output16165 = false := by
  rw [output16165_def]
  conv => lhs; cbv
  try rfl
theorem node16165_eq : Flapjack.WordAlloc.removeDeadStructural input16165 value2480 value1 value2 = (output16165, value6896, value1) := by
  rw [input16165_def, output16165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4963_eq]
  try dsimp only
  rw [node16164_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16165 input4952)).val
theorem input16166_def : input16166 = (.seq input16165 input4952) := by
  unfold input16166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16165)).val
theorem output16166_def : output16166 = (output16165) := by
  unfold output16166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16166_skip : Flapjack.WordAlloc.isSkip output16166 = false := by
  rw [output16166_def]
  conv => lhs; cbv
  try rfl
theorem node16166_eq : Flapjack.WordAlloc.removeDeadStructural input16166 value2480 value1 value2 = (output16166, value6896, value1) := by
  rw [input16166_def, output16166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4952_eq]
  try dsimp only
  rw [node16165_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16166 input4951)).val
theorem input16167_def : input16167 = (.seq input16166 input4951) := by
  unfold input16167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16166 output4951)).val
theorem output16167_def : output16167 = (.seq output16166 output4951) := by
  unfold output16167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16167_skip : Flapjack.WordAlloc.isSkip output16167 = false := by
  rw [output16167_def]
  conv => lhs; cbv
  try rfl
theorem node16167_eq : Flapjack.WordAlloc.removeDeadStructural input16167 value2479 value1 value2 = (output16167, value6896, value1) := by
  rw [input16167_def, output16167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4951_eq]
  try dsimp only
  rw [node16166_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16167 input4950)).val
theorem input16168_def : input16168 = (.seq input16167 input4950) := by
  unfold input16168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16167 output4950)).val
theorem output16168_def : output16168 = (.seq output16167 output4950) := by
  unfold output16168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16168_skip : Flapjack.WordAlloc.isSkip output16168 = false := by
  rw [output16168_def]
  conv => lhs; cbv
  try rfl
theorem node16168_eq : Flapjack.WordAlloc.removeDeadStructural input16168 value5 value1 value2 = (output16168, value6896, value1) := by
  rw [input16168_def, output16168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4950_eq]
  try dsimp only
  rw [node16167_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16168 input4947)).val
theorem input16169_def : input16169 = (.seq input16168 input4947) := by
  unfold input16169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16168 output4947)).val
theorem output16169_def : output16169 = (.seq output16168 output4947) := by
  unfold output16169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16169_skip : Flapjack.WordAlloc.isSkip output16169 = false := by
  rw [output16169_def]
  conv => lhs; cbv
  try rfl
theorem node16169_eq : Flapjack.WordAlloc.removeDeadStructural input16169 value2472 value1 value2 = (output16169, value6896, value1) := by
  rw [input16169_def, output16169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4947_eq]
  try dsimp only
  rw [node16168_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16169 input4936)).val
theorem input16170_def : input16170 = (.seq input16169 input4936) := by
  unfold input16170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16169)).val
theorem output16170_def : output16170 = (output16169) := by
  unfold output16170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16170_skip : Flapjack.WordAlloc.isSkip output16170 = false := by
  rw [output16170_def]
  conv => lhs; cbv
  try rfl
theorem node16170_eq : Flapjack.WordAlloc.removeDeadStructural input16170 value2472 value1 value2 = (output16170, value6896, value1) := by
  rw [input16170_def, output16170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4936_eq]
  try dsimp only
  rw [node16169_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16170 input4935)).val
theorem input16171_def : input16171 = (.seq input16170 input4935) := by
  unfold input16171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16170 output4935)).val
theorem output16171_def : output16171 = (.seq output16170 output4935) := by
  unfold output16171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16171_skip : Flapjack.WordAlloc.isSkip output16171 = false := by
  rw [output16171_def]
  conv => lhs; cbv
  try rfl
theorem node16171_eq : Flapjack.WordAlloc.removeDeadStructural input16171 value2471 value1 value2 = (output16171, value6896, value1) := by
  rw [input16171_def, output16171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4935_eq]
  try dsimp only
  rw [node16170_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16171 input4934)).val
theorem input16172_def : input16172 = (.seq input16171 input4934) := by
  unfold input16172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16171 output4934)).val
theorem output16172_def : output16172 = (.seq output16171 output4934) := by
  unfold output16172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16172_skip : Flapjack.WordAlloc.isSkip output16172 = false := by
  rw [output16172_def]
  conv => lhs; cbv
  try rfl
theorem node16172_eq : Flapjack.WordAlloc.removeDeadStructural input16172 value5 value1 value2 = (output16172, value6896, value1) := by
  rw [input16172_def, output16172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4934_eq]
  try dsimp only
  rw [node16171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16172 input4931)).val
theorem input16173_def : input16173 = (.seq input16172 input4931) := by
  unfold input16173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16172 output4931)).val
theorem output16173_def : output16173 = (.seq output16172 output4931) := by
  unfold output16173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16173_skip : Flapjack.WordAlloc.isSkip output16173 = false := by
  rw [output16173_def]
  conv => lhs; cbv
  try rfl
theorem node16173_eq : Flapjack.WordAlloc.removeDeadStructural input16173 value2464 value1 value2 = (output16173, value6896, value1) := by
  rw [input16173_def, output16173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4931_eq]
  try dsimp only
  rw [node16172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16173 input4920)).val
theorem input16174_def : input16174 = (.seq input16173 input4920) := by
  unfold input16174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16173)).val
theorem output16174_def : output16174 = (output16173) := by
  unfold output16174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16174_skip : Flapjack.WordAlloc.isSkip output16174 = false := by
  rw [output16174_def]
  conv => lhs; cbv
  try rfl
theorem node16174_eq : Flapjack.WordAlloc.removeDeadStructural input16174 value2464 value1 value2 = (output16174, value6896, value1) := by
  rw [input16174_def, output16174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4920_eq]
  try dsimp only
  rw [node16173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16174 input4919)).val
theorem input16175_def : input16175 = (.seq input16174 input4919) := by
  unfold input16175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16174 output4919)).val
theorem output16175_def : output16175 = (.seq output16174 output4919) := by
  unfold output16175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16175_skip : Flapjack.WordAlloc.isSkip output16175 = false := by
  rw [output16175_def]
  conv => lhs; cbv
  try rfl
theorem node16175_eq : Flapjack.WordAlloc.removeDeadStructural input16175 value2463 value1 value2 = (output16175, value6896, value1) := by
  rw [input16175_def, output16175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4919_eq]
  try dsimp only
  rw [node16174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16175 input4918)).val
theorem input16176_def : input16176 = (.seq input16175 input4918) := by
  unfold input16176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16175 output4918)).val
theorem output16176_def : output16176 = (.seq output16175 output4918) := by
  unfold output16176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16176_skip : Flapjack.WordAlloc.isSkip output16176 = false := by
  rw [output16176_def]
  conv => lhs; cbv
  try rfl
theorem node16176_eq : Flapjack.WordAlloc.removeDeadStructural input16176 value5 value1 value2 = (output16176, value6896, value1) := by
  rw [input16176_def, output16176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4918_eq]
  try dsimp only
  rw [node16175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16176 input4915)).val
theorem input16177_def : input16177 = (.seq input16176 input4915) := by
  unfold input16177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16176 output4915)).val
theorem output16177_def : output16177 = (.seq output16176 output4915) := by
  unfold output16177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16177_skip : Flapjack.WordAlloc.isSkip output16177 = false := by
  rw [output16177_def]
  conv => lhs; cbv
  try rfl
theorem node16177_eq : Flapjack.WordAlloc.removeDeadStructural input16177 value2456 value1 value2 = (output16177, value6896, value1) := by
  rw [input16177_def, output16177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4915_eq]
  try dsimp only
  rw [node16176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16177 input4904)).val
theorem input16178_def : input16178 = (.seq input16177 input4904) := by
  unfold input16178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16177)).val
theorem output16178_def : output16178 = (output16177) := by
  unfold output16178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16178_skip : Flapjack.WordAlloc.isSkip output16178 = false := by
  rw [output16178_def]
  conv => lhs; cbv
  try rfl
theorem node16178_eq : Flapjack.WordAlloc.removeDeadStructural input16178 value2456 value1 value2 = (output16178, value6896, value1) := by
  rw [input16178_def, output16178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4904_eq]
  try dsimp only
  rw [node16177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16178 input4903)).val
theorem input16179_def : input16179 = (.seq input16178 input4903) := by
  unfold input16179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16178 output4903)).val
theorem output16179_def : output16179 = (.seq output16178 output4903) := by
  unfold output16179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16179_skip : Flapjack.WordAlloc.isSkip output16179 = false := by
  rw [output16179_def]
  conv => lhs; cbv
  try rfl
theorem node16179_eq : Flapjack.WordAlloc.removeDeadStructural input16179 value2455 value1 value2 = (output16179, value6896, value1) := by
  rw [input16179_def, output16179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4903_eq]
  try dsimp only
  rw [node16178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16179 input4902)).val
theorem input16180_def : input16180 = (.seq input16179 input4902) := by
  unfold input16180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16179 output4902)).val
theorem output16180_def : output16180 = (.seq output16179 output4902) := by
  unfold output16180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16180_skip : Flapjack.WordAlloc.isSkip output16180 = false := by
  rw [output16180_def]
  conv => lhs; cbv
  try rfl
theorem node16180_eq : Flapjack.WordAlloc.removeDeadStructural input16180 value5 value1 value2 = (output16180, value6896, value1) := by
  rw [input16180_def, output16180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4902_eq]
  try dsimp only
  rw [node16179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16180 input4899)).val
theorem input16181_def : input16181 = (.seq input16180 input4899) := by
  unfold input16181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16180 output4899)).val
theorem output16181_def : output16181 = (.seq output16180 output4899) := by
  unfold output16181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16181_skip : Flapjack.WordAlloc.isSkip output16181 = false := by
  rw [output16181_def]
  conv => lhs; cbv
  try rfl
theorem node16181_eq : Flapjack.WordAlloc.removeDeadStructural input16181 value2448 value1 value2 = (output16181, value6896, value1) := by
  rw [input16181_def, output16181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4899_eq]
  try dsimp only
  rw [node16180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16181 input4888)).val
theorem input16182_def : input16182 = (.seq input16181 input4888) := by
  unfold input16182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16181)).val
theorem output16182_def : output16182 = (output16181) := by
  unfold output16182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16182_skip : Flapjack.WordAlloc.isSkip output16182 = false := by
  rw [output16182_def]
  conv => lhs; cbv
  try rfl
theorem node16182_eq : Flapjack.WordAlloc.removeDeadStructural input16182 value2448 value1 value2 = (output16182, value6896, value1) := by
  rw [input16182_def, output16182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4888_eq]
  try dsimp only
  rw [node16181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16182 input4887)).val
theorem input16183_def : input16183 = (.seq input16182 input4887) := by
  unfold input16183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16182 output4887)).val
theorem output16183_def : output16183 = (.seq output16182 output4887) := by
  unfold output16183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16183_skip : Flapjack.WordAlloc.isSkip output16183 = false := by
  rw [output16183_def]
  conv => lhs; cbv
  try rfl
theorem node16183_eq : Flapjack.WordAlloc.removeDeadStructural input16183 value2447 value1 value2 = (output16183, value6896, value1) := by
  rw [input16183_def, output16183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4887_eq]
  try dsimp only
  rw [node16182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16183 input4886)).val
theorem input16184_def : input16184 = (.seq input16183 input4886) := by
  unfold input16184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16183 output4886)).val
theorem output16184_def : output16184 = (.seq output16183 output4886) := by
  unfold output16184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16184_skip : Flapjack.WordAlloc.isSkip output16184 = false := by
  rw [output16184_def]
  conv => lhs; cbv
  try rfl
theorem node16184_eq : Flapjack.WordAlloc.removeDeadStructural input16184 value5 value1 value2 = (output16184, value6896, value1) := by
  rw [input16184_def, output16184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4886_eq]
  try dsimp only
  rw [node16183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16184 input4883)).val
theorem input16185_def : input16185 = (.seq input16184 input4883) := by
  unfold input16185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16184 output4883)).val
theorem output16185_def : output16185 = (.seq output16184 output4883) := by
  unfold output16185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16185_skip : Flapjack.WordAlloc.isSkip output16185 = false := by
  rw [output16185_def]
  conv => lhs; cbv
  try rfl
theorem node16185_eq : Flapjack.WordAlloc.removeDeadStructural input16185 value2440 value1 value2 = (output16185, value6896, value1) := by
  rw [input16185_def, output16185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4883_eq]
  try dsimp only
  rw [node16184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16185 input4872)).val
theorem input16186_def : input16186 = (.seq input16185 input4872) := by
  unfold input16186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16185)).val
theorem output16186_def : output16186 = (output16185) := by
  unfold output16186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16186_skip : Flapjack.WordAlloc.isSkip output16186 = false := by
  rw [output16186_def]
  conv => lhs; cbv
  try rfl
theorem node16186_eq : Flapjack.WordAlloc.removeDeadStructural input16186 value2440 value1 value2 = (output16186, value6896, value1) := by
  rw [input16186_def, output16186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4872_eq]
  try dsimp only
  rw [node16185_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16186 input4871)).val
theorem input16187_def : input16187 = (.seq input16186 input4871) := by
  unfold input16187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16186 output4871)).val
theorem output16187_def : output16187 = (.seq output16186 output4871) := by
  unfold output16187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16187_skip : Flapjack.WordAlloc.isSkip output16187 = false := by
  rw [output16187_def]
  conv => lhs; cbv
  try rfl
theorem node16187_eq : Flapjack.WordAlloc.removeDeadStructural input16187 value2439 value1 value2 = (output16187, value6896, value1) := by
  rw [input16187_def, output16187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4871_eq]
  try dsimp only
  rw [node16186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16187 input4870)).val
theorem input16188_def : input16188 = (.seq input16187 input4870) := by
  unfold input16188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16187 output4870)).val
theorem output16188_def : output16188 = (.seq output16187 output4870) := by
  unfold output16188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16188_skip : Flapjack.WordAlloc.isSkip output16188 = false := by
  rw [output16188_def]
  conv => lhs; cbv
  try rfl
theorem node16188_eq : Flapjack.WordAlloc.removeDeadStructural input16188 value5 value1 value2 = (output16188, value6896, value1) := by
  rw [input16188_def, output16188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4870_eq]
  try dsimp only
  rw [node16187_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16188 input4867)).val
theorem input16189_def : input16189 = (.seq input16188 input4867) := by
  unfold input16189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16188 output4867)).val
theorem output16189_def : output16189 = (.seq output16188 output4867) := by
  unfold output16189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16189_skip : Flapjack.WordAlloc.isSkip output16189 = false := by
  rw [output16189_def]
  conv => lhs; cbv
  try rfl
theorem node16189_eq : Flapjack.WordAlloc.removeDeadStructural input16189 value2432 value1 value2 = (output16189, value6896, value1) := by
  rw [input16189_def, output16189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4867_eq]
  try dsimp only
  rw [node16188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16189 input4856)).val
theorem input16190_def : input16190 = (.seq input16189 input4856) := by
  unfold input16190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16189)).val
theorem output16190_def : output16190 = (output16189) := by
  unfold output16190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16190_skip : Flapjack.WordAlloc.isSkip output16190 = false := by
  rw [output16190_def]
  conv => lhs; cbv
  try rfl
theorem node16190_eq : Flapjack.WordAlloc.removeDeadStructural input16190 value2432 value1 value2 = (output16190, value6896, value1) := by
  rw [input16190_def, output16190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4856_eq]
  try dsimp only
  rw [node16189_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16190 input4855)).val
theorem input16191_def : input16191 = (.seq input16190 input4855) := by
  unfold input16191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16190 output4855)).val
theorem output16191_def : output16191 = (.seq output16190 output4855) := by
  unfold output16191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16191_skip : Flapjack.WordAlloc.isSkip output16191 = false := by
  rw [output16191_def]
  conv => lhs; cbv
  try rfl
theorem node16191_eq : Flapjack.WordAlloc.removeDeadStructural input16191 value2431 value1 value2 = (output16191, value6896, value1) := by
  rw [input16191_def, output16191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4855_eq]
  try dsimp only
  rw [node16190_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16191 input4854)).val
theorem input16192_def : input16192 = (.seq input16191 input4854) := by
  unfold input16192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16191 output4854)).val
theorem output16192_def : output16192 = (.seq output16191 output4854) := by
  unfold output16192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16192_skip : Flapjack.WordAlloc.isSkip output16192 = false := by
  rw [output16192_def]
  conv => lhs; cbv
  try rfl
theorem node16192_eq : Flapjack.WordAlloc.removeDeadStructural input16192 value5 value1 value2 = (output16192, value6896, value1) := by
  rw [input16192_def, output16192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4854_eq]
  try dsimp only
  rw [node16191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16192 input4851)).val
theorem input16193_def : input16193 = (.seq input16192 input4851) := by
  unfold input16193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16192 output4851)).val
theorem output16193_def : output16193 = (.seq output16192 output4851) := by
  unfold output16193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16193_skip : Flapjack.WordAlloc.isSkip output16193 = false := by
  rw [output16193_def]
  conv => lhs; cbv
  try rfl
theorem node16193_eq : Flapjack.WordAlloc.removeDeadStructural input16193 value2424 value1 value2 = (output16193, value6896, value1) := by
  rw [input16193_def, output16193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4851_eq]
  try dsimp only
  rw [node16192_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16193 input4840)).val
theorem input16194_def : input16194 = (.seq input16193 input4840) := by
  unfold input16194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16193)).val
theorem output16194_def : output16194 = (output16193) := by
  unfold output16194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16194_skip : Flapjack.WordAlloc.isSkip output16194 = false := by
  rw [output16194_def]
  conv => lhs; cbv
  try rfl
theorem node16194_eq : Flapjack.WordAlloc.removeDeadStructural input16194 value2424 value1 value2 = (output16194, value6896, value1) := by
  rw [input16194_def, output16194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4840_eq]
  try dsimp only
  rw [node16193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16194 input4839)).val
theorem input16195_def : input16195 = (.seq input16194 input4839) := by
  unfold input16195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16194 output4839)).val
theorem output16195_def : output16195 = (.seq output16194 output4839) := by
  unfold output16195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16195_skip : Flapjack.WordAlloc.isSkip output16195 = false := by
  rw [output16195_def]
  conv => lhs; cbv
  try rfl
theorem node16195_eq : Flapjack.WordAlloc.removeDeadStructural input16195 value2423 value1 value2 = (output16195, value6896, value1) := by
  rw [input16195_def, output16195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4839_eq]
  try dsimp only
  rw [node16194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16195 input4838)).val
theorem input16196_def : input16196 = (.seq input16195 input4838) := by
  unfold input16196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16195 output4838)).val
theorem output16196_def : output16196 = (.seq output16195 output4838) := by
  unfold output16196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16196_skip : Flapjack.WordAlloc.isSkip output16196 = false := by
  rw [output16196_def]
  conv => lhs; cbv
  try rfl
theorem node16196_eq : Flapjack.WordAlloc.removeDeadStructural input16196 value5 value1 value2 = (output16196, value6896, value1) := by
  rw [input16196_def, output16196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4838_eq]
  try dsimp only
  rw [node16195_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16196 input4835)).val
theorem input16197_def : input16197 = (.seq input16196 input4835) := by
  unfold input16197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16196 output4835)).val
theorem output16197_def : output16197 = (.seq output16196 output4835) := by
  unfold output16197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16197_skip : Flapjack.WordAlloc.isSkip output16197 = false := by
  rw [output16197_def]
  conv => lhs; cbv
  try rfl
theorem node16197_eq : Flapjack.WordAlloc.removeDeadStructural input16197 value2416 value1 value2 = (output16197, value6896, value1) := by
  rw [input16197_def, output16197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4835_eq]
  try dsimp only
  rw [node16196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16197 input4824)).val
theorem input16198_def : input16198 = (.seq input16197 input4824) := by
  unfold input16198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16197)).val
theorem output16198_def : output16198 = (output16197) := by
  unfold output16198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16198_skip : Flapjack.WordAlloc.isSkip output16198 = false := by
  rw [output16198_def]
  conv => lhs; cbv
  try rfl
theorem node16198_eq : Flapjack.WordAlloc.removeDeadStructural input16198 value2416 value1 value2 = (output16198, value6896, value1) := by
  rw [input16198_def, output16198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4824_eq]
  try dsimp only
  rw [node16197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16198 input4823)).val
theorem input16199_def : input16199 = (.seq input16198 input4823) := by
  unfold input16199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16198 output4823)).val
theorem output16199_def : output16199 = (.seq output16198 output4823) := by
  unfold output16199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16199_skip : Flapjack.WordAlloc.isSkip output16199 = false := by
  rw [output16199_def]
  conv => lhs; cbv
  try rfl
theorem node16199_eq : Flapjack.WordAlloc.removeDeadStructural input16199 value2415 value1 value2 = (output16199, value6896, value1) := by
  rw [input16199_def, output16199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4823_eq]
  try dsimp only
  rw [node16198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16199 input4822)).val
theorem input16200_def : input16200 = (.seq input16199 input4822) := by
  unfold input16200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16199 output4822)).val
theorem output16200_def : output16200 = (.seq output16199 output4822) := by
  unfold output16200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16200_skip : Flapjack.WordAlloc.isSkip output16200 = false := by
  rw [output16200_def]
  conv => lhs; cbv
  try rfl
theorem node16200_eq : Flapjack.WordAlloc.removeDeadStructural input16200 value5 value1 value2 = (output16200, value6896, value1) := by
  rw [input16200_def, output16200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4822_eq]
  try dsimp only
  rw [node16199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16200 input4819)).val
theorem input16201_def : input16201 = (.seq input16200 input4819) := by
  unfold input16201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16200 output4819)).val
theorem output16201_def : output16201 = (.seq output16200 output4819) := by
  unfold output16201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16201_skip : Flapjack.WordAlloc.isSkip output16201 = false := by
  rw [output16201_def]
  conv => lhs; cbv
  try rfl
theorem node16201_eq : Flapjack.WordAlloc.removeDeadStructural input16201 value2408 value1 value2 = (output16201, value6896, value1) := by
  rw [input16201_def, output16201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4819_eq]
  try dsimp only
  rw [node16200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16201 input4808)).val
theorem input16202_def : input16202 = (.seq input16201 input4808) := by
  unfold input16202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16201)).val
theorem output16202_def : output16202 = (output16201) := by
  unfold output16202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16202_skip : Flapjack.WordAlloc.isSkip output16202 = false := by
  rw [output16202_def]
  conv => lhs; cbv
  try rfl
theorem node16202_eq : Flapjack.WordAlloc.removeDeadStructural input16202 value2408 value1 value2 = (output16202, value6896, value1) := by
  rw [input16202_def, output16202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4808_eq]
  try dsimp only
  rw [node16201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16202 input4807)).val
theorem input16203_def : input16203 = (.seq input16202 input4807) := by
  unfold input16203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16202 output4807)).val
theorem output16203_def : output16203 = (.seq output16202 output4807) := by
  unfold output16203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16203_skip : Flapjack.WordAlloc.isSkip output16203 = false := by
  rw [output16203_def]
  conv => lhs; cbv
  try rfl
theorem node16203_eq : Flapjack.WordAlloc.removeDeadStructural input16203 value2407 value1 value2 = (output16203, value6896, value1) := by
  rw [input16203_def, output16203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4807_eq]
  try dsimp only
  rw [node16202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16203 input4806)).val
theorem input16204_def : input16204 = (.seq input16203 input4806) := by
  unfold input16204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16203 output4806)).val
theorem output16204_def : output16204 = (.seq output16203 output4806) := by
  unfold output16204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16204_skip : Flapjack.WordAlloc.isSkip output16204 = false := by
  rw [output16204_def]
  conv => lhs; cbv
  try rfl
theorem node16204_eq : Flapjack.WordAlloc.removeDeadStructural input16204 value5 value1 value2 = (output16204, value6896, value1) := by
  rw [input16204_def, output16204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4806_eq]
  try dsimp only
  rw [node16203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16204 input4803)).val
theorem input16205_def : input16205 = (.seq input16204 input4803) := by
  unfold input16205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16204 output4803)).val
theorem output16205_def : output16205 = (.seq output16204 output4803) := by
  unfold output16205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16205_skip : Flapjack.WordAlloc.isSkip output16205 = false := by
  rw [output16205_def]
  conv => lhs; cbv
  try rfl
theorem node16205_eq : Flapjack.WordAlloc.removeDeadStructural input16205 value2400 value1 value2 = (output16205, value6896, value1) := by
  rw [input16205_def, output16205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4803_eq]
  try dsimp only
  rw [node16204_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16205 input4792)).val
theorem input16206_def : input16206 = (.seq input16205 input4792) := by
  unfold input16206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16205)).val
theorem output16206_def : output16206 = (output16205) := by
  unfold output16206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16206_skip : Flapjack.WordAlloc.isSkip output16206 = false := by
  rw [output16206_def]
  conv => lhs; cbv
  try rfl
theorem node16206_eq : Flapjack.WordAlloc.removeDeadStructural input16206 value2400 value1 value2 = (output16206, value6896, value1) := by
  rw [input16206_def, output16206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4792_eq]
  try dsimp only
  rw [node16205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16206 input4791)).val
theorem input16207_def : input16207 = (.seq input16206 input4791) := by
  unfold input16207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16206 output4791)).val
theorem output16207_def : output16207 = (.seq output16206 output4791) := by
  unfold output16207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16207_skip : Flapjack.WordAlloc.isSkip output16207 = false := by
  rw [output16207_def]
  conv => lhs; cbv
  try rfl
theorem node16207_eq : Flapjack.WordAlloc.removeDeadStructural input16207 value2399 value1 value2 = (output16207, value6896, value1) := by
  rw [input16207_def, output16207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4791_eq]
  try dsimp only
  rw [node16206_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16207 input4790)).val
theorem input16208_def : input16208 = (.seq input16207 input4790) := by
  unfold input16208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16207 output4790)).val
theorem output16208_def : output16208 = (.seq output16207 output4790) := by
  unfold output16208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16208_skip : Flapjack.WordAlloc.isSkip output16208 = false := by
  rw [output16208_def]
  conv => lhs; cbv
  try rfl
theorem node16208_eq : Flapjack.WordAlloc.removeDeadStructural input16208 value5 value1 value2 = (output16208, value6896, value1) := by
  rw [input16208_def, output16208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4790_eq]
  try dsimp only
  rw [node16207_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16208 input4787)).val
theorem input16209_def : input16209 = (.seq input16208 input4787) := by
  unfold input16209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16208 output4787)).val
theorem output16209_def : output16209 = (.seq output16208 output4787) := by
  unfold output16209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16209_skip : Flapjack.WordAlloc.isSkip output16209 = false := by
  rw [output16209_def]
  conv => lhs; cbv
  try rfl
theorem node16209_eq : Flapjack.WordAlloc.removeDeadStructural input16209 value2392 value1 value2 = (output16209, value6896, value1) := by
  rw [input16209_def, output16209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4787_eq]
  try dsimp only
  rw [node16208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16209 input4776)).val
theorem input16210_def : input16210 = (.seq input16209 input4776) := by
  unfold input16210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16209)).val
theorem output16210_def : output16210 = (output16209) := by
  unfold output16210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16210_skip : Flapjack.WordAlloc.isSkip output16210 = false := by
  rw [output16210_def]
  conv => lhs; cbv
  try rfl
theorem node16210_eq : Flapjack.WordAlloc.removeDeadStructural input16210 value2392 value1 value2 = (output16210, value6896, value1) := by
  rw [input16210_def, output16210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4776_eq]
  try dsimp only
  rw [node16209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16210 input4775)).val
theorem input16211_def : input16211 = (.seq input16210 input4775) := by
  unfold input16211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16210 output4775)).val
theorem output16211_def : output16211 = (.seq output16210 output4775) := by
  unfold output16211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16211_skip : Flapjack.WordAlloc.isSkip output16211 = false := by
  rw [output16211_def]
  conv => lhs; cbv
  try rfl
theorem node16211_eq : Flapjack.WordAlloc.removeDeadStructural input16211 value2391 value1 value2 = (output16211, value6896, value1) := by
  rw [input16211_def, output16211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4775_eq]
  try dsimp only
  rw [node16210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16211 input4774)).val
theorem input16212_def : input16212 = (.seq input16211 input4774) := by
  unfold input16212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16211 output4774)).val
theorem output16212_def : output16212 = (.seq output16211 output4774) := by
  unfold output16212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16212_skip : Flapjack.WordAlloc.isSkip output16212 = false := by
  rw [output16212_def]
  conv => lhs; cbv
  try rfl
theorem node16212_eq : Flapjack.WordAlloc.removeDeadStructural input16212 value5 value1 value2 = (output16212, value6896, value1) := by
  rw [input16212_def, output16212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4774_eq]
  try dsimp only
  rw [node16211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16212 input4771)).val
theorem input16213_def : input16213 = (.seq input16212 input4771) := by
  unfold input16213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16212 output4771)).val
theorem output16213_def : output16213 = (.seq output16212 output4771) := by
  unfold output16213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16213_skip : Flapjack.WordAlloc.isSkip output16213 = false := by
  rw [output16213_def]
  conv => lhs; cbv
  try rfl
theorem node16213_eq : Flapjack.WordAlloc.removeDeadStructural input16213 value2384 value1 value2 = (output16213, value6896, value1) := by
  rw [input16213_def, output16213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4771_eq]
  try dsimp only
  rw [node16212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16213 input4760)).val
theorem input16214_def : input16214 = (.seq input16213 input4760) := by
  unfold input16214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16213)).val
theorem output16214_def : output16214 = (output16213) := by
  unfold output16214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16214_skip : Flapjack.WordAlloc.isSkip output16214 = false := by
  rw [output16214_def]
  conv => lhs; cbv
  try rfl
theorem node16214_eq : Flapjack.WordAlloc.removeDeadStructural input16214 value2384 value1 value2 = (output16214, value6896, value1) := by
  rw [input16214_def, output16214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4760_eq]
  try dsimp only
  rw [node16213_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16214 input4759)).val
theorem input16215_def : input16215 = (.seq input16214 input4759) := by
  unfold input16215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16214 output4759)).val
theorem output16215_def : output16215 = (.seq output16214 output4759) := by
  unfold output16215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16215_skip : Flapjack.WordAlloc.isSkip output16215 = false := by
  rw [output16215_def]
  conv => lhs; cbv
  try rfl
theorem node16215_eq : Flapjack.WordAlloc.removeDeadStructural input16215 value2383 value1 value2 = (output16215, value6896, value1) := by
  rw [input16215_def, output16215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4759_eq]
  try dsimp only
  rw [node16214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16215 input4758)).val
theorem input16216_def : input16216 = (.seq input16215 input4758) := by
  unfold input16216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16215 output4758)).val
theorem output16216_def : output16216 = (.seq output16215 output4758) := by
  unfold output16216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16216_skip : Flapjack.WordAlloc.isSkip output16216 = false := by
  rw [output16216_def]
  conv => lhs; cbv
  try rfl
theorem node16216_eq : Flapjack.WordAlloc.removeDeadStructural input16216 value5 value1 value2 = (output16216, value6896, value1) := by
  rw [input16216_def, output16216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4758_eq]
  try dsimp only
  rw [node16215_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16216 input4755)).val
theorem input16217_def : input16217 = (.seq input16216 input4755) := by
  unfold input16217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16216 output4755)).val
theorem output16217_def : output16217 = (.seq output16216 output4755) := by
  unfold output16217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16217_skip : Flapjack.WordAlloc.isSkip output16217 = false := by
  rw [output16217_def]
  conv => lhs; cbv
  try rfl
theorem node16217_eq : Flapjack.WordAlloc.removeDeadStructural input16217 value2376 value1 value2 = (output16217, value6896, value1) := by
  rw [input16217_def, output16217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4755_eq]
  try dsimp only
  rw [node16216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16217 input4744)).val
theorem input16218_def : input16218 = (.seq input16217 input4744) := by
  unfold input16218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16217)).val
theorem output16218_def : output16218 = (output16217) := by
  unfold output16218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16218_skip : Flapjack.WordAlloc.isSkip output16218 = false := by
  rw [output16218_def]
  conv => lhs; cbv
  try rfl
theorem node16218_eq : Flapjack.WordAlloc.removeDeadStructural input16218 value2376 value1 value2 = (output16218, value6896, value1) := by
  rw [input16218_def, output16218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4744_eq]
  try dsimp only
  rw [node16217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16218 input4743)).val
theorem input16219_def : input16219 = (.seq input16218 input4743) := by
  unfold input16219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16218 output4743)).val
theorem output16219_def : output16219 = (.seq output16218 output4743) := by
  unfold output16219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16219_skip : Flapjack.WordAlloc.isSkip output16219 = false := by
  rw [output16219_def]
  conv => lhs; cbv
  try rfl
theorem node16219_eq : Flapjack.WordAlloc.removeDeadStructural input16219 value2375 value1 value2 = (output16219, value6896, value1) := by
  rw [input16219_def, output16219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4743_eq]
  try dsimp only
  rw [node16218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16219 input4742)).val
theorem input16220_def : input16220 = (.seq input16219 input4742) := by
  unfold input16220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16219 output4742)).val
theorem output16220_def : output16220 = (.seq output16219 output4742) := by
  unfold output16220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16220_skip : Flapjack.WordAlloc.isSkip output16220 = false := by
  rw [output16220_def]
  conv => lhs; cbv
  try rfl
theorem node16220_eq : Flapjack.WordAlloc.removeDeadStructural input16220 value5 value1 value2 = (output16220, value6896, value1) := by
  rw [input16220_def, output16220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4742_eq]
  try dsimp only
  rw [node16219_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16220 input4739)).val
theorem input16221_def : input16221 = (.seq input16220 input4739) := by
  unfold input16221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16220 output4739)).val
theorem output16221_def : output16221 = (.seq output16220 output4739) := by
  unfold output16221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16221_skip : Flapjack.WordAlloc.isSkip output16221 = false := by
  rw [output16221_def]
  conv => lhs; cbv
  try rfl
theorem node16221_eq : Flapjack.WordAlloc.removeDeadStructural input16221 value2368 value1 value2 = (output16221, value6896, value1) := by
  rw [input16221_def, output16221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4739_eq]
  try dsimp only
  rw [node16220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16221 input4728)).val
theorem input16222_def : input16222 = (.seq input16221 input4728) := by
  unfold input16222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16221)).val
theorem output16222_def : output16222 = (output16221) := by
  unfold output16222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16222_skip : Flapjack.WordAlloc.isSkip output16222 = false := by
  rw [output16222_def]
  conv => lhs; cbv
  try rfl
theorem node16222_eq : Flapjack.WordAlloc.removeDeadStructural input16222 value2368 value1 value2 = (output16222, value6896, value1) := by
  rw [input16222_def, output16222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4728_eq]
  try dsimp only
  rw [node16221_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16222 input4727)).val
theorem input16223_def : input16223 = (.seq input16222 input4727) := by
  unfold input16223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16222 output4727)).val
theorem output16223_def : output16223 = (.seq output16222 output4727) := by
  unfold output16223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16223_skip : Flapjack.WordAlloc.isSkip output16223 = false := by
  rw [output16223_def]
  conv => lhs; cbv
  try rfl
theorem node16223_eq : Flapjack.WordAlloc.removeDeadStructural input16223 value2367 value1 value2 = (output16223, value6896, value1) := by
  rw [input16223_def, output16223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4727_eq]
  try dsimp only
  rw [node16222_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16223 input4726)).val
theorem input16224_def : input16224 = (.seq input16223 input4726) := by
  unfold input16224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16223 output4726)).val
theorem output16224_def : output16224 = (.seq output16223 output4726) := by
  unfold output16224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16224_skip : Flapjack.WordAlloc.isSkip output16224 = false := by
  rw [output16224_def]
  conv => lhs; cbv
  try rfl
theorem node16224_eq : Flapjack.WordAlloc.removeDeadStructural input16224 value5 value1 value2 = (output16224, value6896, value1) := by
  rw [input16224_def, output16224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4726_eq]
  try dsimp only
  rw [node16223_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16224 input4723)).val
theorem input16225_def : input16225 = (.seq input16224 input4723) := by
  unfold input16225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16224 output4723)).val
theorem output16225_def : output16225 = (.seq output16224 output4723) := by
  unfold output16225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16225_skip : Flapjack.WordAlloc.isSkip output16225 = false := by
  rw [output16225_def]
  conv => lhs; cbv
  try rfl
theorem node16225_eq : Flapjack.WordAlloc.removeDeadStructural input16225 value2360 value1 value2 = (output16225, value6896, value1) := by
  rw [input16225_def, output16225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4723_eq]
  try dsimp only
  rw [node16224_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16225 input4712)).val
theorem input16226_def : input16226 = (.seq input16225 input4712) := by
  unfold input16226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16225)).val
theorem output16226_def : output16226 = (output16225) := by
  unfold output16226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16226_skip : Flapjack.WordAlloc.isSkip output16226 = false := by
  rw [output16226_def]
  conv => lhs; cbv
  try rfl
theorem node16226_eq : Flapjack.WordAlloc.removeDeadStructural input16226 value2360 value1 value2 = (output16226, value6896, value1) := by
  rw [input16226_def, output16226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4712_eq]
  try dsimp only
  rw [node16225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16226 input4711)).val
theorem input16227_def : input16227 = (.seq input16226 input4711) := by
  unfold input16227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16226 output4711)).val
theorem output16227_def : output16227 = (.seq output16226 output4711) := by
  unfold output16227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16227_skip : Flapjack.WordAlloc.isSkip output16227 = false := by
  rw [output16227_def]
  conv => lhs; cbv
  try rfl
theorem node16227_eq : Flapjack.WordAlloc.removeDeadStructural input16227 value2359 value1 value2 = (output16227, value6896, value1) := by
  rw [input16227_def, output16227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4711_eq]
  try dsimp only
  rw [node16226_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16227 input4710)).val
theorem input16228_def : input16228 = (.seq input16227 input4710) := by
  unfold input16228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16227 output4710)).val
theorem output16228_def : output16228 = (.seq output16227 output4710) := by
  unfold output16228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16228_skip : Flapjack.WordAlloc.isSkip output16228 = false := by
  rw [output16228_def]
  conv => lhs; cbv
  try rfl
theorem node16228_eq : Flapjack.WordAlloc.removeDeadStructural input16228 value5 value1 value2 = (output16228, value6896, value1) := by
  rw [input16228_def, output16228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4710_eq]
  try dsimp only
  rw [node16227_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16228 input4707)).val
theorem input16229_def : input16229 = (.seq input16228 input4707) := by
  unfold input16229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16228 output4707)).val
theorem output16229_def : output16229 = (.seq output16228 output4707) := by
  unfold output16229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16229_skip : Flapjack.WordAlloc.isSkip output16229 = false := by
  rw [output16229_def]
  conv => lhs; cbv
  try rfl
theorem node16229_eq : Flapjack.WordAlloc.removeDeadStructural input16229 value2352 value1 value2 = (output16229, value6896, value1) := by
  rw [input16229_def, output16229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4707_eq]
  try dsimp only
  rw [node16228_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16229 input4696)).val
theorem input16230_def : input16230 = (.seq input16229 input4696) := by
  unfold input16230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16229)).val
theorem output16230_def : output16230 = (output16229) := by
  unfold output16230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16230_skip : Flapjack.WordAlloc.isSkip output16230 = false := by
  rw [output16230_def]
  conv => lhs; cbv
  try rfl
theorem node16230_eq : Flapjack.WordAlloc.removeDeadStructural input16230 value2352 value1 value2 = (output16230, value6896, value1) := by
  rw [input16230_def, output16230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4696_eq]
  try dsimp only
  rw [node16229_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16230 input4695)).val
theorem input16231_def : input16231 = (.seq input16230 input4695) := by
  unfold input16231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16230 output4695)).val
theorem output16231_def : output16231 = (.seq output16230 output4695) := by
  unfold output16231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16231_skip : Flapjack.WordAlloc.isSkip output16231 = false := by
  rw [output16231_def]
  conv => lhs; cbv
  try rfl
theorem node16231_eq : Flapjack.WordAlloc.removeDeadStructural input16231 value2351 value1 value2 = (output16231, value6896, value1) := by
  rw [input16231_def, output16231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4695_eq]
  try dsimp only
  rw [node16230_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16231 input4694)).val
theorem input16232_def : input16232 = (.seq input16231 input4694) := by
  unfold input16232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16231 output4694)).val
theorem output16232_def : output16232 = (.seq output16231 output4694) := by
  unfold output16232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16232_skip : Flapjack.WordAlloc.isSkip output16232 = false := by
  rw [output16232_def]
  conv => lhs; cbv
  try rfl
theorem node16232_eq : Flapjack.WordAlloc.removeDeadStructural input16232 value5 value1 value2 = (output16232, value6896, value1) := by
  rw [input16232_def, output16232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4694_eq]
  try dsimp only
  rw [node16231_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16232 input4691)).val
theorem input16233_def : input16233 = (.seq input16232 input4691) := by
  unfold input16233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16232 output4691)).val
theorem output16233_def : output16233 = (.seq output16232 output4691) := by
  unfold output16233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16233_skip : Flapjack.WordAlloc.isSkip output16233 = false := by
  rw [output16233_def]
  conv => lhs; cbv
  try rfl
theorem node16233_eq : Flapjack.WordAlloc.removeDeadStructural input16233 value2344 value1 value2 = (output16233, value6896, value1) := by
  rw [input16233_def, output16233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4691_eq]
  try dsimp only
  rw [node16232_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16233 input4680)).val
theorem input16234_def : input16234 = (.seq input16233 input4680) := by
  unfold input16234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16233)).val
theorem output16234_def : output16234 = (output16233) := by
  unfold output16234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16234_skip : Flapjack.WordAlloc.isSkip output16234 = false := by
  rw [output16234_def]
  conv => lhs; cbv
  try rfl
theorem node16234_eq : Flapjack.WordAlloc.removeDeadStructural input16234 value2344 value1 value2 = (output16234, value6896, value1) := by
  rw [input16234_def, output16234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4680_eq]
  try dsimp only
  rw [node16233_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16234 input4679)).val
theorem input16235_def : input16235 = (.seq input16234 input4679) := by
  unfold input16235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16234 output4679)).val
theorem output16235_def : output16235 = (.seq output16234 output4679) := by
  unfold output16235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16235_skip : Flapjack.WordAlloc.isSkip output16235 = false := by
  rw [output16235_def]
  conv => lhs; cbv
  try rfl
theorem node16235_eq : Flapjack.WordAlloc.removeDeadStructural input16235 value2343 value1 value2 = (output16235, value6896, value1) := by
  rw [input16235_def, output16235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4679_eq]
  try dsimp only
  rw [node16234_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16235 input4678)).val
theorem input16236_def : input16236 = (.seq input16235 input4678) := by
  unfold input16236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16235 output4678)).val
theorem output16236_def : output16236 = (.seq output16235 output4678) := by
  unfold output16236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16236_skip : Flapjack.WordAlloc.isSkip output16236 = false := by
  rw [output16236_def]
  conv => lhs; cbv
  try rfl
theorem node16236_eq : Flapjack.WordAlloc.removeDeadStructural input16236 value5 value1 value2 = (output16236, value6896, value1) := by
  rw [input16236_def, output16236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4678_eq]
  try dsimp only
  rw [node16235_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16236 input4675)).val
theorem input16237_def : input16237 = (.seq input16236 input4675) := by
  unfold input16237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16236 output4675)).val
theorem output16237_def : output16237 = (.seq output16236 output4675) := by
  unfold output16237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16237_skip : Flapjack.WordAlloc.isSkip output16237 = false := by
  rw [output16237_def]
  conv => lhs; cbv
  try rfl
theorem node16237_eq : Flapjack.WordAlloc.removeDeadStructural input16237 value2336 value1 value2 = (output16237, value6896, value1) := by
  rw [input16237_def, output16237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4675_eq]
  try dsimp only
  rw [node16236_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16237 input4664)).val
theorem input16238_def : input16238 = (.seq input16237 input4664) := by
  unfold input16238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16237)).val
theorem output16238_def : output16238 = (output16237) := by
  unfold output16238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16238_skip : Flapjack.WordAlloc.isSkip output16238 = false := by
  rw [output16238_def]
  conv => lhs; cbv
  try rfl
theorem node16238_eq : Flapjack.WordAlloc.removeDeadStructural input16238 value2336 value1 value2 = (output16238, value6896, value1) := by
  rw [input16238_def, output16238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4664_eq]
  try dsimp only
  rw [node16237_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16238 input4663)).val
theorem input16239_def : input16239 = (.seq input16238 input4663) := by
  unfold input16239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16238 output4663)).val
theorem output16239_def : output16239 = (.seq output16238 output4663) := by
  unfold output16239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16239_skip : Flapjack.WordAlloc.isSkip output16239 = false := by
  rw [output16239_def]
  conv => lhs; cbv
  try rfl
theorem node16239_eq : Flapjack.WordAlloc.removeDeadStructural input16239 value2335 value1 value2 = (output16239, value6896, value1) := by
  rw [input16239_def, output16239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4663_eq]
  try dsimp only
  rw [node16238_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16239 input4662)).val
theorem input16240_def : input16240 = (.seq input16239 input4662) := by
  unfold input16240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16239 output4662)).val
theorem output16240_def : output16240 = (.seq output16239 output4662) := by
  unfold output16240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16240_skip : Flapjack.WordAlloc.isSkip output16240 = false := by
  rw [output16240_def]
  conv => lhs; cbv
  try rfl
theorem node16240_eq : Flapjack.WordAlloc.removeDeadStructural input16240 value5 value1 value2 = (output16240, value6896, value1) := by
  rw [input16240_def, output16240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4662_eq]
  try dsimp only
  rw [node16239_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16240 input4659)).val
theorem input16241_def : input16241 = (.seq input16240 input4659) := by
  unfold input16241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16240 output4659)).val
theorem output16241_def : output16241 = (.seq output16240 output4659) := by
  unfold output16241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16241_skip : Flapjack.WordAlloc.isSkip output16241 = false := by
  rw [output16241_def]
  conv => lhs; cbv
  try rfl
theorem node16241_eq : Flapjack.WordAlloc.removeDeadStructural input16241 value2328 value1 value2 = (output16241, value6896, value1) := by
  rw [input16241_def, output16241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4659_eq]
  try dsimp only
  rw [node16240_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16241 input4648)).val
theorem input16242_def : input16242 = (.seq input16241 input4648) := by
  unfold input16242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16241)).val
theorem output16242_def : output16242 = (output16241) := by
  unfold output16242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16242_skip : Flapjack.WordAlloc.isSkip output16242 = false := by
  rw [output16242_def]
  conv => lhs; cbv
  try rfl
theorem node16242_eq : Flapjack.WordAlloc.removeDeadStructural input16242 value2328 value1 value2 = (output16242, value6896, value1) := by
  rw [input16242_def, output16242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4648_eq]
  try dsimp only
  rw [node16241_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16242 input4647)).val
theorem input16243_def : input16243 = (.seq input16242 input4647) := by
  unfold input16243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16242 output4647)).val
theorem output16243_def : output16243 = (.seq output16242 output4647) := by
  unfold output16243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16243_skip : Flapjack.WordAlloc.isSkip output16243 = false := by
  rw [output16243_def]
  conv => lhs; cbv
  try rfl
theorem node16243_eq : Flapjack.WordAlloc.removeDeadStructural input16243 value2327 value1 value2 = (output16243, value6896, value1) := by
  rw [input16243_def, output16243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4647_eq]
  try dsimp only
  rw [node16242_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16243 input4646)).val
theorem input16244_def : input16244 = (.seq input16243 input4646) := by
  unfold input16244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16243 output4646)).val
theorem output16244_def : output16244 = (.seq output16243 output4646) := by
  unfold output16244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16244_skip : Flapjack.WordAlloc.isSkip output16244 = false := by
  rw [output16244_def]
  conv => lhs; cbv
  try rfl
theorem node16244_eq : Flapjack.WordAlloc.removeDeadStructural input16244 value5 value1 value2 = (output16244, value6896, value1) := by
  rw [input16244_def, output16244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4646_eq]
  try dsimp only
  rw [node16243_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16244 input4643)).val
theorem input16245_def : input16245 = (.seq input16244 input4643) := by
  unfold input16245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16244 output4643)).val
theorem output16245_def : output16245 = (.seq output16244 output4643) := by
  unfold output16245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16245_skip : Flapjack.WordAlloc.isSkip output16245 = false := by
  rw [output16245_def]
  conv => lhs; cbv
  try rfl
theorem node16245_eq : Flapjack.WordAlloc.removeDeadStructural input16245 value2320 value1 value2 = (output16245, value6896, value1) := by
  rw [input16245_def, output16245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4643_eq]
  try dsimp only
  rw [node16244_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16245 input4632)).val
theorem input16246_def : input16246 = (.seq input16245 input4632) := by
  unfold input16246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16245)).val
theorem output16246_def : output16246 = (output16245) := by
  unfold output16246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16246_skip : Flapjack.WordAlloc.isSkip output16246 = false := by
  rw [output16246_def]
  conv => lhs; cbv
  try rfl
theorem node16246_eq : Flapjack.WordAlloc.removeDeadStructural input16246 value2320 value1 value2 = (output16246, value6896, value1) := by
  rw [input16246_def, output16246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4632_eq]
  try dsimp only
  rw [node16245_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16246 input4631)).val
theorem input16247_def : input16247 = (.seq input16246 input4631) := by
  unfold input16247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16246 output4631)).val
theorem output16247_def : output16247 = (.seq output16246 output4631) := by
  unfold output16247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16247_skip : Flapjack.WordAlloc.isSkip output16247 = false := by
  rw [output16247_def]
  conv => lhs; cbv
  try rfl
theorem node16247_eq : Flapjack.WordAlloc.removeDeadStructural input16247 value2319 value1 value2 = (output16247, value6896, value1) := by
  rw [input16247_def, output16247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4631_eq]
  try dsimp only
  rw [node16246_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16247 input4630)).val
theorem input16248_def : input16248 = (.seq input16247 input4630) := by
  unfold input16248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16247 output4630)).val
theorem output16248_def : output16248 = (.seq output16247 output4630) := by
  unfold output16248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16248_skip : Flapjack.WordAlloc.isSkip output16248 = false := by
  rw [output16248_def]
  conv => lhs; cbv
  try rfl
theorem node16248_eq : Flapjack.WordAlloc.removeDeadStructural input16248 value5 value1 value2 = (output16248, value6896, value1) := by
  rw [input16248_def, output16248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4630_eq]
  try dsimp only
  rw [node16247_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16248 input4627)).val
theorem input16249_def : input16249 = (.seq input16248 input4627) := by
  unfold input16249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16248 output4627)).val
theorem output16249_def : output16249 = (.seq output16248 output4627) := by
  unfold output16249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16249_skip : Flapjack.WordAlloc.isSkip output16249 = false := by
  rw [output16249_def]
  conv => lhs; cbv
  try rfl
theorem node16249_eq : Flapjack.WordAlloc.removeDeadStructural input16249 value2312 value1 value2 = (output16249, value6896, value1) := by
  rw [input16249_def, output16249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4627_eq]
  try dsimp only
  rw [node16248_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16249 input4616)).val
theorem input16250_def : input16250 = (.seq input16249 input4616) := by
  unfold input16250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16249)).val
theorem output16250_def : output16250 = (output16249) := by
  unfold output16250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16250_skip : Flapjack.WordAlloc.isSkip output16250 = false := by
  rw [output16250_def]
  conv => lhs; cbv
  try rfl
theorem node16250_eq : Flapjack.WordAlloc.removeDeadStructural input16250 value2312 value1 value2 = (output16250, value6896, value1) := by
  rw [input16250_def, output16250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4616_eq]
  try dsimp only
  rw [node16249_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16250 input4615)).val
theorem input16251_def : input16251 = (.seq input16250 input4615) := by
  unfold input16251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16250 output4615)).val
theorem output16251_def : output16251 = (.seq output16250 output4615) := by
  unfold output16251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16251_skip : Flapjack.WordAlloc.isSkip output16251 = false := by
  rw [output16251_def]
  conv => lhs; cbv
  try rfl
theorem node16251_eq : Flapjack.WordAlloc.removeDeadStructural input16251 value2311 value1 value2 = (output16251, value6896, value1) := by
  rw [input16251_def, output16251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4615_eq]
  try dsimp only
  rw [node16250_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16251 input4614)).val
theorem input16252_def : input16252 = (.seq input16251 input4614) := by
  unfold input16252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16251 output4614)).val
theorem output16252_def : output16252 = (.seq output16251 output4614) := by
  unfold output16252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16252_skip : Flapjack.WordAlloc.isSkip output16252 = false := by
  rw [output16252_def]
  conv => lhs; cbv
  try rfl
theorem node16252_eq : Flapjack.WordAlloc.removeDeadStructural input16252 value5 value1 value2 = (output16252, value6896, value1) := by
  rw [input16252_def, output16252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4614_eq]
  try dsimp only
  rw [node16251_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16252 input4611)).val
theorem input16253_def : input16253 = (.seq input16252 input4611) := by
  unfold input16253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16252 output4611)).val
theorem output16253_def : output16253 = (.seq output16252 output4611) := by
  unfold output16253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16253_skip : Flapjack.WordAlloc.isSkip output16253 = false := by
  rw [output16253_def]
  conv => lhs; cbv
  try rfl
theorem node16253_eq : Flapjack.WordAlloc.removeDeadStructural input16253 value2304 value1 value2 = (output16253, value6896, value1) := by
  rw [input16253_def, output16253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4611_eq]
  try dsimp only
  rw [node16252_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16253 input4600)).val
theorem input16254_def : input16254 = (.seq input16253 input4600) := by
  unfold input16254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16253)).val
theorem output16254_def : output16254 = (output16253) := by
  unfold output16254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16254_skip : Flapjack.WordAlloc.isSkip output16254 = false := by
  rw [output16254_def]
  conv => lhs; cbv
  try rfl
theorem node16254_eq : Flapjack.WordAlloc.removeDeadStructural input16254 value2304 value1 value2 = (output16254, value6896, value1) := by
  rw [input16254_def, output16254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4600_eq]
  try dsimp only
  rw [node16253_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16254 input4599)).val
theorem input16255_def : input16255 = (.seq input16254 input4599) := by
  unfold input16255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16254 output4599)).val
theorem output16255_def : output16255 = (.seq output16254 output4599) := by
  unfold output16255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16255_skip : Flapjack.WordAlloc.isSkip output16255 = false := by
  rw [output16255_def]
  conv => lhs; cbv
  try rfl
theorem node16255_eq : Flapjack.WordAlloc.removeDeadStructural input16255 value2303 value1 value2 = (output16255, value6896, value1) := by
  rw [input16255_def, output16255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4599_eq]
  try dsimp only
  rw [node16254_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16255 input4598)).val
theorem input16256_def : input16256 = (.seq input16255 input4598) := by
  unfold input16256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16255 output4598)).val
theorem output16256_def : output16256 = (.seq output16255 output4598) := by
  unfold output16256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16256_skip : Flapjack.WordAlloc.isSkip output16256 = false := by
  rw [output16256_def]
  conv => lhs; cbv
  try rfl
theorem node16256_eq : Flapjack.WordAlloc.removeDeadStructural input16256 value5 value1 value2 = (output16256, value6896, value1) := by
  rw [input16256_def, output16256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4598_eq]
  try dsimp only
  rw [node16255_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16256 input4595)).val
theorem input16257_def : input16257 = (.seq input16256 input4595) := by
  unfold input16257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16256 output4595)).val
theorem output16257_def : output16257 = (.seq output16256 output4595) := by
  unfold output16257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16257_skip : Flapjack.WordAlloc.isSkip output16257 = false := by
  rw [output16257_def]
  conv => lhs; cbv
  try rfl
theorem node16257_eq : Flapjack.WordAlloc.removeDeadStructural input16257 value2296 value1 value2 = (output16257, value6896, value1) := by
  rw [input16257_def, output16257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4595_eq]
  try dsimp only
  rw [node16256_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16257 input4584)).val
theorem input16258_def : input16258 = (.seq input16257 input4584) := by
  unfold input16258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16257)).val
theorem output16258_def : output16258 = (output16257) := by
  unfold output16258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16258_skip : Flapjack.WordAlloc.isSkip output16258 = false := by
  rw [output16258_def]
  conv => lhs; cbv
  try rfl
theorem node16258_eq : Flapjack.WordAlloc.removeDeadStructural input16258 value2296 value1 value2 = (output16258, value6896, value1) := by
  rw [input16258_def, output16258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4584_eq]
  try dsimp only
  rw [node16257_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16258 input4583)).val
theorem input16259_def : input16259 = (.seq input16258 input4583) := by
  unfold input16259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16258 output4583)).val
theorem output16259_def : output16259 = (.seq output16258 output4583) := by
  unfold output16259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16259_skip : Flapjack.WordAlloc.isSkip output16259 = false := by
  rw [output16259_def]
  conv => lhs; cbv
  try rfl
theorem node16259_eq : Flapjack.WordAlloc.removeDeadStructural input16259 value2295 value1 value2 = (output16259, value6896, value1) := by
  rw [input16259_def, output16259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4583_eq]
  try dsimp only
  rw [node16258_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16259 input4582)).val
theorem input16260_def : input16260 = (.seq input16259 input4582) := by
  unfold input16260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16259 output4582)).val
theorem output16260_def : output16260 = (.seq output16259 output4582) := by
  unfold output16260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16260_skip : Flapjack.WordAlloc.isSkip output16260 = false := by
  rw [output16260_def]
  conv => lhs; cbv
  try rfl
theorem node16260_eq : Flapjack.WordAlloc.removeDeadStructural input16260 value5 value1 value2 = (output16260, value6896, value1) := by
  rw [input16260_def, output16260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4582_eq]
  try dsimp only
  rw [node16259_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16260 input4579)).val
theorem input16261_def : input16261 = (.seq input16260 input4579) := by
  unfold input16261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16260 output4579)).val
theorem output16261_def : output16261 = (.seq output16260 output4579) := by
  unfold output16261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16261_skip : Flapjack.WordAlloc.isSkip output16261 = false := by
  rw [output16261_def]
  conv => lhs; cbv
  try rfl
theorem node16261_eq : Flapjack.WordAlloc.removeDeadStructural input16261 value2288 value1 value2 = (output16261, value6896, value1) := by
  rw [input16261_def, output16261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4579_eq]
  try dsimp only
  rw [node16260_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16261 input4568)).val
theorem input16262_def : input16262 = (.seq input16261 input4568) := by
  unfold input16262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16261)).val
theorem output16262_def : output16262 = (output16261) := by
  unfold output16262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16262_skip : Flapjack.WordAlloc.isSkip output16262 = false := by
  rw [output16262_def]
  conv => lhs; cbv
  try rfl
theorem node16262_eq : Flapjack.WordAlloc.removeDeadStructural input16262 value2288 value1 value2 = (output16262, value6896, value1) := by
  rw [input16262_def, output16262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4568_eq]
  try dsimp only
  rw [node16261_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16262 input4567)).val
theorem input16263_def : input16263 = (.seq input16262 input4567) := by
  unfold input16263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16262 output4567)).val
theorem output16263_def : output16263 = (.seq output16262 output4567) := by
  unfold output16263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16263_skip : Flapjack.WordAlloc.isSkip output16263 = false := by
  rw [output16263_def]
  conv => lhs; cbv
  try rfl
theorem node16263_eq : Flapjack.WordAlloc.removeDeadStructural input16263 value2287 value1 value2 = (output16263, value6896, value1) := by
  rw [input16263_def, output16263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4567_eq]
  try dsimp only
  rw [node16262_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16263 input4566)).val
theorem input16264_def : input16264 = (.seq input16263 input4566) := by
  unfold input16264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16263 output4566)).val
theorem output16264_def : output16264 = (.seq output16263 output4566) := by
  unfold output16264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16264_skip : Flapjack.WordAlloc.isSkip output16264 = false := by
  rw [output16264_def]
  conv => lhs; cbv
  try rfl
theorem node16264_eq : Flapjack.WordAlloc.removeDeadStructural input16264 value5 value1 value2 = (output16264, value6896, value1) := by
  rw [input16264_def, output16264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4566_eq]
  try dsimp only
  rw [node16263_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16264 input4563)).val
theorem input16265_def : input16265 = (.seq input16264 input4563) := by
  unfold input16265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16264 output4563)).val
theorem output16265_def : output16265 = (.seq output16264 output4563) := by
  unfold output16265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16265_skip : Flapjack.WordAlloc.isSkip output16265 = false := by
  rw [output16265_def]
  conv => lhs; cbv
  try rfl
theorem node16265_eq : Flapjack.WordAlloc.removeDeadStructural input16265 value2280 value1 value2 = (output16265, value6896, value1) := by
  rw [input16265_def, output16265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4563_eq]
  try dsimp only
  rw [node16264_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16265 input4552)).val
theorem input16266_def : input16266 = (.seq input16265 input4552) := by
  unfold input16266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16265)).val
theorem output16266_def : output16266 = (output16265) := by
  unfold output16266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16266_skip : Flapjack.WordAlloc.isSkip output16266 = false := by
  rw [output16266_def]
  conv => lhs; cbv
  try rfl
theorem node16266_eq : Flapjack.WordAlloc.removeDeadStructural input16266 value2280 value1 value2 = (output16266, value6896, value1) := by
  rw [input16266_def, output16266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4552_eq]
  try dsimp only
  rw [node16265_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16266 input4551)).val
theorem input16267_def : input16267 = (.seq input16266 input4551) := by
  unfold input16267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16266 output4551)).val
theorem output16267_def : output16267 = (.seq output16266 output4551) := by
  unfold output16267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16267_skip : Flapjack.WordAlloc.isSkip output16267 = false := by
  rw [output16267_def]
  conv => lhs; cbv
  try rfl
theorem node16267_eq : Flapjack.WordAlloc.removeDeadStructural input16267 value2279 value1 value2 = (output16267, value6896, value1) := by
  rw [input16267_def, output16267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4551_eq]
  try dsimp only
  rw [node16266_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16267 input4550)).val
theorem input16268_def : input16268 = (.seq input16267 input4550) := by
  unfold input16268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16267 output4550)).val
theorem output16268_def : output16268 = (.seq output16267 output4550) := by
  unfold output16268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16268_skip : Flapjack.WordAlloc.isSkip output16268 = false := by
  rw [output16268_def]
  conv => lhs; cbv
  try rfl
theorem node16268_eq : Flapjack.WordAlloc.removeDeadStructural input16268 value5 value1 value2 = (output16268, value6896, value1) := by
  rw [input16268_def, output16268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4550_eq]
  try dsimp only
  rw [node16267_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16268 input4547)).val
theorem input16269_def : input16269 = (.seq input16268 input4547) := by
  unfold input16269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16268 output4547)).val
theorem output16269_def : output16269 = (.seq output16268 output4547) := by
  unfold output16269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16269_skip : Flapjack.WordAlloc.isSkip output16269 = false := by
  rw [output16269_def]
  conv => lhs; cbv
  try rfl
theorem node16269_eq : Flapjack.WordAlloc.removeDeadStructural input16269 value2272 value1 value2 = (output16269, value6896, value1) := by
  rw [input16269_def, output16269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4547_eq]
  try dsimp only
  rw [node16268_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16269 input4536)).val
theorem input16270_def : input16270 = (.seq input16269 input4536) := by
  unfold input16270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16269)).val
theorem output16270_def : output16270 = (output16269) := by
  unfold output16270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16270_skip : Flapjack.WordAlloc.isSkip output16270 = false := by
  rw [output16270_def]
  conv => lhs; cbv
  try rfl
theorem node16270_eq : Flapjack.WordAlloc.removeDeadStructural input16270 value2272 value1 value2 = (output16270, value6896, value1) := by
  rw [input16270_def, output16270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4536_eq]
  try dsimp only
  rw [node16269_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16270 input4535)).val
theorem input16271_def : input16271 = (.seq input16270 input4535) := by
  unfold input16271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16270 output4535)).val
theorem output16271_def : output16271 = (.seq output16270 output4535) := by
  unfold output16271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16271_skip : Flapjack.WordAlloc.isSkip output16271 = false := by
  rw [output16271_def]
  conv => lhs; cbv
  try rfl
theorem node16271_eq : Flapjack.WordAlloc.removeDeadStructural input16271 value2271 value1 value2 = (output16271, value6896, value1) := by
  rw [input16271_def, output16271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4535_eq]
  try dsimp only
  rw [node16270_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16271 input4534)).val
theorem input16272_def : input16272 = (.seq input16271 input4534) := by
  unfold input16272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16271 output4534)).val
theorem output16272_def : output16272 = (.seq output16271 output4534) := by
  unfold output16272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16272_skip : Flapjack.WordAlloc.isSkip output16272 = false := by
  rw [output16272_def]
  conv => lhs; cbv
  try rfl
theorem node16272_eq : Flapjack.WordAlloc.removeDeadStructural input16272 value5 value1 value2 = (output16272, value6896, value1) := by
  rw [input16272_def, output16272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4534_eq]
  try dsimp only
  rw [node16271_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16272 input4531)).val
theorem input16273_def : input16273 = (.seq input16272 input4531) := by
  unfold input16273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16272 output4531)).val
theorem output16273_def : output16273 = (.seq output16272 output4531) := by
  unfold output16273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16273_skip : Flapjack.WordAlloc.isSkip output16273 = false := by
  rw [output16273_def]
  conv => lhs; cbv
  try rfl
theorem node16273_eq : Flapjack.WordAlloc.removeDeadStructural input16273 value2264 value1 value2 = (output16273, value6896, value1) := by
  rw [input16273_def, output16273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4531_eq]
  try dsimp only
  rw [node16272_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16273 input4520)).val
theorem input16274_def : input16274 = (.seq input16273 input4520) := by
  unfold input16274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16273)).val
theorem output16274_def : output16274 = (output16273) := by
  unfold output16274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16274_skip : Flapjack.WordAlloc.isSkip output16274 = false := by
  rw [output16274_def]
  conv => lhs; cbv
  try rfl
theorem node16274_eq : Flapjack.WordAlloc.removeDeadStructural input16274 value2264 value1 value2 = (output16274, value6896, value1) := by
  rw [input16274_def, output16274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4520_eq]
  try dsimp only
  rw [node16273_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16274 input4519)).val
theorem input16275_def : input16275 = (.seq input16274 input4519) := by
  unfold input16275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16274 output4519)).val
theorem output16275_def : output16275 = (.seq output16274 output4519) := by
  unfold output16275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16275_skip : Flapjack.WordAlloc.isSkip output16275 = false := by
  rw [output16275_def]
  conv => lhs; cbv
  try rfl
theorem node16275_eq : Flapjack.WordAlloc.removeDeadStructural input16275 value2263 value1 value2 = (output16275, value6896, value1) := by
  rw [input16275_def, output16275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4519_eq]
  try dsimp only
  rw [node16274_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16275 input4518)).val
theorem input16276_def : input16276 = (.seq input16275 input4518) := by
  unfold input16276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16275 output4518)).val
theorem output16276_def : output16276 = (.seq output16275 output4518) := by
  unfold output16276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16276_skip : Flapjack.WordAlloc.isSkip output16276 = false := by
  rw [output16276_def]
  conv => lhs; cbv
  try rfl
theorem node16276_eq : Flapjack.WordAlloc.removeDeadStructural input16276 value5 value1 value2 = (output16276, value6896, value1) := by
  rw [input16276_def, output16276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4518_eq]
  try dsimp only
  rw [node16275_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16276 input4515)).val
theorem input16277_def : input16277 = (.seq input16276 input4515) := by
  unfold input16277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16276 output4515)).val
theorem output16277_def : output16277 = (.seq output16276 output4515) := by
  unfold output16277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16277_skip : Flapjack.WordAlloc.isSkip output16277 = false := by
  rw [output16277_def]
  conv => lhs; cbv
  try rfl
theorem node16277_eq : Flapjack.WordAlloc.removeDeadStructural input16277 value2256 value1 value2 = (output16277, value6896, value1) := by
  rw [input16277_def, output16277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4515_eq]
  try dsimp only
  rw [node16276_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16277 input4504)).val
theorem input16278_def : input16278 = (.seq input16277 input4504) := by
  unfold input16278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16277)).val
theorem output16278_def : output16278 = (output16277) := by
  unfold output16278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16278_skip : Flapjack.WordAlloc.isSkip output16278 = false := by
  rw [output16278_def]
  conv => lhs; cbv
  try rfl
theorem node16278_eq : Flapjack.WordAlloc.removeDeadStructural input16278 value2256 value1 value2 = (output16278, value6896, value1) := by
  rw [input16278_def, output16278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4504_eq]
  try dsimp only
  rw [node16277_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16278 input4503)).val
theorem input16279_def : input16279 = (.seq input16278 input4503) := by
  unfold input16279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16278 output4503)).val
theorem output16279_def : output16279 = (.seq output16278 output4503) := by
  unfold output16279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16279_skip : Flapjack.WordAlloc.isSkip output16279 = false := by
  rw [output16279_def]
  conv => lhs; cbv
  try rfl
theorem node16279_eq : Flapjack.WordAlloc.removeDeadStructural input16279 value2255 value1 value2 = (output16279, value6896, value1) := by
  rw [input16279_def, output16279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4503_eq]
  try dsimp only
  rw [node16278_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16279 input4502)).val
theorem input16280_def : input16280 = (.seq input16279 input4502) := by
  unfold input16280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16279 output4502)).val
theorem output16280_def : output16280 = (.seq output16279 output4502) := by
  unfold output16280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16280_skip : Flapjack.WordAlloc.isSkip output16280 = false := by
  rw [output16280_def]
  conv => lhs; cbv
  try rfl
theorem node16280_eq : Flapjack.WordAlloc.removeDeadStructural input16280 value5 value1 value2 = (output16280, value6896, value1) := by
  rw [input16280_def, output16280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4502_eq]
  try dsimp only
  rw [node16279_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16280 input4499)).val
theorem input16281_def : input16281 = (.seq input16280 input4499) := by
  unfold input16281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16280 output4499)).val
theorem output16281_def : output16281 = (.seq output16280 output4499) := by
  unfold output16281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16281_skip : Flapjack.WordAlloc.isSkip output16281 = false := by
  rw [output16281_def]
  conv => lhs; cbv
  try rfl
theorem node16281_eq : Flapjack.WordAlloc.removeDeadStructural input16281 value2248 value1 value2 = (output16281, value6896, value1) := by
  rw [input16281_def, output16281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4499_eq]
  try dsimp only
  rw [node16280_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16281 input4488)).val
theorem input16282_def : input16282 = (.seq input16281 input4488) := by
  unfold input16282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16281)).val
theorem output16282_def : output16282 = (output16281) := by
  unfold output16282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16282_skip : Flapjack.WordAlloc.isSkip output16282 = false := by
  rw [output16282_def]
  conv => lhs; cbv
  try rfl
theorem node16282_eq : Flapjack.WordAlloc.removeDeadStructural input16282 value2248 value1 value2 = (output16282, value6896, value1) := by
  rw [input16282_def, output16282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4488_eq]
  try dsimp only
  rw [node16281_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16282 input4487)).val
theorem input16283_def : input16283 = (.seq input16282 input4487) := by
  unfold input16283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16282 output4487)).val
theorem output16283_def : output16283 = (.seq output16282 output4487) := by
  unfold output16283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16283_skip : Flapjack.WordAlloc.isSkip output16283 = false := by
  rw [output16283_def]
  conv => lhs; cbv
  try rfl
theorem node16283_eq : Flapjack.WordAlloc.removeDeadStructural input16283 value2247 value1 value2 = (output16283, value6896, value1) := by
  rw [input16283_def, output16283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4487_eq]
  try dsimp only
  rw [node16282_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16283 input4486)).val
theorem input16284_def : input16284 = (.seq input16283 input4486) := by
  unfold input16284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16283 output4486)).val
theorem output16284_def : output16284 = (.seq output16283 output4486) := by
  unfold output16284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16284_skip : Flapjack.WordAlloc.isSkip output16284 = false := by
  rw [output16284_def]
  conv => lhs; cbv
  try rfl
theorem node16284_eq : Flapjack.WordAlloc.removeDeadStructural input16284 value5 value1 value2 = (output16284, value6896, value1) := by
  rw [input16284_def, output16284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4486_eq]
  try dsimp only
  rw [node16283_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16284 input4483)).val
theorem input16285_def : input16285 = (.seq input16284 input4483) := by
  unfold input16285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16284 output4483)).val
theorem output16285_def : output16285 = (.seq output16284 output4483) := by
  unfold output16285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16285_skip : Flapjack.WordAlloc.isSkip output16285 = false := by
  rw [output16285_def]
  conv => lhs; cbv
  try rfl
theorem node16285_eq : Flapjack.WordAlloc.removeDeadStructural input16285 value2240 value1 value2 = (output16285, value6896, value1) := by
  rw [input16285_def, output16285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4483_eq]
  try dsimp only
  rw [node16284_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16285 input4472)).val
theorem input16286_def : input16286 = (.seq input16285 input4472) := by
  unfold input16286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16285)).val
theorem output16286_def : output16286 = (output16285) := by
  unfold output16286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16286_skip : Flapjack.WordAlloc.isSkip output16286 = false := by
  rw [output16286_def]
  conv => lhs; cbv
  try rfl
theorem node16286_eq : Flapjack.WordAlloc.removeDeadStructural input16286 value2240 value1 value2 = (output16286, value6896, value1) := by
  rw [input16286_def, output16286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4472_eq]
  try dsimp only
  rw [node16285_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16286 input4471)).val
theorem input16287_def : input16287 = (.seq input16286 input4471) := by
  unfold input16287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16286 output4471)).val
theorem output16287_def : output16287 = (.seq output16286 output4471) := by
  unfold output16287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16287_skip : Flapjack.WordAlloc.isSkip output16287 = false := by
  rw [output16287_def]
  conv => lhs; cbv
  try rfl
theorem node16287_eq : Flapjack.WordAlloc.removeDeadStructural input16287 value2239 value1 value2 = (output16287, value6896, value1) := by
  rw [input16287_def, output16287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4471_eq]
  try dsimp only
  rw [node16286_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16287 input4470)).val
theorem input16288_def : input16288 = (.seq input16287 input4470) := by
  unfold input16288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16287 output4470)).val
theorem output16288_def : output16288 = (.seq output16287 output4470) := by
  unfold output16288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16288_skip : Flapjack.WordAlloc.isSkip output16288 = false := by
  rw [output16288_def]
  conv => lhs; cbv
  try rfl
theorem node16288_eq : Flapjack.WordAlloc.removeDeadStructural input16288 value5 value1 value2 = (output16288, value6896, value1) := by
  rw [input16288_def, output16288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4470_eq]
  try dsimp only
  rw [node16287_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16288 input4467)).val
theorem input16289_def : input16289 = (.seq input16288 input4467) := by
  unfold input16289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16288 output4467)).val
theorem output16289_def : output16289 = (.seq output16288 output4467) := by
  unfold output16289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16289_skip : Flapjack.WordAlloc.isSkip output16289 = false := by
  rw [output16289_def]
  conv => lhs; cbv
  try rfl
theorem node16289_eq : Flapjack.WordAlloc.removeDeadStructural input16289 value2232 value1 value2 = (output16289, value6896, value1) := by
  rw [input16289_def, output16289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4467_eq]
  try dsimp only
  rw [node16288_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16289 input4456)).val
theorem input16290_def : input16290 = (.seq input16289 input4456) := by
  unfold input16290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16289)).val
theorem output16290_def : output16290 = (output16289) := by
  unfold output16290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16290_skip : Flapjack.WordAlloc.isSkip output16290 = false := by
  rw [output16290_def]
  conv => lhs; cbv
  try rfl
theorem node16290_eq : Flapjack.WordAlloc.removeDeadStructural input16290 value2232 value1 value2 = (output16290, value6896, value1) := by
  rw [input16290_def, output16290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4456_eq]
  try dsimp only
  rw [node16289_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16290 input4455)).val
theorem input16291_def : input16291 = (.seq input16290 input4455) := by
  unfold input16291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16290 output4455)).val
theorem output16291_def : output16291 = (.seq output16290 output4455) := by
  unfold output16291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16291_skip : Flapjack.WordAlloc.isSkip output16291 = false := by
  rw [output16291_def]
  conv => lhs; cbv
  try rfl
theorem node16291_eq : Flapjack.WordAlloc.removeDeadStructural input16291 value2231 value1 value2 = (output16291, value6896, value1) := by
  rw [input16291_def, output16291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4455_eq]
  try dsimp only
  rw [node16290_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16291 input4454)).val
theorem input16292_def : input16292 = (.seq input16291 input4454) := by
  unfold input16292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16291 output4454)).val
theorem output16292_def : output16292 = (.seq output16291 output4454) := by
  unfold output16292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16292_skip : Flapjack.WordAlloc.isSkip output16292 = false := by
  rw [output16292_def]
  conv => lhs; cbv
  try rfl
theorem node16292_eq : Flapjack.WordAlloc.removeDeadStructural input16292 value5 value1 value2 = (output16292, value6896, value1) := by
  rw [input16292_def, output16292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4454_eq]
  try dsimp only
  rw [node16291_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16292 input4451)).val
theorem input16293_def : input16293 = (.seq input16292 input4451) := by
  unfold input16293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16292 output4451)).val
theorem output16293_def : output16293 = (.seq output16292 output4451) := by
  unfold output16293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16293_skip : Flapjack.WordAlloc.isSkip output16293 = false := by
  rw [output16293_def]
  conv => lhs; cbv
  try rfl
theorem node16293_eq : Flapjack.WordAlloc.removeDeadStructural input16293 value2224 value1 value2 = (output16293, value6896, value1) := by
  rw [input16293_def, output16293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4451_eq]
  try dsimp only
  rw [node16292_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16293 input4440)).val
theorem input16294_def : input16294 = (.seq input16293 input4440) := by
  unfold input16294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16293)).val
theorem output16294_def : output16294 = (output16293) := by
  unfold output16294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16294_skip : Flapjack.WordAlloc.isSkip output16294 = false := by
  rw [output16294_def]
  conv => lhs; cbv
  try rfl
theorem node16294_eq : Flapjack.WordAlloc.removeDeadStructural input16294 value2224 value1 value2 = (output16294, value6896, value1) := by
  rw [input16294_def, output16294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4440_eq]
  try dsimp only
  rw [node16293_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16294 input4439)).val
theorem input16295_def : input16295 = (.seq input16294 input4439) := by
  unfold input16295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16294 output4439)).val
theorem output16295_def : output16295 = (.seq output16294 output4439) := by
  unfold output16295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16295_skip : Flapjack.WordAlloc.isSkip output16295 = false := by
  rw [output16295_def]
  conv => lhs; cbv
  try rfl
theorem node16295_eq : Flapjack.WordAlloc.removeDeadStructural input16295 value2223 value1 value2 = (output16295, value6896, value1) := by
  rw [input16295_def, output16295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4439_eq]
  try dsimp only
  rw [node16294_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16295 input4438)).val
theorem input16296_def : input16296 = (.seq input16295 input4438) := by
  unfold input16296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16295 output4438)).val
theorem output16296_def : output16296 = (.seq output16295 output4438) := by
  unfold output16296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16296_skip : Flapjack.WordAlloc.isSkip output16296 = false := by
  rw [output16296_def]
  conv => lhs; cbv
  try rfl
theorem node16296_eq : Flapjack.WordAlloc.removeDeadStructural input16296 value5 value1 value2 = (output16296, value6896, value1) := by
  rw [input16296_def, output16296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4438_eq]
  try dsimp only
  rw [node16295_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16296 input4435)).val
theorem input16297_def : input16297 = (.seq input16296 input4435) := by
  unfold input16297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16296 output4435)).val
theorem output16297_def : output16297 = (.seq output16296 output4435) := by
  unfold output16297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16297_skip : Flapjack.WordAlloc.isSkip output16297 = false := by
  rw [output16297_def]
  conv => lhs; cbv
  try rfl
theorem node16297_eq : Flapjack.WordAlloc.removeDeadStructural input16297 value2216 value1 value2 = (output16297, value6896, value1) := by
  rw [input16297_def, output16297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4435_eq]
  try dsimp only
  rw [node16296_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16297 input4424)).val
theorem input16298_def : input16298 = (.seq input16297 input4424) := by
  unfold input16298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16297)).val
theorem output16298_def : output16298 = (output16297) := by
  unfold output16298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16298_skip : Flapjack.WordAlloc.isSkip output16298 = false := by
  rw [output16298_def]
  conv => lhs; cbv
  try rfl
theorem node16298_eq : Flapjack.WordAlloc.removeDeadStructural input16298 value2216 value1 value2 = (output16298, value6896, value1) := by
  rw [input16298_def, output16298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4424_eq]
  try dsimp only
  rw [node16297_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16298 input4423)).val
theorem input16299_def : input16299 = (.seq input16298 input4423) := by
  unfold input16299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16298 output4423)).val
theorem output16299_def : output16299 = (.seq output16298 output4423) := by
  unfold output16299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16299_skip : Flapjack.WordAlloc.isSkip output16299 = false := by
  rw [output16299_def]
  conv => lhs; cbv
  try rfl
theorem node16299_eq : Flapjack.WordAlloc.removeDeadStructural input16299 value2215 value1 value2 = (output16299, value6896, value1) := by
  rw [input16299_def, output16299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4423_eq]
  try dsimp only
  rw [node16298_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16299 input4422)).val
theorem input16300_def : input16300 = (.seq input16299 input4422) := by
  unfold input16300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16299 output4422)).val
theorem output16300_def : output16300 = (.seq output16299 output4422) := by
  unfold output16300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16300_skip : Flapjack.WordAlloc.isSkip output16300 = false := by
  rw [output16300_def]
  conv => lhs; cbv
  try rfl
theorem node16300_eq : Flapjack.WordAlloc.removeDeadStructural input16300 value5 value1 value2 = (output16300, value6896, value1) := by
  rw [input16300_def, output16300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4422_eq]
  try dsimp only
  rw [node16299_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16300 input4419)).val
theorem input16301_def : input16301 = (.seq input16300 input4419) := by
  unfold input16301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16300 output4419)).val
theorem output16301_def : output16301 = (.seq output16300 output4419) := by
  unfold output16301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16301_skip : Flapjack.WordAlloc.isSkip output16301 = false := by
  rw [output16301_def]
  conv => lhs; cbv
  try rfl
theorem node16301_eq : Flapjack.WordAlloc.removeDeadStructural input16301 value2208 value1 value2 = (output16301, value6896, value1) := by
  rw [input16301_def, output16301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4419_eq]
  try dsimp only
  rw [node16300_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16301 input4408)).val
theorem input16302_def : input16302 = (.seq input16301 input4408) := by
  unfold input16302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16301)).val
theorem output16302_def : output16302 = (output16301) := by
  unfold output16302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16302_skip : Flapjack.WordAlloc.isSkip output16302 = false := by
  rw [output16302_def]
  conv => lhs; cbv
  try rfl
theorem node16302_eq : Flapjack.WordAlloc.removeDeadStructural input16302 value2208 value1 value2 = (output16302, value6896, value1) := by
  rw [input16302_def, output16302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4408_eq]
  try dsimp only
  rw [node16301_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16302 input4407)).val
theorem input16303_def : input16303 = (.seq input16302 input4407) := by
  unfold input16303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16302 output4407)).val
theorem output16303_def : output16303 = (.seq output16302 output4407) := by
  unfold output16303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16303_skip : Flapjack.WordAlloc.isSkip output16303 = false := by
  rw [output16303_def]
  conv => lhs; cbv
  try rfl
theorem node16303_eq : Flapjack.WordAlloc.removeDeadStructural input16303 value2207 value1 value2 = (output16303, value6896, value1) := by
  rw [input16303_def, output16303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4407_eq]
  try dsimp only
  rw [node16302_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16303 input4406)).val
theorem input16304_def : input16304 = (.seq input16303 input4406) := by
  unfold input16304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16303 output4406)).val
theorem output16304_def : output16304 = (.seq output16303 output4406) := by
  unfold output16304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16304_skip : Flapjack.WordAlloc.isSkip output16304 = false := by
  rw [output16304_def]
  conv => lhs; cbv
  try rfl
theorem node16304_eq : Flapjack.WordAlloc.removeDeadStructural input16304 value5 value1 value2 = (output16304, value6896, value1) := by
  rw [input16304_def, output16304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4406_eq]
  try dsimp only
  rw [node16303_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16304 input4403)).val
theorem input16305_def : input16305 = (.seq input16304 input4403) := by
  unfold input16305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16304 output4403)).val
theorem output16305_def : output16305 = (.seq output16304 output4403) := by
  unfold output16305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16305_skip : Flapjack.WordAlloc.isSkip output16305 = false := by
  rw [output16305_def]
  conv => lhs; cbv
  try rfl
theorem node16305_eq : Flapjack.WordAlloc.removeDeadStructural input16305 value2200 value1 value2 = (output16305, value6896, value1) := by
  rw [input16305_def, output16305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4403_eq]
  try dsimp only
  rw [node16304_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16305 input4392)).val
theorem input16306_def : input16306 = (.seq input16305 input4392) := by
  unfold input16306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16305)).val
theorem output16306_def : output16306 = (output16305) := by
  unfold output16306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16306_skip : Flapjack.WordAlloc.isSkip output16306 = false := by
  rw [output16306_def]
  conv => lhs; cbv
  try rfl
theorem node16306_eq : Flapjack.WordAlloc.removeDeadStructural input16306 value2200 value1 value2 = (output16306, value6896, value1) := by
  rw [input16306_def, output16306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4392_eq]
  try dsimp only
  rw [node16305_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16306 input4391)).val
theorem input16307_def : input16307 = (.seq input16306 input4391) := by
  unfold input16307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16306 output4391)).val
theorem output16307_def : output16307 = (.seq output16306 output4391) := by
  unfold output16307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16307_skip : Flapjack.WordAlloc.isSkip output16307 = false := by
  rw [output16307_def]
  conv => lhs; cbv
  try rfl
theorem node16307_eq : Flapjack.WordAlloc.removeDeadStructural input16307 value2199 value1 value2 = (output16307, value6896, value1) := by
  rw [input16307_def, output16307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4391_eq]
  try dsimp only
  rw [node16306_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16307 input4390)).val
theorem input16308_def : input16308 = (.seq input16307 input4390) := by
  unfold input16308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16307 output4390)).val
theorem output16308_def : output16308 = (.seq output16307 output4390) := by
  unfold output16308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16308_skip : Flapjack.WordAlloc.isSkip output16308 = false := by
  rw [output16308_def]
  conv => lhs; cbv
  try rfl
theorem node16308_eq : Flapjack.WordAlloc.removeDeadStructural input16308 value5 value1 value2 = (output16308, value6896, value1) := by
  rw [input16308_def, output16308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4390_eq]
  try dsimp only
  rw [node16307_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16308 input4387)).val
theorem input16309_def : input16309 = (.seq input16308 input4387) := by
  unfold input16309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16308 output4387)).val
theorem output16309_def : output16309 = (.seq output16308 output4387) := by
  unfold output16309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16309_skip : Flapjack.WordAlloc.isSkip output16309 = false := by
  rw [output16309_def]
  conv => lhs; cbv
  try rfl
theorem node16309_eq : Flapjack.WordAlloc.removeDeadStructural input16309 value2192 value1 value2 = (output16309, value6896, value1) := by
  rw [input16309_def, output16309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4387_eq]
  try dsimp only
  rw [node16308_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16309 input4376)).val
theorem input16310_def : input16310 = (.seq input16309 input4376) := by
  unfold input16310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16309)).val
theorem output16310_def : output16310 = (output16309) := by
  unfold output16310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16310_skip : Flapjack.WordAlloc.isSkip output16310 = false := by
  rw [output16310_def]
  conv => lhs; cbv
  try rfl
theorem node16310_eq : Flapjack.WordAlloc.removeDeadStructural input16310 value2192 value1 value2 = (output16310, value6896, value1) := by
  rw [input16310_def, output16310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4376_eq]
  try dsimp only
  rw [node16309_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16310 input4375)).val
theorem input16311_def : input16311 = (.seq input16310 input4375) := by
  unfold input16311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16310 output4375)).val
theorem output16311_def : output16311 = (.seq output16310 output4375) := by
  unfold output16311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16311_skip : Flapjack.WordAlloc.isSkip output16311 = false := by
  rw [output16311_def]
  conv => lhs; cbv
  try rfl
theorem node16311_eq : Flapjack.WordAlloc.removeDeadStructural input16311 value2191 value1 value2 = (output16311, value6896, value1) := by
  rw [input16311_def, output16311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4375_eq]
  try dsimp only
  rw [node16310_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16311 input4374)).val
theorem input16312_def : input16312 = (.seq input16311 input4374) := by
  unfold input16312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16311 output4374)).val
theorem output16312_def : output16312 = (.seq output16311 output4374) := by
  unfold output16312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16312_skip : Flapjack.WordAlloc.isSkip output16312 = false := by
  rw [output16312_def]
  conv => lhs; cbv
  try rfl
theorem node16312_eq : Flapjack.WordAlloc.removeDeadStructural input16312 value5 value1 value2 = (output16312, value6896, value1) := by
  rw [input16312_def, output16312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4374_eq]
  try dsimp only
  rw [node16311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16312 input4371)).val
theorem input16313_def : input16313 = (.seq input16312 input4371) := by
  unfold input16313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16312 output4371)).val
theorem output16313_def : output16313 = (.seq output16312 output4371) := by
  unfold output16313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16313_skip : Flapjack.WordAlloc.isSkip output16313 = false := by
  rw [output16313_def]
  conv => lhs; cbv
  try rfl
theorem node16313_eq : Flapjack.WordAlloc.removeDeadStructural input16313 value2184 value1 value2 = (output16313, value6896, value1) := by
  rw [input16313_def, output16313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4371_eq]
  try dsimp only
  rw [node16312_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16313 input4360)).val
theorem input16314_def : input16314 = (.seq input16313 input4360) := by
  unfold input16314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16313)).val
theorem output16314_def : output16314 = (output16313) := by
  unfold output16314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16314_skip : Flapjack.WordAlloc.isSkip output16314 = false := by
  rw [output16314_def]
  conv => lhs; cbv
  try rfl
theorem node16314_eq : Flapjack.WordAlloc.removeDeadStructural input16314 value2184 value1 value2 = (output16314, value6896, value1) := by
  rw [input16314_def, output16314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4360_eq]
  try dsimp only
  rw [node16313_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16314 input4359)).val
theorem input16315_def : input16315 = (.seq input16314 input4359) := by
  unfold input16315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16314 output4359)).val
theorem output16315_def : output16315 = (.seq output16314 output4359) := by
  unfold output16315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16315_skip : Flapjack.WordAlloc.isSkip output16315 = false := by
  rw [output16315_def]
  conv => lhs; cbv
  try rfl
theorem node16315_eq : Flapjack.WordAlloc.removeDeadStructural input16315 value2183 value1 value2 = (output16315, value6896, value1) := by
  rw [input16315_def, output16315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4359_eq]
  try dsimp only
  rw [node16314_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16315 input4358)).val
theorem input16316_def : input16316 = (.seq input16315 input4358) := by
  unfold input16316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16315 output4358)).val
theorem output16316_def : output16316 = (.seq output16315 output4358) := by
  unfold output16316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16316_skip : Flapjack.WordAlloc.isSkip output16316 = false := by
  rw [output16316_def]
  conv => lhs; cbv
  try rfl
theorem node16316_eq : Flapjack.WordAlloc.removeDeadStructural input16316 value5 value1 value2 = (output16316, value6896, value1) := by
  rw [input16316_def, output16316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4358_eq]
  try dsimp only
  rw [node16315_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16316 input4355)).val
theorem input16317_def : input16317 = (.seq input16316 input4355) := by
  unfold input16317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16316 output4355)).val
theorem output16317_def : output16317 = (.seq output16316 output4355) := by
  unfold output16317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16317_skip : Flapjack.WordAlloc.isSkip output16317 = false := by
  rw [output16317_def]
  conv => lhs; cbv
  try rfl
theorem node16317_eq : Flapjack.WordAlloc.removeDeadStructural input16317 value2176 value1 value2 = (output16317, value6896, value1) := by
  rw [input16317_def, output16317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4355_eq]
  try dsimp only
  rw [node16316_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16317 input4344)).val
theorem input16318_def : input16318 = (.seq input16317 input4344) := by
  unfold input16318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16317)).val
theorem output16318_def : output16318 = (output16317) := by
  unfold output16318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16318_skip : Flapjack.WordAlloc.isSkip output16318 = false := by
  rw [output16318_def]
  conv => lhs; cbv
  try rfl
theorem node16318_eq : Flapjack.WordAlloc.removeDeadStructural input16318 value2176 value1 value2 = (output16318, value6896, value1) := by
  rw [input16318_def, output16318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4344_eq]
  try dsimp only
  rw [node16317_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16318 input4343)).val
theorem input16319_def : input16319 = (.seq input16318 input4343) := by
  unfold input16319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16318 output4343)).val
theorem output16319_def : output16319 = (.seq output16318 output4343) := by
  unfold output16319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16319_skip : Flapjack.WordAlloc.isSkip output16319 = false := by
  rw [output16319_def]
  conv => lhs; cbv
  try rfl
theorem node16319_eq : Flapjack.WordAlloc.removeDeadStructural input16319 value2175 value1 value2 = (output16319, value6896, value1) := by
  rw [input16319_def, output16319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4343_eq]
  try dsimp only
  rw [node16318_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16319 input4342)).val
theorem input16320_def : input16320 = (.seq input16319 input4342) := by
  unfold input16320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16319 output4342)).val
theorem output16320_def : output16320 = (.seq output16319 output4342) := by
  unfold output16320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16320_skip : Flapjack.WordAlloc.isSkip output16320 = false := by
  rw [output16320_def]
  conv => lhs; cbv
  try rfl
theorem node16320_eq : Flapjack.WordAlloc.removeDeadStructural input16320 value5 value1 value2 = (output16320, value6896, value1) := by
  rw [input16320_def, output16320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4342_eq]
  try dsimp only
  rw [node16319_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16320 input4339)).val
theorem input16321_def : input16321 = (.seq input16320 input4339) := by
  unfold input16321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16320 output4339)).val
theorem output16321_def : output16321 = (.seq output16320 output4339) := by
  unfold output16321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16321_skip : Flapjack.WordAlloc.isSkip output16321 = false := by
  rw [output16321_def]
  conv => lhs; cbv
  try rfl
theorem node16321_eq : Flapjack.WordAlloc.removeDeadStructural input16321 value2168 value1 value2 = (output16321, value6896, value1) := by
  rw [input16321_def, output16321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4339_eq]
  try dsimp only
  rw [node16320_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16321 input4328)).val
theorem input16322_def : input16322 = (.seq input16321 input4328) := by
  unfold input16322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16321)).val
theorem output16322_def : output16322 = (output16321) := by
  unfold output16322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16322_skip : Flapjack.WordAlloc.isSkip output16322 = false := by
  rw [output16322_def]
  conv => lhs; cbv
  try rfl
theorem node16322_eq : Flapjack.WordAlloc.removeDeadStructural input16322 value2168 value1 value2 = (output16322, value6896, value1) := by
  rw [input16322_def, output16322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4328_eq]
  try dsimp only
  rw [node16321_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16322 input4327)).val
theorem input16323_def : input16323 = (.seq input16322 input4327) := by
  unfold input16323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16322 output4327)).val
theorem output16323_def : output16323 = (.seq output16322 output4327) := by
  unfold output16323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16323_skip : Flapjack.WordAlloc.isSkip output16323 = false := by
  rw [output16323_def]
  conv => lhs; cbv
  try rfl
theorem node16323_eq : Flapjack.WordAlloc.removeDeadStructural input16323 value2167 value1 value2 = (output16323, value6896, value1) := by
  rw [input16323_def, output16323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4327_eq]
  try dsimp only
  rw [node16322_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16323 input4326)).val
theorem input16324_def : input16324 = (.seq input16323 input4326) := by
  unfold input16324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16323 output4326)).val
theorem output16324_def : output16324 = (.seq output16323 output4326) := by
  unfold output16324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16324_skip : Flapjack.WordAlloc.isSkip output16324 = false := by
  rw [output16324_def]
  conv => lhs; cbv
  try rfl
theorem node16324_eq : Flapjack.WordAlloc.removeDeadStructural input16324 value5 value1 value2 = (output16324, value6896, value1) := by
  rw [input16324_def, output16324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4326_eq]
  try dsimp only
  rw [node16323_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16324 input4323)).val
theorem input16325_def : input16325 = (.seq input16324 input4323) := by
  unfold input16325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16324 output4323)).val
theorem output16325_def : output16325 = (.seq output16324 output4323) := by
  unfold output16325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16325_skip : Flapjack.WordAlloc.isSkip output16325 = false := by
  rw [output16325_def]
  conv => lhs; cbv
  try rfl
theorem node16325_eq : Flapjack.WordAlloc.removeDeadStructural input16325 value2160 value1 value2 = (output16325, value6896, value1) := by
  rw [input16325_def, output16325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4323_eq]
  try dsimp only
  rw [node16324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16325 input4312)).val
theorem input16326_def : input16326 = (.seq input16325 input4312) := by
  unfold input16326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16325)).val
theorem output16326_def : output16326 = (output16325) := by
  unfold output16326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16326_skip : Flapjack.WordAlloc.isSkip output16326 = false := by
  rw [output16326_def]
  conv => lhs; cbv
  try rfl
theorem node16326_eq : Flapjack.WordAlloc.removeDeadStructural input16326 value2160 value1 value2 = (output16326, value6896, value1) := by
  rw [input16326_def, output16326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4312_eq]
  try dsimp only
  rw [node16325_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16326 input4311)).val
theorem input16327_def : input16327 = (.seq input16326 input4311) := by
  unfold input16327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16326 output4311)).val
theorem output16327_def : output16327 = (.seq output16326 output4311) := by
  unfold output16327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16327_skip : Flapjack.WordAlloc.isSkip output16327 = false := by
  rw [output16327_def]
  conv => lhs; cbv
  try rfl
theorem node16327_eq : Flapjack.WordAlloc.removeDeadStructural input16327 value2159 value1 value2 = (output16327, value6896, value1) := by
  rw [input16327_def, output16327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4311_eq]
  try dsimp only
  rw [node16326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16327 input4310)).val
theorem input16328_def : input16328 = (.seq input16327 input4310) := by
  unfold input16328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16327 output4310)).val
theorem output16328_def : output16328 = (.seq output16327 output4310) := by
  unfold output16328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16328_skip : Flapjack.WordAlloc.isSkip output16328 = false := by
  rw [output16328_def]
  conv => lhs; cbv
  try rfl
theorem node16328_eq : Flapjack.WordAlloc.removeDeadStructural input16328 value5 value1 value2 = (output16328, value6896, value1) := by
  rw [input16328_def, output16328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4310_eq]
  try dsimp only
  rw [node16327_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16328 input4307)).val
theorem input16329_def : input16329 = (.seq input16328 input4307) := by
  unfold input16329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16328 output4307)).val
theorem output16329_def : output16329 = (.seq output16328 output4307) := by
  unfold output16329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16329_skip : Flapjack.WordAlloc.isSkip output16329 = false := by
  rw [output16329_def]
  conv => lhs; cbv
  try rfl
theorem node16329_eq : Flapjack.WordAlloc.removeDeadStructural input16329 value2152 value1 value2 = (output16329, value6896, value1) := by
  rw [input16329_def, output16329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4307_eq]
  try dsimp only
  rw [node16328_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16329 input4296)).val
theorem input16330_def : input16330 = (.seq input16329 input4296) := by
  unfold input16330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16329)).val
theorem output16330_def : output16330 = (output16329) := by
  unfold output16330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16330_skip : Flapjack.WordAlloc.isSkip output16330 = false := by
  rw [output16330_def]
  conv => lhs; cbv
  try rfl
theorem node16330_eq : Flapjack.WordAlloc.removeDeadStructural input16330 value2152 value1 value2 = (output16330, value6896, value1) := by
  rw [input16330_def, output16330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4296_eq]
  try dsimp only
  rw [node16329_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16330 input4295)).val
theorem input16331_def : input16331 = (.seq input16330 input4295) := by
  unfold input16331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16330 output4295)).val
theorem output16331_def : output16331 = (.seq output16330 output4295) := by
  unfold output16331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16331_skip : Flapjack.WordAlloc.isSkip output16331 = false := by
  rw [output16331_def]
  conv => lhs; cbv
  try rfl
theorem node16331_eq : Flapjack.WordAlloc.removeDeadStructural input16331 value2151 value1 value2 = (output16331, value6896, value1) := by
  rw [input16331_def, output16331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4295_eq]
  try dsimp only
  rw [node16330_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16331 input4294)).val
theorem input16332_def : input16332 = (.seq input16331 input4294) := by
  unfold input16332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16331 output4294)).val
theorem output16332_def : output16332 = (.seq output16331 output4294) := by
  unfold output16332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16332_skip : Flapjack.WordAlloc.isSkip output16332 = false := by
  rw [output16332_def]
  conv => lhs; cbv
  try rfl
theorem node16332_eq : Flapjack.WordAlloc.removeDeadStructural input16332 value5 value1 value2 = (output16332, value6896, value1) := by
  rw [input16332_def, output16332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4294_eq]
  try dsimp only
  rw [node16331_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16332 input4291)).val
theorem input16333_def : input16333 = (.seq input16332 input4291) := by
  unfold input16333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16332 output4291)).val
theorem output16333_def : output16333 = (.seq output16332 output4291) := by
  unfold output16333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16333_skip : Flapjack.WordAlloc.isSkip output16333 = false := by
  rw [output16333_def]
  conv => lhs; cbv
  try rfl
theorem node16333_eq : Flapjack.WordAlloc.removeDeadStructural input16333 value2144 value1 value2 = (output16333, value6896, value1) := by
  rw [input16333_def, output16333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4291_eq]
  try dsimp only
  rw [node16332_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16333 input4280)).val
theorem input16334_def : input16334 = (.seq input16333 input4280) := by
  unfold input16334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16333)).val
theorem output16334_def : output16334 = (output16333) := by
  unfold output16334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16334_skip : Flapjack.WordAlloc.isSkip output16334 = false := by
  rw [output16334_def]
  conv => lhs; cbv
  try rfl
theorem node16334_eq : Flapjack.WordAlloc.removeDeadStructural input16334 value2144 value1 value2 = (output16334, value6896, value1) := by
  rw [input16334_def, output16334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4280_eq]
  try dsimp only
  rw [node16333_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16334 input4279)).val
theorem input16335_def : input16335 = (.seq input16334 input4279) := by
  unfold input16335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16334 output4279)).val
theorem output16335_def : output16335 = (.seq output16334 output4279) := by
  unfold output16335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16335_skip : Flapjack.WordAlloc.isSkip output16335 = false := by
  rw [output16335_def]
  conv => lhs; cbv
  try rfl
theorem node16335_eq : Flapjack.WordAlloc.removeDeadStructural input16335 value2143 value1 value2 = (output16335, value6896, value1) := by
  rw [input16335_def, output16335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4279_eq]
  try dsimp only
  rw [node16334_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16335 input4278)).val
theorem input16336_def : input16336 = (.seq input16335 input4278) := by
  unfold input16336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16335 output4278)).val
theorem output16336_def : output16336 = (.seq output16335 output4278) := by
  unfold output16336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16336_skip : Flapjack.WordAlloc.isSkip output16336 = false := by
  rw [output16336_def]
  conv => lhs; cbv
  try rfl
theorem node16336_eq : Flapjack.WordAlloc.removeDeadStructural input16336 value5 value1 value2 = (output16336, value6896, value1) := by
  rw [input16336_def, output16336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4278_eq]
  try dsimp only
  rw [node16335_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16336 input4275)).val
theorem input16337_def : input16337 = (.seq input16336 input4275) := by
  unfold input16337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16336 output4275)).val
theorem output16337_def : output16337 = (.seq output16336 output4275) := by
  unfold output16337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16337_skip : Flapjack.WordAlloc.isSkip output16337 = false := by
  rw [output16337_def]
  conv => lhs; cbv
  try rfl
theorem node16337_eq : Flapjack.WordAlloc.removeDeadStructural input16337 value2136 value1 value2 = (output16337, value6896, value1) := by
  rw [input16337_def, output16337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4275_eq]
  try dsimp only
  rw [node16336_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16337 input4264)).val
theorem input16338_def : input16338 = (.seq input16337 input4264) := by
  unfold input16338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16337)).val
theorem output16338_def : output16338 = (output16337) := by
  unfold output16338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16338_skip : Flapjack.WordAlloc.isSkip output16338 = false := by
  rw [output16338_def]
  conv => lhs; cbv
  try rfl
theorem node16338_eq : Flapjack.WordAlloc.removeDeadStructural input16338 value2136 value1 value2 = (output16338, value6896, value1) := by
  rw [input16338_def, output16338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4264_eq]
  try dsimp only
  rw [node16337_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16338 input4263)).val
theorem input16339_def : input16339 = (.seq input16338 input4263) := by
  unfold input16339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16338 output4263)).val
theorem output16339_def : output16339 = (.seq output16338 output4263) := by
  unfold output16339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16339_skip : Flapjack.WordAlloc.isSkip output16339 = false := by
  rw [output16339_def]
  conv => lhs; cbv
  try rfl
theorem node16339_eq : Flapjack.WordAlloc.removeDeadStructural input16339 value2135 value1 value2 = (output16339, value6896, value1) := by
  rw [input16339_def, output16339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4263_eq]
  try dsimp only
  rw [node16338_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16339 input4262)).val
theorem input16340_def : input16340 = (.seq input16339 input4262) := by
  unfold input16340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16339 output4262)).val
theorem output16340_def : output16340 = (.seq output16339 output4262) := by
  unfold output16340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16340_skip : Flapjack.WordAlloc.isSkip output16340 = false := by
  rw [output16340_def]
  conv => lhs; cbv
  try rfl
theorem node16340_eq : Flapjack.WordAlloc.removeDeadStructural input16340 value5 value1 value2 = (output16340, value6896, value1) := by
  rw [input16340_def, output16340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4262_eq]
  try dsimp only
  rw [node16339_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16340 input4259)).val
theorem input16341_def : input16341 = (.seq input16340 input4259) := by
  unfold input16341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16340 output4259)).val
theorem output16341_def : output16341 = (.seq output16340 output4259) := by
  unfold output16341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16341_skip : Flapjack.WordAlloc.isSkip output16341 = false := by
  rw [output16341_def]
  conv => lhs; cbv
  try rfl
theorem node16341_eq : Flapjack.WordAlloc.removeDeadStructural input16341 value2128 value1 value2 = (output16341, value6896, value1) := by
  rw [input16341_def, output16341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4259_eq]
  try dsimp only
  rw [node16340_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16341 input4248)).val
theorem input16342_def : input16342 = (.seq input16341 input4248) := by
  unfold input16342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16341)).val
theorem output16342_def : output16342 = (output16341) := by
  unfold output16342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16342_skip : Flapjack.WordAlloc.isSkip output16342 = false := by
  rw [output16342_def]
  conv => lhs; cbv
  try rfl
theorem node16342_eq : Flapjack.WordAlloc.removeDeadStructural input16342 value2128 value1 value2 = (output16342, value6896, value1) := by
  rw [input16342_def, output16342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4248_eq]
  try dsimp only
  rw [node16341_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16342 input4247)).val
theorem input16343_def : input16343 = (.seq input16342 input4247) := by
  unfold input16343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16342 output4247)).val
theorem output16343_def : output16343 = (.seq output16342 output4247) := by
  unfold output16343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16343_skip : Flapjack.WordAlloc.isSkip output16343 = false := by
  rw [output16343_def]
  conv => lhs; cbv
  try rfl
theorem node16343_eq : Flapjack.WordAlloc.removeDeadStructural input16343 value2127 value1 value2 = (output16343, value6896, value1) := by
  rw [input16343_def, output16343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4247_eq]
  try dsimp only
  rw [node16342_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16343 input4246)).val
theorem input16344_def : input16344 = (.seq input16343 input4246) := by
  unfold input16344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16343 output4246)).val
theorem output16344_def : output16344 = (.seq output16343 output4246) := by
  unfold output16344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16344_skip : Flapjack.WordAlloc.isSkip output16344 = false := by
  rw [output16344_def]
  conv => lhs; cbv
  try rfl
theorem node16344_eq : Flapjack.WordAlloc.removeDeadStructural input16344 value5 value1 value2 = (output16344, value6896, value1) := by
  rw [input16344_def, output16344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4246_eq]
  try dsimp only
  rw [node16343_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16344 input4243)).val
theorem input16345_def : input16345 = (.seq input16344 input4243) := by
  unfold input16345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16344 output4243)).val
theorem output16345_def : output16345 = (.seq output16344 output4243) := by
  unfold output16345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16345_skip : Flapjack.WordAlloc.isSkip output16345 = false := by
  rw [output16345_def]
  conv => lhs; cbv
  try rfl
theorem node16345_eq : Flapjack.WordAlloc.removeDeadStructural input16345 value2120 value1 value2 = (output16345, value6896, value1) := by
  rw [input16345_def, output16345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4243_eq]
  try dsimp only
  rw [node16344_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16345 input4232)).val
theorem input16346_def : input16346 = (.seq input16345 input4232) := by
  unfold input16346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16345)).val
theorem output16346_def : output16346 = (output16345) := by
  unfold output16346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16346_skip : Flapjack.WordAlloc.isSkip output16346 = false := by
  rw [output16346_def]
  conv => lhs; cbv
  try rfl
theorem node16346_eq : Flapjack.WordAlloc.removeDeadStructural input16346 value2120 value1 value2 = (output16346, value6896, value1) := by
  rw [input16346_def, output16346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4232_eq]
  try dsimp only
  rw [node16345_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16346 input4231)).val
theorem input16347_def : input16347 = (.seq input16346 input4231) := by
  unfold input16347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16346 output4231)).val
theorem output16347_def : output16347 = (.seq output16346 output4231) := by
  unfold output16347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16347_skip : Flapjack.WordAlloc.isSkip output16347 = false := by
  rw [output16347_def]
  conv => lhs; cbv
  try rfl
theorem node16347_eq : Flapjack.WordAlloc.removeDeadStructural input16347 value2119 value1 value2 = (output16347, value6896, value1) := by
  rw [input16347_def, output16347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4231_eq]
  try dsimp only
  rw [node16346_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16347 input4230)).val
theorem input16348_def : input16348 = (.seq input16347 input4230) := by
  unfold input16348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16347 output4230)).val
theorem output16348_def : output16348 = (.seq output16347 output4230) := by
  unfold output16348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16348_skip : Flapjack.WordAlloc.isSkip output16348 = false := by
  rw [output16348_def]
  conv => lhs; cbv
  try rfl
theorem node16348_eq : Flapjack.WordAlloc.removeDeadStructural input16348 value5 value1 value2 = (output16348, value6896, value1) := by
  rw [input16348_def, output16348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4230_eq]
  try dsimp only
  rw [node16347_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16348 input4227)).val
theorem input16349_def : input16349 = (.seq input16348 input4227) := by
  unfold input16349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16348 output4227)).val
theorem output16349_def : output16349 = (.seq output16348 output4227) := by
  unfold output16349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16349_skip : Flapjack.WordAlloc.isSkip output16349 = false := by
  rw [output16349_def]
  conv => lhs; cbv
  try rfl
theorem node16349_eq : Flapjack.WordAlloc.removeDeadStructural input16349 value2112 value1 value2 = (output16349, value6896, value1) := by
  rw [input16349_def, output16349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4227_eq]
  try dsimp only
  rw [node16348_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16349 input4216)).val
theorem input16350_def : input16350 = (.seq input16349 input4216) := by
  unfold input16350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16349)).val
theorem output16350_def : output16350 = (output16349) := by
  unfold output16350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16350_skip : Flapjack.WordAlloc.isSkip output16350 = false := by
  rw [output16350_def]
  conv => lhs; cbv
  try rfl
theorem node16350_eq : Flapjack.WordAlloc.removeDeadStructural input16350 value2112 value1 value2 = (output16350, value6896, value1) := by
  rw [input16350_def, output16350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4216_eq]
  try dsimp only
  rw [node16349_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16350 input4215)).val
theorem input16351_def : input16351 = (.seq input16350 input4215) := by
  unfold input16351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16350 output4215)).val
theorem output16351_def : output16351 = (.seq output16350 output4215) := by
  unfold output16351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16351_skip : Flapjack.WordAlloc.isSkip output16351 = false := by
  rw [output16351_def]
  conv => lhs; cbv
  try rfl
theorem node16351_eq : Flapjack.WordAlloc.removeDeadStructural input16351 value2111 value1 value2 = (output16351, value6896, value1) := by
  rw [input16351_def, output16351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4215_eq]
  try dsimp only
  rw [node16350_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16351 input4214)).val
theorem input16352_def : input16352 = (.seq input16351 input4214) := by
  unfold input16352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16351 output4214)).val
theorem output16352_def : output16352 = (.seq output16351 output4214) := by
  unfold output16352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16352_skip : Flapjack.WordAlloc.isSkip output16352 = false := by
  rw [output16352_def]
  conv => lhs; cbv
  try rfl
theorem node16352_eq : Flapjack.WordAlloc.removeDeadStructural input16352 value5 value1 value2 = (output16352, value6896, value1) := by
  rw [input16352_def, output16352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4214_eq]
  try dsimp only
  rw [node16351_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16352 input4211)).val
theorem input16353_def : input16353 = (.seq input16352 input4211) := by
  unfold input16353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16352 output4211)).val
theorem output16353_def : output16353 = (.seq output16352 output4211) := by
  unfold output16353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16353_skip : Flapjack.WordAlloc.isSkip output16353 = false := by
  rw [output16353_def]
  conv => lhs; cbv
  try rfl
theorem node16353_eq : Flapjack.WordAlloc.removeDeadStructural input16353 value2104 value1 value2 = (output16353, value6896, value1) := by
  rw [input16353_def, output16353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4211_eq]
  try dsimp only
  rw [node16352_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16353 input4200)).val
theorem input16354_def : input16354 = (.seq input16353 input4200) := by
  unfold input16354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16353)).val
theorem output16354_def : output16354 = (output16353) := by
  unfold output16354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16354_skip : Flapjack.WordAlloc.isSkip output16354 = false := by
  rw [output16354_def]
  conv => lhs; cbv
  try rfl
theorem node16354_eq : Flapjack.WordAlloc.removeDeadStructural input16354 value2104 value1 value2 = (output16354, value6896, value1) := by
  rw [input16354_def, output16354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4200_eq]
  try dsimp only
  rw [node16353_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16354 input4199)).val
theorem input16355_def : input16355 = (.seq input16354 input4199) := by
  unfold input16355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16354 output4199)).val
theorem output16355_def : output16355 = (.seq output16354 output4199) := by
  unfold output16355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16355_skip : Flapjack.WordAlloc.isSkip output16355 = false := by
  rw [output16355_def]
  conv => lhs; cbv
  try rfl
theorem node16355_eq : Flapjack.WordAlloc.removeDeadStructural input16355 value2103 value1 value2 = (output16355, value6896, value1) := by
  rw [input16355_def, output16355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4199_eq]
  try dsimp only
  rw [node16354_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16355 input4198)).val
theorem input16356_def : input16356 = (.seq input16355 input4198) := by
  unfold input16356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16355 output4198)).val
theorem output16356_def : output16356 = (.seq output16355 output4198) := by
  unfold output16356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16356_skip : Flapjack.WordAlloc.isSkip output16356 = false := by
  rw [output16356_def]
  conv => lhs; cbv
  try rfl
theorem node16356_eq : Flapjack.WordAlloc.removeDeadStructural input16356 value5 value1 value2 = (output16356, value6896, value1) := by
  rw [input16356_def, output16356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4198_eq]
  try dsimp only
  rw [node16355_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16356 input4195)).val
theorem input16357_def : input16357 = (.seq input16356 input4195) := by
  unfold input16357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16356 output4195)).val
theorem output16357_def : output16357 = (.seq output16356 output4195) := by
  unfold output16357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16357_skip : Flapjack.WordAlloc.isSkip output16357 = false := by
  rw [output16357_def]
  conv => lhs; cbv
  try rfl
theorem node16357_eq : Flapjack.WordAlloc.removeDeadStructural input16357 value2096 value1 value2 = (output16357, value6896, value1) := by
  rw [input16357_def, output16357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4195_eq]
  try dsimp only
  rw [node16356_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16357 input4184)).val
theorem input16358_def : input16358 = (.seq input16357 input4184) := by
  unfold input16358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16357)).val
theorem output16358_def : output16358 = (output16357) := by
  unfold output16358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16358_skip : Flapjack.WordAlloc.isSkip output16358 = false := by
  rw [output16358_def]
  conv => lhs; cbv
  try rfl
theorem node16358_eq : Flapjack.WordAlloc.removeDeadStructural input16358 value2096 value1 value2 = (output16358, value6896, value1) := by
  rw [input16358_def, output16358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4184_eq]
  try dsimp only
  rw [node16357_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16358 input4183)).val
theorem input16359_def : input16359 = (.seq input16358 input4183) := by
  unfold input16359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16358 output4183)).val
theorem output16359_def : output16359 = (.seq output16358 output4183) := by
  unfold output16359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16359_skip : Flapjack.WordAlloc.isSkip output16359 = false := by
  rw [output16359_def]
  conv => lhs; cbv
  try rfl
theorem node16359_eq : Flapjack.WordAlloc.removeDeadStructural input16359 value2095 value1 value2 = (output16359, value6896, value1) := by
  rw [input16359_def, output16359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4183_eq]
  try dsimp only
  rw [node16358_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16359 input4182)).val
theorem input16360_def : input16360 = (.seq input16359 input4182) := by
  unfold input16360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16359 output4182)).val
theorem output16360_def : output16360 = (.seq output16359 output4182) := by
  unfold output16360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16360_skip : Flapjack.WordAlloc.isSkip output16360 = false := by
  rw [output16360_def]
  conv => lhs; cbv
  try rfl
theorem node16360_eq : Flapjack.WordAlloc.removeDeadStructural input16360 value5 value1 value2 = (output16360, value6896, value1) := by
  rw [input16360_def, output16360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4182_eq]
  try dsimp only
  rw [node16359_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16360 input4179)).val
theorem input16361_def : input16361 = (.seq input16360 input4179) := by
  unfold input16361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16360 output4179)).val
theorem output16361_def : output16361 = (.seq output16360 output4179) := by
  unfold output16361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16361_skip : Flapjack.WordAlloc.isSkip output16361 = false := by
  rw [output16361_def]
  conv => lhs; cbv
  try rfl
theorem node16361_eq : Flapjack.WordAlloc.removeDeadStructural input16361 value2088 value1 value2 = (output16361, value6896, value1) := by
  rw [input16361_def, output16361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4179_eq]
  try dsimp only
  rw [node16360_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16361 input4168)).val
theorem input16362_def : input16362 = (.seq input16361 input4168) := by
  unfold input16362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16361)).val
theorem output16362_def : output16362 = (output16361) := by
  unfold output16362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16362_skip : Flapjack.WordAlloc.isSkip output16362 = false := by
  rw [output16362_def]
  conv => lhs; cbv
  try rfl
theorem node16362_eq : Flapjack.WordAlloc.removeDeadStructural input16362 value2088 value1 value2 = (output16362, value6896, value1) := by
  rw [input16362_def, output16362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4168_eq]
  try dsimp only
  rw [node16361_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16362 input4167)).val
theorem input16363_def : input16363 = (.seq input16362 input4167) := by
  unfold input16363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16362 output4167)).val
theorem output16363_def : output16363 = (.seq output16362 output4167) := by
  unfold output16363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16363_skip : Flapjack.WordAlloc.isSkip output16363 = false := by
  rw [output16363_def]
  conv => lhs; cbv
  try rfl
theorem node16363_eq : Flapjack.WordAlloc.removeDeadStructural input16363 value2087 value1 value2 = (output16363, value6896, value1) := by
  rw [input16363_def, output16363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4167_eq]
  try dsimp only
  rw [node16362_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16363 input4166)).val
theorem input16364_def : input16364 = (.seq input16363 input4166) := by
  unfold input16364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16363 output4166)).val
theorem output16364_def : output16364 = (.seq output16363 output4166) := by
  unfold output16364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16364_skip : Flapjack.WordAlloc.isSkip output16364 = false := by
  rw [output16364_def]
  conv => lhs; cbv
  try rfl
theorem node16364_eq : Flapjack.WordAlloc.removeDeadStructural input16364 value5 value1 value2 = (output16364, value6896, value1) := by
  rw [input16364_def, output16364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4166_eq]
  try dsimp only
  rw [node16363_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16364 input4163)).val
theorem input16365_def : input16365 = (.seq input16364 input4163) := by
  unfold input16365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16364 output4163)).val
theorem output16365_def : output16365 = (.seq output16364 output4163) := by
  unfold output16365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16365_skip : Flapjack.WordAlloc.isSkip output16365 = false := by
  rw [output16365_def]
  conv => lhs; cbv
  try rfl
theorem node16365_eq : Flapjack.WordAlloc.removeDeadStructural input16365 value2080 value1 value2 = (output16365, value6896, value1) := by
  rw [input16365_def, output16365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4163_eq]
  try dsimp only
  rw [node16364_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16365 input4152)).val
theorem input16366_def : input16366 = (.seq input16365 input4152) := by
  unfold input16366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16365)).val
theorem output16366_def : output16366 = (output16365) := by
  unfold output16366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16366_skip : Flapjack.WordAlloc.isSkip output16366 = false := by
  rw [output16366_def]
  conv => lhs; cbv
  try rfl
theorem node16366_eq : Flapjack.WordAlloc.removeDeadStructural input16366 value2080 value1 value2 = (output16366, value6896, value1) := by
  rw [input16366_def, output16366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4152_eq]
  try dsimp only
  rw [node16365_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16366 input4151)).val
theorem input16367_def : input16367 = (.seq input16366 input4151) := by
  unfold input16367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16366 output4151)).val
theorem output16367_def : output16367 = (.seq output16366 output4151) := by
  unfold output16367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16367_skip : Flapjack.WordAlloc.isSkip output16367 = false := by
  rw [output16367_def]
  conv => lhs; cbv
  try rfl
theorem node16367_eq : Flapjack.WordAlloc.removeDeadStructural input16367 value2079 value1 value2 = (output16367, value6896, value1) := by
  rw [input16367_def, output16367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4151_eq]
  try dsimp only
  rw [node16366_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16367 input4150)).val
theorem input16368_def : input16368 = (.seq input16367 input4150) := by
  unfold input16368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16367 output4150)).val
theorem output16368_def : output16368 = (.seq output16367 output4150) := by
  unfold output16368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16368_skip : Flapjack.WordAlloc.isSkip output16368 = false := by
  rw [output16368_def]
  conv => lhs; cbv
  try rfl
theorem node16368_eq : Flapjack.WordAlloc.removeDeadStructural input16368 value5 value1 value2 = (output16368, value6896, value1) := by
  rw [input16368_def, output16368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4150_eq]
  try dsimp only
  rw [node16367_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16368 input4147)).val
theorem input16369_def : input16369 = (.seq input16368 input4147) := by
  unfold input16369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16368 output4147)).val
theorem output16369_def : output16369 = (.seq output16368 output4147) := by
  unfold output16369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16369_skip : Flapjack.WordAlloc.isSkip output16369 = false := by
  rw [output16369_def]
  conv => lhs; cbv
  try rfl
theorem node16369_eq : Flapjack.WordAlloc.removeDeadStructural input16369 value2072 value1 value2 = (output16369, value6896, value1) := by
  rw [input16369_def, output16369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4147_eq]
  try dsimp only
  rw [node16368_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16369 input4136)).val
theorem input16370_def : input16370 = (.seq input16369 input4136) := by
  unfold input16370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16369)).val
theorem output16370_def : output16370 = (output16369) := by
  unfold output16370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16370_skip : Flapjack.WordAlloc.isSkip output16370 = false := by
  rw [output16370_def]
  conv => lhs; cbv
  try rfl
theorem node16370_eq : Flapjack.WordAlloc.removeDeadStructural input16370 value2072 value1 value2 = (output16370, value6896, value1) := by
  rw [input16370_def, output16370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4136_eq]
  try dsimp only
  rw [node16369_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16370 input4135)).val
theorem input16371_def : input16371 = (.seq input16370 input4135) := by
  unfold input16371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16370 output4135)).val
theorem output16371_def : output16371 = (.seq output16370 output4135) := by
  unfold output16371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16371_skip : Flapjack.WordAlloc.isSkip output16371 = false := by
  rw [output16371_def]
  conv => lhs; cbv
  try rfl
theorem node16371_eq : Flapjack.WordAlloc.removeDeadStructural input16371 value2071 value1 value2 = (output16371, value6896, value1) := by
  rw [input16371_def, output16371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4135_eq]
  try dsimp only
  rw [node16370_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16371 input4134)).val
theorem input16372_def : input16372 = (.seq input16371 input4134) := by
  unfold input16372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16371 output4134)).val
theorem output16372_def : output16372 = (.seq output16371 output4134) := by
  unfold output16372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16372_skip : Flapjack.WordAlloc.isSkip output16372 = false := by
  rw [output16372_def]
  conv => lhs; cbv
  try rfl
theorem node16372_eq : Flapjack.WordAlloc.removeDeadStructural input16372 value5 value1 value2 = (output16372, value6896, value1) := by
  rw [input16372_def, output16372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4134_eq]
  try dsimp only
  rw [node16371_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16372 input4131)).val
theorem input16373_def : input16373 = (.seq input16372 input4131) := by
  unfold input16373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16372 output4131)).val
theorem output16373_def : output16373 = (.seq output16372 output4131) := by
  unfold output16373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16373_skip : Flapjack.WordAlloc.isSkip output16373 = false := by
  rw [output16373_def]
  conv => lhs; cbv
  try rfl
theorem node16373_eq : Flapjack.WordAlloc.removeDeadStructural input16373 value2064 value1 value2 = (output16373, value6896, value1) := by
  rw [input16373_def, output16373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4131_eq]
  try dsimp only
  rw [node16372_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16373 input4120)).val
theorem input16374_def : input16374 = (.seq input16373 input4120) := by
  unfold input16374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16373)).val
theorem output16374_def : output16374 = (output16373) := by
  unfold output16374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16374_skip : Flapjack.WordAlloc.isSkip output16374 = false := by
  rw [output16374_def]
  conv => lhs; cbv
  try rfl
theorem node16374_eq : Flapjack.WordAlloc.removeDeadStructural input16374 value2064 value1 value2 = (output16374, value6896, value1) := by
  rw [input16374_def, output16374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4120_eq]
  try dsimp only
  rw [node16373_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16374 input4119)).val
theorem input16375_def : input16375 = (.seq input16374 input4119) := by
  unfold input16375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16374 output4119)).val
theorem output16375_def : output16375 = (.seq output16374 output4119) := by
  unfold output16375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16375_skip : Flapjack.WordAlloc.isSkip output16375 = false := by
  rw [output16375_def]
  conv => lhs; cbv
  try rfl
theorem node16375_eq : Flapjack.WordAlloc.removeDeadStructural input16375 value2063 value1 value2 = (output16375, value6896, value1) := by
  rw [input16375_def, output16375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4119_eq]
  try dsimp only
  rw [node16374_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16375 input4118)).val
theorem input16376_def : input16376 = (.seq input16375 input4118) := by
  unfold input16376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16375 output4118)).val
theorem output16376_def : output16376 = (.seq output16375 output4118) := by
  unfold output16376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16376_skip : Flapjack.WordAlloc.isSkip output16376 = false := by
  rw [output16376_def]
  conv => lhs; cbv
  try rfl
theorem node16376_eq : Flapjack.WordAlloc.removeDeadStructural input16376 value5 value1 value2 = (output16376, value6896, value1) := by
  rw [input16376_def, output16376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4118_eq]
  try dsimp only
  rw [node16375_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16376 input4115)).val
theorem input16377_def : input16377 = (.seq input16376 input4115) := by
  unfold input16377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16376 output4115)).val
theorem output16377_def : output16377 = (.seq output16376 output4115) := by
  unfold output16377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16377_skip : Flapjack.WordAlloc.isSkip output16377 = false := by
  rw [output16377_def]
  conv => lhs; cbv
  try rfl
theorem node16377_eq : Flapjack.WordAlloc.removeDeadStructural input16377 value2056 value1 value2 = (output16377, value6896, value1) := by
  rw [input16377_def, output16377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4115_eq]
  try dsimp only
  rw [node16376_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16377 input4104)).val
theorem input16378_def : input16378 = (.seq input16377 input4104) := by
  unfold input16378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16377)).val
theorem output16378_def : output16378 = (output16377) := by
  unfold output16378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16378_skip : Flapjack.WordAlloc.isSkip output16378 = false := by
  rw [output16378_def]
  conv => lhs; cbv
  try rfl
theorem node16378_eq : Flapjack.WordAlloc.removeDeadStructural input16378 value2056 value1 value2 = (output16378, value6896, value1) := by
  rw [input16378_def, output16378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4104_eq]
  try dsimp only
  rw [node16377_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16378 input4103)).val
theorem input16379_def : input16379 = (.seq input16378 input4103) := by
  unfold input16379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16378 output4103)).val
theorem output16379_def : output16379 = (.seq output16378 output4103) := by
  unfold output16379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16379_skip : Flapjack.WordAlloc.isSkip output16379 = false := by
  rw [output16379_def]
  conv => lhs; cbv
  try rfl
theorem node16379_eq : Flapjack.WordAlloc.removeDeadStructural input16379 value2055 value1 value2 = (output16379, value6896, value1) := by
  rw [input16379_def, output16379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4103_eq]
  try dsimp only
  rw [node16378_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16379 input4102)).val
theorem input16380_def : input16380 = (.seq input16379 input4102) := by
  unfold input16380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16379 output4102)).val
theorem output16380_def : output16380 = (.seq output16379 output4102) := by
  unfold output16380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16380_skip : Flapjack.WordAlloc.isSkip output16380 = false := by
  rw [output16380_def]
  conv => lhs; cbv
  try rfl
theorem node16380_eq : Flapjack.WordAlloc.removeDeadStructural input16380 value5 value1 value2 = (output16380, value6896, value1) := by
  rw [input16380_def, output16380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4102_eq]
  try dsimp only
  rw [node16379_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16380 input4099)).val
theorem input16381_def : input16381 = (.seq input16380 input4099) := by
  unfold input16381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16380 output4099)).val
theorem output16381_def : output16381 = (.seq output16380 output4099) := by
  unfold output16381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16381_skip : Flapjack.WordAlloc.isSkip output16381 = false := by
  rw [output16381_def]
  conv => lhs; cbv
  try rfl
theorem node16381_eq : Flapjack.WordAlloc.removeDeadStructural input16381 value2048 value1 value2 = (output16381, value6896, value1) := by
  rw [input16381_def, output16381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4099_eq]
  try dsimp only
  rw [node16380_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16381 input4088)).val
theorem input16382_def : input16382 = (.seq input16381 input4088) := by
  unfold input16382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16381)).val
theorem output16382_def : output16382 = (output16381) := by
  unfold output16382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16382_skip : Flapjack.WordAlloc.isSkip output16382 = false := by
  rw [output16382_def]
  conv => lhs; cbv
  try rfl
theorem node16382_eq : Flapjack.WordAlloc.removeDeadStructural input16382 value2048 value1 value2 = (output16382, value6896, value1) := by
  rw [input16382_def, output16382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4088_eq]
  try dsimp only
  rw [node16381_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input16383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16382 input4087)).val
theorem input16383_def : input16383 = (.seq input16382 input4087) := by
  unfold input16383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16382 output4087)).val
theorem output16383_def : output16383 = (.seq output16382 output4087) := by
  unfold output16383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16383_skip : Flapjack.WordAlloc.isSkip output16383 = false := by
  rw [output16383_def]
  conv => lhs; cbv
  try rfl
theorem node16383_eq : Flapjack.WordAlloc.removeDeadStructural input16383 value2047 value1 value2 = (output16383, value6896, value1) := by
  rw [input16383_def, output16383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4087_eq]
  try dsimp only
  rw [node16382_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node16383_eq
end InitECandidate.Proofs.DeadStages713
