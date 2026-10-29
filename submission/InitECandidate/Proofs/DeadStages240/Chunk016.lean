import InitECandidate.Proofs.DeadStages240.Chunk015
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages240
@[irreducible, cbv_opaque] def input4096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4095 input2260)).val
theorem input4096_def : input4096 = (.seq input4095 input2260) := by
  unfold input4096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4095 output2260)).val
theorem output4096_def : output4096 = (.seq output4095 output2260) := by
  unfold output4096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4096_skip : Flapjack.WordAlloc.isSkip output4096 = false := by
  rw [output4096_def]
  conv => lhs; cbv
  try rfl
theorem node4096_eq : Flapjack.WordAlloc.removeDeadStructural input4096 value5 value1 value2 = (output4096, value1832, value1) := by
  rw [input4096_def, output4096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2260_eq]
  try dsimp only
  rw [node4095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4096 input2257)).val
theorem input4097_def : input4097 = (.seq input4096 input2257) := by
  unfold input4097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4096 output2257)).val
theorem output4097_def : output4097 = (.seq output4096 output2257) := by
  unfold output4097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4097_skip : Flapjack.WordAlloc.isSkip output4097 = false := by
  rw [output4097_def]
  conv => lhs; cbv
  try rfl
theorem node4097_eq : Flapjack.WordAlloc.removeDeadStructural input4097 value1128 value1 value2 = (output4097, value1832, value1) := by
  rw [input4097_def, output4097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2257_eq]
  try dsimp only
  rw [node4096_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4097 input2248)).val
theorem input4098_def : input4098 = (.seq input4097 input2248) := by
  unfold input4098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4097)).val
theorem output4098_def : output4098 = (output4097) := by
  unfold output4098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4098_skip : Flapjack.WordAlloc.isSkip output4098 = false := by
  rw [output4098_def]
  conv => lhs; cbv
  try rfl
theorem node4098_eq : Flapjack.WordAlloc.removeDeadStructural input4098 value1128 value1 value2 = (output4098, value1832, value1) := by
  rw [input4098_def, output4098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2248_eq]
  try dsimp only
  rw [node4097_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4098 input2247)).val
theorem input4099_def : input4099 = (.seq input4098 input2247) := by
  unfold input4099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4098 output2247)).val
theorem output4099_def : output4099 = (.seq output4098 output2247) := by
  unfold output4099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4099_skip : Flapjack.WordAlloc.isSkip output4099 = false := by
  rw [output4099_def]
  conv => lhs; cbv
  try rfl
theorem node4099_eq : Flapjack.WordAlloc.removeDeadStructural input4099 value1127 value1 value2 = (output4099, value1832, value1) := by
  rw [input4099_def, output4099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2247_eq]
  try dsimp only
  rw [node4098_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4099 input2246)).val
theorem input4100_def : input4100 = (.seq input4099 input2246) := by
  unfold input4100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4099 output2246)).val
theorem output4100_def : output4100 = (.seq output4099 output2246) := by
  unfold output4100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4100_skip : Flapjack.WordAlloc.isSkip output4100 = false := by
  rw [output4100_def]
  conv => lhs; cbv
  try rfl
theorem node4100_eq : Flapjack.WordAlloc.removeDeadStructural input4100 value5 value1 value2 = (output4100, value1832, value1) := by
  rw [input4100_def, output4100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2246_eq]
  try dsimp only
  rw [node4099_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4100 input2243)).val
theorem input4101_def : input4101 = (.seq input4100 input2243) := by
  unfold input4101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4100 output2243)).val
theorem output4101_def : output4101 = (.seq output4100 output2243) := by
  unfold output4101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4101_skip : Flapjack.WordAlloc.isSkip output4101 = false := by
  rw [output4101_def]
  conv => lhs; cbv
  try rfl
theorem node4101_eq : Flapjack.WordAlloc.removeDeadStructural input4101 value1121 value1 value2 = (output4101, value1832, value1) := by
  rw [input4101_def, output4101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2243_eq]
  try dsimp only
  rw [node4100_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4101 input2234)).val
theorem input4102_def : input4102 = (.seq input4101 input2234) := by
  unfold input4102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4101)).val
theorem output4102_def : output4102 = (output4101) := by
  unfold output4102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4102_skip : Flapjack.WordAlloc.isSkip output4102 = false := by
  rw [output4102_def]
  conv => lhs; cbv
  try rfl
theorem node4102_eq : Flapjack.WordAlloc.removeDeadStructural input4102 value1121 value1 value2 = (output4102, value1832, value1) := by
  rw [input4102_def, output4102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2234_eq]
  try dsimp only
  rw [node4101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4102 input2233)).val
theorem input4103_def : input4103 = (.seq input4102 input2233) := by
  unfold input4103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4102 output2233)).val
theorem output4103_def : output4103 = (.seq output4102 output2233) := by
  unfold output4103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4103_skip : Flapjack.WordAlloc.isSkip output4103 = false := by
  rw [output4103_def]
  conv => lhs; cbv
  try rfl
theorem node4103_eq : Flapjack.WordAlloc.removeDeadStructural input4103 value1120 value1 value2 = (output4103, value1832, value1) := by
  rw [input4103_def, output4103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2233_eq]
  try dsimp only
  rw [node4102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4103 input2232)).val
theorem input4104_def : input4104 = (.seq input4103 input2232) := by
  unfold input4104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4103 output2232)).val
theorem output4104_def : output4104 = (.seq output4103 output2232) := by
  unfold output4104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4104_skip : Flapjack.WordAlloc.isSkip output4104 = false := by
  rw [output4104_def]
  conv => lhs; cbv
  try rfl
theorem node4104_eq : Flapjack.WordAlloc.removeDeadStructural input4104 value5 value1 value2 = (output4104, value1832, value1) := by
  rw [input4104_def, output4104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2232_eq]
  try dsimp only
  rw [node4103_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4104 input2229)).val
theorem input4105_def : input4105 = (.seq input4104 input2229) := by
  unfold input4105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4104 output2229)).val
theorem output4105_def : output4105 = (.seq output4104 output2229) := by
  unfold output4105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4105_skip : Flapjack.WordAlloc.isSkip output4105 = false := by
  rw [output4105_def]
  conv => lhs; cbv
  try rfl
theorem node4105_eq : Flapjack.WordAlloc.removeDeadStructural input4105 value1114 value1 value2 = (output4105, value1832, value1) := by
  rw [input4105_def, output4105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2229_eq]
  try dsimp only
  rw [node4104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4105 input2220)).val
theorem input4106_def : input4106 = (.seq input4105 input2220) := by
  unfold input4106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4105)).val
theorem output4106_def : output4106 = (output4105) := by
  unfold output4106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4106_skip : Flapjack.WordAlloc.isSkip output4106 = false := by
  rw [output4106_def]
  conv => lhs; cbv
  try rfl
theorem node4106_eq : Flapjack.WordAlloc.removeDeadStructural input4106 value1114 value1 value2 = (output4106, value1832, value1) := by
  rw [input4106_def, output4106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2220_eq]
  try dsimp only
  rw [node4105_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4106 input2219)).val
theorem input4107_def : input4107 = (.seq input4106 input2219) := by
  unfold input4107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4106 output2219)).val
theorem output4107_def : output4107 = (.seq output4106 output2219) := by
  unfold output4107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4107_skip : Flapjack.WordAlloc.isSkip output4107 = false := by
  rw [output4107_def]
  conv => lhs; cbv
  try rfl
theorem node4107_eq : Flapjack.WordAlloc.removeDeadStructural input4107 value1113 value1 value2 = (output4107, value1832, value1) := by
  rw [input4107_def, output4107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2219_eq]
  try dsimp only
  rw [node4106_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4107 input2218)).val
theorem input4108_def : input4108 = (.seq input4107 input2218) := by
  unfold input4108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4107 output2218)).val
theorem output4108_def : output4108 = (.seq output4107 output2218) := by
  unfold output4108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4108_skip : Flapjack.WordAlloc.isSkip output4108 = false := by
  rw [output4108_def]
  conv => lhs; cbv
  try rfl
theorem node4108_eq : Flapjack.WordAlloc.removeDeadStructural input4108 value5 value1 value2 = (output4108, value1832, value1) := by
  rw [input4108_def, output4108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2218_eq]
  try dsimp only
  rw [node4107_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4108 input2215)).val
theorem input4109_def : input4109 = (.seq input4108 input2215) := by
  unfold input4109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4108 output2215)).val
theorem output4109_def : output4109 = (.seq output4108 output2215) := by
  unfold output4109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4109_skip : Flapjack.WordAlloc.isSkip output4109 = false := by
  rw [output4109_def]
  conv => lhs; cbv
  try rfl
theorem node4109_eq : Flapjack.WordAlloc.removeDeadStructural input4109 value1107 value1 value2 = (output4109, value1832, value1) := by
  rw [input4109_def, output4109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2215_eq]
  try dsimp only
  rw [node4108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4109 input2206)).val
theorem input4110_def : input4110 = (.seq input4109 input2206) := by
  unfold input4110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4109)).val
theorem output4110_def : output4110 = (output4109) := by
  unfold output4110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4110_skip : Flapjack.WordAlloc.isSkip output4110 = false := by
  rw [output4110_def]
  conv => lhs; cbv
  try rfl
theorem node4110_eq : Flapjack.WordAlloc.removeDeadStructural input4110 value1107 value1 value2 = (output4110, value1832, value1) := by
  rw [input4110_def, output4110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2206_eq]
  try dsimp only
  rw [node4109_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4110 input2205)).val
theorem input4111_def : input4111 = (.seq input4110 input2205) := by
  unfold input4111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4110 output2205)).val
theorem output4111_def : output4111 = (.seq output4110 output2205) := by
  unfold output4111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4111_skip : Flapjack.WordAlloc.isSkip output4111 = false := by
  rw [output4111_def]
  conv => lhs; cbv
  try rfl
theorem node4111_eq : Flapjack.WordAlloc.removeDeadStructural input4111 value1106 value1 value2 = (output4111, value1832, value1) := by
  rw [input4111_def, output4111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2205_eq]
  try dsimp only
  rw [node4110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4111 input2204)).val
theorem input4112_def : input4112 = (.seq input4111 input2204) := by
  unfold input4112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4111 output2204)).val
theorem output4112_def : output4112 = (.seq output4111 output2204) := by
  unfold output4112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4112_skip : Flapjack.WordAlloc.isSkip output4112 = false := by
  rw [output4112_def]
  conv => lhs; cbv
  try rfl
theorem node4112_eq : Flapjack.WordAlloc.removeDeadStructural input4112 value5 value1 value2 = (output4112, value1832, value1) := by
  rw [input4112_def, output4112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2204_eq]
  try dsimp only
  rw [node4111_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4112 input2201)).val
theorem input4113_def : input4113 = (.seq input4112 input2201) := by
  unfold input4113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4112 output2201)).val
theorem output4113_def : output4113 = (.seq output4112 output2201) := by
  unfold output4113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4113_skip : Flapjack.WordAlloc.isSkip output4113 = false := by
  rw [output4113_def]
  conv => lhs; cbv
  try rfl
theorem node4113_eq : Flapjack.WordAlloc.removeDeadStructural input4113 value1100 value1 value2 = (output4113, value1832, value1) := by
  rw [input4113_def, output4113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2201_eq]
  try dsimp only
  rw [node4112_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4113 input2192)).val
theorem input4114_def : input4114 = (.seq input4113 input2192) := by
  unfold input4114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4113)).val
theorem output4114_def : output4114 = (output4113) := by
  unfold output4114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4114_skip : Flapjack.WordAlloc.isSkip output4114 = false := by
  rw [output4114_def]
  conv => lhs; cbv
  try rfl
theorem node4114_eq : Flapjack.WordAlloc.removeDeadStructural input4114 value1100 value1 value2 = (output4114, value1832, value1) := by
  rw [input4114_def, output4114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2192_eq]
  try dsimp only
  rw [node4113_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4114 input2191)).val
theorem input4115_def : input4115 = (.seq input4114 input2191) := by
  unfold input4115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4114 output2191)).val
theorem output4115_def : output4115 = (.seq output4114 output2191) := by
  unfold output4115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4115_skip : Flapjack.WordAlloc.isSkip output4115 = false := by
  rw [output4115_def]
  conv => lhs; cbv
  try rfl
theorem node4115_eq : Flapjack.WordAlloc.removeDeadStructural input4115 value1099 value1 value2 = (output4115, value1832, value1) := by
  rw [input4115_def, output4115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2191_eq]
  try dsimp only
  rw [node4114_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4115 input2190)).val
theorem input4116_def : input4116 = (.seq input4115 input2190) := by
  unfold input4116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4115 output2190)).val
theorem output4116_def : output4116 = (.seq output4115 output2190) := by
  unfold output4116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4116_skip : Flapjack.WordAlloc.isSkip output4116 = false := by
  rw [output4116_def]
  conv => lhs; cbv
  try rfl
theorem node4116_eq : Flapjack.WordAlloc.removeDeadStructural input4116 value5 value1 value2 = (output4116, value1832, value1) := by
  rw [input4116_def, output4116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2190_eq]
  try dsimp only
  rw [node4115_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4116 input2187)).val
theorem input4117_def : input4117 = (.seq input4116 input2187) := by
  unfold input4117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4116 output2187)).val
theorem output4117_def : output4117 = (.seq output4116 output2187) := by
  unfold output4117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4117_skip : Flapjack.WordAlloc.isSkip output4117 = false := by
  rw [output4117_def]
  conv => lhs; cbv
  try rfl
theorem node4117_eq : Flapjack.WordAlloc.removeDeadStructural input4117 value1093 value1 value2 = (output4117, value1832, value1) := by
  rw [input4117_def, output4117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2187_eq]
  try dsimp only
  rw [node4116_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4117 input2178)).val
theorem input4118_def : input4118 = (.seq input4117 input2178) := by
  unfold input4118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4117)).val
theorem output4118_def : output4118 = (output4117) := by
  unfold output4118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4118_skip : Flapjack.WordAlloc.isSkip output4118 = false := by
  rw [output4118_def]
  conv => lhs; cbv
  try rfl
theorem node4118_eq : Flapjack.WordAlloc.removeDeadStructural input4118 value1093 value1 value2 = (output4118, value1832, value1) := by
  rw [input4118_def, output4118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2178_eq]
  try dsimp only
  rw [node4117_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4118 input2177)).val
theorem input4119_def : input4119 = (.seq input4118 input2177) := by
  unfold input4119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4118 output2177)).val
theorem output4119_def : output4119 = (.seq output4118 output2177) := by
  unfold output4119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4119_skip : Flapjack.WordAlloc.isSkip output4119 = false := by
  rw [output4119_def]
  conv => lhs; cbv
  try rfl
theorem node4119_eq : Flapjack.WordAlloc.removeDeadStructural input4119 value1092 value1 value2 = (output4119, value1832, value1) := by
  rw [input4119_def, output4119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2177_eq]
  try dsimp only
  rw [node4118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4119 input2176)).val
theorem input4120_def : input4120 = (.seq input4119 input2176) := by
  unfold input4120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4119 output2176)).val
theorem output4120_def : output4120 = (.seq output4119 output2176) := by
  unfold output4120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4120_skip : Flapjack.WordAlloc.isSkip output4120 = false := by
  rw [output4120_def]
  conv => lhs; cbv
  try rfl
theorem node4120_eq : Flapjack.WordAlloc.removeDeadStructural input4120 value5 value1 value2 = (output4120, value1832, value1) := by
  rw [input4120_def, output4120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2176_eq]
  try dsimp only
  rw [node4119_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4120 input2173)).val
theorem input4121_def : input4121 = (.seq input4120 input2173) := by
  unfold input4121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4120 output2173)).val
theorem output4121_def : output4121 = (.seq output4120 output2173) := by
  unfold output4121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4121_skip : Flapjack.WordAlloc.isSkip output4121 = false := by
  rw [output4121_def]
  conv => lhs; cbv
  try rfl
theorem node4121_eq : Flapjack.WordAlloc.removeDeadStructural input4121 value1086 value1 value2 = (output4121, value1832, value1) := by
  rw [input4121_def, output4121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2173_eq]
  try dsimp only
  rw [node4120_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4121 input2164)).val
theorem input4122_def : input4122 = (.seq input4121 input2164) := by
  unfold input4122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4121)).val
theorem output4122_def : output4122 = (output4121) := by
  unfold output4122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4122_skip : Flapjack.WordAlloc.isSkip output4122 = false := by
  rw [output4122_def]
  conv => lhs; cbv
  try rfl
theorem node4122_eq : Flapjack.WordAlloc.removeDeadStructural input4122 value1086 value1 value2 = (output4122, value1832, value1) := by
  rw [input4122_def, output4122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2164_eq]
  try dsimp only
  rw [node4121_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4122 input2163)).val
theorem input4123_def : input4123 = (.seq input4122 input2163) := by
  unfold input4123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4122 output2163)).val
theorem output4123_def : output4123 = (.seq output4122 output2163) := by
  unfold output4123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4123_skip : Flapjack.WordAlloc.isSkip output4123 = false := by
  rw [output4123_def]
  conv => lhs; cbv
  try rfl
theorem node4123_eq : Flapjack.WordAlloc.removeDeadStructural input4123 value1085 value1 value2 = (output4123, value1832, value1) := by
  rw [input4123_def, output4123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2163_eq]
  try dsimp only
  rw [node4122_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4123 input2162)).val
theorem input4124_def : input4124 = (.seq input4123 input2162) := by
  unfold input4124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4123 output2162)).val
theorem output4124_def : output4124 = (.seq output4123 output2162) := by
  unfold output4124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4124_skip : Flapjack.WordAlloc.isSkip output4124 = false := by
  rw [output4124_def]
  conv => lhs; cbv
  try rfl
theorem node4124_eq : Flapjack.WordAlloc.removeDeadStructural input4124 value5 value1 value2 = (output4124, value1832, value1) := by
  rw [input4124_def, output4124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2162_eq]
  try dsimp only
  rw [node4123_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4124 input2159)).val
theorem input4125_def : input4125 = (.seq input4124 input2159) := by
  unfold input4125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4124 output2159)).val
theorem output4125_def : output4125 = (.seq output4124 output2159) := by
  unfold output4125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4125_skip : Flapjack.WordAlloc.isSkip output4125 = false := by
  rw [output4125_def]
  conv => lhs; cbv
  try rfl
theorem node4125_eq : Flapjack.WordAlloc.removeDeadStructural input4125 value1079 value1 value2 = (output4125, value1832, value1) := by
  rw [input4125_def, output4125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2159_eq]
  try dsimp only
  rw [node4124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4125 input2150)).val
theorem input4126_def : input4126 = (.seq input4125 input2150) := by
  unfold input4126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4125)).val
theorem output4126_def : output4126 = (output4125) := by
  unfold output4126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4126_skip : Flapjack.WordAlloc.isSkip output4126 = false := by
  rw [output4126_def]
  conv => lhs; cbv
  try rfl
theorem node4126_eq : Flapjack.WordAlloc.removeDeadStructural input4126 value1079 value1 value2 = (output4126, value1832, value1) := by
  rw [input4126_def, output4126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2150_eq]
  try dsimp only
  rw [node4125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4126 input2149)).val
theorem input4127_def : input4127 = (.seq input4126 input2149) := by
  unfold input4127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4126 output2149)).val
theorem output4127_def : output4127 = (.seq output4126 output2149) := by
  unfold output4127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4127_skip : Flapjack.WordAlloc.isSkip output4127 = false := by
  rw [output4127_def]
  conv => lhs; cbv
  try rfl
theorem node4127_eq : Flapjack.WordAlloc.removeDeadStructural input4127 value1078 value1 value2 = (output4127, value1832, value1) := by
  rw [input4127_def, output4127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2149_eq]
  try dsimp only
  rw [node4126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4127 input2148)).val
theorem input4128_def : input4128 = (.seq input4127 input2148) := by
  unfold input4128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4127 output2148)).val
theorem output4128_def : output4128 = (.seq output4127 output2148) := by
  unfold output4128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4128_skip : Flapjack.WordAlloc.isSkip output4128 = false := by
  rw [output4128_def]
  conv => lhs; cbv
  try rfl
theorem node4128_eq : Flapjack.WordAlloc.removeDeadStructural input4128 value5 value1 value2 = (output4128, value1832, value1) := by
  rw [input4128_def, output4128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2148_eq]
  try dsimp only
  rw [node4127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4128 input2145)).val
theorem input4129_def : input4129 = (.seq input4128 input2145) := by
  unfold input4129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4128 output2145)).val
theorem output4129_def : output4129 = (.seq output4128 output2145) := by
  unfold output4129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4129_skip : Flapjack.WordAlloc.isSkip output4129 = false := by
  rw [output4129_def]
  conv => lhs; cbv
  try rfl
theorem node4129_eq : Flapjack.WordAlloc.removeDeadStructural input4129 value1072 value1 value2 = (output4129, value1832, value1) := by
  rw [input4129_def, output4129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2145_eq]
  try dsimp only
  rw [node4128_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4129 input2136)).val
theorem input4130_def : input4130 = (.seq input4129 input2136) := by
  unfold input4130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4129)).val
theorem output4130_def : output4130 = (output4129) := by
  unfold output4130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4130_skip : Flapjack.WordAlloc.isSkip output4130 = false := by
  rw [output4130_def]
  conv => lhs; cbv
  try rfl
theorem node4130_eq : Flapjack.WordAlloc.removeDeadStructural input4130 value1072 value1 value2 = (output4130, value1832, value1) := by
  rw [input4130_def, output4130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2136_eq]
  try dsimp only
  rw [node4129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4130 input2135)).val
theorem input4131_def : input4131 = (.seq input4130 input2135) := by
  unfold input4131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4130 output2135)).val
theorem output4131_def : output4131 = (.seq output4130 output2135) := by
  unfold output4131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4131_skip : Flapjack.WordAlloc.isSkip output4131 = false := by
  rw [output4131_def]
  conv => lhs; cbv
  try rfl
theorem node4131_eq : Flapjack.WordAlloc.removeDeadStructural input4131 value1071 value1 value2 = (output4131, value1832, value1) := by
  rw [input4131_def, output4131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2135_eq]
  try dsimp only
  rw [node4130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4131 input2134)).val
theorem input4132_def : input4132 = (.seq input4131 input2134) := by
  unfold input4132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4131 output2134)).val
theorem output4132_def : output4132 = (.seq output4131 output2134) := by
  unfold output4132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4132_skip : Flapjack.WordAlloc.isSkip output4132 = false := by
  rw [output4132_def]
  conv => lhs; cbv
  try rfl
theorem node4132_eq : Flapjack.WordAlloc.removeDeadStructural input4132 value5 value1 value2 = (output4132, value1832, value1) := by
  rw [input4132_def, output4132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2134_eq]
  try dsimp only
  rw [node4131_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4132 input2131)).val
theorem input4133_def : input4133 = (.seq input4132 input2131) := by
  unfold input4133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4132 output2131)).val
theorem output4133_def : output4133 = (.seq output4132 output2131) := by
  unfold output4133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4133_skip : Flapjack.WordAlloc.isSkip output4133 = false := by
  rw [output4133_def]
  conv => lhs; cbv
  try rfl
theorem node4133_eq : Flapjack.WordAlloc.removeDeadStructural input4133 value1065 value1 value2 = (output4133, value1832, value1) := by
  rw [input4133_def, output4133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2131_eq]
  try dsimp only
  rw [node4132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4133 input2122)).val
theorem input4134_def : input4134 = (.seq input4133 input2122) := by
  unfold input4134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4133)).val
theorem output4134_def : output4134 = (output4133) := by
  unfold output4134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4134_skip : Flapjack.WordAlloc.isSkip output4134 = false := by
  rw [output4134_def]
  conv => lhs; cbv
  try rfl
theorem node4134_eq : Flapjack.WordAlloc.removeDeadStructural input4134 value1065 value1 value2 = (output4134, value1832, value1) := by
  rw [input4134_def, output4134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2122_eq]
  try dsimp only
  rw [node4133_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4134 input2121)).val
theorem input4135_def : input4135 = (.seq input4134 input2121) := by
  unfold input4135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4134 output2121)).val
theorem output4135_def : output4135 = (.seq output4134 output2121) := by
  unfold output4135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4135_skip : Flapjack.WordAlloc.isSkip output4135 = false := by
  rw [output4135_def]
  conv => lhs; cbv
  try rfl
theorem node4135_eq : Flapjack.WordAlloc.removeDeadStructural input4135 value1064 value1 value2 = (output4135, value1832, value1) := by
  rw [input4135_def, output4135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2121_eq]
  try dsimp only
  rw [node4134_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4135 input2120)).val
theorem input4136_def : input4136 = (.seq input4135 input2120) := by
  unfold input4136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4135 output2120)).val
theorem output4136_def : output4136 = (.seq output4135 output2120) := by
  unfold output4136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4136_skip : Flapjack.WordAlloc.isSkip output4136 = false := by
  rw [output4136_def]
  conv => lhs; cbv
  try rfl
theorem node4136_eq : Flapjack.WordAlloc.removeDeadStructural input4136 value5 value1 value2 = (output4136, value1832, value1) := by
  rw [input4136_def, output4136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2120_eq]
  try dsimp only
  rw [node4135_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4136 input2117)).val
theorem input4137_def : input4137 = (.seq input4136 input2117) := by
  unfold input4137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4136 output2117)).val
theorem output4137_def : output4137 = (.seq output4136 output2117) := by
  unfold output4137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4137_skip : Flapjack.WordAlloc.isSkip output4137 = false := by
  rw [output4137_def]
  conv => lhs; cbv
  try rfl
theorem node4137_eq : Flapjack.WordAlloc.removeDeadStructural input4137 value1058 value1 value2 = (output4137, value1832, value1) := by
  rw [input4137_def, output4137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2117_eq]
  try dsimp only
  rw [node4136_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4137 input2108)).val
theorem input4138_def : input4138 = (.seq input4137 input2108) := by
  unfold input4138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4137)).val
theorem output4138_def : output4138 = (output4137) := by
  unfold output4138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4138_skip : Flapjack.WordAlloc.isSkip output4138 = false := by
  rw [output4138_def]
  conv => lhs; cbv
  try rfl
theorem node4138_eq : Flapjack.WordAlloc.removeDeadStructural input4138 value1058 value1 value2 = (output4138, value1832, value1) := by
  rw [input4138_def, output4138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2108_eq]
  try dsimp only
  rw [node4137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4138 input2107)).val
theorem input4139_def : input4139 = (.seq input4138 input2107) := by
  unfold input4139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4138 output2107)).val
theorem output4139_def : output4139 = (.seq output4138 output2107) := by
  unfold output4139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4139_skip : Flapjack.WordAlloc.isSkip output4139 = false := by
  rw [output4139_def]
  conv => lhs; cbv
  try rfl
theorem node4139_eq : Flapjack.WordAlloc.removeDeadStructural input4139 value1057 value1 value2 = (output4139, value1832, value1) := by
  rw [input4139_def, output4139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2107_eq]
  try dsimp only
  rw [node4138_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4139 input2106)).val
theorem input4140_def : input4140 = (.seq input4139 input2106) := by
  unfold input4140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4139 output2106)).val
theorem output4140_def : output4140 = (.seq output4139 output2106) := by
  unfold output4140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4140_skip : Flapjack.WordAlloc.isSkip output4140 = false := by
  rw [output4140_def]
  conv => lhs; cbv
  try rfl
theorem node4140_eq : Flapjack.WordAlloc.removeDeadStructural input4140 value5 value1 value2 = (output4140, value1832, value1) := by
  rw [input4140_def, output4140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2106_eq]
  try dsimp only
  rw [node4139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4140 input2103)).val
theorem input4141_def : input4141 = (.seq input4140 input2103) := by
  unfold input4141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4140 output2103)).val
theorem output4141_def : output4141 = (.seq output4140 output2103) := by
  unfold output4141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4141_skip : Flapjack.WordAlloc.isSkip output4141 = false := by
  rw [output4141_def]
  conv => lhs; cbv
  try rfl
theorem node4141_eq : Flapjack.WordAlloc.removeDeadStructural input4141 value1051 value1 value2 = (output4141, value1832, value1) := by
  rw [input4141_def, output4141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2103_eq]
  try dsimp only
  rw [node4140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4141 input2094)).val
theorem input4142_def : input4142 = (.seq input4141 input2094) := by
  unfold input4142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4141)).val
theorem output4142_def : output4142 = (output4141) := by
  unfold output4142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4142_skip : Flapjack.WordAlloc.isSkip output4142 = false := by
  rw [output4142_def]
  conv => lhs; cbv
  try rfl
theorem node4142_eq : Flapjack.WordAlloc.removeDeadStructural input4142 value1051 value1 value2 = (output4142, value1832, value1) := by
  rw [input4142_def, output4142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2094_eq]
  try dsimp only
  rw [node4141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4142 input2093)).val
theorem input4143_def : input4143 = (.seq input4142 input2093) := by
  unfold input4143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4142 output2093)).val
theorem output4143_def : output4143 = (.seq output4142 output2093) := by
  unfold output4143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4143_skip : Flapjack.WordAlloc.isSkip output4143 = false := by
  rw [output4143_def]
  conv => lhs; cbv
  try rfl
theorem node4143_eq : Flapjack.WordAlloc.removeDeadStructural input4143 value1050 value1 value2 = (output4143, value1832, value1) := by
  rw [input4143_def, output4143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2093_eq]
  try dsimp only
  rw [node4142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4143 input2092)).val
theorem input4144_def : input4144 = (.seq input4143 input2092) := by
  unfold input4144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4143 output2092)).val
theorem output4144_def : output4144 = (.seq output4143 output2092) := by
  unfold output4144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4144_skip : Flapjack.WordAlloc.isSkip output4144 = false := by
  rw [output4144_def]
  conv => lhs; cbv
  try rfl
theorem node4144_eq : Flapjack.WordAlloc.removeDeadStructural input4144 value5 value1 value2 = (output4144, value1832, value1) := by
  rw [input4144_def, output4144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2092_eq]
  try dsimp only
  rw [node4143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4144 input2089)).val
theorem input4145_def : input4145 = (.seq input4144 input2089) := by
  unfold input4145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4144 output2089)).val
theorem output4145_def : output4145 = (.seq output4144 output2089) := by
  unfold output4145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4145_skip : Flapjack.WordAlloc.isSkip output4145 = false := by
  rw [output4145_def]
  conv => lhs; cbv
  try rfl
theorem node4145_eq : Flapjack.WordAlloc.removeDeadStructural input4145 value1044 value1 value2 = (output4145, value1832, value1) := by
  rw [input4145_def, output4145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2089_eq]
  try dsimp only
  rw [node4144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4145 input2080)).val
theorem input4146_def : input4146 = (.seq input4145 input2080) := by
  unfold input4146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4145)).val
theorem output4146_def : output4146 = (output4145) := by
  unfold output4146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4146_skip : Flapjack.WordAlloc.isSkip output4146 = false := by
  rw [output4146_def]
  conv => lhs; cbv
  try rfl
theorem node4146_eq : Flapjack.WordAlloc.removeDeadStructural input4146 value1044 value1 value2 = (output4146, value1832, value1) := by
  rw [input4146_def, output4146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2080_eq]
  try dsimp only
  rw [node4145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4146 input2079)).val
theorem input4147_def : input4147 = (.seq input4146 input2079) := by
  unfold input4147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4146 output2079)).val
theorem output4147_def : output4147 = (.seq output4146 output2079) := by
  unfold output4147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4147_skip : Flapjack.WordAlloc.isSkip output4147 = false := by
  rw [output4147_def]
  conv => lhs; cbv
  try rfl
theorem node4147_eq : Flapjack.WordAlloc.removeDeadStructural input4147 value1043 value1 value2 = (output4147, value1832, value1) := by
  rw [input4147_def, output4147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2079_eq]
  try dsimp only
  rw [node4146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4147 input2078)).val
theorem input4148_def : input4148 = (.seq input4147 input2078) := by
  unfold input4148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4147 output2078)).val
theorem output4148_def : output4148 = (.seq output4147 output2078) := by
  unfold output4148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4148_skip : Flapjack.WordAlloc.isSkip output4148 = false := by
  rw [output4148_def]
  conv => lhs; cbv
  try rfl
theorem node4148_eq : Flapjack.WordAlloc.removeDeadStructural input4148 value5 value1 value2 = (output4148, value1832, value1) := by
  rw [input4148_def, output4148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2078_eq]
  try dsimp only
  rw [node4147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4148 input2075)).val
theorem input4149_def : input4149 = (.seq input4148 input2075) := by
  unfold input4149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4148 output2075)).val
theorem output4149_def : output4149 = (.seq output4148 output2075) := by
  unfold output4149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4149_skip : Flapjack.WordAlloc.isSkip output4149 = false := by
  rw [output4149_def]
  conv => lhs; cbv
  try rfl
theorem node4149_eq : Flapjack.WordAlloc.removeDeadStructural input4149 value1037 value1 value2 = (output4149, value1832, value1) := by
  rw [input4149_def, output4149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2075_eq]
  try dsimp only
  rw [node4148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4149 input2066)).val
theorem input4150_def : input4150 = (.seq input4149 input2066) := by
  unfold input4150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4149)).val
theorem output4150_def : output4150 = (output4149) := by
  unfold output4150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4150_skip : Flapjack.WordAlloc.isSkip output4150 = false := by
  rw [output4150_def]
  conv => lhs; cbv
  try rfl
theorem node4150_eq : Flapjack.WordAlloc.removeDeadStructural input4150 value1037 value1 value2 = (output4150, value1832, value1) := by
  rw [input4150_def, output4150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2066_eq]
  try dsimp only
  rw [node4149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4150 input2065)).val
theorem input4151_def : input4151 = (.seq input4150 input2065) := by
  unfold input4151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4150 output2065)).val
theorem output4151_def : output4151 = (.seq output4150 output2065) := by
  unfold output4151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4151_skip : Flapjack.WordAlloc.isSkip output4151 = false := by
  rw [output4151_def]
  conv => lhs; cbv
  try rfl
theorem node4151_eq : Flapjack.WordAlloc.removeDeadStructural input4151 value1036 value1 value2 = (output4151, value1832, value1) := by
  rw [input4151_def, output4151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2065_eq]
  try dsimp only
  rw [node4150_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4151 input2064)).val
theorem input4152_def : input4152 = (.seq input4151 input2064) := by
  unfold input4152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4151 output2064)).val
theorem output4152_def : output4152 = (.seq output4151 output2064) := by
  unfold output4152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4152_skip : Flapjack.WordAlloc.isSkip output4152 = false := by
  rw [output4152_def]
  conv => lhs; cbv
  try rfl
theorem node4152_eq : Flapjack.WordAlloc.removeDeadStructural input4152 value5 value1 value2 = (output4152, value1832, value1) := by
  rw [input4152_def, output4152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2064_eq]
  try dsimp only
  rw [node4151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4152 input2061)).val
theorem input4153_def : input4153 = (.seq input4152 input2061) := by
  unfold input4153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4152 output2061)).val
theorem output4153_def : output4153 = (.seq output4152 output2061) := by
  unfold output4153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4153_skip : Flapjack.WordAlloc.isSkip output4153 = false := by
  rw [output4153_def]
  conv => lhs; cbv
  try rfl
theorem node4153_eq : Flapjack.WordAlloc.removeDeadStructural input4153 value1030 value1 value2 = (output4153, value1832, value1) := by
  rw [input4153_def, output4153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2061_eq]
  try dsimp only
  rw [node4152_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4153 input2052)).val
theorem input4154_def : input4154 = (.seq input4153 input2052) := by
  unfold input4154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4153)).val
theorem output4154_def : output4154 = (output4153) := by
  unfold output4154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4154_skip : Flapjack.WordAlloc.isSkip output4154 = false := by
  rw [output4154_def]
  conv => lhs; cbv
  try rfl
theorem node4154_eq : Flapjack.WordAlloc.removeDeadStructural input4154 value1030 value1 value2 = (output4154, value1832, value1) := by
  rw [input4154_def, output4154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2052_eq]
  try dsimp only
  rw [node4153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4154 input2051)).val
theorem input4155_def : input4155 = (.seq input4154 input2051) := by
  unfold input4155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4154 output2051)).val
theorem output4155_def : output4155 = (.seq output4154 output2051) := by
  unfold output4155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4155_skip : Flapjack.WordAlloc.isSkip output4155 = false := by
  rw [output4155_def]
  conv => lhs; cbv
  try rfl
theorem node4155_eq : Flapjack.WordAlloc.removeDeadStructural input4155 value1029 value1 value2 = (output4155, value1832, value1) := by
  rw [input4155_def, output4155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2051_eq]
  try dsimp only
  rw [node4154_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4155 input2050)).val
theorem input4156_def : input4156 = (.seq input4155 input2050) := by
  unfold input4156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4155 output2050)).val
theorem output4156_def : output4156 = (.seq output4155 output2050) := by
  unfold output4156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4156_skip : Flapjack.WordAlloc.isSkip output4156 = false := by
  rw [output4156_def]
  conv => lhs; cbv
  try rfl
theorem node4156_eq : Flapjack.WordAlloc.removeDeadStructural input4156 value5 value1 value2 = (output4156, value1832, value1) := by
  rw [input4156_def, output4156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2050_eq]
  try dsimp only
  rw [node4155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4156 input2047)).val
theorem input4157_def : input4157 = (.seq input4156 input2047) := by
  unfold input4157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4156 output2047)).val
theorem output4157_def : output4157 = (.seq output4156 output2047) := by
  unfold output4157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4157_skip : Flapjack.WordAlloc.isSkip output4157 = false := by
  rw [output4157_def]
  conv => lhs; cbv
  try rfl
theorem node4157_eq : Flapjack.WordAlloc.removeDeadStructural input4157 value1023 value1 value2 = (output4157, value1832, value1) := by
  rw [input4157_def, output4157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2047_eq]
  try dsimp only
  rw [node4156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4157 input2038)).val
theorem input4158_def : input4158 = (.seq input4157 input2038) := by
  unfold input4158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4157)).val
theorem output4158_def : output4158 = (output4157) := by
  unfold output4158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4158_skip : Flapjack.WordAlloc.isSkip output4158 = false := by
  rw [output4158_def]
  conv => lhs; cbv
  try rfl
theorem node4158_eq : Flapjack.WordAlloc.removeDeadStructural input4158 value1023 value1 value2 = (output4158, value1832, value1) := by
  rw [input4158_def, output4158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2038_eq]
  try dsimp only
  rw [node4157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4158 input2037)).val
theorem input4159_def : input4159 = (.seq input4158 input2037) := by
  unfold input4159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4158 output2037)).val
theorem output4159_def : output4159 = (.seq output4158 output2037) := by
  unfold output4159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4159_skip : Flapjack.WordAlloc.isSkip output4159 = false := by
  rw [output4159_def]
  conv => lhs; cbv
  try rfl
theorem node4159_eq : Flapjack.WordAlloc.removeDeadStructural input4159 value1022 value1 value2 = (output4159, value1832, value1) := by
  rw [input4159_def, output4159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2037_eq]
  try dsimp only
  rw [node4158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4159 input2036)).val
theorem input4160_def : input4160 = (.seq input4159 input2036) := by
  unfold input4160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4159 output2036)).val
theorem output4160_def : output4160 = (.seq output4159 output2036) := by
  unfold output4160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4160_skip : Flapjack.WordAlloc.isSkip output4160 = false := by
  rw [output4160_def]
  conv => lhs; cbv
  try rfl
theorem node4160_eq : Flapjack.WordAlloc.removeDeadStructural input4160 value5 value1 value2 = (output4160, value1832, value1) := by
  rw [input4160_def, output4160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2036_eq]
  try dsimp only
  rw [node4159_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4160 input2033)).val
theorem input4161_def : input4161 = (.seq input4160 input2033) := by
  unfold input4161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4160 output2033)).val
theorem output4161_def : output4161 = (.seq output4160 output2033) := by
  unfold output4161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4161_skip : Flapjack.WordAlloc.isSkip output4161 = false := by
  rw [output4161_def]
  conv => lhs; cbv
  try rfl
theorem node4161_eq : Flapjack.WordAlloc.removeDeadStructural input4161 value1016 value1 value2 = (output4161, value1832, value1) := by
  rw [input4161_def, output4161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2033_eq]
  try dsimp only
  rw [node4160_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4161 input2024)).val
theorem input4162_def : input4162 = (.seq input4161 input2024) := by
  unfold input4162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4161)).val
theorem output4162_def : output4162 = (output4161) := by
  unfold output4162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4162_skip : Flapjack.WordAlloc.isSkip output4162 = false := by
  rw [output4162_def]
  conv => lhs; cbv
  try rfl
theorem node4162_eq : Flapjack.WordAlloc.removeDeadStructural input4162 value1016 value1 value2 = (output4162, value1832, value1) := by
  rw [input4162_def, output4162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2024_eq]
  try dsimp only
  rw [node4161_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4162 input2023)).val
theorem input4163_def : input4163 = (.seq input4162 input2023) := by
  unfold input4163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4162 output2023)).val
theorem output4163_def : output4163 = (.seq output4162 output2023) := by
  unfold output4163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4163_skip : Flapjack.WordAlloc.isSkip output4163 = false := by
  rw [output4163_def]
  conv => lhs; cbv
  try rfl
theorem node4163_eq : Flapjack.WordAlloc.removeDeadStructural input4163 value1015 value1 value2 = (output4163, value1832, value1) := by
  rw [input4163_def, output4163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2023_eq]
  try dsimp only
  rw [node4162_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4163 input2022)).val
theorem input4164_def : input4164 = (.seq input4163 input2022) := by
  unfold input4164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4163 output2022)).val
theorem output4164_def : output4164 = (.seq output4163 output2022) := by
  unfold output4164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4164_skip : Flapjack.WordAlloc.isSkip output4164 = false := by
  rw [output4164_def]
  conv => lhs; cbv
  try rfl
theorem node4164_eq : Flapjack.WordAlloc.removeDeadStructural input4164 value5 value1 value2 = (output4164, value1832, value1) := by
  rw [input4164_def, output4164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2022_eq]
  try dsimp only
  rw [node4163_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4164 input2019)).val
theorem input4165_def : input4165 = (.seq input4164 input2019) := by
  unfold input4165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4164 output2019)).val
theorem output4165_def : output4165 = (.seq output4164 output2019) := by
  unfold output4165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4165_skip : Flapjack.WordAlloc.isSkip output4165 = false := by
  rw [output4165_def]
  conv => lhs; cbv
  try rfl
theorem node4165_eq : Flapjack.WordAlloc.removeDeadStructural input4165 value1009 value1 value2 = (output4165, value1832, value1) := by
  rw [input4165_def, output4165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2019_eq]
  try dsimp only
  rw [node4164_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4165 input2010)).val
theorem input4166_def : input4166 = (.seq input4165 input2010) := by
  unfold input4166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4165)).val
theorem output4166_def : output4166 = (output4165) := by
  unfold output4166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4166_skip : Flapjack.WordAlloc.isSkip output4166 = false := by
  rw [output4166_def]
  conv => lhs; cbv
  try rfl
theorem node4166_eq : Flapjack.WordAlloc.removeDeadStructural input4166 value1009 value1 value2 = (output4166, value1832, value1) := by
  rw [input4166_def, output4166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2010_eq]
  try dsimp only
  rw [node4165_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4166 input2009)).val
theorem input4167_def : input4167 = (.seq input4166 input2009) := by
  unfold input4167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4166 output2009)).val
theorem output4167_def : output4167 = (.seq output4166 output2009) := by
  unfold output4167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4167_skip : Flapjack.WordAlloc.isSkip output4167 = false := by
  rw [output4167_def]
  conv => lhs; cbv
  try rfl
theorem node4167_eq : Flapjack.WordAlloc.removeDeadStructural input4167 value1008 value1 value2 = (output4167, value1832, value1) := by
  rw [input4167_def, output4167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2009_eq]
  try dsimp only
  rw [node4166_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4167 input2008)).val
theorem input4168_def : input4168 = (.seq input4167 input2008) := by
  unfold input4168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4167 output2008)).val
theorem output4168_def : output4168 = (.seq output4167 output2008) := by
  unfold output4168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4168_skip : Flapjack.WordAlloc.isSkip output4168 = false := by
  rw [output4168_def]
  conv => lhs; cbv
  try rfl
theorem node4168_eq : Flapjack.WordAlloc.removeDeadStructural input4168 value5 value1 value2 = (output4168, value1832, value1) := by
  rw [input4168_def, output4168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2008_eq]
  try dsimp only
  rw [node4167_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4168 input2005)).val
theorem input4169_def : input4169 = (.seq input4168 input2005) := by
  unfold input4169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4168 output2005)).val
theorem output4169_def : output4169 = (.seq output4168 output2005) := by
  unfold output4169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4169_skip : Flapjack.WordAlloc.isSkip output4169 = false := by
  rw [output4169_def]
  conv => lhs; cbv
  try rfl
theorem node4169_eq : Flapjack.WordAlloc.removeDeadStructural input4169 value1002 value1 value2 = (output4169, value1832, value1) := by
  rw [input4169_def, output4169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2005_eq]
  try dsimp only
  rw [node4168_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4169 input1996)).val
theorem input4170_def : input4170 = (.seq input4169 input1996) := by
  unfold input4170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4169)).val
theorem output4170_def : output4170 = (output4169) := by
  unfold output4170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4170_skip : Flapjack.WordAlloc.isSkip output4170 = false := by
  rw [output4170_def]
  conv => lhs; cbv
  try rfl
theorem node4170_eq : Flapjack.WordAlloc.removeDeadStructural input4170 value1002 value1 value2 = (output4170, value1832, value1) := by
  rw [input4170_def, output4170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1996_eq]
  try dsimp only
  rw [node4169_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4170 input1995)).val
theorem input4171_def : input4171 = (.seq input4170 input1995) := by
  unfold input4171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4170 output1995)).val
theorem output4171_def : output4171 = (.seq output4170 output1995) := by
  unfold output4171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4171_skip : Flapjack.WordAlloc.isSkip output4171 = false := by
  rw [output4171_def]
  conv => lhs; cbv
  try rfl
theorem node4171_eq : Flapjack.WordAlloc.removeDeadStructural input4171 value1001 value1 value2 = (output4171, value1832, value1) := by
  rw [input4171_def, output4171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1995_eq]
  try dsimp only
  rw [node4170_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4171 input1994)).val
theorem input4172_def : input4172 = (.seq input4171 input1994) := by
  unfold input4172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4171 output1994)).val
theorem output4172_def : output4172 = (.seq output4171 output1994) := by
  unfold output4172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4172_skip : Flapjack.WordAlloc.isSkip output4172 = false := by
  rw [output4172_def]
  conv => lhs; cbv
  try rfl
theorem node4172_eq : Flapjack.WordAlloc.removeDeadStructural input4172 value5 value1 value2 = (output4172, value1832, value1) := by
  rw [input4172_def, output4172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1994_eq]
  try dsimp only
  rw [node4171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4172 input1991)).val
theorem input4173_def : input4173 = (.seq input4172 input1991) := by
  unfold input4173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4172 output1991)).val
theorem output4173_def : output4173 = (.seq output4172 output1991) := by
  unfold output4173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4173_skip : Flapjack.WordAlloc.isSkip output4173 = false := by
  rw [output4173_def]
  conv => lhs; cbv
  try rfl
theorem node4173_eq : Flapjack.WordAlloc.removeDeadStructural input4173 value995 value1 value2 = (output4173, value1832, value1) := by
  rw [input4173_def, output4173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1991_eq]
  try dsimp only
  rw [node4172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4173 input1982)).val
theorem input4174_def : input4174 = (.seq input4173 input1982) := by
  unfold input4174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4173)).val
theorem output4174_def : output4174 = (output4173) := by
  unfold output4174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4174_skip : Flapjack.WordAlloc.isSkip output4174 = false := by
  rw [output4174_def]
  conv => lhs; cbv
  try rfl
theorem node4174_eq : Flapjack.WordAlloc.removeDeadStructural input4174 value995 value1 value2 = (output4174, value1832, value1) := by
  rw [input4174_def, output4174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1982_eq]
  try dsimp only
  rw [node4173_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4174 input1981)).val
theorem input4175_def : input4175 = (.seq input4174 input1981) := by
  unfold input4175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4174 output1981)).val
theorem output4175_def : output4175 = (.seq output4174 output1981) := by
  unfold output4175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4175_skip : Flapjack.WordAlloc.isSkip output4175 = false := by
  rw [output4175_def]
  conv => lhs; cbv
  try rfl
theorem node4175_eq : Flapjack.WordAlloc.removeDeadStructural input4175 value994 value1 value2 = (output4175, value1832, value1) := by
  rw [input4175_def, output4175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1981_eq]
  try dsimp only
  rw [node4174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4175 input1980)).val
theorem input4176_def : input4176 = (.seq input4175 input1980) := by
  unfold input4176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4175 output1980)).val
theorem output4176_def : output4176 = (.seq output4175 output1980) := by
  unfold output4176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4176_skip : Flapjack.WordAlloc.isSkip output4176 = false := by
  rw [output4176_def]
  conv => lhs; cbv
  try rfl
theorem node4176_eq : Flapjack.WordAlloc.removeDeadStructural input4176 value5 value1 value2 = (output4176, value1832, value1) := by
  rw [input4176_def, output4176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1980_eq]
  try dsimp only
  rw [node4175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4176 input1977)).val
theorem input4177_def : input4177 = (.seq input4176 input1977) := by
  unfold input4177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4176 output1977)).val
theorem output4177_def : output4177 = (.seq output4176 output1977) := by
  unfold output4177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4177_skip : Flapjack.WordAlloc.isSkip output4177 = false := by
  rw [output4177_def]
  conv => lhs; cbv
  try rfl
theorem node4177_eq : Flapjack.WordAlloc.removeDeadStructural input4177 value988 value1 value2 = (output4177, value1832, value1) := by
  rw [input4177_def, output4177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1977_eq]
  try dsimp only
  rw [node4176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4177 input1968)).val
theorem input4178_def : input4178 = (.seq input4177 input1968) := by
  unfold input4178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4177)).val
theorem output4178_def : output4178 = (output4177) := by
  unfold output4178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4178_skip : Flapjack.WordAlloc.isSkip output4178 = false := by
  rw [output4178_def]
  conv => lhs; cbv
  try rfl
theorem node4178_eq : Flapjack.WordAlloc.removeDeadStructural input4178 value988 value1 value2 = (output4178, value1832, value1) := by
  rw [input4178_def, output4178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1968_eq]
  try dsimp only
  rw [node4177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4178 input1967)).val
theorem input4179_def : input4179 = (.seq input4178 input1967) := by
  unfold input4179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4178 output1967)).val
theorem output4179_def : output4179 = (.seq output4178 output1967) := by
  unfold output4179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4179_skip : Flapjack.WordAlloc.isSkip output4179 = false := by
  rw [output4179_def]
  conv => lhs; cbv
  try rfl
theorem node4179_eq : Flapjack.WordAlloc.removeDeadStructural input4179 value987 value1 value2 = (output4179, value1832, value1) := by
  rw [input4179_def, output4179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1967_eq]
  try dsimp only
  rw [node4178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4179 input1966)).val
theorem input4180_def : input4180 = (.seq input4179 input1966) := by
  unfold input4180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4179 output1966)).val
theorem output4180_def : output4180 = (.seq output4179 output1966) := by
  unfold output4180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4180_skip : Flapjack.WordAlloc.isSkip output4180 = false := by
  rw [output4180_def]
  conv => lhs; cbv
  try rfl
theorem node4180_eq : Flapjack.WordAlloc.removeDeadStructural input4180 value5 value1 value2 = (output4180, value1832, value1) := by
  rw [input4180_def, output4180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1966_eq]
  try dsimp only
  rw [node4179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4180 input1963)).val
theorem input4181_def : input4181 = (.seq input4180 input1963) := by
  unfold input4181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4180 output1963)).val
theorem output4181_def : output4181 = (.seq output4180 output1963) := by
  unfold output4181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4181_skip : Flapjack.WordAlloc.isSkip output4181 = false := by
  rw [output4181_def]
  conv => lhs; cbv
  try rfl
theorem node4181_eq : Flapjack.WordAlloc.removeDeadStructural input4181 value981 value1 value2 = (output4181, value1832, value1) := by
  rw [input4181_def, output4181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1963_eq]
  try dsimp only
  rw [node4180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4181 input1954)).val
theorem input4182_def : input4182 = (.seq input4181 input1954) := by
  unfold input4182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4181)).val
theorem output4182_def : output4182 = (output4181) := by
  unfold output4182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4182_skip : Flapjack.WordAlloc.isSkip output4182 = false := by
  rw [output4182_def]
  conv => lhs; cbv
  try rfl
theorem node4182_eq : Flapjack.WordAlloc.removeDeadStructural input4182 value981 value1 value2 = (output4182, value1832, value1) := by
  rw [input4182_def, output4182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1954_eq]
  try dsimp only
  rw [node4181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4182 input1953)).val
theorem input4183_def : input4183 = (.seq input4182 input1953) := by
  unfold input4183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4182 output1953)).val
theorem output4183_def : output4183 = (.seq output4182 output1953) := by
  unfold output4183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4183_skip : Flapjack.WordAlloc.isSkip output4183 = false := by
  rw [output4183_def]
  conv => lhs; cbv
  try rfl
theorem node4183_eq : Flapjack.WordAlloc.removeDeadStructural input4183 value980 value1 value2 = (output4183, value1832, value1) := by
  rw [input4183_def, output4183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1953_eq]
  try dsimp only
  rw [node4182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4183 input1952)).val
theorem input4184_def : input4184 = (.seq input4183 input1952) := by
  unfold input4184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4183 output1952)).val
theorem output4184_def : output4184 = (.seq output4183 output1952) := by
  unfold output4184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4184_skip : Flapjack.WordAlloc.isSkip output4184 = false := by
  rw [output4184_def]
  conv => lhs; cbv
  try rfl
theorem node4184_eq : Flapjack.WordAlloc.removeDeadStructural input4184 value5 value1 value2 = (output4184, value1832, value1) := by
  rw [input4184_def, output4184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1952_eq]
  try dsimp only
  rw [node4183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4184 input1949)).val
theorem input4185_def : input4185 = (.seq input4184 input1949) := by
  unfold input4185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4184 output1949)).val
theorem output4185_def : output4185 = (.seq output4184 output1949) := by
  unfold output4185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4185_skip : Flapjack.WordAlloc.isSkip output4185 = false := by
  rw [output4185_def]
  conv => lhs; cbv
  try rfl
theorem node4185_eq : Flapjack.WordAlloc.removeDeadStructural input4185 value974 value1 value2 = (output4185, value1832, value1) := by
  rw [input4185_def, output4185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1949_eq]
  try dsimp only
  rw [node4184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4185 input1940)).val
theorem input4186_def : input4186 = (.seq input4185 input1940) := by
  unfold input4186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4185)).val
theorem output4186_def : output4186 = (output4185) := by
  unfold output4186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4186_skip : Flapjack.WordAlloc.isSkip output4186 = false := by
  rw [output4186_def]
  conv => lhs; cbv
  try rfl
theorem node4186_eq : Flapjack.WordAlloc.removeDeadStructural input4186 value974 value1 value2 = (output4186, value1832, value1) := by
  rw [input4186_def, output4186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1940_eq]
  try dsimp only
  rw [node4185_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4186 input1939)).val
theorem input4187_def : input4187 = (.seq input4186 input1939) := by
  unfold input4187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4186 output1939)).val
theorem output4187_def : output4187 = (.seq output4186 output1939) := by
  unfold output4187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4187_skip : Flapjack.WordAlloc.isSkip output4187 = false := by
  rw [output4187_def]
  conv => lhs; cbv
  try rfl
theorem node4187_eq : Flapjack.WordAlloc.removeDeadStructural input4187 value973 value1 value2 = (output4187, value1832, value1) := by
  rw [input4187_def, output4187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1939_eq]
  try dsimp only
  rw [node4186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4187 input1938)).val
theorem input4188_def : input4188 = (.seq input4187 input1938) := by
  unfold input4188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4187 output1938)).val
theorem output4188_def : output4188 = (.seq output4187 output1938) := by
  unfold output4188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4188_skip : Flapjack.WordAlloc.isSkip output4188 = false := by
  rw [output4188_def]
  conv => lhs; cbv
  try rfl
theorem node4188_eq : Flapjack.WordAlloc.removeDeadStructural input4188 value5 value1 value2 = (output4188, value1832, value1) := by
  rw [input4188_def, output4188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1938_eq]
  try dsimp only
  rw [node4187_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4188 input1935)).val
theorem input4189_def : input4189 = (.seq input4188 input1935) := by
  unfold input4189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4188 output1935)).val
theorem output4189_def : output4189 = (.seq output4188 output1935) := by
  unfold output4189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4189_skip : Flapjack.WordAlloc.isSkip output4189 = false := by
  rw [output4189_def]
  conv => lhs; cbv
  try rfl
theorem node4189_eq : Flapjack.WordAlloc.removeDeadStructural input4189 value967 value1 value2 = (output4189, value1832, value1) := by
  rw [input4189_def, output4189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1935_eq]
  try dsimp only
  rw [node4188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4189 input1926)).val
theorem input4190_def : input4190 = (.seq input4189 input1926) := by
  unfold input4190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4189)).val
theorem output4190_def : output4190 = (output4189) := by
  unfold output4190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4190_skip : Flapjack.WordAlloc.isSkip output4190 = false := by
  rw [output4190_def]
  conv => lhs; cbv
  try rfl
theorem node4190_eq : Flapjack.WordAlloc.removeDeadStructural input4190 value967 value1 value2 = (output4190, value1832, value1) := by
  rw [input4190_def, output4190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1926_eq]
  try dsimp only
  rw [node4189_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4190 input1925)).val
theorem input4191_def : input4191 = (.seq input4190 input1925) := by
  unfold input4191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4190 output1925)).val
theorem output4191_def : output4191 = (.seq output4190 output1925) := by
  unfold output4191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4191_skip : Flapjack.WordAlloc.isSkip output4191 = false := by
  rw [output4191_def]
  conv => lhs; cbv
  try rfl
theorem node4191_eq : Flapjack.WordAlloc.removeDeadStructural input4191 value966 value1 value2 = (output4191, value1832, value1) := by
  rw [input4191_def, output4191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1925_eq]
  try dsimp only
  rw [node4190_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4191 input1924)).val
theorem input4192_def : input4192 = (.seq input4191 input1924) := by
  unfold input4192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4191 output1924)).val
theorem output4192_def : output4192 = (.seq output4191 output1924) := by
  unfold output4192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4192_skip : Flapjack.WordAlloc.isSkip output4192 = false := by
  rw [output4192_def]
  conv => lhs; cbv
  try rfl
theorem node4192_eq : Flapjack.WordAlloc.removeDeadStructural input4192 value5 value1 value2 = (output4192, value1832, value1) := by
  rw [input4192_def, output4192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1924_eq]
  try dsimp only
  rw [node4191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4192 input1921)).val
theorem input4193_def : input4193 = (.seq input4192 input1921) := by
  unfold input4193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4192 output1921)).val
theorem output4193_def : output4193 = (.seq output4192 output1921) := by
  unfold output4193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4193_skip : Flapjack.WordAlloc.isSkip output4193 = false := by
  rw [output4193_def]
  conv => lhs; cbv
  try rfl
theorem node4193_eq : Flapjack.WordAlloc.removeDeadStructural input4193 value960 value1 value2 = (output4193, value1832, value1) := by
  rw [input4193_def, output4193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1921_eq]
  try dsimp only
  rw [node4192_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4193 input1912)).val
theorem input4194_def : input4194 = (.seq input4193 input1912) := by
  unfold input4194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4193)).val
theorem output4194_def : output4194 = (output4193) := by
  unfold output4194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4194_skip : Flapjack.WordAlloc.isSkip output4194 = false := by
  rw [output4194_def]
  conv => lhs; cbv
  try rfl
theorem node4194_eq : Flapjack.WordAlloc.removeDeadStructural input4194 value960 value1 value2 = (output4194, value1832, value1) := by
  rw [input4194_def, output4194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1912_eq]
  try dsimp only
  rw [node4193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4194 input1911)).val
theorem input4195_def : input4195 = (.seq input4194 input1911) := by
  unfold input4195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4194 output1911)).val
theorem output4195_def : output4195 = (.seq output4194 output1911) := by
  unfold output4195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4195_skip : Flapjack.WordAlloc.isSkip output4195 = false := by
  rw [output4195_def]
  conv => lhs; cbv
  try rfl
theorem node4195_eq : Flapjack.WordAlloc.removeDeadStructural input4195 value959 value1 value2 = (output4195, value1832, value1) := by
  rw [input4195_def, output4195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1911_eq]
  try dsimp only
  rw [node4194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4195 input1910)).val
theorem input4196_def : input4196 = (.seq input4195 input1910) := by
  unfold input4196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4195 output1910)).val
theorem output4196_def : output4196 = (.seq output4195 output1910) := by
  unfold output4196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4196_skip : Flapjack.WordAlloc.isSkip output4196 = false := by
  rw [output4196_def]
  conv => lhs; cbv
  try rfl
theorem node4196_eq : Flapjack.WordAlloc.removeDeadStructural input4196 value5 value1 value2 = (output4196, value1832, value1) := by
  rw [input4196_def, output4196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1910_eq]
  try dsimp only
  rw [node4195_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4196 input1907)).val
theorem input4197_def : input4197 = (.seq input4196 input1907) := by
  unfold input4197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4196 output1907)).val
theorem output4197_def : output4197 = (.seq output4196 output1907) := by
  unfold output4197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4197_skip : Flapjack.WordAlloc.isSkip output4197 = false := by
  rw [output4197_def]
  conv => lhs; cbv
  try rfl
theorem node4197_eq : Flapjack.WordAlloc.removeDeadStructural input4197 value953 value1 value2 = (output4197, value1832, value1) := by
  rw [input4197_def, output4197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1907_eq]
  try dsimp only
  rw [node4196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4197 input1898)).val
theorem input4198_def : input4198 = (.seq input4197 input1898) := by
  unfold input4198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4197)).val
theorem output4198_def : output4198 = (output4197) := by
  unfold output4198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4198_skip : Flapjack.WordAlloc.isSkip output4198 = false := by
  rw [output4198_def]
  conv => lhs; cbv
  try rfl
theorem node4198_eq : Flapjack.WordAlloc.removeDeadStructural input4198 value953 value1 value2 = (output4198, value1832, value1) := by
  rw [input4198_def, output4198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1898_eq]
  try dsimp only
  rw [node4197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4198 input1897)).val
theorem input4199_def : input4199 = (.seq input4198 input1897) := by
  unfold input4199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4198 output1897)).val
theorem output4199_def : output4199 = (.seq output4198 output1897) := by
  unfold output4199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4199_skip : Flapjack.WordAlloc.isSkip output4199 = false := by
  rw [output4199_def]
  conv => lhs; cbv
  try rfl
theorem node4199_eq : Flapjack.WordAlloc.removeDeadStructural input4199 value952 value1 value2 = (output4199, value1832, value1) := by
  rw [input4199_def, output4199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1897_eq]
  try dsimp only
  rw [node4198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4199 input1896)).val
theorem input4200_def : input4200 = (.seq input4199 input1896) := by
  unfold input4200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4199 output1896)).val
theorem output4200_def : output4200 = (.seq output4199 output1896) := by
  unfold output4200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4200_skip : Flapjack.WordAlloc.isSkip output4200 = false := by
  rw [output4200_def]
  conv => lhs; cbv
  try rfl
theorem node4200_eq : Flapjack.WordAlloc.removeDeadStructural input4200 value5 value1 value2 = (output4200, value1832, value1) := by
  rw [input4200_def, output4200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1896_eq]
  try dsimp only
  rw [node4199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4200 input1893)).val
theorem input4201_def : input4201 = (.seq input4200 input1893) := by
  unfold input4201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4200 output1893)).val
theorem output4201_def : output4201 = (.seq output4200 output1893) := by
  unfold output4201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4201_skip : Flapjack.WordAlloc.isSkip output4201 = false := by
  rw [output4201_def]
  conv => lhs; cbv
  try rfl
theorem node4201_eq : Flapjack.WordAlloc.removeDeadStructural input4201 value946 value1 value2 = (output4201, value1832, value1) := by
  rw [input4201_def, output4201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1893_eq]
  try dsimp only
  rw [node4200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4201 input1884)).val
theorem input4202_def : input4202 = (.seq input4201 input1884) := by
  unfold input4202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4201)).val
theorem output4202_def : output4202 = (output4201) := by
  unfold output4202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4202_skip : Flapjack.WordAlloc.isSkip output4202 = false := by
  rw [output4202_def]
  conv => lhs; cbv
  try rfl
theorem node4202_eq : Flapjack.WordAlloc.removeDeadStructural input4202 value946 value1 value2 = (output4202, value1832, value1) := by
  rw [input4202_def, output4202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1884_eq]
  try dsimp only
  rw [node4201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4202 input1883)).val
theorem input4203_def : input4203 = (.seq input4202 input1883) := by
  unfold input4203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4202 output1883)).val
theorem output4203_def : output4203 = (.seq output4202 output1883) := by
  unfold output4203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4203_skip : Flapjack.WordAlloc.isSkip output4203 = false := by
  rw [output4203_def]
  conv => lhs; cbv
  try rfl
theorem node4203_eq : Flapjack.WordAlloc.removeDeadStructural input4203 value945 value1 value2 = (output4203, value1832, value1) := by
  rw [input4203_def, output4203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1883_eq]
  try dsimp only
  rw [node4202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4203 input1882)).val
theorem input4204_def : input4204 = (.seq input4203 input1882) := by
  unfold input4204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4203 output1882)).val
theorem output4204_def : output4204 = (.seq output4203 output1882) := by
  unfold output4204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4204_skip : Flapjack.WordAlloc.isSkip output4204 = false := by
  rw [output4204_def]
  conv => lhs; cbv
  try rfl
theorem node4204_eq : Flapjack.WordAlloc.removeDeadStructural input4204 value5 value1 value2 = (output4204, value1832, value1) := by
  rw [input4204_def, output4204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1882_eq]
  try dsimp only
  rw [node4203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4204 input1879)).val
theorem input4205_def : input4205 = (.seq input4204 input1879) := by
  unfold input4205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4204 output1879)).val
theorem output4205_def : output4205 = (.seq output4204 output1879) := by
  unfold output4205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4205_skip : Flapjack.WordAlloc.isSkip output4205 = false := by
  rw [output4205_def]
  conv => lhs; cbv
  try rfl
theorem node4205_eq : Flapjack.WordAlloc.removeDeadStructural input4205 value939 value1 value2 = (output4205, value1832, value1) := by
  rw [input4205_def, output4205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1879_eq]
  try dsimp only
  rw [node4204_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4205 input1870)).val
theorem input4206_def : input4206 = (.seq input4205 input1870) := by
  unfold input4206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4205)).val
theorem output4206_def : output4206 = (output4205) := by
  unfold output4206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4206_skip : Flapjack.WordAlloc.isSkip output4206 = false := by
  rw [output4206_def]
  conv => lhs; cbv
  try rfl
theorem node4206_eq : Flapjack.WordAlloc.removeDeadStructural input4206 value939 value1 value2 = (output4206, value1832, value1) := by
  rw [input4206_def, output4206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1870_eq]
  try dsimp only
  rw [node4205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4206 input1869)).val
theorem input4207_def : input4207 = (.seq input4206 input1869) := by
  unfold input4207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4206 output1869)).val
theorem output4207_def : output4207 = (.seq output4206 output1869) := by
  unfold output4207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4207_skip : Flapjack.WordAlloc.isSkip output4207 = false := by
  rw [output4207_def]
  conv => lhs; cbv
  try rfl
theorem node4207_eq : Flapjack.WordAlloc.removeDeadStructural input4207 value938 value1 value2 = (output4207, value1832, value1) := by
  rw [input4207_def, output4207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1869_eq]
  try dsimp only
  rw [node4206_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4207 input1868)).val
theorem input4208_def : input4208 = (.seq input4207 input1868) := by
  unfold input4208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4207 output1868)).val
theorem output4208_def : output4208 = (.seq output4207 output1868) := by
  unfold output4208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4208_skip : Flapjack.WordAlloc.isSkip output4208 = false := by
  rw [output4208_def]
  conv => lhs; cbv
  try rfl
theorem node4208_eq : Flapjack.WordAlloc.removeDeadStructural input4208 value5 value1 value2 = (output4208, value1832, value1) := by
  rw [input4208_def, output4208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1868_eq]
  try dsimp only
  rw [node4207_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4208 input1865)).val
theorem input4209_def : input4209 = (.seq input4208 input1865) := by
  unfold input4209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4208 output1865)).val
theorem output4209_def : output4209 = (.seq output4208 output1865) := by
  unfold output4209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4209_skip : Flapjack.WordAlloc.isSkip output4209 = false := by
  rw [output4209_def]
  conv => lhs; cbv
  try rfl
theorem node4209_eq : Flapjack.WordAlloc.removeDeadStructural input4209 value932 value1 value2 = (output4209, value1832, value1) := by
  rw [input4209_def, output4209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1865_eq]
  try dsimp only
  rw [node4208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4209 input1856)).val
theorem input4210_def : input4210 = (.seq input4209 input1856) := by
  unfold input4210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4209)).val
theorem output4210_def : output4210 = (output4209) := by
  unfold output4210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4210_skip : Flapjack.WordAlloc.isSkip output4210 = false := by
  rw [output4210_def]
  conv => lhs; cbv
  try rfl
theorem node4210_eq : Flapjack.WordAlloc.removeDeadStructural input4210 value932 value1 value2 = (output4210, value1832, value1) := by
  rw [input4210_def, output4210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1856_eq]
  try dsimp only
  rw [node4209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4210 input1855)).val
theorem input4211_def : input4211 = (.seq input4210 input1855) := by
  unfold input4211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4210 output1855)).val
theorem output4211_def : output4211 = (.seq output4210 output1855) := by
  unfold output4211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4211_skip : Flapjack.WordAlloc.isSkip output4211 = false := by
  rw [output4211_def]
  conv => lhs; cbv
  try rfl
theorem node4211_eq : Flapjack.WordAlloc.removeDeadStructural input4211 value931 value1 value2 = (output4211, value1832, value1) := by
  rw [input4211_def, output4211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1855_eq]
  try dsimp only
  rw [node4210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4211 input1854)).val
theorem input4212_def : input4212 = (.seq input4211 input1854) := by
  unfold input4212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4211 output1854)).val
theorem output4212_def : output4212 = (.seq output4211 output1854) := by
  unfold output4212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4212_skip : Flapjack.WordAlloc.isSkip output4212 = false := by
  rw [output4212_def]
  conv => lhs; cbv
  try rfl
theorem node4212_eq : Flapjack.WordAlloc.removeDeadStructural input4212 value5 value1 value2 = (output4212, value1832, value1) := by
  rw [input4212_def, output4212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1854_eq]
  try dsimp only
  rw [node4211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4212 input1851)).val
theorem input4213_def : input4213 = (.seq input4212 input1851) := by
  unfold input4213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4212 output1851)).val
theorem output4213_def : output4213 = (.seq output4212 output1851) := by
  unfold output4213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4213_skip : Flapjack.WordAlloc.isSkip output4213 = false := by
  rw [output4213_def]
  conv => lhs; cbv
  try rfl
theorem node4213_eq : Flapjack.WordAlloc.removeDeadStructural input4213 value925 value1 value2 = (output4213, value1832, value1) := by
  rw [input4213_def, output4213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1851_eq]
  try dsimp only
  rw [node4212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4213 input1842)).val
theorem input4214_def : input4214 = (.seq input4213 input1842) := by
  unfold input4214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4213)).val
theorem output4214_def : output4214 = (output4213) := by
  unfold output4214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4214_skip : Flapjack.WordAlloc.isSkip output4214 = false := by
  rw [output4214_def]
  conv => lhs; cbv
  try rfl
theorem node4214_eq : Flapjack.WordAlloc.removeDeadStructural input4214 value925 value1 value2 = (output4214, value1832, value1) := by
  rw [input4214_def, output4214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1842_eq]
  try dsimp only
  rw [node4213_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4214 input1841)).val
theorem input4215_def : input4215 = (.seq input4214 input1841) := by
  unfold input4215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4214 output1841)).val
theorem output4215_def : output4215 = (.seq output4214 output1841) := by
  unfold output4215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4215_skip : Flapjack.WordAlloc.isSkip output4215 = false := by
  rw [output4215_def]
  conv => lhs; cbv
  try rfl
theorem node4215_eq : Flapjack.WordAlloc.removeDeadStructural input4215 value924 value1 value2 = (output4215, value1832, value1) := by
  rw [input4215_def, output4215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1841_eq]
  try dsimp only
  rw [node4214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4215 input1840)).val
theorem input4216_def : input4216 = (.seq input4215 input1840) := by
  unfold input4216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4215 output1840)).val
theorem output4216_def : output4216 = (.seq output4215 output1840) := by
  unfold output4216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4216_skip : Flapjack.WordAlloc.isSkip output4216 = false := by
  rw [output4216_def]
  conv => lhs; cbv
  try rfl
theorem node4216_eq : Flapjack.WordAlloc.removeDeadStructural input4216 value5 value1 value2 = (output4216, value1832, value1) := by
  rw [input4216_def, output4216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1840_eq]
  try dsimp only
  rw [node4215_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4216 input1837)).val
theorem input4217_def : input4217 = (.seq input4216 input1837) := by
  unfold input4217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4216 output1837)).val
theorem output4217_def : output4217 = (.seq output4216 output1837) := by
  unfold output4217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4217_skip : Flapjack.WordAlloc.isSkip output4217 = false := by
  rw [output4217_def]
  conv => lhs; cbv
  try rfl
theorem node4217_eq : Flapjack.WordAlloc.removeDeadStructural input4217 value918 value1 value2 = (output4217, value1832, value1) := by
  rw [input4217_def, output4217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1837_eq]
  try dsimp only
  rw [node4216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4217 input1828)).val
theorem input4218_def : input4218 = (.seq input4217 input1828) := by
  unfold input4218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4217)).val
theorem output4218_def : output4218 = (output4217) := by
  unfold output4218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4218_skip : Flapjack.WordAlloc.isSkip output4218 = false := by
  rw [output4218_def]
  conv => lhs; cbv
  try rfl
theorem node4218_eq : Flapjack.WordAlloc.removeDeadStructural input4218 value918 value1 value2 = (output4218, value1832, value1) := by
  rw [input4218_def, output4218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1828_eq]
  try dsimp only
  rw [node4217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4218 input1827)).val
theorem input4219_def : input4219 = (.seq input4218 input1827) := by
  unfold input4219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4218 output1827)).val
theorem output4219_def : output4219 = (.seq output4218 output1827) := by
  unfold output4219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4219_skip : Flapjack.WordAlloc.isSkip output4219 = false := by
  rw [output4219_def]
  conv => lhs; cbv
  try rfl
theorem node4219_eq : Flapjack.WordAlloc.removeDeadStructural input4219 value917 value1 value2 = (output4219, value1832, value1) := by
  rw [input4219_def, output4219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1827_eq]
  try dsimp only
  rw [node4218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4219 input1826)).val
theorem input4220_def : input4220 = (.seq input4219 input1826) := by
  unfold input4220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4219 output1826)).val
theorem output4220_def : output4220 = (.seq output4219 output1826) := by
  unfold output4220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4220_skip : Flapjack.WordAlloc.isSkip output4220 = false := by
  rw [output4220_def]
  conv => lhs; cbv
  try rfl
theorem node4220_eq : Flapjack.WordAlloc.removeDeadStructural input4220 value5 value1 value2 = (output4220, value1832, value1) := by
  rw [input4220_def, output4220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1826_eq]
  try dsimp only
  rw [node4219_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4220 input1823)).val
theorem input4221_def : input4221 = (.seq input4220 input1823) := by
  unfold input4221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4220 output1823)).val
theorem output4221_def : output4221 = (.seq output4220 output1823) := by
  unfold output4221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4221_skip : Flapjack.WordAlloc.isSkip output4221 = false := by
  rw [output4221_def]
  conv => lhs; cbv
  try rfl
theorem node4221_eq : Flapjack.WordAlloc.removeDeadStructural input4221 value911 value1 value2 = (output4221, value1832, value1) := by
  rw [input4221_def, output4221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1823_eq]
  try dsimp only
  rw [node4220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4221 input1814)).val
theorem input4222_def : input4222 = (.seq input4221 input1814) := by
  unfold input4222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4221)).val
theorem output4222_def : output4222 = (output4221) := by
  unfold output4222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4222_skip : Flapjack.WordAlloc.isSkip output4222 = false := by
  rw [output4222_def]
  conv => lhs; cbv
  try rfl
theorem node4222_eq : Flapjack.WordAlloc.removeDeadStructural input4222 value911 value1 value2 = (output4222, value1832, value1) := by
  rw [input4222_def, output4222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1814_eq]
  try dsimp only
  rw [node4221_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4222 input1813)).val
theorem input4223_def : input4223 = (.seq input4222 input1813) := by
  unfold input4223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4222 output1813)).val
theorem output4223_def : output4223 = (.seq output4222 output1813) := by
  unfold output4223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4223_skip : Flapjack.WordAlloc.isSkip output4223 = false := by
  rw [output4223_def]
  conv => lhs; cbv
  try rfl
theorem node4223_eq : Flapjack.WordAlloc.removeDeadStructural input4223 value910 value1 value2 = (output4223, value1832, value1) := by
  rw [input4223_def, output4223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1813_eq]
  try dsimp only
  rw [node4222_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4223 input1812)).val
theorem input4224_def : input4224 = (.seq input4223 input1812) := by
  unfold input4224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4223 output1812)).val
theorem output4224_def : output4224 = (.seq output4223 output1812) := by
  unfold output4224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4224_skip : Flapjack.WordAlloc.isSkip output4224 = false := by
  rw [output4224_def]
  conv => lhs; cbv
  try rfl
theorem node4224_eq : Flapjack.WordAlloc.removeDeadStructural input4224 value5 value1 value2 = (output4224, value1832, value1) := by
  rw [input4224_def, output4224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1812_eq]
  try dsimp only
  rw [node4223_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4224 input1809)).val
theorem input4225_def : input4225 = (.seq input4224 input1809) := by
  unfold input4225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4224 output1809)).val
theorem output4225_def : output4225 = (.seq output4224 output1809) := by
  unfold output4225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4225_skip : Flapjack.WordAlloc.isSkip output4225 = false := by
  rw [output4225_def]
  conv => lhs; cbv
  try rfl
theorem node4225_eq : Flapjack.WordAlloc.removeDeadStructural input4225 value904 value1 value2 = (output4225, value1832, value1) := by
  rw [input4225_def, output4225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1809_eq]
  try dsimp only
  rw [node4224_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4225 input1800)).val
theorem input4226_def : input4226 = (.seq input4225 input1800) := by
  unfold input4226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4225)).val
theorem output4226_def : output4226 = (output4225) := by
  unfold output4226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4226_skip : Flapjack.WordAlloc.isSkip output4226 = false := by
  rw [output4226_def]
  conv => lhs; cbv
  try rfl
theorem node4226_eq : Flapjack.WordAlloc.removeDeadStructural input4226 value904 value1 value2 = (output4226, value1832, value1) := by
  rw [input4226_def, output4226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1800_eq]
  try dsimp only
  rw [node4225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4226 input1799)).val
theorem input4227_def : input4227 = (.seq input4226 input1799) := by
  unfold input4227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4226 output1799)).val
theorem output4227_def : output4227 = (.seq output4226 output1799) := by
  unfold output4227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4227_skip : Flapjack.WordAlloc.isSkip output4227 = false := by
  rw [output4227_def]
  conv => lhs; cbv
  try rfl
theorem node4227_eq : Flapjack.WordAlloc.removeDeadStructural input4227 value903 value1 value2 = (output4227, value1832, value1) := by
  rw [input4227_def, output4227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1799_eq]
  try dsimp only
  rw [node4226_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4227 input1798)).val
theorem input4228_def : input4228 = (.seq input4227 input1798) := by
  unfold input4228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4227 output1798)).val
theorem output4228_def : output4228 = (.seq output4227 output1798) := by
  unfold output4228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4228_skip : Flapjack.WordAlloc.isSkip output4228 = false := by
  rw [output4228_def]
  conv => lhs; cbv
  try rfl
theorem node4228_eq : Flapjack.WordAlloc.removeDeadStructural input4228 value5 value1 value2 = (output4228, value1832, value1) := by
  rw [input4228_def, output4228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1798_eq]
  try dsimp only
  rw [node4227_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4228 input1795)).val
theorem input4229_def : input4229 = (.seq input4228 input1795) := by
  unfold input4229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4228 output1795)).val
theorem output4229_def : output4229 = (.seq output4228 output1795) := by
  unfold output4229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4229_skip : Flapjack.WordAlloc.isSkip output4229 = false := by
  rw [output4229_def]
  conv => lhs; cbv
  try rfl
theorem node4229_eq : Flapjack.WordAlloc.removeDeadStructural input4229 value897 value1 value2 = (output4229, value1832, value1) := by
  rw [input4229_def, output4229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1795_eq]
  try dsimp only
  rw [node4228_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4229 input1786)).val
theorem input4230_def : input4230 = (.seq input4229 input1786) := by
  unfold input4230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4229)).val
theorem output4230_def : output4230 = (output4229) := by
  unfold output4230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4230_skip : Flapjack.WordAlloc.isSkip output4230 = false := by
  rw [output4230_def]
  conv => lhs; cbv
  try rfl
theorem node4230_eq : Flapjack.WordAlloc.removeDeadStructural input4230 value897 value1 value2 = (output4230, value1832, value1) := by
  rw [input4230_def, output4230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1786_eq]
  try dsimp only
  rw [node4229_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4230 input1785)).val
theorem input4231_def : input4231 = (.seq input4230 input1785) := by
  unfold input4231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4230 output1785)).val
theorem output4231_def : output4231 = (.seq output4230 output1785) := by
  unfold output4231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4231_skip : Flapjack.WordAlloc.isSkip output4231 = false := by
  rw [output4231_def]
  conv => lhs; cbv
  try rfl
theorem node4231_eq : Flapjack.WordAlloc.removeDeadStructural input4231 value896 value1 value2 = (output4231, value1832, value1) := by
  rw [input4231_def, output4231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1785_eq]
  try dsimp only
  rw [node4230_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4231 input1784)).val
theorem input4232_def : input4232 = (.seq input4231 input1784) := by
  unfold input4232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4231 output1784)).val
theorem output4232_def : output4232 = (.seq output4231 output1784) := by
  unfold output4232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4232_skip : Flapjack.WordAlloc.isSkip output4232 = false := by
  rw [output4232_def]
  conv => lhs; cbv
  try rfl
theorem node4232_eq : Flapjack.WordAlloc.removeDeadStructural input4232 value5 value1 value2 = (output4232, value1832, value1) := by
  rw [input4232_def, output4232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1784_eq]
  try dsimp only
  rw [node4231_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4232 input1781)).val
theorem input4233_def : input4233 = (.seq input4232 input1781) := by
  unfold input4233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4232 output1781)).val
theorem output4233_def : output4233 = (.seq output4232 output1781) := by
  unfold output4233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4233_skip : Flapjack.WordAlloc.isSkip output4233 = false := by
  rw [output4233_def]
  conv => lhs; cbv
  try rfl
theorem node4233_eq : Flapjack.WordAlloc.removeDeadStructural input4233 value890 value1 value2 = (output4233, value1832, value1) := by
  rw [input4233_def, output4233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1781_eq]
  try dsimp only
  rw [node4232_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4233 input1772)).val
theorem input4234_def : input4234 = (.seq input4233 input1772) := by
  unfold input4234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4233)).val
theorem output4234_def : output4234 = (output4233) := by
  unfold output4234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4234_skip : Flapjack.WordAlloc.isSkip output4234 = false := by
  rw [output4234_def]
  conv => lhs; cbv
  try rfl
theorem node4234_eq : Flapjack.WordAlloc.removeDeadStructural input4234 value890 value1 value2 = (output4234, value1832, value1) := by
  rw [input4234_def, output4234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1772_eq]
  try dsimp only
  rw [node4233_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4234 input1771)).val
theorem input4235_def : input4235 = (.seq input4234 input1771) := by
  unfold input4235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4234 output1771)).val
theorem output4235_def : output4235 = (.seq output4234 output1771) := by
  unfold output4235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4235_skip : Flapjack.WordAlloc.isSkip output4235 = false := by
  rw [output4235_def]
  conv => lhs; cbv
  try rfl
theorem node4235_eq : Flapjack.WordAlloc.removeDeadStructural input4235 value889 value1 value2 = (output4235, value1832, value1) := by
  rw [input4235_def, output4235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1771_eq]
  try dsimp only
  rw [node4234_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4235 input1770)).val
theorem input4236_def : input4236 = (.seq input4235 input1770) := by
  unfold input4236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4235 output1770)).val
theorem output4236_def : output4236 = (.seq output4235 output1770) := by
  unfold output4236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4236_skip : Flapjack.WordAlloc.isSkip output4236 = false := by
  rw [output4236_def]
  conv => lhs; cbv
  try rfl
theorem node4236_eq : Flapjack.WordAlloc.removeDeadStructural input4236 value5 value1 value2 = (output4236, value1832, value1) := by
  rw [input4236_def, output4236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1770_eq]
  try dsimp only
  rw [node4235_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4236 input1767)).val
theorem input4237_def : input4237 = (.seq input4236 input1767) := by
  unfold input4237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4236 output1767)).val
theorem output4237_def : output4237 = (.seq output4236 output1767) := by
  unfold output4237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4237_skip : Flapjack.WordAlloc.isSkip output4237 = false := by
  rw [output4237_def]
  conv => lhs; cbv
  try rfl
theorem node4237_eq : Flapjack.WordAlloc.removeDeadStructural input4237 value883 value1 value2 = (output4237, value1832, value1) := by
  rw [input4237_def, output4237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1767_eq]
  try dsimp only
  rw [node4236_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4237 input1758)).val
theorem input4238_def : input4238 = (.seq input4237 input1758) := by
  unfold input4238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4237)).val
theorem output4238_def : output4238 = (output4237) := by
  unfold output4238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4238_skip : Flapjack.WordAlloc.isSkip output4238 = false := by
  rw [output4238_def]
  conv => lhs; cbv
  try rfl
theorem node4238_eq : Flapjack.WordAlloc.removeDeadStructural input4238 value883 value1 value2 = (output4238, value1832, value1) := by
  rw [input4238_def, output4238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1758_eq]
  try dsimp only
  rw [node4237_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4238 input1757)).val
theorem input4239_def : input4239 = (.seq input4238 input1757) := by
  unfold input4239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4238 output1757)).val
theorem output4239_def : output4239 = (.seq output4238 output1757) := by
  unfold output4239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4239_skip : Flapjack.WordAlloc.isSkip output4239 = false := by
  rw [output4239_def]
  conv => lhs; cbv
  try rfl
theorem node4239_eq : Flapjack.WordAlloc.removeDeadStructural input4239 value882 value1 value2 = (output4239, value1832, value1) := by
  rw [input4239_def, output4239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1757_eq]
  try dsimp only
  rw [node4238_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4239 input1756)).val
theorem input4240_def : input4240 = (.seq input4239 input1756) := by
  unfold input4240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4239 output1756)).val
theorem output4240_def : output4240 = (.seq output4239 output1756) := by
  unfold output4240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4240_skip : Flapjack.WordAlloc.isSkip output4240 = false := by
  rw [output4240_def]
  conv => lhs; cbv
  try rfl
theorem node4240_eq : Flapjack.WordAlloc.removeDeadStructural input4240 value5 value1 value2 = (output4240, value1832, value1) := by
  rw [input4240_def, output4240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1756_eq]
  try dsimp only
  rw [node4239_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4240 input1753)).val
theorem input4241_def : input4241 = (.seq input4240 input1753) := by
  unfold input4241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4240 output1753)).val
theorem output4241_def : output4241 = (.seq output4240 output1753) := by
  unfold output4241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4241_skip : Flapjack.WordAlloc.isSkip output4241 = false := by
  rw [output4241_def]
  conv => lhs; cbv
  try rfl
theorem node4241_eq : Flapjack.WordAlloc.removeDeadStructural input4241 value876 value1 value2 = (output4241, value1832, value1) := by
  rw [input4241_def, output4241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1753_eq]
  try dsimp only
  rw [node4240_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4241 input1744)).val
theorem input4242_def : input4242 = (.seq input4241 input1744) := by
  unfold input4242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4241)).val
theorem output4242_def : output4242 = (output4241) := by
  unfold output4242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4242_skip : Flapjack.WordAlloc.isSkip output4242 = false := by
  rw [output4242_def]
  conv => lhs; cbv
  try rfl
theorem node4242_eq : Flapjack.WordAlloc.removeDeadStructural input4242 value876 value1 value2 = (output4242, value1832, value1) := by
  rw [input4242_def, output4242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1744_eq]
  try dsimp only
  rw [node4241_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4242 input1743)).val
theorem input4243_def : input4243 = (.seq input4242 input1743) := by
  unfold input4243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4242 output1743)).val
theorem output4243_def : output4243 = (.seq output4242 output1743) := by
  unfold output4243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4243_skip : Flapjack.WordAlloc.isSkip output4243 = false := by
  rw [output4243_def]
  conv => lhs; cbv
  try rfl
theorem node4243_eq : Flapjack.WordAlloc.removeDeadStructural input4243 value875 value1 value2 = (output4243, value1832, value1) := by
  rw [input4243_def, output4243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1743_eq]
  try dsimp only
  rw [node4242_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4243 input1742)).val
theorem input4244_def : input4244 = (.seq input4243 input1742) := by
  unfold input4244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4243 output1742)).val
theorem output4244_def : output4244 = (.seq output4243 output1742) := by
  unfold output4244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4244_skip : Flapjack.WordAlloc.isSkip output4244 = false := by
  rw [output4244_def]
  conv => lhs; cbv
  try rfl
theorem node4244_eq : Flapjack.WordAlloc.removeDeadStructural input4244 value5 value1 value2 = (output4244, value1832, value1) := by
  rw [input4244_def, output4244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1742_eq]
  try dsimp only
  rw [node4243_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4244 input1739)).val
theorem input4245_def : input4245 = (.seq input4244 input1739) := by
  unfold input4245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4244 output1739)).val
theorem output4245_def : output4245 = (.seq output4244 output1739) := by
  unfold output4245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4245_skip : Flapjack.WordAlloc.isSkip output4245 = false := by
  rw [output4245_def]
  conv => lhs; cbv
  try rfl
theorem node4245_eq : Flapjack.WordAlloc.removeDeadStructural input4245 value869 value1 value2 = (output4245, value1832, value1) := by
  rw [input4245_def, output4245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1739_eq]
  try dsimp only
  rw [node4244_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4245 input1730)).val
theorem input4246_def : input4246 = (.seq input4245 input1730) := by
  unfold input4246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4245)).val
theorem output4246_def : output4246 = (output4245) := by
  unfold output4246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4246_skip : Flapjack.WordAlloc.isSkip output4246 = false := by
  rw [output4246_def]
  conv => lhs; cbv
  try rfl
theorem node4246_eq : Flapjack.WordAlloc.removeDeadStructural input4246 value869 value1 value2 = (output4246, value1832, value1) := by
  rw [input4246_def, output4246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1730_eq]
  try dsimp only
  rw [node4245_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4246 input1729)).val
theorem input4247_def : input4247 = (.seq input4246 input1729) := by
  unfold input4247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4246 output1729)).val
theorem output4247_def : output4247 = (.seq output4246 output1729) := by
  unfold output4247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4247_skip : Flapjack.WordAlloc.isSkip output4247 = false := by
  rw [output4247_def]
  conv => lhs; cbv
  try rfl
theorem node4247_eq : Flapjack.WordAlloc.removeDeadStructural input4247 value868 value1 value2 = (output4247, value1832, value1) := by
  rw [input4247_def, output4247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1729_eq]
  try dsimp only
  rw [node4246_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4247 input1728)).val
theorem input4248_def : input4248 = (.seq input4247 input1728) := by
  unfold input4248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4247 output1728)).val
theorem output4248_def : output4248 = (.seq output4247 output1728) := by
  unfold output4248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4248_skip : Flapjack.WordAlloc.isSkip output4248 = false := by
  rw [output4248_def]
  conv => lhs; cbv
  try rfl
theorem node4248_eq : Flapjack.WordAlloc.removeDeadStructural input4248 value5 value1 value2 = (output4248, value1832, value1) := by
  rw [input4248_def, output4248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1728_eq]
  try dsimp only
  rw [node4247_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4248 input1725)).val
theorem input4249_def : input4249 = (.seq input4248 input1725) := by
  unfold input4249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4248 output1725)).val
theorem output4249_def : output4249 = (.seq output4248 output1725) := by
  unfold output4249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4249_skip : Flapjack.WordAlloc.isSkip output4249 = false := by
  rw [output4249_def]
  conv => lhs; cbv
  try rfl
theorem node4249_eq : Flapjack.WordAlloc.removeDeadStructural input4249 value862 value1 value2 = (output4249, value1832, value1) := by
  rw [input4249_def, output4249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1725_eq]
  try dsimp only
  rw [node4248_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4249 input1716)).val
theorem input4250_def : input4250 = (.seq input4249 input1716) := by
  unfold input4250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4249)).val
theorem output4250_def : output4250 = (output4249) := by
  unfold output4250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4250_skip : Flapjack.WordAlloc.isSkip output4250 = false := by
  rw [output4250_def]
  conv => lhs; cbv
  try rfl
theorem node4250_eq : Flapjack.WordAlloc.removeDeadStructural input4250 value862 value1 value2 = (output4250, value1832, value1) := by
  rw [input4250_def, output4250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1716_eq]
  try dsimp only
  rw [node4249_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4250 input1715)).val
theorem input4251_def : input4251 = (.seq input4250 input1715) := by
  unfold input4251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4250 output1715)).val
theorem output4251_def : output4251 = (.seq output4250 output1715) := by
  unfold output4251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4251_skip : Flapjack.WordAlloc.isSkip output4251 = false := by
  rw [output4251_def]
  conv => lhs; cbv
  try rfl
theorem node4251_eq : Flapjack.WordAlloc.removeDeadStructural input4251 value861 value1 value2 = (output4251, value1832, value1) := by
  rw [input4251_def, output4251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1715_eq]
  try dsimp only
  rw [node4250_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4251 input1714)).val
theorem input4252_def : input4252 = (.seq input4251 input1714) := by
  unfold input4252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4251 output1714)).val
theorem output4252_def : output4252 = (.seq output4251 output1714) := by
  unfold output4252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4252_skip : Flapjack.WordAlloc.isSkip output4252 = false := by
  rw [output4252_def]
  conv => lhs; cbv
  try rfl
theorem node4252_eq : Flapjack.WordAlloc.removeDeadStructural input4252 value5 value1 value2 = (output4252, value1832, value1) := by
  rw [input4252_def, output4252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1714_eq]
  try dsimp only
  rw [node4251_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4252 input1711)).val
theorem input4253_def : input4253 = (.seq input4252 input1711) := by
  unfold input4253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4252 output1711)).val
theorem output4253_def : output4253 = (.seq output4252 output1711) := by
  unfold output4253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4253_skip : Flapjack.WordAlloc.isSkip output4253 = false := by
  rw [output4253_def]
  conv => lhs; cbv
  try rfl
theorem node4253_eq : Flapjack.WordAlloc.removeDeadStructural input4253 value855 value1 value2 = (output4253, value1832, value1) := by
  rw [input4253_def, output4253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1711_eq]
  try dsimp only
  rw [node4252_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4253 input1702)).val
theorem input4254_def : input4254 = (.seq input4253 input1702) := by
  unfold input4254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4253)).val
theorem output4254_def : output4254 = (output4253) := by
  unfold output4254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4254_skip : Flapjack.WordAlloc.isSkip output4254 = false := by
  rw [output4254_def]
  conv => lhs; cbv
  try rfl
theorem node4254_eq : Flapjack.WordAlloc.removeDeadStructural input4254 value855 value1 value2 = (output4254, value1832, value1) := by
  rw [input4254_def, output4254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1702_eq]
  try dsimp only
  rw [node4253_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4254 input1701)).val
theorem input4255_def : input4255 = (.seq input4254 input1701) := by
  unfold input4255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4254 output1701)).val
theorem output4255_def : output4255 = (.seq output4254 output1701) := by
  unfold output4255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4255_skip : Flapjack.WordAlloc.isSkip output4255 = false := by
  rw [output4255_def]
  conv => lhs; cbv
  try rfl
theorem node4255_eq : Flapjack.WordAlloc.removeDeadStructural input4255 value854 value1 value2 = (output4255, value1832, value1) := by
  rw [input4255_def, output4255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1701_eq]
  try dsimp only
  rw [node4254_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4255 input1700)).val
theorem input4256_def : input4256 = (.seq input4255 input1700) := by
  unfold input4256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4255 output1700)).val
theorem output4256_def : output4256 = (.seq output4255 output1700) := by
  unfold output4256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4256_skip : Flapjack.WordAlloc.isSkip output4256 = false := by
  rw [output4256_def]
  conv => lhs; cbv
  try rfl
theorem node4256_eq : Flapjack.WordAlloc.removeDeadStructural input4256 value5 value1 value2 = (output4256, value1832, value1) := by
  rw [input4256_def, output4256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1700_eq]
  try dsimp only
  rw [node4255_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4256 input1697)).val
theorem input4257_def : input4257 = (.seq input4256 input1697) := by
  unfold input4257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4256 output1697)).val
theorem output4257_def : output4257 = (.seq output4256 output1697) := by
  unfold output4257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4257_skip : Flapjack.WordAlloc.isSkip output4257 = false := by
  rw [output4257_def]
  conv => lhs; cbv
  try rfl
theorem node4257_eq : Flapjack.WordAlloc.removeDeadStructural input4257 value848 value1 value2 = (output4257, value1832, value1) := by
  rw [input4257_def, output4257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1697_eq]
  try dsimp only
  rw [node4256_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4257 input1688)).val
theorem input4258_def : input4258 = (.seq input4257 input1688) := by
  unfold input4258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4257)).val
theorem output4258_def : output4258 = (output4257) := by
  unfold output4258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4258_skip : Flapjack.WordAlloc.isSkip output4258 = false := by
  rw [output4258_def]
  conv => lhs; cbv
  try rfl
theorem node4258_eq : Flapjack.WordAlloc.removeDeadStructural input4258 value848 value1 value2 = (output4258, value1832, value1) := by
  rw [input4258_def, output4258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1688_eq]
  try dsimp only
  rw [node4257_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4258 input1687)).val
theorem input4259_def : input4259 = (.seq input4258 input1687) := by
  unfold input4259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4258 output1687)).val
theorem output4259_def : output4259 = (.seq output4258 output1687) := by
  unfold output4259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4259_skip : Flapjack.WordAlloc.isSkip output4259 = false := by
  rw [output4259_def]
  conv => lhs; cbv
  try rfl
theorem node4259_eq : Flapjack.WordAlloc.removeDeadStructural input4259 value847 value1 value2 = (output4259, value1832, value1) := by
  rw [input4259_def, output4259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1687_eq]
  try dsimp only
  rw [node4258_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4259 input1686)).val
theorem input4260_def : input4260 = (.seq input4259 input1686) := by
  unfold input4260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4259 output1686)).val
theorem output4260_def : output4260 = (.seq output4259 output1686) := by
  unfold output4260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4260_skip : Flapjack.WordAlloc.isSkip output4260 = false := by
  rw [output4260_def]
  conv => lhs; cbv
  try rfl
theorem node4260_eq : Flapjack.WordAlloc.removeDeadStructural input4260 value5 value1 value2 = (output4260, value1832, value1) := by
  rw [input4260_def, output4260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1686_eq]
  try dsimp only
  rw [node4259_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4260 input1683)).val
theorem input4261_def : input4261 = (.seq input4260 input1683) := by
  unfold input4261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4260 output1683)).val
theorem output4261_def : output4261 = (.seq output4260 output1683) := by
  unfold output4261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4261_skip : Flapjack.WordAlloc.isSkip output4261 = false := by
  rw [output4261_def]
  conv => lhs; cbv
  try rfl
theorem node4261_eq : Flapjack.WordAlloc.removeDeadStructural input4261 value841 value1 value2 = (output4261, value1832, value1) := by
  rw [input4261_def, output4261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1683_eq]
  try dsimp only
  rw [node4260_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4261 input1674)).val
theorem input4262_def : input4262 = (.seq input4261 input1674) := by
  unfold input4262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4261)).val
theorem output4262_def : output4262 = (output4261) := by
  unfold output4262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4262_skip : Flapjack.WordAlloc.isSkip output4262 = false := by
  rw [output4262_def]
  conv => lhs; cbv
  try rfl
theorem node4262_eq : Flapjack.WordAlloc.removeDeadStructural input4262 value841 value1 value2 = (output4262, value1832, value1) := by
  rw [input4262_def, output4262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1674_eq]
  try dsimp only
  rw [node4261_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4262 input1673)).val
theorem input4263_def : input4263 = (.seq input4262 input1673) := by
  unfold input4263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4262 output1673)).val
theorem output4263_def : output4263 = (.seq output4262 output1673) := by
  unfold output4263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4263_skip : Flapjack.WordAlloc.isSkip output4263 = false := by
  rw [output4263_def]
  conv => lhs; cbv
  try rfl
theorem node4263_eq : Flapjack.WordAlloc.removeDeadStructural input4263 value840 value1 value2 = (output4263, value1832, value1) := by
  rw [input4263_def, output4263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1673_eq]
  try dsimp only
  rw [node4262_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4263 input1672)).val
theorem input4264_def : input4264 = (.seq input4263 input1672) := by
  unfold input4264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4263 output1672)).val
theorem output4264_def : output4264 = (.seq output4263 output1672) := by
  unfold output4264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4264_skip : Flapjack.WordAlloc.isSkip output4264 = false := by
  rw [output4264_def]
  conv => lhs; cbv
  try rfl
theorem node4264_eq : Flapjack.WordAlloc.removeDeadStructural input4264 value5 value1 value2 = (output4264, value1832, value1) := by
  rw [input4264_def, output4264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1672_eq]
  try dsimp only
  rw [node4263_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4264 input1669)).val
theorem input4265_def : input4265 = (.seq input4264 input1669) := by
  unfold input4265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4264 output1669)).val
theorem output4265_def : output4265 = (.seq output4264 output1669) := by
  unfold output4265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4265_skip : Flapjack.WordAlloc.isSkip output4265 = false := by
  rw [output4265_def]
  conv => lhs; cbv
  try rfl
theorem node4265_eq : Flapjack.WordAlloc.removeDeadStructural input4265 value834 value1 value2 = (output4265, value1832, value1) := by
  rw [input4265_def, output4265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1669_eq]
  try dsimp only
  rw [node4264_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4265 input1660)).val
theorem input4266_def : input4266 = (.seq input4265 input1660) := by
  unfold input4266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4265)).val
theorem output4266_def : output4266 = (output4265) := by
  unfold output4266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4266_skip : Flapjack.WordAlloc.isSkip output4266 = false := by
  rw [output4266_def]
  conv => lhs; cbv
  try rfl
theorem node4266_eq : Flapjack.WordAlloc.removeDeadStructural input4266 value834 value1 value2 = (output4266, value1832, value1) := by
  rw [input4266_def, output4266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1660_eq]
  try dsimp only
  rw [node4265_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4266 input1659)).val
theorem input4267_def : input4267 = (.seq input4266 input1659) := by
  unfold input4267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4266 output1659)).val
theorem output4267_def : output4267 = (.seq output4266 output1659) := by
  unfold output4267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4267_skip : Flapjack.WordAlloc.isSkip output4267 = false := by
  rw [output4267_def]
  conv => lhs; cbv
  try rfl
theorem node4267_eq : Flapjack.WordAlloc.removeDeadStructural input4267 value833 value1 value2 = (output4267, value1832, value1) := by
  rw [input4267_def, output4267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1659_eq]
  try dsimp only
  rw [node4266_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4267 input1658)).val
theorem input4268_def : input4268 = (.seq input4267 input1658) := by
  unfold input4268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4267 output1658)).val
theorem output4268_def : output4268 = (.seq output4267 output1658) := by
  unfold output4268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4268_skip : Flapjack.WordAlloc.isSkip output4268 = false := by
  rw [output4268_def]
  conv => lhs; cbv
  try rfl
theorem node4268_eq : Flapjack.WordAlloc.removeDeadStructural input4268 value5 value1 value2 = (output4268, value1832, value1) := by
  rw [input4268_def, output4268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1658_eq]
  try dsimp only
  rw [node4267_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4268 input1655)).val
theorem input4269_def : input4269 = (.seq input4268 input1655) := by
  unfold input4269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4268 output1655)).val
theorem output4269_def : output4269 = (.seq output4268 output1655) := by
  unfold output4269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4269_skip : Flapjack.WordAlloc.isSkip output4269 = false := by
  rw [output4269_def]
  conv => lhs; cbv
  try rfl
theorem node4269_eq : Flapjack.WordAlloc.removeDeadStructural input4269 value827 value1 value2 = (output4269, value1832, value1) := by
  rw [input4269_def, output4269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1655_eq]
  try dsimp only
  rw [node4268_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4269 input1646)).val
theorem input4270_def : input4270 = (.seq input4269 input1646) := by
  unfold input4270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4269)).val
theorem output4270_def : output4270 = (output4269) := by
  unfold output4270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4270_skip : Flapjack.WordAlloc.isSkip output4270 = false := by
  rw [output4270_def]
  conv => lhs; cbv
  try rfl
theorem node4270_eq : Flapjack.WordAlloc.removeDeadStructural input4270 value827 value1 value2 = (output4270, value1832, value1) := by
  rw [input4270_def, output4270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1646_eq]
  try dsimp only
  rw [node4269_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4270 input1645)).val
theorem input4271_def : input4271 = (.seq input4270 input1645) := by
  unfold input4271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4270 output1645)).val
theorem output4271_def : output4271 = (.seq output4270 output1645) := by
  unfold output4271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4271_skip : Flapjack.WordAlloc.isSkip output4271 = false := by
  rw [output4271_def]
  conv => lhs; cbv
  try rfl
theorem node4271_eq : Flapjack.WordAlloc.removeDeadStructural input4271 value826 value1 value2 = (output4271, value1832, value1) := by
  rw [input4271_def, output4271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1645_eq]
  try dsimp only
  rw [node4270_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4271 input1644)).val
theorem input4272_def : input4272 = (.seq input4271 input1644) := by
  unfold input4272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4271 output1644)).val
theorem output4272_def : output4272 = (.seq output4271 output1644) := by
  unfold output4272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4272_skip : Flapjack.WordAlloc.isSkip output4272 = false := by
  rw [output4272_def]
  conv => lhs; cbv
  try rfl
theorem node4272_eq : Flapjack.WordAlloc.removeDeadStructural input4272 value5 value1 value2 = (output4272, value1832, value1) := by
  rw [input4272_def, output4272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1644_eq]
  try dsimp only
  rw [node4271_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4272 input1641)).val
theorem input4273_def : input4273 = (.seq input4272 input1641) := by
  unfold input4273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4272 output1641)).val
theorem output4273_def : output4273 = (.seq output4272 output1641) := by
  unfold output4273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4273_skip : Flapjack.WordAlloc.isSkip output4273 = false := by
  rw [output4273_def]
  conv => lhs; cbv
  try rfl
theorem node4273_eq : Flapjack.WordAlloc.removeDeadStructural input4273 value820 value1 value2 = (output4273, value1832, value1) := by
  rw [input4273_def, output4273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1641_eq]
  try dsimp only
  rw [node4272_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4273 input1632)).val
theorem input4274_def : input4274 = (.seq input4273 input1632) := by
  unfold input4274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4273)).val
theorem output4274_def : output4274 = (output4273) := by
  unfold output4274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4274_skip : Flapjack.WordAlloc.isSkip output4274 = false := by
  rw [output4274_def]
  conv => lhs; cbv
  try rfl
theorem node4274_eq : Flapjack.WordAlloc.removeDeadStructural input4274 value820 value1 value2 = (output4274, value1832, value1) := by
  rw [input4274_def, output4274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1632_eq]
  try dsimp only
  rw [node4273_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4274 input1631)).val
theorem input4275_def : input4275 = (.seq input4274 input1631) := by
  unfold input4275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4274 output1631)).val
theorem output4275_def : output4275 = (.seq output4274 output1631) := by
  unfold output4275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4275_skip : Flapjack.WordAlloc.isSkip output4275 = false := by
  rw [output4275_def]
  conv => lhs; cbv
  try rfl
theorem node4275_eq : Flapjack.WordAlloc.removeDeadStructural input4275 value819 value1 value2 = (output4275, value1832, value1) := by
  rw [input4275_def, output4275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1631_eq]
  try dsimp only
  rw [node4274_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4275 input1630)).val
theorem input4276_def : input4276 = (.seq input4275 input1630) := by
  unfold input4276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4275 output1630)).val
theorem output4276_def : output4276 = (.seq output4275 output1630) := by
  unfold output4276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4276_skip : Flapjack.WordAlloc.isSkip output4276 = false := by
  rw [output4276_def]
  conv => lhs; cbv
  try rfl
theorem node4276_eq : Flapjack.WordAlloc.removeDeadStructural input4276 value5 value1 value2 = (output4276, value1832, value1) := by
  rw [input4276_def, output4276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1630_eq]
  try dsimp only
  rw [node4275_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4276 input1627)).val
theorem input4277_def : input4277 = (.seq input4276 input1627) := by
  unfold input4277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4276 output1627)).val
theorem output4277_def : output4277 = (.seq output4276 output1627) := by
  unfold output4277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4277_skip : Flapjack.WordAlloc.isSkip output4277 = false := by
  rw [output4277_def]
  conv => lhs; cbv
  try rfl
theorem node4277_eq : Flapjack.WordAlloc.removeDeadStructural input4277 value813 value1 value2 = (output4277, value1832, value1) := by
  rw [input4277_def, output4277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1627_eq]
  try dsimp only
  rw [node4276_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4277 input1618)).val
theorem input4278_def : input4278 = (.seq input4277 input1618) := by
  unfold input4278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4277)).val
theorem output4278_def : output4278 = (output4277) := by
  unfold output4278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4278_skip : Flapjack.WordAlloc.isSkip output4278 = false := by
  rw [output4278_def]
  conv => lhs; cbv
  try rfl
theorem node4278_eq : Flapjack.WordAlloc.removeDeadStructural input4278 value813 value1 value2 = (output4278, value1832, value1) := by
  rw [input4278_def, output4278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1618_eq]
  try dsimp only
  rw [node4277_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4278 input1617)).val
theorem input4279_def : input4279 = (.seq input4278 input1617) := by
  unfold input4279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4278 output1617)).val
theorem output4279_def : output4279 = (.seq output4278 output1617) := by
  unfold output4279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4279_skip : Flapjack.WordAlloc.isSkip output4279 = false := by
  rw [output4279_def]
  conv => lhs; cbv
  try rfl
theorem node4279_eq : Flapjack.WordAlloc.removeDeadStructural input4279 value812 value1 value2 = (output4279, value1832, value1) := by
  rw [input4279_def, output4279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1617_eq]
  try dsimp only
  rw [node4278_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4279 input1616)).val
theorem input4280_def : input4280 = (.seq input4279 input1616) := by
  unfold input4280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4279 output1616)).val
theorem output4280_def : output4280 = (.seq output4279 output1616) := by
  unfold output4280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4280_skip : Flapjack.WordAlloc.isSkip output4280 = false := by
  rw [output4280_def]
  conv => lhs; cbv
  try rfl
theorem node4280_eq : Flapjack.WordAlloc.removeDeadStructural input4280 value5 value1 value2 = (output4280, value1832, value1) := by
  rw [input4280_def, output4280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1616_eq]
  try dsimp only
  rw [node4279_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4280 input1613)).val
theorem input4281_def : input4281 = (.seq input4280 input1613) := by
  unfold input4281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4280 output1613)).val
theorem output4281_def : output4281 = (.seq output4280 output1613) := by
  unfold output4281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4281_skip : Flapjack.WordAlloc.isSkip output4281 = false := by
  rw [output4281_def]
  conv => lhs; cbv
  try rfl
theorem node4281_eq : Flapjack.WordAlloc.removeDeadStructural input4281 value806 value1 value2 = (output4281, value1832, value1) := by
  rw [input4281_def, output4281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1613_eq]
  try dsimp only
  rw [node4280_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4281 input1604)).val
theorem input4282_def : input4282 = (.seq input4281 input1604) := by
  unfold input4282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4281)).val
theorem output4282_def : output4282 = (output4281) := by
  unfold output4282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4282_skip : Flapjack.WordAlloc.isSkip output4282 = false := by
  rw [output4282_def]
  conv => lhs; cbv
  try rfl
theorem node4282_eq : Flapjack.WordAlloc.removeDeadStructural input4282 value806 value1 value2 = (output4282, value1832, value1) := by
  rw [input4282_def, output4282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1604_eq]
  try dsimp only
  rw [node4281_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4282 input1603)).val
theorem input4283_def : input4283 = (.seq input4282 input1603) := by
  unfold input4283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4282 output1603)).val
theorem output4283_def : output4283 = (.seq output4282 output1603) := by
  unfold output4283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4283_skip : Flapjack.WordAlloc.isSkip output4283 = false := by
  rw [output4283_def]
  conv => lhs; cbv
  try rfl
theorem node4283_eq : Flapjack.WordAlloc.removeDeadStructural input4283 value805 value1 value2 = (output4283, value1832, value1) := by
  rw [input4283_def, output4283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1603_eq]
  try dsimp only
  rw [node4282_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4283 input1602)).val
theorem input4284_def : input4284 = (.seq input4283 input1602) := by
  unfold input4284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4283 output1602)).val
theorem output4284_def : output4284 = (.seq output4283 output1602) := by
  unfold output4284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4284_skip : Flapjack.WordAlloc.isSkip output4284 = false := by
  rw [output4284_def]
  conv => lhs; cbv
  try rfl
theorem node4284_eq : Flapjack.WordAlloc.removeDeadStructural input4284 value5 value1 value2 = (output4284, value1832, value1) := by
  rw [input4284_def, output4284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1602_eq]
  try dsimp only
  rw [node4283_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4284 input1599)).val
theorem input4285_def : input4285 = (.seq input4284 input1599) := by
  unfold input4285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4284 output1599)).val
theorem output4285_def : output4285 = (.seq output4284 output1599) := by
  unfold output4285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4285_skip : Flapjack.WordAlloc.isSkip output4285 = false := by
  rw [output4285_def]
  conv => lhs; cbv
  try rfl
theorem node4285_eq : Flapjack.WordAlloc.removeDeadStructural input4285 value799 value1 value2 = (output4285, value1832, value1) := by
  rw [input4285_def, output4285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1599_eq]
  try dsimp only
  rw [node4284_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4285 input1590)).val
theorem input4286_def : input4286 = (.seq input4285 input1590) := by
  unfold input4286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4285)).val
theorem output4286_def : output4286 = (output4285) := by
  unfold output4286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4286_skip : Flapjack.WordAlloc.isSkip output4286 = false := by
  rw [output4286_def]
  conv => lhs; cbv
  try rfl
theorem node4286_eq : Flapjack.WordAlloc.removeDeadStructural input4286 value799 value1 value2 = (output4286, value1832, value1) := by
  rw [input4286_def, output4286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1590_eq]
  try dsimp only
  rw [node4285_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4286 input1589)).val
theorem input4287_def : input4287 = (.seq input4286 input1589) := by
  unfold input4287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4286 output1589)).val
theorem output4287_def : output4287 = (.seq output4286 output1589) := by
  unfold output4287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4287_skip : Flapjack.WordAlloc.isSkip output4287 = false := by
  rw [output4287_def]
  conv => lhs; cbv
  try rfl
theorem node4287_eq : Flapjack.WordAlloc.removeDeadStructural input4287 value798 value1 value2 = (output4287, value1832, value1) := by
  rw [input4287_def, output4287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1589_eq]
  try dsimp only
  rw [node4286_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4287 input1588)).val
theorem input4288_def : input4288 = (.seq input4287 input1588) := by
  unfold input4288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4287 output1588)).val
theorem output4288_def : output4288 = (.seq output4287 output1588) := by
  unfold output4288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4288_skip : Flapjack.WordAlloc.isSkip output4288 = false := by
  rw [output4288_def]
  conv => lhs; cbv
  try rfl
theorem node4288_eq : Flapjack.WordAlloc.removeDeadStructural input4288 value5 value1 value2 = (output4288, value1832, value1) := by
  rw [input4288_def, output4288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1588_eq]
  try dsimp only
  rw [node4287_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4288 input1585)).val
theorem input4289_def : input4289 = (.seq input4288 input1585) := by
  unfold input4289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4288 output1585)).val
theorem output4289_def : output4289 = (.seq output4288 output1585) := by
  unfold output4289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4289_skip : Flapjack.WordAlloc.isSkip output4289 = false := by
  rw [output4289_def]
  conv => lhs; cbv
  try rfl
theorem node4289_eq : Flapjack.WordAlloc.removeDeadStructural input4289 value792 value1 value2 = (output4289, value1832, value1) := by
  rw [input4289_def, output4289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1585_eq]
  try dsimp only
  rw [node4288_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4289 input1576)).val
theorem input4290_def : input4290 = (.seq input4289 input1576) := by
  unfold input4290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4289)).val
theorem output4290_def : output4290 = (output4289) := by
  unfold output4290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4290_skip : Flapjack.WordAlloc.isSkip output4290 = false := by
  rw [output4290_def]
  conv => lhs; cbv
  try rfl
theorem node4290_eq : Flapjack.WordAlloc.removeDeadStructural input4290 value792 value1 value2 = (output4290, value1832, value1) := by
  rw [input4290_def, output4290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1576_eq]
  try dsimp only
  rw [node4289_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4290 input1575)).val
theorem input4291_def : input4291 = (.seq input4290 input1575) := by
  unfold input4291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4290 output1575)).val
theorem output4291_def : output4291 = (.seq output4290 output1575) := by
  unfold output4291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4291_skip : Flapjack.WordAlloc.isSkip output4291 = false := by
  rw [output4291_def]
  conv => lhs; cbv
  try rfl
theorem node4291_eq : Flapjack.WordAlloc.removeDeadStructural input4291 value791 value1 value2 = (output4291, value1832, value1) := by
  rw [input4291_def, output4291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1575_eq]
  try dsimp only
  rw [node4290_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4291 input1574)).val
theorem input4292_def : input4292 = (.seq input4291 input1574) := by
  unfold input4292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4291 output1574)).val
theorem output4292_def : output4292 = (.seq output4291 output1574) := by
  unfold output4292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4292_skip : Flapjack.WordAlloc.isSkip output4292 = false := by
  rw [output4292_def]
  conv => lhs; cbv
  try rfl
theorem node4292_eq : Flapjack.WordAlloc.removeDeadStructural input4292 value5 value1 value2 = (output4292, value1832, value1) := by
  rw [input4292_def, output4292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1574_eq]
  try dsimp only
  rw [node4291_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4292 input1571)).val
theorem input4293_def : input4293 = (.seq input4292 input1571) := by
  unfold input4293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4292 output1571)).val
theorem output4293_def : output4293 = (.seq output4292 output1571) := by
  unfold output4293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4293_skip : Flapjack.WordAlloc.isSkip output4293 = false := by
  rw [output4293_def]
  conv => lhs; cbv
  try rfl
theorem node4293_eq : Flapjack.WordAlloc.removeDeadStructural input4293 value785 value1 value2 = (output4293, value1832, value1) := by
  rw [input4293_def, output4293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1571_eq]
  try dsimp only
  rw [node4292_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4293 input1562)).val
theorem input4294_def : input4294 = (.seq input4293 input1562) := by
  unfold input4294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4293)).val
theorem output4294_def : output4294 = (output4293) := by
  unfold output4294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4294_skip : Flapjack.WordAlloc.isSkip output4294 = false := by
  rw [output4294_def]
  conv => lhs; cbv
  try rfl
theorem node4294_eq : Flapjack.WordAlloc.removeDeadStructural input4294 value785 value1 value2 = (output4294, value1832, value1) := by
  rw [input4294_def, output4294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1562_eq]
  try dsimp only
  rw [node4293_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4294 input1561)).val
theorem input4295_def : input4295 = (.seq input4294 input1561) := by
  unfold input4295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4294 output1561)).val
theorem output4295_def : output4295 = (.seq output4294 output1561) := by
  unfold output4295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4295_skip : Flapjack.WordAlloc.isSkip output4295 = false := by
  rw [output4295_def]
  conv => lhs; cbv
  try rfl
theorem node4295_eq : Flapjack.WordAlloc.removeDeadStructural input4295 value784 value1 value2 = (output4295, value1832, value1) := by
  rw [input4295_def, output4295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1561_eq]
  try dsimp only
  rw [node4294_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4295 input1560)).val
theorem input4296_def : input4296 = (.seq input4295 input1560) := by
  unfold input4296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4295 output1560)).val
theorem output4296_def : output4296 = (.seq output4295 output1560) := by
  unfold output4296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4296_skip : Flapjack.WordAlloc.isSkip output4296 = false := by
  rw [output4296_def]
  conv => lhs; cbv
  try rfl
theorem node4296_eq : Flapjack.WordAlloc.removeDeadStructural input4296 value5 value1 value2 = (output4296, value1832, value1) := by
  rw [input4296_def, output4296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1560_eq]
  try dsimp only
  rw [node4295_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4296 input1557)).val
theorem input4297_def : input4297 = (.seq input4296 input1557) := by
  unfold input4297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4296 output1557)).val
theorem output4297_def : output4297 = (.seq output4296 output1557) := by
  unfold output4297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4297_skip : Flapjack.WordAlloc.isSkip output4297 = false := by
  rw [output4297_def]
  conv => lhs; cbv
  try rfl
theorem node4297_eq : Flapjack.WordAlloc.removeDeadStructural input4297 value778 value1 value2 = (output4297, value1832, value1) := by
  rw [input4297_def, output4297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1557_eq]
  try dsimp only
  rw [node4296_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4297 input1548)).val
theorem input4298_def : input4298 = (.seq input4297 input1548) := by
  unfold input4298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4297)).val
theorem output4298_def : output4298 = (output4297) := by
  unfold output4298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4298_skip : Flapjack.WordAlloc.isSkip output4298 = false := by
  rw [output4298_def]
  conv => lhs; cbv
  try rfl
theorem node4298_eq : Flapjack.WordAlloc.removeDeadStructural input4298 value778 value1 value2 = (output4298, value1832, value1) := by
  rw [input4298_def, output4298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1548_eq]
  try dsimp only
  rw [node4297_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4298 input1547)).val
theorem input4299_def : input4299 = (.seq input4298 input1547) := by
  unfold input4299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4298 output1547)).val
theorem output4299_def : output4299 = (.seq output4298 output1547) := by
  unfold output4299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4299_skip : Flapjack.WordAlloc.isSkip output4299 = false := by
  rw [output4299_def]
  conv => lhs; cbv
  try rfl
theorem node4299_eq : Flapjack.WordAlloc.removeDeadStructural input4299 value777 value1 value2 = (output4299, value1832, value1) := by
  rw [input4299_def, output4299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1547_eq]
  try dsimp only
  rw [node4298_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4299 input1546)).val
theorem input4300_def : input4300 = (.seq input4299 input1546) := by
  unfold input4300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4299 output1546)).val
theorem output4300_def : output4300 = (.seq output4299 output1546) := by
  unfold output4300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4300_skip : Flapjack.WordAlloc.isSkip output4300 = false := by
  rw [output4300_def]
  conv => lhs; cbv
  try rfl
theorem node4300_eq : Flapjack.WordAlloc.removeDeadStructural input4300 value5 value1 value2 = (output4300, value1832, value1) := by
  rw [input4300_def, output4300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1546_eq]
  try dsimp only
  rw [node4299_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4300 input1543)).val
theorem input4301_def : input4301 = (.seq input4300 input1543) := by
  unfold input4301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4300 output1543)).val
theorem output4301_def : output4301 = (.seq output4300 output1543) := by
  unfold output4301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4301_skip : Flapjack.WordAlloc.isSkip output4301 = false := by
  rw [output4301_def]
  conv => lhs; cbv
  try rfl
theorem node4301_eq : Flapjack.WordAlloc.removeDeadStructural input4301 value771 value1 value2 = (output4301, value1832, value1) := by
  rw [input4301_def, output4301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1543_eq]
  try dsimp only
  rw [node4300_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4301 input1534)).val
theorem input4302_def : input4302 = (.seq input4301 input1534) := by
  unfold input4302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4301)).val
theorem output4302_def : output4302 = (output4301) := by
  unfold output4302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4302_skip : Flapjack.WordAlloc.isSkip output4302 = false := by
  rw [output4302_def]
  conv => lhs; cbv
  try rfl
theorem node4302_eq : Flapjack.WordAlloc.removeDeadStructural input4302 value771 value1 value2 = (output4302, value1832, value1) := by
  rw [input4302_def, output4302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1534_eq]
  try dsimp only
  rw [node4301_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4302 input1533)).val
theorem input4303_def : input4303 = (.seq input4302 input1533) := by
  unfold input4303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4302 output1533)).val
theorem output4303_def : output4303 = (.seq output4302 output1533) := by
  unfold output4303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4303_skip : Flapjack.WordAlloc.isSkip output4303 = false := by
  rw [output4303_def]
  conv => lhs; cbv
  try rfl
theorem node4303_eq : Flapjack.WordAlloc.removeDeadStructural input4303 value770 value1 value2 = (output4303, value1832, value1) := by
  rw [input4303_def, output4303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1533_eq]
  try dsimp only
  rw [node4302_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4303 input1532)).val
theorem input4304_def : input4304 = (.seq input4303 input1532) := by
  unfold input4304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4303 output1532)).val
theorem output4304_def : output4304 = (.seq output4303 output1532) := by
  unfold output4304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4304_skip : Flapjack.WordAlloc.isSkip output4304 = false := by
  rw [output4304_def]
  conv => lhs; cbv
  try rfl
theorem node4304_eq : Flapjack.WordAlloc.removeDeadStructural input4304 value5 value1 value2 = (output4304, value1832, value1) := by
  rw [input4304_def, output4304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1532_eq]
  try dsimp only
  rw [node4303_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4304 input1529)).val
theorem input4305_def : input4305 = (.seq input4304 input1529) := by
  unfold input4305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4304 output1529)).val
theorem output4305_def : output4305 = (.seq output4304 output1529) := by
  unfold output4305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4305_skip : Flapjack.WordAlloc.isSkip output4305 = false := by
  rw [output4305_def]
  conv => lhs; cbv
  try rfl
theorem node4305_eq : Flapjack.WordAlloc.removeDeadStructural input4305 value764 value1 value2 = (output4305, value1832, value1) := by
  rw [input4305_def, output4305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1529_eq]
  try dsimp only
  rw [node4304_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4305 input1520)).val
theorem input4306_def : input4306 = (.seq input4305 input1520) := by
  unfold input4306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4305)).val
theorem output4306_def : output4306 = (output4305) := by
  unfold output4306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4306_skip : Flapjack.WordAlloc.isSkip output4306 = false := by
  rw [output4306_def]
  conv => lhs; cbv
  try rfl
theorem node4306_eq : Flapjack.WordAlloc.removeDeadStructural input4306 value764 value1 value2 = (output4306, value1832, value1) := by
  rw [input4306_def, output4306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1520_eq]
  try dsimp only
  rw [node4305_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4306 input1519)).val
theorem input4307_def : input4307 = (.seq input4306 input1519) := by
  unfold input4307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4306 output1519)).val
theorem output4307_def : output4307 = (.seq output4306 output1519) := by
  unfold output4307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4307_skip : Flapjack.WordAlloc.isSkip output4307 = false := by
  rw [output4307_def]
  conv => lhs; cbv
  try rfl
theorem node4307_eq : Flapjack.WordAlloc.removeDeadStructural input4307 value763 value1 value2 = (output4307, value1832, value1) := by
  rw [input4307_def, output4307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1519_eq]
  try dsimp only
  rw [node4306_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4307 input1518)).val
theorem input4308_def : input4308 = (.seq input4307 input1518) := by
  unfold input4308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4307 output1518)).val
theorem output4308_def : output4308 = (.seq output4307 output1518) := by
  unfold output4308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4308_skip : Flapjack.WordAlloc.isSkip output4308 = false := by
  rw [output4308_def]
  conv => lhs; cbv
  try rfl
theorem node4308_eq : Flapjack.WordAlloc.removeDeadStructural input4308 value5 value1 value2 = (output4308, value1832, value1) := by
  rw [input4308_def, output4308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1518_eq]
  try dsimp only
  rw [node4307_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4308 input1515)).val
theorem input4309_def : input4309 = (.seq input4308 input1515) := by
  unfold input4309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4308 output1515)).val
theorem output4309_def : output4309 = (.seq output4308 output1515) := by
  unfold output4309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4309_skip : Flapjack.WordAlloc.isSkip output4309 = false := by
  rw [output4309_def]
  conv => lhs; cbv
  try rfl
theorem node4309_eq : Flapjack.WordAlloc.removeDeadStructural input4309 value757 value1 value2 = (output4309, value1832, value1) := by
  rw [input4309_def, output4309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1515_eq]
  try dsimp only
  rw [node4308_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4309 input1506)).val
theorem input4310_def : input4310 = (.seq input4309 input1506) := by
  unfold input4310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4309)).val
theorem output4310_def : output4310 = (output4309) := by
  unfold output4310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4310_skip : Flapjack.WordAlloc.isSkip output4310 = false := by
  rw [output4310_def]
  conv => lhs; cbv
  try rfl
theorem node4310_eq : Flapjack.WordAlloc.removeDeadStructural input4310 value757 value1 value2 = (output4310, value1832, value1) := by
  rw [input4310_def, output4310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1506_eq]
  try dsimp only
  rw [node4309_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4310 input1505)).val
theorem input4311_def : input4311 = (.seq input4310 input1505) := by
  unfold input4311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4310 output1505)).val
theorem output4311_def : output4311 = (.seq output4310 output1505) := by
  unfold output4311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4311_skip : Flapjack.WordAlloc.isSkip output4311 = false := by
  rw [output4311_def]
  conv => lhs; cbv
  try rfl
theorem node4311_eq : Flapjack.WordAlloc.removeDeadStructural input4311 value756 value1 value2 = (output4311, value1832, value1) := by
  rw [input4311_def, output4311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1505_eq]
  try dsimp only
  rw [node4310_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4311 input1504)).val
theorem input4312_def : input4312 = (.seq input4311 input1504) := by
  unfold input4312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4311 output1504)).val
theorem output4312_def : output4312 = (.seq output4311 output1504) := by
  unfold output4312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4312_skip : Flapjack.WordAlloc.isSkip output4312 = false := by
  rw [output4312_def]
  conv => lhs; cbv
  try rfl
theorem node4312_eq : Flapjack.WordAlloc.removeDeadStructural input4312 value5 value1 value2 = (output4312, value1832, value1) := by
  rw [input4312_def, output4312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1504_eq]
  try dsimp only
  rw [node4311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4312 input1501)).val
theorem input4313_def : input4313 = (.seq input4312 input1501) := by
  unfold input4313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4312 output1501)).val
theorem output4313_def : output4313 = (.seq output4312 output1501) := by
  unfold output4313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4313_skip : Flapjack.WordAlloc.isSkip output4313 = false := by
  rw [output4313_def]
  conv => lhs; cbv
  try rfl
theorem node4313_eq : Flapjack.WordAlloc.removeDeadStructural input4313 value750 value1 value2 = (output4313, value1832, value1) := by
  rw [input4313_def, output4313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1501_eq]
  try dsimp only
  rw [node4312_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4313 input1492)).val
theorem input4314_def : input4314 = (.seq input4313 input1492) := by
  unfold input4314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4313)).val
theorem output4314_def : output4314 = (output4313) := by
  unfold output4314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4314_skip : Flapjack.WordAlloc.isSkip output4314 = false := by
  rw [output4314_def]
  conv => lhs; cbv
  try rfl
theorem node4314_eq : Flapjack.WordAlloc.removeDeadStructural input4314 value750 value1 value2 = (output4314, value1832, value1) := by
  rw [input4314_def, output4314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1492_eq]
  try dsimp only
  rw [node4313_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4314 input1491)).val
theorem input4315_def : input4315 = (.seq input4314 input1491) := by
  unfold input4315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4314 output1491)).val
theorem output4315_def : output4315 = (.seq output4314 output1491) := by
  unfold output4315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4315_skip : Flapjack.WordAlloc.isSkip output4315 = false := by
  rw [output4315_def]
  conv => lhs; cbv
  try rfl
theorem node4315_eq : Flapjack.WordAlloc.removeDeadStructural input4315 value749 value1 value2 = (output4315, value1832, value1) := by
  rw [input4315_def, output4315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1491_eq]
  try dsimp only
  rw [node4314_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4315 input1490)).val
theorem input4316_def : input4316 = (.seq input4315 input1490) := by
  unfold input4316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4315 output1490)).val
theorem output4316_def : output4316 = (.seq output4315 output1490) := by
  unfold output4316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4316_skip : Flapjack.WordAlloc.isSkip output4316 = false := by
  rw [output4316_def]
  conv => lhs; cbv
  try rfl
theorem node4316_eq : Flapjack.WordAlloc.removeDeadStructural input4316 value5 value1 value2 = (output4316, value1832, value1) := by
  rw [input4316_def, output4316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1490_eq]
  try dsimp only
  rw [node4315_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4316 input1487)).val
theorem input4317_def : input4317 = (.seq input4316 input1487) := by
  unfold input4317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4316 output1487)).val
theorem output4317_def : output4317 = (.seq output4316 output1487) := by
  unfold output4317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4317_skip : Flapjack.WordAlloc.isSkip output4317 = false := by
  rw [output4317_def]
  conv => lhs; cbv
  try rfl
theorem node4317_eq : Flapjack.WordAlloc.removeDeadStructural input4317 value743 value1 value2 = (output4317, value1832, value1) := by
  rw [input4317_def, output4317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1487_eq]
  try dsimp only
  rw [node4316_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4317 input1478)).val
theorem input4318_def : input4318 = (.seq input4317 input1478) := by
  unfold input4318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4317)).val
theorem output4318_def : output4318 = (output4317) := by
  unfold output4318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4318_skip : Flapjack.WordAlloc.isSkip output4318 = false := by
  rw [output4318_def]
  conv => lhs; cbv
  try rfl
theorem node4318_eq : Flapjack.WordAlloc.removeDeadStructural input4318 value743 value1 value2 = (output4318, value1832, value1) := by
  rw [input4318_def, output4318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1478_eq]
  try dsimp only
  rw [node4317_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4318 input1477)).val
theorem input4319_def : input4319 = (.seq input4318 input1477) := by
  unfold input4319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4318 output1477)).val
theorem output4319_def : output4319 = (.seq output4318 output1477) := by
  unfold output4319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4319_skip : Flapjack.WordAlloc.isSkip output4319 = false := by
  rw [output4319_def]
  conv => lhs; cbv
  try rfl
theorem node4319_eq : Flapjack.WordAlloc.removeDeadStructural input4319 value742 value1 value2 = (output4319, value1832, value1) := by
  rw [input4319_def, output4319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1477_eq]
  try dsimp only
  rw [node4318_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4319 input1476)).val
theorem input4320_def : input4320 = (.seq input4319 input1476) := by
  unfold input4320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4319 output1476)).val
theorem output4320_def : output4320 = (.seq output4319 output1476) := by
  unfold output4320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4320_skip : Flapjack.WordAlloc.isSkip output4320 = false := by
  rw [output4320_def]
  conv => lhs; cbv
  try rfl
theorem node4320_eq : Flapjack.WordAlloc.removeDeadStructural input4320 value5 value1 value2 = (output4320, value1832, value1) := by
  rw [input4320_def, output4320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1476_eq]
  try dsimp only
  rw [node4319_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4320 input1473)).val
theorem input4321_def : input4321 = (.seq input4320 input1473) := by
  unfold input4321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4320 output1473)).val
theorem output4321_def : output4321 = (.seq output4320 output1473) := by
  unfold output4321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4321_skip : Flapjack.WordAlloc.isSkip output4321 = false := by
  rw [output4321_def]
  conv => lhs; cbv
  try rfl
theorem node4321_eq : Flapjack.WordAlloc.removeDeadStructural input4321 value736 value1 value2 = (output4321, value1832, value1) := by
  rw [input4321_def, output4321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1473_eq]
  try dsimp only
  rw [node4320_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4321 input1464)).val
theorem input4322_def : input4322 = (.seq input4321 input1464) := by
  unfold input4322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4321)).val
theorem output4322_def : output4322 = (output4321) := by
  unfold output4322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4322_skip : Flapjack.WordAlloc.isSkip output4322 = false := by
  rw [output4322_def]
  conv => lhs; cbv
  try rfl
theorem node4322_eq : Flapjack.WordAlloc.removeDeadStructural input4322 value736 value1 value2 = (output4322, value1832, value1) := by
  rw [input4322_def, output4322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1464_eq]
  try dsimp only
  rw [node4321_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4322 input1463)).val
theorem input4323_def : input4323 = (.seq input4322 input1463) := by
  unfold input4323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4322 output1463)).val
theorem output4323_def : output4323 = (.seq output4322 output1463) := by
  unfold output4323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4323_skip : Flapjack.WordAlloc.isSkip output4323 = false := by
  rw [output4323_def]
  conv => lhs; cbv
  try rfl
theorem node4323_eq : Flapjack.WordAlloc.removeDeadStructural input4323 value735 value1 value2 = (output4323, value1832, value1) := by
  rw [input4323_def, output4323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1463_eq]
  try dsimp only
  rw [node4322_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4323 input1462)).val
theorem input4324_def : input4324 = (.seq input4323 input1462) := by
  unfold input4324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4323 output1462)).val
theorem output4324_def : output4324 = (.seq output4323 output1462) := by
  unfold output4324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4324_skip : Flapjack.WordAlloc.isSkip output4324 = false := by
  rw [output4324_def]
  conv => lhs; cbv
  try rfl
theorem node4324_eq : Flapjack.WordAlloc.removeDeadStructural input4324 value5 value1 value2 = (output4324, value1832, value1) := by
  rw [input4324_def, output4324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1462_eq]
  try dsimp only
  rw [node4323_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4324 input1459)).val
theorem input4325_def : input4325 = (.seq input4324 input1459) := by
  unfold input4325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4324 output1459)).val
theorem output4325_def : output4325 = (.seq output4324 output1459) := by
  unfold output4325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4325_skip : Flapjack.WordAlloc.isSkip output4325 = false := by
  rw [output4325_def]
  conv => lhs; cbv
  try rfl
theorem node4325_eq : Flapjack.WordAlloc.removeDeadStructural input4325 value729 value1 value2 = (output4325, value1832, value1) := by
  rw [input4325_def, output4325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1459_eq]
  try dsimp only
  rw [node4324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4325 input1450)).val
theorem input4326_def : input4326 = (.seq input4325 input1450) := by
  unfold input4326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4325)).val
theorem output4326_def : output4326 = (output4325) := by
  unfold output4326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4326_skip : Flapjack.WordAlloc.isSkip output4326 = false := by
  rw [output4326_def]
  conv => lhs; cbv
  try rfl
theorem node4326_eq : Flapjack.WordAlloc.removeDeadStructural input4326 value729 value1 value2 = (output4326, value1832, value1) := by
  rw [input4326_def, output4326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1450_eq]
  try dsimp only
  rw [node4325_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4326 input1449)).val
theorem input4327_def : input4327 = (.seq input4326 input1449) := by
  unfold input4327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4326 output1449)).val
theorem output4327_def : output4327 = (.seq output4326 output1449) := by
  unfold output4327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4327_skip : Flapjack.WordAlloc.isSkip output4327 = false := by
  rw [output4327_def]
  conv => lhs; cbv
  try rfl
theorem node4327_eq : Flapjack.WordAlloc.removeDeadStructural input4327 value728 value1 value2 = (output4327, value1832, value1) := by
  rw [input4327_def, output4327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1449_eq]
  try dsimp only
  rw [node4326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4327 input1448)).val
theorem input4328_def : input4328 = (.seq input4327 input1448) := by
  unfold input4328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4327 output1448)).val
theorem output4328_def : output4328 = (.seq output4327 output1448) := by
  unfold output4328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4328_skip : Flapjack.WordAlloc.isSkip output4328 = false := by
  rw [output4328_def]
  conv => lhs; cbv
  try rfl
theorem node4328_eq : Flapjack.WordAlloc.removeDeadStructural input4328 value5 value1 value2 = (output4328, value1832, value1) := by
  rw [input4328_def, output4328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1448_eq]
  try dsimp only
  rw [node4327_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4328 input1445)).val
theorem input4329_def : input4329 = (.seq input4328 input1445) := by
  unfold input4329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4328 output1445)).val
theorem output4329_def : output4329 = (.seq output4328 output1445) := by
  unfold output4329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4329_skip : Flapjack.WordAlloc.isSkip output4329 = false := by
  rw [output4329_def]
  conv => lhs; cbv
  try rfl
theorem node4329_eq : Flapjack.WordAlloc.removeDeadStructural input4329 value722 value1 value2 = (output4329, value1832, value1) := by
  rw [input4329_def, output4329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1445_eq]
  try dsimp only
  rw [node4328_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4329 input1436)).val
theorem input4330_def : input4330 = (.seq input4329 input1436) := by
  unfold input4330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4329)).val
theorem output4330_def : output4330 = (output4329) := by
  unfold output4330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4330_skip : Flapjack.WordAlloc.isSkip output4330 = false := by
  rw [output4330_def]
  conv => lhs; cbv
  try rfl
theorem node4330_eq : Flapjack.WordAlloc.removeDeadStructural input4330 value722 value1 value2 = (output4330, value1832, value1) := by
  rw [input4330_def, output4330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1436_eq]
  try dsimp only
  rw [node4329_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4330 input1435)).val
theorem input4331_def : input4331 = (.seq input4330 input1435) := by
  unfold input4331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4330 output1435)).val
theorem output4331_def : output4331 = (.seq output4330 output1435) := by
  unfold output4331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4331_skip : Flapjack.WordAlloc.isSkip output4331 = false := by
  rw [output4331_def]
  conv => lhs; cbv
  try rfl
theorem node4331_eq : Flapjack.WordAlloc.removeDeadStructural input4331 value721 value1 value2 = (output4331, value1832, value1) := by
  rw [input4331_def, output4331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1435_eq]
  try dsimp only
  rw [node4330_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4331 input1434)).val
theorem input4332_def : input4332 = (.seq input4331 input1434) := by
  unfold input4332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4331 output1434)).val
theorem output4332_def : output4332 = (.seq output4331 output1434) := by
  unfold output4332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4332_skip : Flapjack.WordAlloc.isSkip output4332 = false := by
  rw [output4332_def]
  conv => lhs; cbv
  try rfl
theorem node4332_eq : Flapjack.WordAlloc.removeDeadStructural input4332 value5 value1 value2 = (output4332, value1832, value1) := by
  rw [input4332_def, output4332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1434_eq]
  try dsimp only
  rw [node4331_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4332 input1431)).val
theorem input4333_def : input4333 = (.seq input4332 input1431) := by
  unfold input4333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4332 output1431)).val
theorem output4333_def : output4333 = (.seq output4332 output1431) := by
  unfold output4333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4333_skip : Flapjack.WordAlloc.isSkip output4333 = false := by
  rw [output4333_def]
  conv => lhs; cbv
  try rfl
theorem node4333_eq : Flapjack.WordAlloc.removeDeadStructural input4333 value715 value1 value2 = (output4333, value1832, value1) := by
  rw [input4333_def, output4333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1431_eq]
  try dsimp only
  rw [node4332_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4333 input1422)).val
theorem input4334_def : input4334 = (.seq input4333 input1422) := by
  unfold input4334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4333)).val
theorem output4334_def : output4334 = (output4333) := by
  unfold output4334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4334_skip : Flapjack.WordAlloc.isSkip output4334 = false := by
  rw [output4334_def]
  conv => lhs; cbv
  try rfl
theorem node4334_eq : Flapjack.WordAlloc.removeDeadStructural input4334 value715 value1 value2 = (output4334, value1832, value1) := by
  rw [input4334_def, output4334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1422_eq]
  try dsimp only
  rw [node4333_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4334 input1421)).val
theorem input4335_def : input4335 = (.seq input4334 input1421) := by
  unfold input4335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4334 output1421)).val
theorem output4335_def : output4335 = (.seq output4334 output1421) := by
  unfold output4335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4335_skip : Flapjack.WordAlloc.isSkip output4335 = false := by
  rw [output4335_def]
  conv => lhs; cbv
  try rfl
theorem node4335_eq : Flapjack.WordAlloc.removeDeadStructural input4335 value714 value1 value2 = (output4335, value1832, value1) := by
  rw [input4335_def, output4335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1421_eq]
  try dsimp only
  rw [node4334_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4335 input1420)).val
theorem input4336_def : input4336 = (.seq input4335 input1420) := by
  unfold input4336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4335 output1420)).val
theorem output4336_def : output4336 = (.seq output4335 output1420) := by
  unfold output4336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4336_skip : Flapjack.WordAlloc.isSkip output4336 = false := by
  rw [output4336_def]
  conv => lhs; cbv
  try rfl
theorem node4336_eq : Flapjack.WordAlloc.removeDeadStructural input4336 value5 value1 value2 = (output4336, value1832, value1) := by
  rw [input4336_def, output4336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1420_eq]
  try dsimp only
  rw [node4335_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4336 input1417)).val
theorem input4337_def : input4337 = (.seq input4336 input1417) := by
  unfold input4337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4336 output1417)).val
theorem output4337_def : output4337 = (.seq output4336 output1417) := by
  unfold output4337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4337_skip : Flapjack.WordAlloc.isSkip output4337 = false := by
  rw [output4337_def]
  conv => lhs; cbv
  try rfl
theorem node4337_eq : Flapjack.WordAlloc.removeDeadStructural input4337 value708 value1 value2 = (output4337, value1832, value1) := by
  rw [input4337_def, output4337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1417_eq]
  try dsimp only
  rw [node4336_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4337 input1408)).val
theorem input4338_def : input4338 = (.seq input4337 input1408) := by
  unfold input4338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4337)).val
theorem output4338_def : output4338 = (output4337) := by
  unfold output4338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4338_skip : Flapjack.WordAlloc.isSkip output4338 = false := by
  rw [output4338_def]
  conv => lhs; cbv
  try rfl
theorem node4338_eq : Flapjack.WordAlloc.removeDeadStructural input4338 value708 value1 value2 = (output4338, value1832, value1) := by
  rw [input4338_def, output4338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1408_eq]
  try dsimp only
  rw [node4337_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4338 input1407)).val
theorem input4339_def : input4339 = (.seq input4338 input1407) := by
  unfold input4339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4338 output1407)).val
theorem output4339_def : output4339 = (.seq output4338 output1407) := by
  unfold output4339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4339_skip : Flapjack.WordAlloc.isSkip output4339 = false := by
  rw [output4339_def]
  conv => lhs; cbv
  try rfl
theorem node4339_eq : Flapjack.WordAlloc.removeDeadStructural input4339 value707 value1 value2 = (output4339, value1832, value1) := by
  rw [input4339_def, output4339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1407_eq]
  try dsimp only
  rw [node4338_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4339 input1406)).val
theorem input4340_def : input4340 = (.seq input4339 input1406) := by
  unfold input4340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4339 output1406)).val
theorem output4340_def : output4340 = (.seq output4339 output1406) := by
  unfold output4340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4340_skip : Flapjack.WordAlloc.isSkip output4340 = false := by
  rw [output4340_def]
  conv => lhs; cbv
  try rfl
theorem node4340_eq : Flapjack.WordAlloc.removeDeadStructural input4340 value5 value1 value2 = (output4340, value1832, value1) := by
  rw [input4340_def, output4340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1406_eq]
  try dsimp only
  rw [node4339_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4340 input1403)).val
theorem input4341_def : input4341 = (.seq input4340 input1403) := by
  unfold input4341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4340 output1403)).val
theorem output4341_def : output4341 = (.seq output4340 output1403) := by
  unfold output4341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4341_skip : Flapjack.WordAlloc.isSkip output4341 = false := by
  rw [output4341_def]
  conv => lhs; cbv
  try rfl
theorem node4341_eq : Flapjack.WordAlloc.removeDeadStructural input4341 value701 value1 value2 = (output4341, value1832, value1) := by
  rw [input4341_def, output4341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1403_eq]
  try dsimp only
  rw [node4340_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4341 input1394)).val
theorem input4342_def : input4342 = (.seq input4341 input1394) := by
  unfold input4342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4341)).val
theorem output4342_def : output4342 = (output4341) := by
  unfold output4342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4342_skip : Flapjack.WordAlloc.isSkip output4342 = false := by
  rw [output4342_def]
  conv => lhs; cbv
  try rfl
theorem node4342_eq : Flapjack.WordAlloc.removeDeadStructural input4342 value701 value1 value2 = (output4342, value1832, value1) := by
  rw [input4342_def, output4342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1394_eq]
  try dsimp only
  rw [node4341_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4342 input1393)).val
theorem input4343_def : input4343 = (.seq input4342 input1393) := by
  unfold input4343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4342 output1393)).val
theorem output4343_def : output4343 = (.seq output4342 output1393) := by
  unfold output4343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4343_skip : Flapjack.WordAlloc.isSkip output4343 = false := by
  rw [output4343_def]
  conv => lhs; cbv
  try rfl
theorem node4343_eq : Flapjack.WordAlloc.removeDeadStructural input4343 value700 value1 value2 = (output4343, value1832, value1) := by
  rw [input4343_def, output4343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1393_eq]
  try dsimp only
  rw [node4342_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4343 input1392)).val
theorem input4344_def : input4344 = (.seq input4343 input1392) := by
  unfold input4344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4343 output1392)).val
theorem output4344_def : output4344 = (.seq output4343 output1392) := by
  unfold output4344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4344_skip : Flapjack.WordAlloc.isSkip output4344 = false := by
  rw [output4344_def]
  conv => lhs; cbv
  try rfl
theorem node4344_eq : Flapjack.WordAlloc.removeDeadStructural input4344 value5 value1 value2 = (output4344, value1832, value1) := by
  rw [input4344_def, output4344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1392_eq]
  try dsimp only
  rw [node4343_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4344 input1389)).val
theorem input4345_def : input4345 = (.seq input4344 input1389) := by
  unfold input4345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4344 output1389)).val
theorem output4345_def : output4345 = (.seq output4344 output1389) := by
  unfold output4345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4345_skip : Flapjack.WordAlloc.isSkip output4345 = false := by
  rw [output4345_def]
  conv => lhs; cbv
  try rfl
theorem node4345_eq : Flapjack.WordAlloc.removeDeadStructural input4345 value694 value1 value2 = (output4345, value1832, value1) := by
  rw [input4345_def, output4345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1389_eq]
  try dsimp only
  rw [node4344_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4345 input1380)).val
theorem input4346_def : input4346 = (.seq input4345 input1380) := by
  unfold input4346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4345)).val
theorem output4346_def : output4346 = (output4345) := by
  unfold output4346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4346_skip : Flapjack.WordAlloc.isSkip output4346 = false := by
  rw [output4346_def]
  conv => lhs; cbv
  try rfl
theorem node4346_eq : Flapjack.WordAlloc.removeDeadStructural input4346 value694 value1 value2 = (output4346, value1832, value1) := by
  rw [input4346_def, output4346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1380_eq]
  try dsimp only
  rw [node4345_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4346 input1379)).val
theorem input4347_def : input4347 = (.seq input4346 input1379) := by
  unfold input4347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4346 output1379)).val
theorem output4347_def : output4347 = (.seq output4346 output1379) := by
  unfold output4347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4347_skip : Flapjack.WordAlloc.isSkip output4347 = false := by
  rw [output4347_def]
  conv => lhs; cbv
  try rfl
theorem node4347_eq : Flapjack.WordAlloc.removeDeadStructural input4347 value693 value1 value2 = (output4347, value1832, value1) := by
  rw [input4347_def, output4347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1379_eq]
  try dsimp only
  rw [node4346_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4347 input1378)).val
theorem input4348_def : input4348 = (.seq input4347 input1378) := by
  unfold input4348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4347 output1378)).val
theorem output4348_def : output4348 = (.seq output4347 output1378) := by
  unfold output4348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4348_skip : Flapjack.WordAlloc.isSkip output4348 = false := by
  rw [output4348_def]
  conv => lhs; cbv
  try rfl
theorem node4348_eq : Flapjack.WordAlloc.removeDeadStructural input4348 value5 value1 value2 = (output4348, value1832, value1) := by
  rw [input4348_def, output4348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1378_eq]
  try dsimp only
  rw [node4347_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4348 input1375)).val
theorem input4349_def : input4349 = (.seq input4348 input1375) := by
  unfold input4349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4348 output1375)).val
theorem output4349_def : output4349 = (.seq output4348 output1375) := by
  unfold output4349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4349_skip : Flapjack.WordAlloc.isSkip output4349 = false := by
  rw [output4349_def]
  conv => lhs; cbv
  try rfl
theorem node4349_eq : Flapjack.WordAlloc.removeDeadStructural input4349 value687 value1 value2 = (output4349, value1832, value1) := by
  rw [input4349_def, output4349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1375_eq]
  try dsimp only
  rw [node4348_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4349 input1366)).val
theorem input4350_def : input4350 = (.seq input4349 input1366) := by
  unfold input4350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4349)).val
theorem output4350_def : output4350 = (output4349) := by
  unfold output4350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4350_skip : Flapjack.WordAlloc.isSkip output4350 = false := by
  rw [output4350_def]
  conv => lhs; cbv
  try rfl
theorem node4350_eq : Flapjack.WordAlloc.removeDeadStructural input4350 value687 value1 value2 = (output4350, value1832, value1) := by
  rw [input4350_def, output4350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1366_eq]
  try dsimp only
  rw [node4349_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input4351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4350 input1365)).val
theorem input4351_def : input4351 = (.seq input4350 input1365) := by
  unfold input4351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4350 output1365)).val
theorem output4351_def : output4351 = (.seq output4350 output1365) := by
  unfold output4351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4351_skip : Flapjack.WordAlloc.isSkip output4351 = false := by
  rw [output4351_def]
  conv => lhs; cbv
  try rfl
theorem node4351_eq : Flapjack.WordAlloc.removeDeadStructural input4351 value686 value1 value2 = (output4351, value1832, value1) := by
  rw [input4351_def, output4351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1365_eq]
  try dsimp only
  rw [node4350_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node4351_eq
end InitECandidate.Proofs.DeadStages240
