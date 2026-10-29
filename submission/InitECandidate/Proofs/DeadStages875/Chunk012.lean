import InitECandidate.Proofs.DeadStages875.Chunk011
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages875
@[irreducible, cbv_opaque] def input3072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3071 input3068)).val
theorem input3072_def : input3072 = (.seq input3071 input3068) := by
  unfold input3072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3071 output3068)).val
theorem output3072_def : output3072 = (.seq output3071 output3068) := by
  unfold output3072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3072_skip : Flapjack.WordAlloc.isSkip output3072 = false := by
  rw [output3072_def]
  conv => lhs; cbv
  try rfl
theorem node3072_eq : Flapjack.WordAlloc.removeDeadStructural input3072 value1111 value1 value2 = (output3072, value1102, value1) := by
  rw [input3072_def, output3072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3068_eq]
  try dsimp only
  rw [node3071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3072 input3067)).val
theorem input3073_def : input3073 = (.seq input3072 input3067) := by
  unfold input3073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3072 output3067)).val
theorem output3073_def : output3073 = (.seq output3072 output3067) := by
  unfold output3073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3073_skip : Flapjack.WordAlloc.isSkip output3073 = false := by
  rw [output3073_def]
  conv => lhs; cbv
  try rfl
theorem node3073_eq : Flapjack.WordAlloc.removeDeadStructural input3073 value1110 value1 value2 = (output3073, value1102, value1) := by
  rw [input3073_def, output3073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3067_eq]
  try dsimp only
  rw [node3072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3073 input3066)).val
theorem input3074_def : input3074 = (.seq input3073 input3066) := by
  unfold input3074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3073 output3066)).val
theorem output3074_def : output3074 = (.seq output3073 output3066) := by
  unfold output3074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3074_skip : Flapjack.WordAlloc.isSkip output3074 = false := by
  rw [output3074_def]
  conv => lhs; cbv
  try rfl
theorem node3074_eq : Flapjack.WordAlloc.removeDeadStructural input3074 value1109 value1 value2 = (output3074, value1102, value1) := by
  rw [input3074_def, output3074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3066_eq]
  try dsimp only
  rw [node3073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1114 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(525, 505)])).val
theorem input3075_def : input3075 = (Flapjack.WordLangProgHOL.move 0 [(525, 505)]) := by
  unfold input3075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(525, 505)])).val
theorem output3075_def : output3075 = (Flapjack.WordLangProgHOL.move 0 [(525, 505)]) := by
  unfold output3075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3075_skip : Flapjack.WordAlloc.isSkip output3075 = false := by
  rw [output3075_def]
  conv => lhs; cbv
  try rfl
theorem node3075_eq : Flapjack.WordAlloc.removeDeadStructural input3075 value1102 value1 value2 = (output3075, value1114, value1) := by
  rw [input3075_def, output3075_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 1#64))).val
theorem input3076_def : input3076 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 1#64)) := by
  unfold input3076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3076_def : output3076 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3076_skip : Flapjack.WordAlloc.isSkip output3076 = true := by
  rw [output3076_def]
  conv => lhs; cbv
  try rfl
theorem node3076_eq : Flapjack.WordAlloc.removeDeadStructural input3076 value1114 value1 value2 = (output3076, value1114, value1) := by
  rw [input3076_def, output3076_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3077_def : input3077 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3077_def : output3077 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3077_skip : Flapjack.WordAlloc.isSkip output3077 = false := by
  rw [output3077_def]
  conv => lhs; cbv
  try rfl
theorem node3077_eq : Flapjack.WordAlloc.removeDeadStructural input3077 value1114 value1 value2 = (output3077, value1114, value1) := by
  rw [input3077_def, output3077_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 1#64))).val
theorem input3078_def : input3078 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 1#64)) := by
  unfold input3078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3078_def : output3078 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3078_skip : Flapjack.WordAlloc.isSkip output3078 = true := by
  rw [output3078_def]
  conv => lhs; cbv
  try rfl
theorem node3078_eq : Flapjack.WordAlloc.removeDeadStructural input3078 value1114 value1 value2 = (output3078, value1114, value1) := by
  rw [input3078_def, output3078_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3078 input3077)).val
theorem input3079_def : input3079 = (.seq input3078 input3077) := by
  unfold input3079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3077)).val
theorem output3079_def : output3079 = (output3077) := by
  unfold output3079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3079_skip : Flapjack.WordAlloc.isSkip output3079 = false := by
  rw [output3079_def]
  conv => lhs; cbv
  try rfl
theorem node3079_eq : Flapjack.WordAlloc.removeDeadStructural input3079 value1114 value1 value2 = (output3079, value1114, value1) := by
  rw [input3079_def, output3079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3077_eq]
  try dsimp only
  rw [node3078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3079 input3076)).val
theorem input3080_def : input3080 = (.seq input3079 input3076) := by
  unfold input3080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3079)).val
theorem output3080_def : output3080 = (output3079) := by
  unfold output3080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3080_skip : Flapjack.WordAlloc.isSkip output3080 = false := by
  rw [output3080_def]
  conv => lhs; cbv
  try rfl
theorem node3080_eq : Flapjack.WordAlloc.removeDeadStructural input3080 value1114 value1 value2 = (output3080, value1114, value1) := by
  rw [input3080_def, output3080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3076_eq]
  try dsimp only
  rw [node3079_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3080 input3075)).val
theorem input3081_def : input3081 = (.seq input3080 input3075) := by
  unfold input3081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3080 output3075)).val
theorem output3081_def : output3081 = (.seq output3080 output3075) := by
  unfold output3081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3081_skip : Flapjack.WordAlloc.isSkip output3081 = false := by
  rw [output3081_def]
  conv => lhs; cbv
  try rfl
theorem node3081_eq : Flapjack.WordAlloc.removeDeadStructural input3081 value1102 value1 value2 = (output3081, value1114, value1) := by
  rw [input3081_def, output3081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3075_eq]
  try dsimp only
  rw [node3080_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3081 input3074)).val
theorem input3082_def : input3082 = (.seq input3081 input3074) := by
  unfold input3082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3081 output3074)).val
theorem output3082_def : output3082 = (.seq output3081 output3074) := by
  unfold output3082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3082_skip : Flapjack.WordAlloc.isSkip output3082 = false := by
  rw [output3082_def]
  conv => lhs; cbv
  try rfl
theorem node3082_eq : Flapjack.WordAlloc.removeDeadStructural input3082 value1109 value1 value2 = (output3082, value1114, value1) := by
  rw [input3082_def, output3082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3074_eq]
  try dsimp only
  rw [node3081_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3082 input3065)).val
theorem input3083_def : input3083 = (.seq input3082 input3065) := by
  unfold input3083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3082 output3065)).val
theorem output3083_def : output3083 = (.seq output3082 output3065) := by
  unfold output3083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3083_skip : Flapjack.WordAlloc.isSkip output3083 = false := by
  rw [output3083_def]
  conv => lhs; cbv
  try rfl
theorem node3083_eq : Flapjack.WordAlloc.removeDeadStructural input3083 value1102 value1 value2 = (output3083, value1114, value1) := by
  rw [input3083_def, output3083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3065_eq]
  try dsimp only
  rw [node3082_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3083 input3032)).val
theorem input3084_def : input3084 = (.seq input3083 input3032) := by
  unfold input3084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3083 output3032)).val
theorem output3084_def : output3084 = (.seq output3083 output3032) := by
  unfold output3084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3084_skip : Flapjack.WordAlloc.isSkip output3084 = false := by
  rw [output3084_def]
  conv => lhs; cbv
  try rfl
theorem node3084_eq : Flapjack.WordAlloc.removeDeadStructural input3084 value1102 value1 value2 = (output3084, value1114, value1) := by
  rw [input3084_def, output3084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3032_eq]
  try dsimp only
  rw [node3083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3084 input3031)).val
theorem input3085_def : input3085 = (.seq input3084 input3031) := by
  unfold input3085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3084 output3031)).val
theorem output3085_def : output3085 = (.seq output3084 output3031) := by
  unfold output3085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3085_skip : Flapjack.WordAlloc.isSkip output3085 = false := by
  rw [output3085_def]
  conv => lhs; cbv
  try rfl
theorem node3085_eq : Flapjack.WordAlloc.removeDeadStructural input3085 value1101 value1 value2 = (output3085, value1114, value1) := by
  rw [input3085_def, output3085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3031_eq]
  try dsimp only
  rw [node3084_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 0#64))).val
theorem input3086_def : input3086 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 0#64)) := by
  unfold input3086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3086_def : output3086 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3086_skip : Flapjack.WordAlloc.isSkip output3086 = true := by
  rw [output3086_def]
  conv => lhs; cbv
  try rfl
theorem node3086_eq : Flapjack.WordAlloc.removeDeadStructural input3086 value1101 value1 value2 = (output3086, value1101, value1) := by
  rw [input3086_def, output3086_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3087_def : input3087 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3087_def : output3087 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3087_skip : Flapjack.WordAlloc.isSkip output3087 = true := by
  rw [output3087_def]
  conv => lhs; cbv
  try rfl
theorem node3087_eq : Flapjack.WordAlloc.removeDeadStructural input3087 value1101 value1 value2 = (output3087, value1101, value1) := by
  rw [input3087_def, output3087_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3087 input3086)).val
theorem input3088_def : input3088 = (.seq input3087 input3086) := by
  unfold input3088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3086)).val
theorem output3088_def : output3088 = (output3086) := by
  unfold output3088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3088_skip : Flapjack.WordAlloc.isSkip output3088 = true := by
  rw [output3088_def]
  conv => lhs; cbv
  try rfl
theorem node3088_eq : Flapjack.WordAlloc.removeDeadStructural input3088 value1101 value1 value2 = (output3088, value1101, value1) := by
  rw [input3088_def, output3088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3086_eq]
  try dsimp only
  rw [node3087_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(617, 597), (613, 513), (609, 505), (605, 501), (601, 593)])).val
theorem input3089_def : input3089 = (Flapjack.WordLangProgHOL.move 1 [(617, 597), (613, 513), (609, 505), (605, 501), (601, 593)]) := by
  unfold input3089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(609, 505)])).val
theorem output3089_def : output3089 = (Flapjack.WordLangProgHOL.move 1 [(609, 505)]) := by
  unfold output3089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3089_skip : Flapjack.WordAlloc.isSkip output3089 = false := by
  rw [output3089_def]
  conv => lhs; cbv
  try rfl
theorem node3089_eq : Flapjack.WordAlloc.removeDeadStructural input3089 value1101 value1 value2 = (output3089, value1114, value1) := by
  rw [input3089_def, output3089_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3089 input3088)).val
theorem input3090_def : input3090 = (.seq input3089 input3088) := by
  unfold input3090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3089)).val
theorem output3090_def : output3090 = (output3089) := by
  unfold output3090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3090_skip : Flapjack.WordAlloc.isSkip output3090 = false := by
  rw [output3090_def]
  conv => lhs; cbv
  try rfl
theorem node3090_eq : Flapjack.WordAlloc.removeDeadStructural input3090 value1101 value1 value2 = (output3090, value1114, value1) := by
  rw [input3090_def, output3090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3088_eq]
  try dsimp only
  rw [node3089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64))).val
theorem input3091_def : input3091 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 597 0#64)) := by
  unfold input3091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3091_def : output3091 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3091_skip : Flapjack.WordAlloc.isSkip output3091 = true := by
  rw [output3091_def]
  conv => lhs; cbv
  try rfl
theorem node3091_eq : Flapjack.WordAlloc.removeDeadStructural input3091 value1114 value1 value2 = (output3091, value1114, value1) := by
  rw [input3091_def, output3091_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3092_def : input3092 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3092_def : output3092 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3092_skip : Flapjack.WordAlloc.isSkip output3092 = false := by
  rw [output3092_def]
  conv => lhs; cbv
  try rfl
theorem node3092_eq : Flapjack.WordAlloc.removeDeadStructural input3092 value1114 value1 value2 = (output3092, value1114, value1) := by
  rw [input3092_def, output3092_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64))).val
theorem input3093_def : input3093 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 0#64)) := by
  unfold input3093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3093_def : output3093 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3093_skip : Flapjack.WordAlloc.isSkip output3093 = true := by
  rw [output3093_def]
  conv => lhs; cbv
  try rfl
theorem node3093_eq : Flapjack.WordAlloc.removeDeadStructural input3093 value1114 value1 value2 = (output3093, value1114, value1) := by
  rw [input3093_def, output3093_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3093 input3092)).val
theorem input3094_def : input3094 = (.seq input3093 input3092) := by
  unfold input3094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3092)).val
theorem output3094_def : output3094 = (output3092) := by
  unfold output3094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3094_skip : Flapjack.WordAlloc.isSkip output3094 = false := by
  rw [output3094_def]
  conv => lhs; cbv
  try rfl
theorem node3094_eq : Flapjack.WordAlloc.removeDeadStructural input3094 value1114 value1 value2 = (output3094, value1114, value1) := by
  rw [input3094_def, output3094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3092_eq]
  try dsimp only
  rw [node3093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3094 input3091)).val
theorem input3095_def : input3095 = (.seq input3094 input3091) := by
  unfold input3095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3094)).val
theorem output3095_def : output3095 = (output3094) := by
  unfold output3095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3095_skip : Flapjack.WordAlloc.isSkip output3095 = false := by
  rw [output3095_def]
  conv => lhs; cbv
  try rfl
theorem node3095_eq : Flapjack.WordAlloc.removeDeadStructural input3095 value1114 value1 value2 = (output3095, value1114, value1) := by
  rw [input3095_def, output3095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3091_eq]
  try dsimp only
  rw [node3094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3095 input3090)).val
theorem input3096_def : input3096 = (.seq input3095 input3090) := by
  unfold input3096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3095 output3090)).val
theorem output3096_def : output3096 = (.seq output3095 output3090) := by
  unfold output3096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3096_skip : Flapjack.WordAlloc.isSkip output3096 = false := by
  rw [output3096_def]
  conv => lhs; cbv
  try rfl
theorem node3096_eq : Flapjack.WordAlloc.removeDeadStructural input3096 value1101 value1 value2 = (output3096, value1114, value1) := by
  rw [input3096_def, output3096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3090_eq]
  try dsimp only
  rw [node3095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1115 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 513

def value1116 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value17 509 value1115 input3085 input3096)).val
theorem input3097_def : input3097 = (.ite value17 509 value1115 input3085 input3096) := by
  unfold input3097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value17 509 value1115 output3085 output3096)).val
theorem output3097_def : output3097 = (.ite value17 509 value1115 output3085 output3096) := by
  unfold output3097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3097_skip : Flapjack.WordAlloc.isSkip output3097 = false := by
  rw [output3097_def]
  conv => lhs; cbv
  try rfl
theorem node3097_eq : Flapjack.WordAlloc.removeDeadStructural input3097 value1101 value1 value2 = (output3097, value1116, value1) := by
  rw [input3097_def, output3097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3085_eq]
  try dsimp only
  rw [node3096_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64))).val
theorem input3098_def : input3098 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64)) := by
  unfold input3098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64))).val
theorem output3098_def : output3098 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 513 0#64)) := by
  unfold output3098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3098_skip : Flapjack.WordAlloc.isSkip output3098 = false := by
  rw [output3098_def]
  conv => lhs; cbv
  try rfl
theorem node3098_eq : Flapjack.WordAlloc.removeDeadStructural input3098 value1116 value1 value2 = (output3098, value1114, value1) := by
  rw [input3098_def, output3098_def]
  try (conv => lhs; cbv)
  try rfl

def value1117 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(509, 497)])).val
theorem input3099_def : input3099 = (Flapjack.WordLangProgHOL.move 0 [(509, 497)]) := by
  unfold input3099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(509, 497)])).val
theorem output3099_def : output3099 = (Flapjack.WordLangProgHOL.move 0 [(509, 497)]) := by
  unfold output3099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3099_skip : Flapjack.WordAlloc.isSkip output3099 = false := by
  rw [output3099_def]
  conv => lhs; cbv
  try rfl
theorem node3099_eq : Flapjack.WordAlloc.removeDeadStructural input3099 value1114 value1 value2 = (output3099, value1117, value1) := by
  rw [input3099_def, output3099_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3100_def : input3100 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3100_def : output3100 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3100_skip : Flapjack.WordAlloc.isSkip output3100 = false := by
  rw [output3100_def]
  conv => lhs; cbv
  try rfl
theorem node3100_eq : Flapjack.WordAlloc.removeDeadStructural input3100 value1117 value1 value2 = (output3100, value1117, value1) := by
  rw [input3100_def, output3100_def]
  try (conv => lhs; cbv)
  try rfl

def value1118 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))

@[irreducible, cbv_opaque] def input3101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2, 4],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0 [(465, 443), (469, 447), (473, 451), (477, 455), (481, 459)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(485, 2), (489, 4)])
            Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
                (Flapjack.WordLangProgHOL.move 1 [(497, 485)]))
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(505, 489)]))),
      875, 6))
  (some 379) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0 [(465, 443), (469, 447), (473, 451), (477, 455), (481, 459)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(493, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 493)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
                (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)))
              (Flapjack.WordLangProgHOL.move 1 [(501, 493)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 0#64)))),
      875, 7)))).val
theorem input3101_def : input3101 = (Flapjack.WordLangProgHOL.call
  (some
    ([2, 4],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0 [(465, 443), (469, 447), (473, 451), (477, 455), (481, 459)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(485, 2), (489, 4)])
            Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
                (Flapjack.WordLangProgHOL.move 1 [(497, 485)]))
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(505, 489)]))),
      875, 6))
  (some 379) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0 [(465, 443), (469, 447), (473, 451), (477, 455), (481, 459)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(493, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 493)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
                (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64)))
              (Flapjack.WordLangProgHOL.move 1 [(501, 493)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 0#64)))),
      875, 7))) := by
  unfold input3101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2, 4],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0 [(465, 443), (469, 447), (473, 451), (477, 455), (481, 459)])
          (Flapjack.WordLangProgHOL.move 1 [(485, 2), (489, 4)]))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(497, 485)])
          (Flapjack.WordLangProgHOL.move 1 [(505, 489)])),
      875, 6))
  (some 379) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0 [(465, 443), (469, 447), (473, 451), (477, 455), (481, 459)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(493, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 493)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64))
          (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 0#64))),
      875, 7)))).val
theorem output3101_def : output3101 = (Flapjack.WordLangProgHOL.call
  (some
    ([2, 4],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0 [(465, 443), (469, 447), (473, 451), (477, 455), (481, 459)])
          (Flapjack.WordLangProgHOL.move 1 [(485, 2), (489, 4)]))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(497, 485)])
          (Flapjack.WordLangProgHOL.move 1 [(505, 489)])),
      875, 6))
  (some 379) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0 [(465, 443), (469, 447), (473, 451), (477, 455), (481, 459)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(493, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 493)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 0#64))
          (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 505 0#64))),
      875, 7))) := by
  unfold output3101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3101_skip : Flapjack.WordAlloc.isSkip output3101 = false := by
  rw [output3101_def]
  conv => lhs; cbv
  try rfl
theorem node3101_eq : Flapjack.WordAlloc.removeDeadStructural input3101 value1117 value1 value2 = (output3101, value1118, value1) := by
  rw [input3101_def, output3101_def]
  try (conv => lhs; cbv)
  try rfl

def value1119 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))))

@[irreducible, cbv_opaque] def input3102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 437)])).val
theorem input3102_def : input3102 = (Flapjack.WordLangProgHOL.move 1 [(2, 437)]) := by
  unfold input3102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 437)])).val
theorem output3102_def : output3102 = (Flapjack.WordLangProgHOL.move 1 [(2, 437)]) := by
  unfold output3102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3102_skip : Flapjack.WordAlloc.isSkip output3102 = false := by
  rw [output3102_def]
  conv => lhs; cbv
  try rfl
theorem node3102_eq : Flapjack.WordAlloc.removeDeadStructural input3102 value1118 value1 value2 = (output3102, value1119, value1) := by
  rw [input3102_def, output3102_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3102 input3101)).val
theorem input3103_def : input3103 = (.seq input3102 input3101) := by
  unfold input3103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3102 output3101)).val
theorem output3103_def : output3103 = (.seq output3102 output3101) := by
  unfold output3103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3103_skip : Flapjack.WordAlloc.isSkip output3103 = false := by
  rw [output3103_def]
  conv => lhs; cbv
  try rfl
theorem node3103_eq : Flapjack.WordAlloc.removeDeadStructural input3103 value1117 value1 value2 = (output3103, value1119, value1) := by
  rw [input3103_def, output3103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3101_eq]
  try dsimp only
  rw [node3102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1120 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(443, 309), (447, 389), (451, 377), (455, 437), (459, 425)])).val
theorem input3104_def : input3104 = (Flapjack.WordLangProgHOL.move 0 [(443, 309), (447, 389), (451, 377), (455, 437), (459, 425)]) := by
  unfold input3104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(443, 309), (447, 389), (451, 377), (455, 437), (459, 425)])).val
theorem output3104_def : output3104 = (Flapjack.WordLangProgHOL.move 0 [(443, 309), (447, 389), (451, 377), (455, 437), (459, 425)]) := by
  unfold output3104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3104_skip : Flapjack.WordAlloc.isSkip output3104 = false := by
  rw [output3104_def]
  conv => lhs; cbv
  try rfl
theorem node3104_eq : Flapjack.WordAlloc.removeDeadStructural input3104 value1119 value1 value2 = (output3104, value1120, value1) := by
  rw [input3104_def, output3104_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3104 input3103)).val
theorem input3105_def : input3105 = (.seq input3104 input3103) := by
  unfold input3105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3104 output3103)).val
theorem output3105_def : output3105 = (.seq output3104 output3103) := by
  unfold output3105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3105_skip : Flapjack.WordAlloc.isSkip output3105 = false := by
  rw [output3105_def]
  conv => lhs; cbv
  try rfl
theorem node3105_eq : Flapjack.WordAlloc.removeDeadStructural input3105 value1117 value1 value2 = (output3105, value1120, value1) := by
  rw [input3105_def, output3105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3103_eq]
  try dsimp only
  rw [node3104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1121 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(437, 317)])).val
theorem input3106_def : input3106 = (Flapjack.WordLangProgHOL.move 0 [(437, 317)]) := by
  unfold input3106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(437, 317)])).val
theorem output3106_def : output3106 = (Flapjack.WordLangProgHOL.move 0 [(437, 317)]) := by
  unfold output3106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3106_skip : Flapjack.WordAlloc.isSkip output3106 = false := by
  rw [output3106_def]
  conv => lhs; cbv
  try rfl
theorem node3106_eq : Flapjack.WordAlloc.removeDeadStructural input3106 value1120 value1 value2 = (output3106, value1121, value1) := by
  rw [input3106_def, output3106_def]
  try (conv => lhs; cbv)
  try rfl

def value1122 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 429 (Flapjack.WordLangAddr.addr 433 0#64)))).val
theorem input3107_def : input3107 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 429 (Flapjack.WordLangAddr.addr 433 0#64))) := by
  unfold input3107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 429 (Flapjack.WordLangAddr.addr 433 0#64)))).val
theorem output3107_def : output3107 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 429 (Flapjack.WordLangAddr.addr 433 0#64))) := by
  unfold output3107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3107_skip : Flapjack.WordAlloc.isSkip output3107 = false := by
  rw [output3107_def]
  conv => lhs; cbv
  try rfl
theorem node3107_eq : Flapjack.WordAlloc.removeDeadStructural input3107 value1121 value1 value2 = (output3107, value1122, value1) := by
  rw [input3107_def, output3107_def]
  try (conv => lhs; cbv)
  try rfl

def value1123 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(433, 421)])).val
theorem input3108_def : input3108 = (Flapjack.WordLangProgHOL.move 0 [(433, 421)]) := by
  unfold input3108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(433, 421)])).val
theorem output3108_def : output3108 = (Flapjack.WordLangProgHOL.move 0 [(433, 421)]) := by
  unfold output3108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3108_skip : Flapjack.WordAlloc.isSkip output3108 = false := by
  rw [output3108_def]
  conv => lhs; cbv
  try rfl
theorem node3108_eq : Flapjack.WordAlloc.removeDeadStructural input3108 value1122 value1 value2 = (output3108, value1123, value1) := by
  rw [input3108_def, output3108_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3108 input3107)).val
theorem input3109_def : input3109 = (.seq input3108 input3107) := by
  unfold input3109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3108 output3107)).val
theorem output3109_def : output3109 = (.seq output3108 output3107) := by
  unfold output3109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3109_skip : Flapjack.WordAlloc.isSkip output3109 = false := by
  rw [output3109_def]
  conv => lhs; cbv
  try rfl
theorem node3109_eq : Flapjack.WordAlloc.removeDeadStructural input3109 value1121 value1 value2 = (output3109, value1123, value1) := by
  rw [input3109_def, output3109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3107_eq]
  try dsimp only
  rw [node3108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1124 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(429, 425)])).val
theorem input3110_def : input3110 = (Flapjack.WordLangProgHOL.move 0 [(429, 425)]) := by
  unfold input3110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(429, 425)])).val
theorem output3110_def : output3110 = (Flapjack.WordLangProgHOL.move 0 [(429, 425)]) := by
  unfold output3110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3110_skip : Flapjack.WordAlloc.isSkip output3110 = false := by
  rw [output3110_def]
  conv => lhs; cbv
  try rfl
theorem node3110_eq : Flapjack.WordAlloc.removeDeadStructural input3110 value1123 value1 value2 = (output3110, value1124, value1) := by
  rw [input3110_def, output3110_def]
  try (conv => lhs; cbv)
  try rfl

def value1125 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(425, 333)])).val
theorem input3111_def : input3111 = (Flapjack.WordLangProgHOL.move 0 [(425, 333)]) := by
  unfold input3111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(425, 333)])).val
theorem output3111_def : output3111 = (Flapjack.WordLangProgHOL.move 0 [(425, 333)]) := by
  unfold output3111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3111_skip : Flapjack.WordAlloc.isSkip output3111 = false := by
  rw [output3111_def]
  conv => lhs; cbv
  try rfl
theorem node3111_eq : Flapjack.WordAlloc.removeDeadStructural input3111 value1124 value1 value2 = (output3111, value1125, value1) := by
  rw [input3111_def, output3111_def]
  try (conv => lhs; cbv)
  try rfl

def value1126 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 421 417 (Flapjack.WordRegImm.imm 8#64))))).val
theorem input3112_def : input3112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 421 417 (Flapjack.WordRegImm.imm 8#64)))) := by
  unfold input3112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 421 417 (Flapjack.WordRegImm.imm 8#64))))).val
theorem output3112_def : output3112 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 421 417 (Flapjack.WordRegImm.imm 8#64)))) := by
  unfold output3112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3112_skip : Flapjack.WordAlloc.isSkip output3112 = false := by
  rw [output3112_def]
  conv => lhs; cbv
  try rfl
theorem node3112_eq : Flapjack.WordAlloc.removeDeadStructural input3112 value1125 value1 value2 = (output3112, value1126, value1) := by
  rw [input3112_def, output3112_def]
  try (conv => lhs; cbv)
  try rfl

def value1127 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 417 393 (Flapjack.WordRegImm.reg 413))))).val
theorem input3113_def : input3113 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 417 393 (Flapjack.WordRegImm.reg 413)))) := by
  unfold input3113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 417 393 (Flapjack.WordRegImm.reg 413))))).val
theorem output3113_def : output3113 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 417 393 (Flapjack.WordRegImm.reg 413)))) := by
  unfold output3113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3113_skip : Flapjack.WordAlloc.isSkip output3113 = false := by
  rw [output3113_def]
  conv => lhs; cbv
  try rfl
theorem node3113_eq : Flapjack.WordAlloc.removeDeadStructural input3113 value1126 value1 value2 = (output3113, value1127, value1) := by
  rw [input3113_def, output3113_def]
  try (conv => lhs; cbv)
  try rfl

def value1128 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 413 (Flapjack.WordLangAddr.addr 409 24#64)))).val
theorem input3114_def : input3114 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 413 (Flapjack.WordLangAddr.addr 409 24#64))) := by
  unfold input3114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 413 (Flapjack.WordLangAddr.addr 409 24#64)))).val
theorem output3114_def : output3114 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 413 (Flapjack.WordLangAddr.addr 409 24#64))) := by
  unfold output3114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3114_skip : Flapjack.WordAlloc.isSkip output3114 = false := by
  rw [output3114_def]
  conv => lhs; cbv
  try rfl
theorem node3114_eq : Flapjack.WordAlloc.removeDeadStructural input3114 value1127 value1 value2 = (output3114, value1128, value1) := by
  rw [input3114_def, output3114_def]
  try (conv => lhs; cbv)
  try rfl

def value1129 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 18446744073709550992#64)))).val
theorem input3115_def : input3115 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 18446744073709550992#64))) := by
  unfold input3115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 18446744073709550992#64)))).val
theorem output3115_def : output3115 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 409 (Flapjack.WordLangAddr.addr 405 18446744073709550992#64))) := by
  unfold output3115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3115_skip : Flapjack.WordAlloc.isSkip output3115 = false := by
  rw [output3115_def]
  conv => lhs; cbv
  try rfl
theorem node3115_eq : Flapjack.WordAlloc.removeDeadStructural input3115 value1128 value1 value2 = (output3115, value1129, value1) := by
  rw [input3115_def, output3115_def]
  try (conv => lhs; cbv)
  try rfl

def value1130 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 405 401)).val
theorem input3116_def : input3116 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 405 401) := by
  unfold input3116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 405 401)).val
theorem output3116_def : output3116 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 405 401) := by
  unfold output3116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3116_skip : Flapjack.WordAlloc.isSkip output3116 = false := by
  rw [output3116_def]
  conv => lhs; cbv
  try rfl
theorem node3116_eq : Flapjack.WordAlloc.removeDeadStructural input3116 value1129 value1 value2 = (output3116, value1130, value1) := by
  rw [input3116_def, output3116_def]
  try (conv => lhs; cbv)
  try rfl

def value1131 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 401 397 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3117_def : input3117 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 401 397 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 401 397 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3117_def : output3117 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 401 397 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3117_skip : Flapjack.WordAlloc.isSkip output3117 = false := by
  rw [output3117_def]
  conv => lhs; cbv
  try rfl
theorem node3117_eq : Flapjack.WordAlloc.removeDeadStructural input3117 value1130 value1 value2 = (output3117, value1131, value1) := by
  rw [input3117_def, output3117_def]
  try (conv => lhs; cbv)
  try rfl

def value1132 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 397 Flapjack.WordStore.heapLength)).val
theorem input3118_def : input3118 = (Flapjack.WordLangProgHOL.get 397 Flapjack.WordStore.heapLength) := by
  unfold input3118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 397 Flapjack.WordStore.heapLength)).val
theorem output3118_def : output3118 = (Flapjack.WordLangProgHOL.get 397 Flapjack.WordStore.heapLength) := by
  unfold output3118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3118_skip : Flapjack.WordAlloc.isSkip output3118 = false := by
  rw [output3118_def]
  conv => lhs; cbv
  try rfl
theorem node3118_eq : Flapjack.WordAlloc.removeDeadStructural input3118 value1131 value1 value2 = (output3118, value1132, value1) := by
  rw [input3118_def, output3118_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3118 input3117)).val
theorem input3119_def : input3119 = (.seq input3118 input3117) := by
  unfold input3119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3118 output3117)).val
theorem output3119_def : output3119 = (.seq output3118 output3117) := by
  unfold output3119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3119_skip : Flapjack.WordAlloc.isSkip output3119 = false := by
  rw [output3119_def]
  conv => lhs; cbv
  try rfl
theorem node3119_eq : Flapjack.WordAlloc.removeDeadStructural input3119 value1130 value1 value2 = (output3119, value1132, value1) := by
  rw [input3119_def, output3119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3117_eq]
  try dsimp only
  rw [node3118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3119 input3116)).val
theorem input3120_def : input3120 = (.seq input3119 input3116) := by
  unfold input3120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3119 output3116)).val
theorem output3120_def : output3120 = (.seq output3119 output3116) := by
  unfold output3120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3120_skip : Flapjack.WordAlloc.isSkip output3120 = false := by
  rw [output3120_def]
  conv => lhs; cbv
  try rfl
theorem node3120_eq : Flapjack.WordAlloc.removeDeadStructural input3120 value1129 value1 value2 = (output3120, value1132, value1) := by
  rw [input3120_def, output3120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3116_eq]
  try dsimp only
  rw [node3119_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3120 input3115)).val
theorem input3121_def : input3121 = (.seq input3120 input3115) := by
  unfold input3121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3120 output3115)).val
theorem output3121_def : output3121 = (.seq output3120 output3115) := by
  unfold output3121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3121_skip : Flapjack.WordAlloc.isSkip output3121 = false := by
  rw [output3121_def]
  conv => lhs; cbv
  try rfl
theorem node3121_eq : Flapjack.WordAlloc.removeDeadStructural input3121 value1128 value1 value2 = (output3121, value1132, value1) := by
  rw [input3121_def, output3121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3115_eq]
  try dsimp only
  rw [node3120_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3121 input3114)).val
theorem input3122_def : input3122 = (.seq input3121 input3114) := by
  unfold input3122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3121 output3114)).val
theorem output3122_def : output3122 = (.seq output3121 output3114) := by
  unfold output3122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3122_skip : Flapjack.WordAlloc.isSkip output3122 = false := by
  rw [output3122_def]
  conv => lhs; cbv
  try rfl
theorem node3122_eq : Flapjack.WordAlloc.removeDeadStructural input3122 value1127 value1 value2 = (output3122, value1132, value1) := by
  rw [input3122_def, output3122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3114_eq]
  try dsimp only
  rw [node3121_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3122 input3113)).val
theorem input3123_def : input3123 = (.seq input3122 input3113) := by
  unfold input3123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3122 output3113)).val
theorem output3123_def : output3123 = (.seq output3122 output3113) := by
  unfold output3123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3123_skip : Flapjack.WordAlloc.isSkip output3123 = false := by
  rw [output3123_def]
  conv => lhs; cbv
  try rfl
theorem node3123_eq : Flapjack.WordAlloc.removeDeadStructural input3123 value1126 value1 value2 = (output3123, value1132, value1) := by
  rw [input3123_def, output3123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3113_eq]
  try dsimp only
  rw [node3122_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1133 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 393 389 (Flapjack.WordRegImm.imm 4#64))))).val
theorem input3124_def : input3124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 393 389 (Flapjack.WordRegImm.imm 4#64)))) := by
  unfold input3124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 393 389 (Flapjack.WordRegImm.imm 4#64))))).val
theorem output3124_def : output3124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 393 389 (Flapjack.WordRegImm.imm 4#64)))) := by
  unfold output3124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3124_skip : Flapjack.WordAlloc.isSkip output3124 = false := by
  rw [output3124_def]
  conv => lhs; cbv
  try rfl
theorem node3124_eq : Flapjack.WordAlloc.removeDeadStructural input3124 value1132 value1 value2 = (output3124, value1133, value1) := by
  rw [input3124_def, output3124_def]
  try (conv => lhs; cbv)
  try rfl

def value1134 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(389, 345)])).val
theorem input3125_def : input3125 = (Flapjack.WordLangProgHOL.move 0 [(389, 345)]) := by
  unfold input3125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(389, 345)])).val
theorem output3125_def : output3125 = (Flapjack.WordLangProgHOL.move 0 [(389, 345)]) := by
  unfold output3125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3125_skip : Flapjack.WordAlloc.isSkip output3125 = false := by
  rw [output3125_def]
  conv => lhs; cbv
  try rfl
theorem node3125_eq : Flapjack.WordAlloc.removeDeadStructural input3125 value1133 value1 value2 = (output3125, value1134, value1) := by
  rw [input3125_def, output3125_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3125 input3124)).val
theorem input3126_def : input3126 = (.seq input3125 input3124) := by
  unfold input3126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3125 output3124)).val
theorem output3126_def : output3126 = (.seq output3125 output3124) := by
  unfold output3126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3126_skip : Flapjack.WordAlloc.isSkip output3126 = false := by
  rw [output3126_def]
  conv => lhs; cbv
  try rfl
theorem node3126_eq : Flapjack.WordAlloc.removeDeadStructural input3126 value1132 value1 value2 = (output3126, value1134, value1) := by
  rw [input3126_def, output3126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3124_eq]
  try dsimp only
  rw [node3125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3126 input3123)).val
theorem input3127_def : input3127 = (.seq input3126 input3123) := by
  unfold input3127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3126 output3123)).val
theorem output3127_def : output3127 = (.seq output3126 output3123) := by
  unfold output3127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3127_skip : Flapjack.WordAlloc.isSkip output3127 = false := by
  rw [output3127_def]
  conv => lhs; cbv
  try rfl
theorem node3127_eq : Flapjack.WordAlloc.removeDeadStructural input3127 value1126 value1 value2 = (output3127, value1134, value1) := by
  rw [input3127_def, output3127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3123_eq]
  try dsimp only
  rw [node3126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3127 input3112)).val
theorem input3128_def : input3128 = (.seq input3127 input3112) := by
  unfold input3128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3127 output3112)).val
theorem output3128_def : output3128 = (.seq output3127 output3112) := by
  unfold output3128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3128_skip : Flapjack.WordAlloc.isSkip output3128 = false := by
  rw [output3128_def]
  conv => lhs; cbv
  try rfl
theorem node3128_eq : Flapjack.WordAlloc.removeDeadStructural input3128 value1125 value1 value2 = (output3128, value1134, value1) := by
  rw [input3128_def, output3128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3112_eq]
  try dsimp only
  rw [node3127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1135 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 381 (Flapjack.WordLangAddr.addr 385 0#64)))).val
theorem input3129_def : input3129 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 381 (Flapjack.WordLangAddr.addr 385 0#64))) := by
  unfold input3129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 381 (Flapjack.WordLangAddr.addr 385 0#64)))).val
theorem output3129_def : output3129 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 381 (Flapjack.WordLangAddr.addr 385 0#64))) := by
  unfold output3129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3129_skip : Flapjack.WordAlloc.isSkip output3129 = false := by
  rw [output3129_def]
  conv => lhs; cbv
  try rfl
theorem node3129_eq : Flapjack.WordAlloc.removeDeadStructural input3129 value1134 value1 value2 = (output3129, value1135, value1) := by
  rw [input3129_def, output3129_def]
  try (conv => lhs; cbv)
  try rfl

def value1136 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(385, 373)])).val
theorem input3130_def : input3130 = (Flapjack.WordLangProgHOL.move 0 [(385, 373)]) := by
  unfold input3130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(385, 373)])).val
theorem output3130_def : output3130 = (Flapjack.WordLangProgHOL.move 0 [(385, 373)]) := by
  unfold output3130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3130_skip : Flapjack.WordAlloc.isSkip output3130 = false := by
  rw [output3130_def]
  conv => lhs; cbv
  try rfl
theorem node3130_eq : Flapjack.WordAlloc.removeDeadStructural input3130 value1135 value1 value2 = (output3130, value1136, value1) := by
  rw [input3130_def, output3130_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3130 input3129)).val
theorem input3131_def : input3131 = (.seq input3130 input3129) := by
  unfold input3131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3130 output3129)).val
theorem output3131_def : output3131 = (.seq output3130 output3129) := by
  unfold output3131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3131_skip : Flapjack.WordAlloc.isSkip output3131 = false := by
  rw [output3131_def]
  conv => lhs; cbv
  try rfl
theorem node3131_eq : Flapjack.WordAlloc.removeDeadStructural input3131 value1134 value1 value2 = (output3131, value1136, value1) := by
  rw [input3131_def, output3131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3129_eq]
  try dsimp only
  rw [node3130_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1137 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(381, 377)])).val
theorem input3132_def : input3132 = (Flapjack.WordLangProgHOL.move 0 [(381, 377)]) := by
  unfold input3132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(381, 377)])).val
theorem output3132_def : output3132 = (Flapjack.WordLangProgHOL.move 0 [(381, 377)]) := by
  unfold output3132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3132_skip : Flapjack.WordAlloc.isSkip output3132 = false := by
  rw [output3132_def]
  conv => lhs; cbv
  try rfl
theorem node3132_eq : Flapjack.WordAlloc.removeDeadStructural input3132 value1136 value1 value2 = (output3132, value1137, value1) := by
  rw [input3132_def, output3132_def]
  try (conv => lhs; cbv)
  try rfl

def value1138 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(377, 341)])).val
theorem input3133_def : input3133 = (Flapjack.WordLangProgHOL.move 0 [(377, 341)]) := by
  unfold input3133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(377, 341)])).val
theorem output3133_def : output3133 = (Flapjack.WordLangProgHOL.move 0 [(377, 341)]) := by
  unfold output3133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3133_skip : Flapjack.WordAlloc.isSkip output3133 = false := by
  rw [output3133_def]
  conv => lhs; cbv
  try rfl
theorem node3133_eq : Flapjack.WordAlloc.removeDeadStructural input3133 value1137 value1 value2 = (output3133, value1138, value1) := by
  rw [input3133_def, output3133_def]
  try (conv => lhs; cbv)
  try rfl

def value1139 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 373 349 (Flapjack.WordRegImm.reg 369))))).val
theorem input3134_def : input3134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 373 349 (Flapjack.WordRegImm.reg 369)))) := by
  unfold input3134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 373 349 (Flapjack.WordRegImm.reg 369))))).val
theorem output3134_def : output3134 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 373 349 (Flapjack.WordRegImm.reg 369)))) := by
  unfold output3134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3134_skip : Flapjack.WordAlloc.isSkip output3134 = false := by
  rw [output3134_def]
  conv => lhs; cbv
  try rfl
theorem node3134_eq : Flapjack.WordAlloc.removeDeadStructural input3134 value1138 value1 value2 = (output3134, value1139, value1) := by
  rw [input3134_def, output3134_def]
  try (conv => lhs; cbv)
  try rfl

def value1140 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 24#64)))).val
theorem input3135_def : input3135 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 24#64))) := by
  unfold input3135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 24#64)))).val
theorem output3135_def : output3135 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 369 (Flapjack.WordLangAddr.addr 365 24#64))) := by
  unfold output3135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3135_skip : Flapjack.WordAlloc.isSkip output3135 = false := by
  rw [output3135_def]
  conv => lhs; cbv
  try rfl
theorem node3135_eq : Flapjack.WordAlloc.removeDeadStructural input3135 value1139 value1 value2 = (output3135, value1140, value1) := by
  rw [input3135_def, output3135_def]
  try (conv => lhs; cbv)
  try rfl

def value1141 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 18446744073709550992#64)))).val
theorem input3136_def : input3136 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 18446744073709550992#64))) := by
  unfold input3136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 18446744073709550992#64)))).val
theorem output3136_def : output3136 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 365 (Flapjack.WordLangAddr.addr 361 18446744073709550992#64))) := by
  unfold output3136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3136_skip : Flapjack.WordAlloc.isSkip output3136 = false := by
  rw [output3136_def]
  conv => lhs; cbv
  try rfl
theorem node3136_eq : Flapjack.WordAlloc.removeDeadStructural input3136 value1140 value1 value2 = (output3136, value1141, value1) := by
  rw [input3136_def, output3136_def]
  try (conv => lhs; cbv)
  try rfl

def value1142 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 361 357)).val
theorem input3137_def : input3137 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 361 357) := by
  unfold input3137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 361 357)).val
theorem output3137_def : output3137 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 361 357) := by
  unfold output3137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3137_skip : Flapjack.WordAlloc.isSkip output3137 = false := by
  rw [output3137_def]
  conv => lhs; cbv
  try rfl
theorem node3137_eq : Flapjack.WordAlloc.removeDeadStructural input3137 value1141 value1 value2 = (output3137, value1142, value1) := by
  rw [input3137_def, output3137_def]
  try (conv => lhs; cbv)
  try rfl

def value1143 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 357 353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3138_def : input3138 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 357 353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 357 353 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3138_def : output3138 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 357 353 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3138_skip : Flapjack.WordAlloc.isSkip output3138 = false := by
  rw [output3138_def]
  conv => lhs; cbv
  try rfl
theorem node3138_eq : Flapjack.WordAlloc.removeDeadStructural input3138 value1142 value1 value2 = (output3138, value1143, value1) := by
  rw [input3138_def, output3138_def]
  try (conv => lhs; cbv)
  try rfl

def value1144 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 353 Flapjack.WordStore.heapLength)).val
theorem input3139_def : input3139 = (Flapjack.WordLangProgHOL.get 353 Flapjack.WordStore.heapLength) := by
  unfold input3139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 353 Flapjack.WordStore.heapLength)).val
theorem output3139_def : output3139 = (Flapjack.WordLangProgHOL.get 353 Flapjack.WordStore.heapLength) := by
  unfold output3139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3139_skip : Flapjack.WordAlloc.isSkip output3139 = false := by
  rw [output3139_def]
  conv => lhs; cbv
  try rfl
theorem node3139_eq : Flapjack.WordAlloc.removeDeadStructural input3139 value1143 value1 value2 = (output3139, value1144, value1) := by
  rw [input3139_def, output3139_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3139 input3138)).val
theorem input3140_def : input3140 = (.seq input3139 input3138) := by
  unfold input3140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3139 output3138)).val
theorem output3140_def : output3140 = (.seq output3139 output3138) := by
  unfold output3140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3140_skip : Flapjack.WordAlloc.isSkip output3140 = false := by
  rw [output3140_def]
  conv => lhs; cbv
  try rfl
theorem node3140_eq : Flapjack.WordAlloc.removeDeadStructural input3140 value1142 value1 value2 = (output3140, value1144, value1) := by
  rw [input3140_def, output3140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3138_eq]
  try dsimp only
  rw [node3139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3140 input3137)).val
theorem input3141_def : input3141 = (.seq input3140 input3137) := by
  unfold input3141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3140 output3137)).val
theorem output3141_def : output3141 = (.seq output3140 output3137) := by
  unfold output3141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3141_skip : Flapjack.WordAlloc.isSkip output3141 = false := by
  rw [output3141_def]
  conv => lhs; cbv
  try rfl
theorem node3141_eq : Flapjack.WordAlloc.removeDeadStructural input3141 value1141 value1 value2 = (output3141, value1144, value1) := by
  rw [input3141_def, output3141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3137_eq]
  try dsimp only
  rw [node3140_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3141 input3136)).val
theorem input3142_def : input3142 = (.seq input3141 input3136) := by
  unfold input3142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3141 output3136)).val
theorem output3142_def : output3142 = (.seq output3141 output3136) := by
  unfold output3142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3142_skip : Flapjack.WordAlloc.isSkip output3142 = false := by
  rw [output3142_def]
  conv => lhs; cbv
  try rfl
theorem node3142_eq : Flapjack.WordAlloc.removeDeadStructural input3142 value1140 value1 value2 = (output3142, value1144, value1) := by
  rw [input3142_def, output3142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3136_eq]
  try dsimp only
  rw [node3141_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3142 input3135)).val
theorem input3143_def : input3143 = (.seq input3142 input3135) := by
  unfold input3143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3142 output3135)).val
theorem output3143_def : output3143 = (.seq output3142 output3135) := by
  unfold output3143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3143_skip : Flapjack.WordAlloc.isSkip output3143 = false := by
  rw [output3143_def]
  conv => lhs; cbv
  try rfl
theorem node3143_eq : Flapjack.WordAlloc.removeDeadStructural input3143 value1139 value1 value2 = (output3143, value1144, value1) := by
  rw [input3143_def, output3143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3135_eq]
  try dsimp only
  rw [node3142_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3143 input3134)).val
theorem input3144_def : input3144 = (.seq input3143 input3134) := by
  unfold input3144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3143 output3134)).val
theorem output3144_def : output3144 = (.seq output3143 output3134) := by
  unfold output3144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3144_skip : Flapjack.WordAlloc.isSkip output3144 = false := by
  rw [output3144_def]
  conv => lhs; cbv
  try rfl
theorem node3144_eq : Flapjack.WordAlloc.removeDeadStructural input3144 value1138 value1 value2 = (output3144, value1144, value1) := by
  rw [input3144_def, output3144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3134_eq]
  try dsimp only
  rw [node3143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1145 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 349 345 (Flapjack.WordRegImm.imm 4#64))))).val
theorem input3145_def : input3145 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 349 345 (Flapjack.WordRegImm.imm 4#64)))) := by
  unfold input3145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 349 345 (Flapjack.WordRegImm.imm 4#64))))).val
theorem output3145_def : output3145 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 349 345 (Flapjack.WordRegImm.imm 4#64)))) := by
  unfold output3145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3145_skip : Flapjack.WordAlloc.isSkip output3145 = false := by
  rw [output3145_def]
  conv => lhs; cbv
  try rfl
theorem node3145_eq : Flapjack.WordAlloc.removeDeadStructural input3145 value1144 value1 value2 = (output3145, value1145, value1) := by
  rw [input3145_def, output3145_def]
  try (conv => lhs; cbv)
  try rfl

def value1146 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(345, 313)])).val
theorem input3146_def : input3146 = (Flapjack.WordLangProgHOL.move 0 [(345, 313)]) := by
  unfold input3146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(345, 313)])).val
theorem output3146_def : output3146 = (Flapjack.WordLangProgHOL.move 0 [(345, 313)]) := by
  unfold output3146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3146_skip : Flapjack.WordAlloc.isSkip output3146 = false := by
  rw [output3146_def]
  conv => lhs; cbv
  try rfl
theorem node3146_eq : Flapjack.WordAlloc.removeDeadStructural input3146 value1145 value1 value2 = (output3146, value1146, value1) := by
  rw [input3146_def, output3146_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3146 input3145)).val
theorem input3147_def : input3147 = (.seq input3146 input3145) := by
  unfold input3147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3146 output3145)).val
theorem output3147_def : output3147 = (.seq output3146 output3145) := by
  unfold output3147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3147_skip : Flapjack.WordAlloc.isSkip output3147 = false := by
  rw [output3147_def]
  conv => lhs; cbv
  try rfl
theorem node3147_eq : Flapjack.WordAlloc.removeDeadStructural input3147 value1144 value1 value2 = (output3147, value1146, value1) := by
  rw [input3147_def, output3147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3145_eq]
  try dsimp only
  rw [node3146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3147 input3144)).val
theorem input3148_def : input3148 = (.seq input3147 input3144) := by
  unfold input3148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3147 output3144)).val
theorem output3148_def : output3148 = (.seq output3147 output3144) := by
  unfold output3148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3148_skip : Flapjack.WordAlloc.isSkip output3148 = false := by
  rw [output3148_def]
  conv => lhs; cbv
  try rfl
theorem node3148_eq : Flapjack.WordAlloc.removeDeadStructural input3148 value1138 value1 value2 = (output3148, value1146, value1) := by
  rw [input3148_def, output3148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3144_eq]
  try dsimp only
  rw [node3147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3149_def : input3149 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3149_def : output3149 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3149_skip : Flapjack.WordAlloc.isSkip output3149 = false := by
  rw [output3149_def]
  conv => lhs; cbv
  try rfl
theorem node3149_eq : Flapjack.WordAlloc.removeDeadStructural input3149 value1146 value1 value2 = (output3149, value1146, value1) := by
  rw [input3149_def, output3149_def]
  try (conv => lhs; cbv)
  try rfl

def value1147 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input3150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2, 4],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(309, 295), (313, 299), (317, 303)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(321, 2), (325, 4)])
            Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
                (Flapjack.WordLangProgHOL.move 1 [(333, 325)]))
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(341, 321)]))),
      875, 4))
  (some 370) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(309, 295), (313, 299), (317, 303)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(329, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 329)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
                (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)))
              (Flapjack.WordLangProgHOL.move 1 [(337, 329)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64)))),
      875, 5)))).val
theorem input3150_def : input3150 = (Flapjack.WordLangProgHOL.call
  (some
    ([2, 4],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(309, 295), (313, 299), (317, 303)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(321, 2), (325, 4)])
            Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
                (Flapjack.WordLangProgHOL.move 1 [(333, 325)]))
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 337 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(341, 321)]))),
      875, 4))
  (some 370) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(309, 295), (313, 299), (317, 303)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(329, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 329)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
                (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)))
              (Flapjack.WordLangProgHOL.move 1 [(337, 329)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64)))),
      875, 5))) := by
  unfold input3150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2, 4],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(309, 295), (313, 299), (317, 303)])
          (Flapjack.WordLangProgHOL.move 1 [(321, 2), (325, 4)]))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(333, 325)])
          (Flapjack.WordLangProgHOL.move 1 [(341, 321)])),
      875, 4))
  (some 370) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(309, 295), (313, 299), (317, 303)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(329, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 329)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64))
          (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64))),
      875, 5)))).val
theorem output3150_def : output3150 = (Flapjack.WordLangProgHOL.call
  (some
    ([2, 4],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(309, 295), (313, 299), (317, 303)])
          (Flapjack.WordLangProgHOL.move 1 [(321, 2), (325, 4)]))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(333, 325)])
          (Flapjack.WordLangProgHOL.move 1 [(341, 321)])),
      875, 4))
  (some 370) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(309, 295), (313, 299), (317, 303)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(329, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 329)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64))
          (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 341 0#64))),
      875, 5))) := by
  unfold output3150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3150_skip : Flapjack.WordAlloc.isSkip output3150 = false := by
  rw [output3150_def]
  conv => lhs; cbv
  try rfl
theorem node3150_eq : Flapjack.WordAlloc.removeDeadStructural input3150 value1146 value1 value2 = (output3150, value1147, value1) := by
  rw [input3150_def, output3150_def]
  try (conv => lhs; cbv)
  try rfl

def value1148 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input3151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 289)])).val
theorem input3151_def : input3151 = (Flapjack.WordLangProgHOL.move 1 [(2, 289)]) := by
  unfold input3151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 289)])).val
theorem output3151_def : output3151 = (Flapjack.WordLangProgHOL.move 1 [(2, 289)]) := by
  unfold output3151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3151_skip : Flapjack.WordAlloc.isSkip output3151 = false := by
  rw [output3151_def]
  conv => lhs; cbv
  try rfl
theorem node3151_eq : Flapjack.WordAlloc.removeDeadStructural input3151 value1147 value1 value2 = (output3151, value1148, value1) := by
  rw [input3151_def, output3151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3151 input3150)).val
theorem input3152_def : input3152 = (.seq input3151 input3150) := by
  unfold input3152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3151 output3150)).val
theorem output3152_def : output3152 = (.seq output3151 output3150) := by
  unfold output3152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3152_skip : Flapjack.WordAlloc.isSkip output3152 = false := by
  rw [output3152_def]
  conv => lhs; cbv
  try rfl
theorem node3152_eq : Flapjack.WordAlloc.removeDeadStructural input3152 value1146 value1 value2 = (output3152, value1148, value1) := by
  rw [input3152_def, output3152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3150_eq]
  try dsimp only
  rw [node3151_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1149 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(295, 229), (299, 273), (303, 289)])).val
theorem input3153_def : input3153 = (Flapjack.WordLangProgHOL.move 0 [(295, 229), (299, 273), (303, 289)]) := by
  unfold input3153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(295, 229), (299, 273), (303, 289)])).val
theorem output3153_def : output3153 = (Flapjack.WordLangProgHOL.move 0 [(295, 229), (299, 273), (303, 289)]) := by
  unfold output3153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3153_skip : Flapjack.WordAlloc.isSkip output3153 = false := by
  rw [output3153_def]
  conv => lhs; cbv
  try rfl
theorem node3153_eq : Flapjack.WordAlloc.removeDeadStructural input3153 value1148 value1 value2 = (output3153, value1149, value1) := by
  rw [input3153_def, output3153_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3153 input3152)).val
theorem input3154_def : input3154 = (.seq input3153 input3152) := by
  unfold input3154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3153 output3152)).val
theorem output3154_def : output3154 = (.seq output3153 output3152) := by
  unfold output3154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3154_skip : Flapjack.WordAlloc.isSkip output3154 = false := by
  rw [output3154_def]
  conv => lhs; cbv
  try rfl
theorem node3154_eq : Flapjack.WordAlloc.removeDeadStructural input3154 value1146 value1 value2 = (output3154, value1149, value1) := by
  rw [input3154_def, output3154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3152_eq]
  try dsimp only
  rw [node3153_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1150 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(289, 237)])).val
theorem input3155_def : input3155 = (Flapjack.WordLangProgHOL.move 0 [(289, 237)]) := by
  unfold input3155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(289, 237)])).val
theorem output3155_def : output3155 = (Flapjack.WordLangProgHOL.move 0 [(289, 237)]) := by
  unfold output3155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3155_skip : Flapjack.WordAlloc.isSkip output3155 = false := by
  rw [output3155_def]
  conv => lhs; cbv
  try rfl
theorem node3155_eq : Flapjack.WordAlloc.removeDeadStructural input3155 value1149 value1 value2 = (output3155, value1150, value1) := by
  rw [input3155_def, output3155_def]
  try (conv => lhs; cbv)
  try rfl

def value1151 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 281 (Flapjack.WordLangAddr.addr 285 0#64)))).val
theorem input3156_def : input3156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 281 (Flapjack.WordLangAddr.addr 285 0#64))) := by
  unfold input3156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 281 (Flapjack.WordLangAddr.addr 285 0#64)))).val
theorem output3156_def : output3156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 281 (Flapjack.WordLangAddr.addr 285 0#64))) := by
  unfold output3156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3156_skip : Flapjack.WordAlloc.isSkip output3156 = false := by
  rw [output3156_def]
  conv => lhs; cbv
  try rfl
theorem node3156_eq : Flapjack.WordAlloc.removeDeadStructural input3156 value1150 value1 value2 = (output3156, value1151, value1) := by
  rw [input3156_def, output3156_def]
  try (conv => lhs; cbv)
  try rfl

def value1152 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(285, 269)])).val
theorem input3157_def : input3157 = (Flapjack.WordLangProgHOL.move 0 [(285, 269)]) := by
  unfold input3157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(285, 269)])).val
theorem output3157_def : output3157 = (Flapjack.WordLangProgHOL.move 0 [(285, 269)]) := by
  unfold output3157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3157_skip : Flapjack.WordAlloc.isSkip output3157 = false := by
  rw [output3157_def]
  conv => lhs; cbv
  try rfl
theorem node3157_eq : Flapjack.WordAlloc.removeDeadStructural input3157 value1151 value1 value2 = (output3157, value1152, value1) := by
  rw [input3157_def, output3157_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3157 input3156)).val
theorem input3158_def : input3158 = (.seq input3157 input3156) := by
  unfold input3158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3157 output3156)).val
theorem output3158_def : output3158 = (.seq output3157 output3156) := by
  unfold output3158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3158_skip : Flapjack.WordAlloc.isSkip output3158 = false := by
  rw [output3158_def]
  conv => lhs; cbv
  try rfl
theorem node3158_eq : Flapjack.WordAlloc.removeDeadStructural input3158 value1150 value1 value2 = (output3158, value1152, value1) := by
  rw [input3158_def, output3158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3156_eq]
  try dsimp only
  rw [node3157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1153 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(281, 277)])).val
theorem input3159_def : input3159 = (Flapjack.WordLangProgHOL.move 0 [(281, 277)]) := by
  unfold input3159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(281, 277)])).val
theorem output3159_def : output3159 = (Flapjack.WordLangProgHOL.move 0 [(281, 277)]) := by
  unfold output3159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3159_skip : Flapjack.WordAlloc.isSkip output3159 = false := by
  rw [output3159_def]
  conv => lhs; cbv
  try rfl
theorem node3159_eq : Flapjack.WordAlloc.removeDeadStructural input3159 value1152 value1 value2 = (output3159, value1153, value1) := by
  rw [input3159_def, output3159_def]
  try (conv => lhs; cbv)
  try rfl

def value1154 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3160_def : input3160 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3160_def : output3160 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3160_skip : Flapjack.WordAlloc.isSkip output3160 = false := by
  rw [output3160_def]
  conv => lhs; cbv
  try rfl
theorem node3160_eq : Flapjack.WordAlloc.removeDeadStructural input3160 value1153 value1 value2 = (output3160, value1154, value1) := by
  rw [input3160_def, output3160_def]
  try (conv => lhs; cbv)
  try rfl

def value1155 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(273, 233)])).val
theorem input3161_def : input3161 = (Flapjack.WordLangProgHOL.move 0 [(273, 233)]) := by
  unfold input3161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(273, 233)])).val
theorem output3161_def : output3161 = (Flapjack.WordLangProgHOL.move 0 [(273, 233)]) := by
  unfold output3161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3161_skip : Flapjack.WordAlloc.isSkip output3161 = false := by
  rw [output3161_def]
  conv => lhs; cbv
  try rfl
theorem node3161_eq : Flapjack.WordAlloc.removeDeadStructural input3161 value1154 value1 value2 = (output3161, value1155, value1) := by
  rw [input3161_def, output3161_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3161 input3160)).val
theorem input3162_def : input3162 = (.seq input3161 input3160) := by
  unfold input3162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3161 output3160)).val
theorem output3162_def : output3162 = (.seq output3161 output3160) := by
  unfold output3162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3162_skip : Flapjack.WordAlloc.isSkip output3162 = false := by
  rw [output3162_def]
  conv => lhs; cbv
  try rfl
theorem node3162_eq : Flapjack.WordAlloc.removeDeadStructural input3162 value1153 value1 value2 = (output3162, value1155, value1) := by
  rw [input3162_def, output3162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3160_eq]
  try dsimp only
  rw [node3161_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1156 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 269 265 (Flapjack.WordRegImm.imm 18446744073709551392#64))))).val
theorem input3163_def : input3163 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 269 265 (Flapjack.WordRegImm.imm 18446744073709551392#64)))) := by
  unfold input3163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 269 265 (Flapjack.WordRegImm.imm 18446744073709551392#64))))).val
theorem output3163_def : output3163 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 269 265 (Flapjack.WordRegImm.imm 18446744073709551392#64)))) := by
  unfold output3163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3163_skip : Flapjack.WordAlloc.isSkip output3163 = false := by
  rw [output3163_def]
  conv => lhs; cbv
  try rfl
theorem node3163_eq : Flapjack.WordAlloc.removeDeadStructural input3163 value1155 value1 value2 = (output3163, value1156, value1) := by
  rw [input3163_def, output3163_def]
  try (conv => lhs; cbv)
  try rfl

def value1157 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 265 261)).val
theorem input3164_def : input3164 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 265 261) := by
  unfold input3164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 265 261)).val
theorem output3164_def : output3164 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 265 261) := by
  unfold output3164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3164_skip : Flapjack.WordAlloc.isSkip output3164 = false := by
  rw [output3164_def]
  conv => lhs; cbv
  try rfl
theorem node3164_eq : Flapjack.WordAlloc.removeDeadStructural input3164 value1156 value1 value2 = (output3164, value1157, value1) := by
  rw [input3164_def, output3164_def]
  try (conv => lhs; cbv)
  try rfl

def value1158 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 261 257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input3165_def : input3165 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 261 257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input3165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 261 257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output3165_def : output3165 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 261 257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output3165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3165_skip : Flapjack.WordAlloc.isSkip output3165 = false := by
  rw [output3165_def]
  conv => lhs; cbv
  try rfl
theorem node3165_eq : Flapjack.WordAlloc.removeDeadStructural input3165 value1157 value1 value2 = (output3165, value1158, value1) := by
  rw [input3165_def, output3165_def]
  try (conv => lhs; cbv)
  try rfl

def value1159 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 257 Flapjack.WordStore.heapLength)).val
theorem input3166_def : input3166 = (Flapjack.WordLangProgHOL.get 257 Flapjack.WordStore.heapLength) := by
  unfold input3166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 257 Flapjack.WordStore.heapLength)).val
theorem output3166_def : output3166 = (Flapjack.WordLangProgHOL.get 257 Flapjack.WordStore.heapLength) := by
  unfold output3166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3166_skip : Flapjack.WordAlloc.isSkip output3166 = false := by
  rw [output3166_def]
  conv => lhs; cbv
  try rfl
theorem node3166_eq : Flapjack.WordAlloc.removeDeadStructural input3166 value1158 value1 value2 = (output3166, value1159, value1) := by
  rw [input3166_def, output3166_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3166 input3165)).val
theorem input3167_def : input3167 = (.seq input3166 input3165) := by
  unfold input3167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3166 output3165)).val
theorem output3167_def : output3167 = (.seq output3166 output3165) := by
  unfold output3167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3167_skip : Flapjack.WordAlloc.isSkip output3167 = false := by
  rw [output3167_def]
  conv => lhs; cbv
  try rfl
theorem node3167_eq : Flapjack.WordAlloc.removeDeadStructural input3167 value1157 value1 value2 = (output3167, value1159, value1) := by
  rw [input3167_def, output3167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3165_eq]
  try dsimp only
  rw [node3166_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3167 input3164)).val
theorem input3168_def : input3168 = (.seq input3167 input3164) := by
  unfold input3168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3167 output3164)).val
theorem output3168_def : output3168 = (.seq output3167 output3164) := by
  unfold output3168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3168_skip : Flapjack.WordAlloc.isSkip output3168 = false := by
  rw [output3168_def]
  conv => lhs; cbv
  try rfl
theorem node3168_eq : Flapjack.WordAlloc.removeDeadStructural input3168 value1156 value1 value2 = (output3168, value1159, value1) := by
  rw [input3168_def, output3168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3164_eq]
  try dsimp only
  rw [node3167_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3168 input3163)).val
theorem input3169_def : input3169 = (.seq input3168 input3163) := by
  unfold input3169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3168 output3163)).val
theorem output3169_def : output3169 = (.seq output3168 output3163) := by
  unfold output3169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3169_skip : Flapjack.WordAlloc.isSkip output3169 = false := by
  rw [output3169_def]
  conv => lhs; cbv
  try rfl
theorem node3169_eq : Flapjack.WordAlloc.removeDeadStructural input3169 value1155 value1 value2 = (output3169, value1159, value1) := by
  rw [input3169_def, output3169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3163_eq]
  try dsimp only
  rw [node3168_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3170_def : input3170 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3170_def : output3170 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3170_skip : Flapjack.WordAlloc.isSkip output3170 = false := by
  rw [output3170_def]
  conv => lhs; cbv
  try rfl
theorem node3170_eq : Flapjack.WordAlloc.removeDeadStructural input3170 value1159 value1 value2 = (output3170, value1159, value1) := by
  rw [input3170_def, output3170_def]
  try (conv => lhs; cbv)
  try rfl

def value1160 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))

@[irreducible, cbv_opaque] def input3171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(229, 215), (233, 219), (237, 223)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(241, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(253, 241)]))),
      875, 2))
  (some 389) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(229, 215), (233, 219), (237, 223)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(245, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 245)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(249, 245)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)))),
      875, 3)))).val
theorem input3171_def : input3171 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(229, 215), (233, 219), (237, 223)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(241, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 249 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(253, 241)]))),
      875, 2))
  (some 389) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(229, 215), (233, 219), (237, 223)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(245, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 245)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(249, 245)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 253 0#64)))),
      875, 3))) := by
  unfold input3171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(229, 215), (233, 219), (237, 223)], 875, 2))
  (some 389) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(229, 215), (233, 219), (237, 223)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(245, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 245)])
            (Flapjack.WordLangProgHOL.raise 2))),
      875, 3)))).val
theorem output3171_def : output3171 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(229, 215), (233, 219), (237, 223)], 875, 2))
  (some 389) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(229, 215), (233, 219), (237, 223)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(245, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 245)])
            (Flapjack.WordLangProgHOL.raise 2))),
      875, 3))) := by
  unfold output3171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3171_skip : Flapjack.WordAlloc.isSkip output3171 = false := by
  rw [output3171_def]
  conv => lhs; cbv
  try rfl
theorem node3171_eq : Flapjack.WordAlloc.removeDeadStructural input3171 value1159 value1 value2 = (output3171, value1160, value1) := by
  rw [input3171_def, output3171_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3172_def : input3172 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3172_def : output3172 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3172_skip : Flapjack.WordAlloc.isSkip output3172 = true := by
  rw [output3172_def]
  conv => lhs; cbv
  try rfl
theorem node3172_eq : Flapjack.WordAlloc.removeDeadStructural input3172 value1160 value1 value2 = (output3172, value1160, value1) := by
  rw [input3172_def, output3172_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3172 input3171)).val
theorem input3173_def : input3173 = (.seq input3172 input3171) := by
  unfold input3173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3171)).val
theorem output3173_def : output3173 = (output3171) := by
  unfold output3173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3173_skip : Flapjack.WordAlloc.isSkip output3173 = false := by
  rw [output3173_def]
  conv => lhs; cbv
  try rfl
theorem node3173_eq : Flapjack.WordAlloc.removeDeadStructural input3173 value1159 value1 value2 = (output3173, value1160, value1) := by
  rw [input3173_def, output3173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3171_eq]
  try dsimp only
  rw [node3172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value1161 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(215, 201), (219, 209), (223, 205)])).val
theorem input3174_def : input3174 = (Flapjack.WordLangProgHOL.move 0 [(215, 201), (219, 209), (223, 205)]) := by
  unfold input3174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(215, 201), (219, 209), (223, 205)])).val
theorem output3174_def : output3174 = (Flapjack.WordLangProgHOL.move 0 [(215, 201), (219, 209), (223, 205)]) := by
  unfold output3174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3174_skip : Flapjack.WordAlloc.isSkip output3174 = false := by
  rw [output3174_def]
  conv => lhs; cbv
  try rfl
theorem node3174_eq : Flapjack.WordAlloc.removeDeadStructural input3174 value1160 value1 value2 = (output3174, value1161, value1) := by
  rw [input3174_def, output3174_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3174 input3173)).val
theorem input3175_def : input3175 = (.seq input3174 input3173) := by
  unfold input3175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3174 output3173)).val
theorem output3175_def : output3175 = (.seq output3174 output3173) := by
  unfold output3175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3175_skip : Flapjack.WordAlloc.isSkip output3175 = false := by
  rw [output3175_def]
  conv => lhs; cbv
  try rfl
theorem node3175_eq : Flapjack.WordAlloc.removeDeadStructural input3175 value1159 value1 value2 = (output3175, value1161, value1) := by
  rw [input3175_def, output3175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3173_eq]
  try dsimp only
  rw [node3174_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3175 input3170)).val
theorem input3176_def : input3176 = (.seq input3175 input3170) := by
  unfold input3176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3175 output3170)).val
theorem output3176_def : output3176 = (.seq output3175 output3170) := by
  unfold output3176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3176_skip : Flapjack.WordAlloc.isSkip output3176 = false := by
  rw [output3176_def]
  conv => lhs; cbv
  try rfl
theorem node3176_eq : Flapjack.WordAlloc.removeDeadStructural input3176 value1159 value1 value2 = (output3176, value1161, value1) := by
  rw [input3176_def, output3176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3170_eq]
  try dsimp only
  rw [node3175_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3176 input3169)).val
theorem input3177_def : input3177 = (.seq input3176 input3169) := by
  unfold input3177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3176 output3169)).val
theorem output3177_def : output3177 = (.seq output3176 output3169) := by
  unfold output3177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3177_skip : Flapjack.WordAlloc.isSkip output3177 = false := by
  rw [output3177_def]
  conv => lhs; cbv
  try rfl
theorem node3177_eq : Flapjack.WordAlloc.removeDeadStructural input3177 value1155 value1 value2 = (output3177, value1161, value1) := by
  rw [input3177_def, output3177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3169_eq]
  try dsimp only
  rw [node3176_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3177 input3162)).val
theorem input3178_def : input3178 = (.seq input3177 input3162) := by
  unfold input3178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3177 output3162)).val
theorem output3178_def : output3178 = (.seq output3177 output3162) := by
  unfold output3178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3178_skip : Flapjack.WordAlloc.isSkip output3178 = false := by
  rw [output3178_def]
  conv => lhs; cbv
  try rfl
theorem node3178_eq : Flapjack.WordAlloc.removeDeadStructural input3178 value1153 value1 value2 = (output3178, value1161, value1) := by
  rw [input3178_def, output3178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3162_eq]
  try dsimp only
  rw [node3177_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3178 input3159)).val
theorem input3179_def : input3179 = (.seq input3178 input3159) := by
  unfold input3179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3178 output3159)).val
theorem output3179_def : output3179 = (.seq output3178 output3159) := by
  unfold output3179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3179_skip : Flapjack.WordAlloc.isSkip output3179 = false := by
  rw [output3179_def]
  conv => lhs; cbv
  try rfl
theorem node3179_eq : Flapjack.WordAlloc.removeDeadStructural input3179 value1152 value1 value2 = (output3179, value1161, value1) := by
  rw [input3179_def, output3179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3159_eq]
  try dsimp only
  rw [node3178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3179 input3158)).val
theorem input3180_def : input3180 = (.seq input3179 input3158) := by
  unfold input3180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3179 output3158)).val
theorem output3180_def : output3180 = (.seq output3179 output3158) := by
  unfold output3180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3180_skip : Flapjack.WordAlloc.isSkip output3180 = false := by
  rw [output3180_def]
  conv => lhs; cbv
  try rfl
theorem node3180_eq : Flapjack.WordAlloc.removeDeadStructural input3180 value1150 value1 value2 = (output3180, value1161, value1) := by
  rw [input3180_def, output3180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3158_eq]
  try dsimp only
  rw [node3179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3180 input3155)).val
theorem input3181_def : input3181 = (.seq input3180 input3155) := by
  unfold input3181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3180 output3155)).val
theorem output3181_def : output3181 = (.seq output3180 output3155) := by
  unfold output3181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3181_skip : Flapjack.WordAlloc.isSkip output3181 = false := by
  rw [output3181_def]
  conv => lhs; cbv
  try rfl
theorem node3181_eq : Flapjack.WordAlloc.removeDeadStructural input3181 value1149 value1 value2 = (output3181, value1161, value1) := by
  rw [input3181_def, output3181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3155_eq]
  try dsimp only
  rw [node3180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3181 input3154)).val
theorem input3182_def : input3182 = (.seq input3181 input3154) := by
  unfold input3182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3181 output3154)).val
theorem output3182_def : output3182 = (.seq output3181 output3154) := by
  unfold output3182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3182_skip : Flapjack.WordAlloc.isSkip output3182 = false := by
  rw [output3182_def]
  conv => lhs; cbv
  try rfl
theorem node3182_eq : Flapjack.WordAlloc.removeDeadStructural input3182 value1146 value1 value2 = (output3182, value1161, value1) := by
  rw [input3182_def, output3182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3154_eq]
  try dsimp only
  rw [node3181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3182 input3149)).val
theorem input3183_def : input3183 = (.seq input3182 input3149) := by
  unfold input3183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3182 output3149)).val
theorem output3183_def : output3183 = (.seq output3182 output3149) := by
  unfold output3183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3183_skip : Flapjack.WordAlloc.isSkip output3183 = false := by
  rw [output3183_def]
  conv => lhs; cbv
  try rfl
theorem node3183_eq : Flapjack.WordAlloc.removeDeadStructural input3183 value1146 value1 value2 = (output3183, value1161, value1) := by
  rw [input3183_def, output3183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3149_eq]
  try dsimp only
  rw [node3182_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3183 input3148)).val
theorem input3184_def : input3184 = (.seq input3183 input3148) := by
  unfold input3184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3183 output3148)).val
theorem output3184_def : output3184 = (.seq output3183 output3148) := by
  unfold output3184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3184_skip : Flapjack.WordAlloc.isSkip output3184 = false := by
  rw [output3184_def]
  conv => lhs; cbv
  try rfl
theorem node3184_eq : Flapjack.WordAlloc.removeDeadStructural input3184 value1138 value1 value2 = (output3184, value1161, value1) := by
  rw [input3184_def, output3184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3148_eq]
  try dsimp only
  rw [node3183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3184 input3133)).val
theorem input3185_def : input3185 = (.seq input3184 input3133) := by
  unfold input3185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3184 output3133)).val
theorem output3185_def : output3185 = (.seq output3184 output3133) := by
  unfold output3185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3185_skip : Flapjack.WordAlloc.isSkip output3185 = false := by
  rw [output3185_def]
  conv => lhs; cbv
  try rfl
theorem node3185_eq : Flapjack.WordAlloc.removeDeadStructural input3185 value1137 value1 value2 = (output3185, value1161, value1) := by
  rw [input3185_def, output3185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3133_eq]
  try dsimp only
  rw [node3184_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3185 input3132)).val
theorem input3186_def : input3186 = (.seq input3185 input3132) := by
  unfold input3186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3185 output3132)).val
theorem output3186_def : output3186 = (.seq output3185 output3132) := by
  unfold output3186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3186_skip : Flapjack.WordAlloc.isSkip output3186 = false := by
  rw [output3186_def]
  conv => lhs; cbv
  try rfl
theorem node3186_eq : Flapjack.WordAlloc.removeDeadStructural input3186 value1136 value1 value2 = (output3186, value1161, value1) := by
  rw [input3186_def, output3186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3132_eq]
  try dsimp only
  rw [node3185_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3186 input3131)).val
theorem input3187_def : input3187 = (.seq input3186 input3131) := by
  unfold input3187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3186 output3131)).val
theorem output3187_def : output3187 = (.seq output3186 output3131) := by
  unfold output3187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3187_skip : Flapjack.WordAlloc.isSkip output3187 = false := by
  rw [output3187_def]
  conv => lhs; cbv
  try rfl
theorem node3187_eq : Flapjack.WordAlloc.removeDeadStructural input3187 value1134 value1 value2 = (output3187, value1161, value1) := by
  rw [input3187_def, output3187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3131_eq]
  try dsimp only
  rw [node3186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3187 input3128)).val
theorem input3188_def : input3188 = (.seq input3187 input3128) := by
  unfold input3188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3187 output3128)).val
theorem output3188_def : output3188 = (.seq output3187 output3128) := by
  unfold output3188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3188_skip : Flapjack.WordAlloc.isSkip output3188 = false := by
  rw [output3188_def]
  conv => lhs; cbv
  try rfl
theorem node3188_eq : Flapjack.WordAlloc.removeDeadStructural input3188 value1125 value1 value2 = (output3188, value1161, value1) := by
  rw [input3188_def, output3188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3128_eq]
  try dsimp only
  rw [node3187_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3188 input3111)).val
theorem input3189_def : input3189 = (.seq input3188 input3111) := by
  unfold input3189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3188 output3111)).val
theorem output3189_def : output3189 = (.seq output3188 output3111) := by
  unfold output3189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3189_skip : Flapjack.WordAlloc.isSkip output3189 = false := by
  rw [output3189_def]
  conv => lhs; cbv
  try rfl
theorem node3189_eq : Flapjack.WordAlloc.removeDeadStructural input3189 value1124 value1 value2 = (output3189, value1161, value1) := by
  rw [input3189_def, output3189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3111_eq]
  try dsimp only
  rw [node3188_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3189 input3110)).val
theorem input3190_def : input3190 = (.seq input3189 input3110) := by
  unfold input3190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3189 output3110)).val
theorem output3190_def : output3190 = (.seq output3189 output3110) := by
  unfold output3190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3190_skip : Flapjack.WordAlloc.isSkip output3190 = false := by
  rw [output3190_def]
  conv => lhs; cbv
  try rfl
theorem node3190_eq : Flapjack.WordAlloc.removeDeadStructural input3190 value1123 value1 value2 = (output3190, value1161, value1) := by
  rw [input3190_def, output3190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3110_eq]
  try dsimp only
  rw [node3189_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3190 input3109)).val
theorem input3191_def : input3191 = (.seq input3190 input3109) := by
  unfold input3191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3190 output3109)).val
theorem output3191_def : output3191 = (.seq output3190 output3109) := by
  unfold output3191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3191_skip : Flapjack.WordAlloc.isSkip output3191 = false := by
  rw [output3191_def]
  conv => lhs; cbv
  try rfl
theorem node3191_eq : Flapjack.WordAlloc.removeDeadStructural input3191 value1121 value1 value2 = (output3191, value1161, value1) := by
  rw [input3191_def, output3191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3109_eq]
  try dsimp only
  rw [node3190_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3191 input3106)).val
theorem input3192_def : input3192 = (.seq input3191 input3106) := by
  unfold input3192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3191 output3106)).val
theorem output3192_def : output3192 = (.seq output3191 output3106) := by
  unfold output3192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3192_skip : Flapjack.WordAlloc.isSkip output3192 = false := by
  rw [output3192_def]
  conv => lhs; cbv
  try rfl
theorem node3192_eq : Flapjack.WordAlloc.removeDeadStructural input3192 value1120 value1 value2 = (output3192, value1161, value1) := by
  rw [input3192_def, output3192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3106_eq]
  try dsimp only
  rw [node3191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3192 input3105)).val
theorem input3193_def : input3193 = (.seq input3192 input3105) := by
  unfold input3193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3192 output3105)).val
theorem output3193_def : output3193 = (.seq output3192 output3105) := by
  unfold output3193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3193_skip : Flapjack.WordAlloc.isSkip output3193 = false := by
  rw [output3193_def]
  conv => lhs; cbv
  try rfl
theorem node3193_eq : Flapjack.WordAlloc.removeDeadStructural input3193 value1117 value1 value2 = (output3193, value1161, value1) := by
  rw [input3193_def, output3193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3105_eq]
  try dsimp only
  rw [node3192_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3193 input3100)).val
theorem input3194_def : input3194 = (.seq input3193 input3100) := by
  unfold input3194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3193 output3100)).val
theorem output3194_def : output3194 = (.seq output3193 output3100) := by
  unfold output3194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3194_skip : Flapjack.WordAlloc.isSkip output3194 = false := by
  rw [output3194_def]
  conv => lhs; cbv
  try rfl
theorem node3194_eq : Flapjack.WordAlloc.removeDeadStructural input3194 value1117 value1 value2 = (output3194, value1161, value1) := by
  rw [input3194_def, output3194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3100_eq]
  try dsimp only
  rw [node3193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3194 input3099)).val
theorem input3195_def : input3195 = (.seq input3194 input3099) := by
  unfold input3195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3194 output3099)).val
theorem output3195_def : output3195 = (.seq output3194 output3099) := by
  unfold output3195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3195_skip : Flapjack.WordAlloc.isSkip output3195 = false := by
  rw [output3195_def]
  conv => lhs; cbv
  try rfl
theorem node3195_eq : Flapjack.WordAlloc.removeDeadStructural input3195 value1114 value1 value2 = (output3195, value1161, value1) := by
  rw [input3195_def, output3195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3099_eq]
  try dsimp only
  rw [node3194_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3195 input3098)).val
theorem input3196_def : input3196 = (.seq input3195 input3098) := by
  unfold input3196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3195 output3098)).val
theorem output3196_def : output3196 = (.seq output3195 output3098) := by
  unfold output3196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3196_skip : Flapjack.WordAlloc.isSkip output3196 = false := by
  rw [output3196_def]
  conv => lhs; cbv
  try rfl
theorem node3196_eq : Flapjack.WordAlloc.removeDeadStructural input3196 value1116 value1 value2 = (output3196, value1161, value1) := by
  rw [input3196_def, output3196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3098_eq]
  try dsimp only
  rw [node3195_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3196 input3097)).val
theorem input3197_def : input3197 = (.seq input3196 input3097) := by
  unfold input3197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3196 output3097)).val
theorem output3197_def : output3197 = (.seq output3196 output3097) := by
  unfold output3197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3197_skip : Flapjack.WordAlloc.isSkip output3197 = false := by
  rw [output3197_def]
  conv => lhs; cbv
  try rfl
theorem node3197_eq : Flapjack.WordAlloc.removeDeadStructural input3197 value1101 value1 value2 = (output3197, value1161, value1) := by
  rw [input3197_def, output3197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3097_eq]
  try dsimp only
  rw [node3196_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3197 input3026)).val
theorem input3198_def : input3198 = (.seq input3197 input3026) := by
  unfold input3198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3197 output3026)).val
theorem output3198_def : output3198 = (.seq output3197 output3026) := by
  unfold output3198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3198_skip : Flapjack.WordAlloc.isSkip output3198 = false := by
  rw [output3198_def]
  conv => lhs; cbv
  try rfl
theorem node3198_eq : Flapjack.WordAlloc.removeDeadStructural input3198 value1101 value1 value2 = (output3198, value1161, value1) := by
  rw [input3198_def, output3198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3026_eq]
  try dsimp only
  rw [node3197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3198 input3025)).val
theorem input3199_def : input3199 = (.seq input3198 input3025) := by
  unfold input3199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3198)).val
theorem output3199_def : output3199 = (output3198) := by
  unfold output3199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3199_skip : Flapjack.WordAlloc.isSkip output3199 = false := by
  rw [output3199_def]
  conv => lhs; cbv
  try rfl
theorem node3199_eq : Flapjack.WordAlloc.removeDeadStructural input3199 value1101 value1 value2 = (output3199, value1161, value1) := by
  rw [input3199_def, output3199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3025_eq]
  try dsimp only
  rw [node3198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3199 input3024)).val
theorem input3200_def : input3200 = (.seq input3199 input3024) := by
  unfold input3200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3199 output3024)).val
theorem output3200_def : output3200 = (.seq output3199 output3024) := by
  unfold output3200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3200_skip : Flapjack.WordAlloc.isSkip output3200 = false := by
  rw [output3200_def]
  conv => lhs; cbv
  try rfl
theorem node3200_eq : Flapjack.WordAlloc.removeDeadStructural input3200 value1100 value1 value2 = (output3200, value1161, value1) := by
  rw [input3200_def, output3200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3024_eq]
  try dsimp only
  rw [node3199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3200 input3023)).val
theorem input3201_def : input3201 = (.seq input3200 input3023) := by
  unfold input3201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3200 output3023)).val
theorem output3201_def : output3201 = (.seq output3200 output3023) := by
  unfold output3201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3201_skip : Flapjack.WordAlloc.isSkip output3201 = false := by
  rw [output3201_def]
  conv => lhs; cbv
  try rfl
theorem node3201_eq : Flapjack.WordAlloc.removeDeadStructural input3201 value1097 value1 value2 = (output3201, value1161, value1) := by
  rw [input3201_def, output3201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3023_eq]
  try dsimp only
  rw [node3200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3201 input3018)).val
theorem input3202_def : input3202 = (.seq input3201 input3018) := by
  unfold input3202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3201 output3018)).val
theorem output3202_def : output3202 = (.seq output3201 output3018) := by
  unfold output3202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3202_skip : Flapjack.WordAlloc.isSkip output3202 = false := by
  rw [output3202_def]
  conv => lhs; cbv
  try rfl
theorem node3202_eq : Flapjack.WordAlloc.removeDeadStructural input3202 value1097 value1 value2 = (output3202, value1161, value1) := by
  rw [input3202_def, output3202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3018_eq]
  try dsimp only
  rw [node3201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3202 input3017)).val
theorem input3203_def : input3203 = (.seq input3202 input3017) := by
  unfold input3203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3202 output3017)).val
theorem output3203_def : output3203 = (.seq output3202 output3017) := by
  unfold output3203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3203_skip : Flapjack.WordAlloc.isSkip output3203 = false := by
  rw [output3203_def]
  conv => lhs; cbv
  try rfl
theorem node3203_eq : Flapjack.WordAlloc.removeDeadStructural input3203 value1096 value1 value2 = (output3203, value1161, value1) := by
  rw [input3203_def, output3203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3017_eq]
  try dsimp only
  rw [node3202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3203 input3016)).val
theorem input3204_def : input3204 = (.seq input3203 input3016) := by
  unfold input3204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3203 output3016)).val
theorem output3204_def : output3204 = (.seq output3203 output3016) := by
  unfold output3204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3204_skip : Flapjack.WordAlloc.isSkip output3204 = false := by
  rw [output3204_def]
  conv => lhs; cbv
  try rfl
theorem node3204_eq : Flapjack.WordAlloc.removeDeadStructural input3204 value1091 value1 value2 = (output3204, value1161, value1) := by
  rw [input3204_def, output3204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3016_eq]
  try dsimp only
  rw [node3203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3204 input3007)).val
theorem input3205_def : input3205 = (.seq input3204 input3007) := by
  unfold input3205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3204 output3007)).val
theorem output3205_def : output3205 = (.seq output3204 output3007) := by
  unfold output3205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3205_skip : Flapjack.WordAlloc.isSkip output3205 = false := by
  rw [output3205_def]
  conv => lhs; cbv
  try rfl
theorem node3205_eq : Flapjack.WordAlloc.removeDeadStructural input3205 value1090 value1 value2 = (output3205, value1161, value1) := by
  rw [input3205_def, output3205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3007_eq]
  try dsimp only
  rw [node3204_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3205 input3006)).val
theorem input3206_def : input3206 = (.seq input3205 input3006) := by
  unfold input3206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3205 output3006)).val
theorem output3206_def : output3206 = (.seq output3205 output3006) := by
  unfold output3206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3206_skip : Flapjack.WordAlloc.isSkip output3206 = false := by
  rw [output3206_def]
  conv => lhs; cbv
  try rfl
theorem node3206_eq : Flapjack.WordAlloc.removeDeadStructural input3206 value1087 value1 value2 = (output3206, value1161, value1) := by
  rw [input3206_def, output3206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3006_eq]
  try dsimp only
  rw [node3205_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3206 input3001)).val
theorem input3207_def : input3207 = (.seq input3206 input3001) := by
  unfold input3207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3206 output3001)).val
theorem output3207_def : output3207 = (.seq output3206 output3001) := by
  unfold output3207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3207_skip : Flapjack.WordAlloc.isSkip output3207 = false := by
  rw [output3207_def]
  conv => lhs; cbv
  try rfl
theorem node3207_eq : Flapjack.WordAlloc.removeDeadStructural input3207 value1087 value1 value2 = (output3207, value1161, value1) := by
  rw [input3207_def, output3207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3001_eq]
  try dsimp only
  rw [node3206_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3207 input3000)).val
theorem input3208_def : input3208 = (.seq input3207 input3000) := by
  unfold input3208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3207 output3000)).val
theorem output3208_def : output3208 = (.seq output3207 output3000) := by
  unfold output3208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3208_skip : Flapjack.WordAlloc.isSkip output3208 = false := by
  rw [output3208_def]
  conv => lhs; cbv
  try rfl
theorem node3208_eq : Flapjack.WordAlloc.removeDeadStructural input3208 value1086 value1 value2 = (output3208, value1161, value1) := by
  rw [input3208_def, output3208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3000_eq]
  try dsimp only
  rw [node3207_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3208 input2999)).val
theorem input3209_def : input3209 = (.seq input3208 input2999) := by
  unfold input3209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3208 output2999)).val
theorem output3209_def : output3209 = (.seq output3208 output2999) := by
  unfold output3209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3209_skip : Flapjack.WordAlloc.isSkip output3209 = false := by
  rw [output3209_def]
  conv => lhs; cbv
  try rfl
theorem node3209_eq : Flapjack.WordAlloc.removeDeadStructural input3209 value1085 value1 value2 = (output3209, value1161, value1) := by
  rw [input3209_def, output3209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2999_eq]
  try dsimp only
  rw [node3208_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3209 input2998)).val
theorem input3210_def : input3210 = (.seq input3209 input2998) := by
  unfold input3210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3209 output2998)).val
theorem output3210_def : output3210 = (.seq output3209 output2998) := by
  unfold output3210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3210_skip : Flapjack.WordAlloc.isSkip output3210 = false := by
  rw [output3210_def]
  conv => lhs; cbv
  try rfl
theorem node3210_eq : Flapjack.WordAlloc.removeDeadStructural input3210 value1082 value1 value2 = (output3210, value1161, value1) := by
  rw [input3210_def, output3210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2998_eq]
  try dsimp only
  rw [node3209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3210 input2993)).val
theorem input3211_def : input3211 = (.seq input3210 input2993) := by
  unfold input3211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3210 output2993)).val
theorem output3211_def : output3211 = (.seq output3210 output2993) := by
  unfold output3211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3211_skip : Flapjack.WordAlloc.isSkip output3211 = false := by
  rw [output3211_def]
  conv => lhs; cbv
  try rfl
theorem node3211_eq : Flapjack.WordAlloc.removeDeadStructural input3211 value1082 value1 value2 = (output3211, value1161, value1) := by
  rw [input3211_def, output3211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2993_eq]
  try dsimp only
  rw [node3210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3211 input2992)).val
theorem input3212_def : input3212 = (.seq input3211 input2992) := by
  unfold input3212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3211 output2992)).val
theorem output3212_def : output3212 = (.seq output3211 output2992) := by
  unfold output3212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3212_skip : Flapjack.WordAlloc.isSkip output3212 = false := by
  rw [output3212_def]
  conv => lhs; cbv
  try rfl
theorem node3212_eq : Flapjack.WordAlloc.removeDeadStructural input3212 value1079 value1 value2 = (output3212, value1161, value1) := by
  rw [input3212_def, output3212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2992_eq]
  try dsimp only
  rw [node3211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3212 input2987)).val
theorem input3213_def : input3213 = (.seq input3212 input2987) := by
  unfold input3213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3212 output2987)).val
theorem output3213_def : output3213 = (.seq output3212 output2987) := by
  unfold output3213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3213_skip : Flapjack.WordAlloc.isSkip output3213 = false := by
  rw [output3213_def]
  conv => lhs; cbv
  try rfl
theorem node3213_eq : Flapjack.WordAlloc.removeDeadStructural input3213 value1078 value1 value2 = (output3213, value1161, value1) := by
  rw [input3213_def, output3213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2987_eq]
  try dsimp only
  rw [node3212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3213 input2986)).val
theorem input3214_def : input3214 = (.seq input3213 input2986) := by
  unfold input3214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3213 output2986)).val
theorem output3214_def : output3214 = (.seq output3213 output2986) := by
  unfold output3214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3214_skip : Flapjack.WordAlloc.isSkip output3214 = false := by
  rw [output3214_def]
  conv => lhs; cbv
  try rfl
theorem node3214_eq : Flapjack.WordAlloc.removeDeadStructural input3214 value1077 value1 value2 = (output3214, value1161, value1) := by
  rw [input3214_def, output3214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2986_eq]
  try dsimp only
  rw [node3213_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3214 input2985)).val
theorem input3215_def : input3215 = (.seq input3214 input2985) := by
  unfold input3215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3214 output2985)).val
theorem output3215_def : output3215 = (.seq output3214 output2985) := by
  unfold output3215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3215_skip : Flapjack.WordAlloc.isSkip output3215 = false := by
  rw [output3215_def]
  conv => lhs; cbv
  try rfl
theorem node3215_eq : Flapjack.WordAlloc.removeDeadStructural input3215 value1074 value1 value2 = (output3215, value1161, value1) := by
  rw [input3215_def, output3215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2985_eq]
  try dsimp only
  rw [node3214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3215 input2980)).val
theorem input3216_def : input3216 = (.seq input3215 input2980) := by
  unfold input3216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3215 output2980)).val
theorem output3216_def : output3216 = (.seq output3215 output2980) := by
  unfold output3216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3216_skip : Flapjack.WordAlloc.isSkip output3216 = false := by
  rw [output3216_def]
  conv => lhs; cbv
  try rfl
theorem node3216_eq : Flapjack.WordAlloc.removeDeadStructural input3216 value1074 value1 value2 = (output3216, value1161, value1) := by
  rw [input3216_def, output3216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2980_eq]
  try dsimp only
  rw [node3215_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3216 input2979)).val
theorem input3217_def : input3217 = (.seq input3216 input2979) := by
  unfold input3217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3216 output2979)).val
theorem output3217_def : output3217 = (.seq output3216 output2979) := by
  unfold output3217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3217_skip : Flapjack.WordAlloc.isSkip output3217 = false := by
  rw [output3217_def]
  conv => lhs; cbv
  try rfl
theorem node3217_eq : Flapjack.WordAlloc.removeDeadStructural input3217 value1073 value1 value2 = (output3217, value1161, value1) := by
  rw [input3217_def, output3217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2979_eq]
  try dsimp only
  rw [node3216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3217 input2978)).val
theorem input3218_def : input3218 = (.seq input3217 input2978) := by
  unfold input3218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3217 output2978)).val
theorem output3218_def : output3218 = (.seq output3217 output2978) := by
  unfold output3218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3218_skip : Flapjack.WordAlloc.isSkip output3218 = false := by
  rw [output3218_def]
  conv => lhs; cbv
  try rfl
theorem node3218_eq : Flapjack.WordAlloc.removeDeadStructural input3218 value1070 value1 value2 = (output3218, value1161, value1) := by
  rw [input3218_def, output3218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2978_eq]
  try dsimp only
  rw [node3217_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3218 input2973)).val
theorem input3219_def : input3219 = (.seq input3218 input2973) := by
  unfold input3219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3218 output2973)).val
theorem output3219_def : output3219 = (.seq output3218 output2973) := by
  unfold output3219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3219_skip : Flapjack.WordAlloc.isSkip output3219 = false := by
  rw [output3219_def]
  conv => lhs; cbv
  try rfl
theorem node3219_eq : Flapjack.WordAlloc.removeDeadStructural input3219 value1070 value1 value2 = (output3219, value1161, value1) := by
  rw [input3219_def, output3219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2973_eq]
  try dsimp only
  rw [node3218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3219 input2972)).val
theorem input3220_def : input3220 = (.seq input3219 input2972) := by
  unfold input3220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3219 output2972)).val
theorem output3220_def : output3220 = (.seq output3219 output2972) := by
  unfold output3220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3220_skip : Flapjack.WordAlloc.isSkip output3220 = false := by
  rw [output3220_def]
  conv => lhs; cbv
  try rfl
theorem node3220_eq : Flapjack.WordAlloc.removeDeadStructural input3220 value1069 value1 value2 = (output3220, value1161, value1) := by
  rw [input3220_def, output3220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2972_eq]
  try dsimp only
  rw [node3219_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3220 input2971)).val
theorem input3221_def : input3221 = (.seq input3220 input2971) := by
  unfold input3221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3220 output2971)).val
theorem output3221_def : output3221 = (.seq output3220 output2971) := by
  unfold output3221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3221_skip : Flapjack.WordAlloc.isSkip output3221 = false := by
  rw [output3221_def]
  conv => lhs; cbv
  try rfl
theorem node3221_eq : Flapjack.WordAlloc.removeDeadStructural input3221 value1066 value1 value2 = (output3221, value1161, value1) := by
  rw [input3221_def, output3221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2971_eq]
  try dsimp only
  rw [node3220_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3221 input2966)).val
theorem input3222_def : input3222 = (.seq input3221 input2966) := by
  unfold input3222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3221 output2966)).val
theorem output3222_def : output3222 = (.seq output3221 output2966) := by
  unfold output3222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3222_skip : Flapjack.WordAlloc.isSkip output3222 = false := by
  rw [output3222_def]
  conv => lhs; cbv
  try rfl
theorem node3222_eq : Flapjack.WordAlloc.removeDeadStructural input3222 value1066 value1 value2 = (output3222, value1161, value1) := by
  rw [input3222_def, output3222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2966_eq]
  try dsimp only
  rw [node3221_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3222 input2965)).val
theorem input3223_def : input3223 = (.seq input3222 input2965) := by
  unfold input3223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3222 output2965)).val
theorem output3223_def : output3223 = (.seq output3222 output2965) := by
  unfold output3223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3223_skip : Flapjack.WordAlloc.isSkip output3223 = false := by
  rw [output3223_def]
  conv => lhs; cbv
  try rfl
theorem node3223_eq : Flapjack.WordAlloc.removeDeadStructural input3223 value1065 value1 value2 = (output3223, value1161, value1) := by
  rw [input3223_def, output3223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2965_eq]
  try dsimp only
  rw [node3222_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3223 input2964)).val
theorem input3224_def : input3224 = (.seq input3223 input2964) := by
  unfold input3224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3223 output2964)).val
theorem output3224_def : output3224 = (.seq output3223 output2964) := by
  unfold output3224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3224_skip : Flapjack.WordAlloc.isSkip output3224 = false := by
  rw [output3224_def]
  conv => lhs; cbv
  try rfl
theorem node3224_eq : Flapjack.WordAlloc.removeDeadStructural input3224 value1064 value1 value2 = (output3224, value1161, value1) := by
  rw [input3224_def, output3224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2964_eq]
  try dsimp only
  rw [node3223_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3224 input2963)).val
theorem input3225_def : input3225 = (.seq input3224 input2963) := by
  unfold input3225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3224 output2963)).val
theorem output3225_def : output3225 = (.seq output3224 output2963) := by
  unfold output3225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3225_skip : Flapjack.WordAlloc.isSkip output3225 = false := by
  rw [output3225_def]
  conv => lhs; cbv
  try rfl
theorem node3225_eq : Flapjack.WordAlloc.removeDeadStructural input3225 value1063 value1 value2 = (output3225, value1161, value1) := by
  rw [input3225_def, output3225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2963_eq]
  try dsimp only
  rw [node3224_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3225 input2962)).val
theorem input3226_def : input3226 = (.seq input3225 input2962) := by
  unfold input3226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3225 output2962)).val
theorem output3226_def : output3226 = (.seq output3225 output2962) := by
  unfold output3226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3226_skip : Flapjack.WordAlloc.isSkip output3226 = false := by
  rw [output3226_def]
  conv => lhs; cbv
  try rfl
theorem node3226_eq : Flapjack.WordAlloc.removeDeadStructural input3226 value1062 value1 value2 = (output3226, value1161, value1) := by
  rw [input3226_def, output3226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2962_eq]
  try dsimp only
  rw [node3225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3226 input2961)).val
theorem input3227_def : input3227 = (.seq input3226 input2961) := by
  unfold input3227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3226 output2961)).val
theorem output3227_def : output3227 = (.seq output3226 output2961) := by
  unfold output3227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3227_skip : Flapjack.WordAlloc.isSkip output3227 = false := by
  rw [output3227_def]
  conv => lhs; cbv
  try rfl
theorem node3227_eq : Flapjack.WordAlloc.removeDeadStructural input3227 value1059 value1 value2 = (output3227, value1161, value1) := by
  rw [input3227_def, output3227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2961_eq]
  try dsimp only
  rw [node3226_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3227 input2960)).val
theorem input3228_def : input3228 = (.seq input3227 input2960) := by
  unfold input3228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3227 output2960)).val
theorem output3228_def : output3228 = (.seq output3227 output2960) := by
  unfold output3228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3228_skip : Flapjack.WordAlloc.isSkip output3228 = false := by
  rw [output3228_def]
  conv => lhs; cbv
  try rfl
theorem node3228_eq : Flapjack.WordAlloc.removeDeadStructural input3228 value1061 value1 value2 = (output3228, value1161, value1) := by
  rw [input3228_def, output3228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2960_eq]
  try dsimp only
  rw [node3227_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3228 input2959)).val
theorem input3229_def : input3229 = (.seq input3228 input2959) := by
  unfold input3229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3228 output2959)).val
theorem output3229_def : output3229 = (.seq output3228 output2959) := by
  unfold output3229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3229_skip : Flapjack.WordAlloc.isSkip output3229 = false := by
  rw [output3229_def]
  conv => lhs; cbv
  try rfl
theorem node3229_eq : Flapjack.WordAlloc.removeDeadStructural input3229 value1037 value1 value2 = (output3229, value1161, value1) := by
  rw [input3229_def, output3229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2959_eq]
  try dsimp only
  rw [node3228_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3229 input2860)).val
theorem input3230_def : input3230 = (.seq input3229 input2860) := by
  unfold input3230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3229 output2860)).val
theorem output3230_def : output3230 = (.seq output3229 output2860) := by
  unfold output3230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3230_skip : Flapjack.WordAlloc.isSkip output3230 = false := by
  rw [output3230_def]
  conv => lhs; cbv
  try rfl
theorem node3230_eq : Flapjack.WordAlloc.removeDeadStructural input3230 value1037 value1 value2 = (output3230, value1161, value1) := by
  rw [input3230_def, output3230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2860_eq]
  try dsimp only
  rw [node3229_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3230 input2859)).val
theorem input3231_def : input3231 = (.seq input3230 input2859) := by
  unfold input3231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3230 output2859)).val
theorem output3231_def : output3231 = (.seq output3230 output2859) := by
  unfold output3231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3231_skip : Flapjack.WordAlloc.isSkip output3231 = false := by
  rw [output3231_def]
  conv => lhs; cbv
  try rfl
theorem node3231_eq : Flapjack.WordAlloc.removeDeadStructural input3231 value1035 value1 value2 = (output3231, value1161, value1) := by
  rw [input3231_def, output3231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2859_eq]
  try dsimp only
  rw [node3230_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3231 input2856)).val
theorem input3232_def : input3232 = (.seq input3231 input2856) := by
  unfold input3232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3231 output2856)).val
theorem output3232_def : output3232 = (.seq output3231 output2856) := by
  unfold output3232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3232_skip : Flapjack.WordAlloc.isSkip output3232 = false := by
  rw [output3232_def]
  conv => lhs; cbv
  try rfl
theorem node3232_eq : Flapjack.WordAlloc.removeDeadStructural input3232 value1034 value1 value2 = (output3232, value1161, value1) := by
  rw [input3232_def, output3232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2856_eq]
  try dsimp only
  rw [node3231_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3232 input2855)).val
theorem input3233_def : input3233 = (.seq input3232 input2855) := by
  unfold input3233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3232 output2855)).val
theorem output3233_def : output3233 = (.seq output3232 output2855) := by
  unfold output3233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3233_skip : Flapjack.WordAlloc.isSkip output3233 = false := by
  rw [output3233_def]
  conv => lhs; cbv
  try rfl
theorem node3233_eq : Flapjack.WordAlloc.removeDeadStructural input3233 value1033 value1 value2 = (output3233, value1161, value1) := by
  rw [input3233_def, output3233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2855_eq]
  try dsimp only
  rw [node3232_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3233 input2854)).val
theorem input3234_def : input3234 = (.seq input3233 input2854) := by
  unfold input3234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3233 output2854)).val
theorem output3234_def : output3234 = (.seq output3233 output2854) := by
  unfold output3234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3234_skip : Flapjack.WordAlloc.isSkip output3234 = false := by
  rw [output3234_def]
  conv => lhs; cbv
  try rfl
theorem node3234_eq : Flapjack.WordAlloc.removeDeadStructural input3234 value1032 value1 value2 = (output3234, value1161, value1) := by
  rw [input3234_def, output3234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2854_eq]
  try dsimp only
  rw [node3233_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3234 input2853)).val
theorem input3235_def : input3235 = (.seq input3234 input2853) := by
  unfold input3235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3234 output2853)).val
theorem output3235_def : output3235 = (.seq output3234 output2853) := by
  unfold output3235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3235_skip : Flapjack.WordAlloc.isSkip output3235 = false := by
  rw [output3235_def]
  conv => lhs; cbv
  try rfl
theorem node3235_eq : Flapjack.WordAlloc.removeDeadStructural input3235 value1031 value1 value2 = (output3235, value1161, value1) := by
  rw [input3235_def, output3235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2853_eq]
  try dsimp only
  rw [node3234_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3235 input2852)).val
theorem input3236_def : input3236 = (.seq input3235 input2852) := by
  unfold input3236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3235 output2852)).val
theorem output3236_def : output3236 = (.seq output3235 output2852) := by
  unfold output3236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3236_skip : Flapjack.WordAlloc.isSkip output3236 = false := by
  rw [output3236_def]
  conv => lhs; cbv
  try rfl
theorem node3236_eq : Flapjack.WordAlloc.removeDeadStructural input3236 value1030 value1 value2 = (output3236, value1161, value1) := by
  rw [input3236_def, output3236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2852_eq]
  try dsimp only
  rw [node3235_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3236 input2851)).val
theorem input3237_def : input3237 = (.seq input3236 input2851) := by
  unfold input3237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3236 output2851)).val
theorem output3237_def : output3237 = (.seq output3236 output2851) := by
  unfold output3237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3237_skip : Flapjack.WordAlloc.isSkip output3237 = false := by
  rw [output3237_def]
  conv => lhs; cbv
  try rfl
theorem node3237_eq : Flapjack.WordAlloc.removeDeadStructural input3237 value1027 value1 value2 = (output3237, value1161, value1) := by
  rw [input3237_def, output3237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2851_eq]
  try dsimp only
  rw [node3236_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3237 input2846)).val
theorem input3238_def : input3238 = (.seq input3237 input2846) := by
  unfold input3238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3237 output2846)).val
theorem output3238_def : output3238 = (.seq output3237 output2846) := by
  unfold output3238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3238_skip : Flapjack.WordAlloc.isSkip output3238 = false := by
  rw [output3238_def]
  conv => lhs; cbv
  try rfl
theorem node3238_eq : Flapjack.WordAlloc.removeDeadStructural input3238 value1027 value1 value2 = (output3238, value1161, value1) := by
  rw [input3238_def, output3238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2846_eq]
  try dsimp only
  rw [node3237_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3238 input2845)).val
theorem input3239_def : input3239 = (.seq input3238 input2845) := by
  unfold input3239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3238 output2845)).val
theorem output3239_def : output3239 = (.seq output3238 output2845) := by
  unfold output3239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3239_skip : Flapjack.WordAlloc.isSkip output3239 = false := by
  rw [output3239_def]
  conv => lhs; cbv
  try rfl
theorem node3239_eq : Flapjack.WordAlloc.removeDeadStructural input3239 value1026 value1 value2 = (output3239, value1161, value1) := by
  rw [input3239_def, output3239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2845_eq]
  try dsimp only
  rw [node3238_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3239 input2844)).val
theorem input3240_def : input3240 = (.seq input3239 input2844) := by
  unfold input3240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3239 output2844)).val
theorem output3240_def : output3240 = (.seq output3239 output2844) := by
  unfold output3240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3240_skip : Flapjack.WordAlloc.isSkip output3240 = false := by
  rw [output3240_def]
  conv => lhs; cbv
  try rfl
theorem node3240_eq : Flapjack.WordAlloc.removeDeadStructural input3240 value1025 value1 value2 = (output3240, value1161, value1) := by
  rw [input3240_def, output3240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2844_eq]
  try dsimp only
  rw [node3239_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3240 input2843)).val
theorem input3241_def : input3241 = (.seq input3240 input2843) := by
  unfold input3241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3240 output2843)).val
theorem output3241_def : output3241 = (.seq output3240 output2843) := by
  unfold output3241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3241_skip : Flapjack.WordAlloc.isSkip output3241 = false := by
  rw [output3241_def]
  conv => lhs; cbv
  try rfl
theorem node3241_eq : Flapjack.WordAlloc.removeDeadStructural input3241 value1024 value1 value2 = (output3241, value1161, value1) := by
  rw [input3241_def, output3241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2843_eq]
  try dsimp only
  rw [node3240_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3241 input2842)).val
theorem input3242_def : input3242 = (.seq input3241 input2842) := by
  unfold input3242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3241 output2842)).val
theorem output3242_def : output3242 = (.seq output3241 output2842) := by
  unfold output3242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3242_skip : Flapjack.WordAlloc.isSkip output3242 = false := by
  rw [output3242_def]
  conv => lhs; cbv
  try rfl
theorem node3242_eq : Flapjack.WordAlloc.removeDeadStructural input3242 value1023 value1 value2 = (output3242, value1161, value1) := by
  rw [input3242_def, output3242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2842_eq]
  try dsimp only
  rw [node3241_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3242 input2841)).val
theorem input3243_def : input3243 = (.seq input3242 input2841) := by
  unfold input3243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3242 output2841)).val
theorem output3243_def : output3243 = (.seq output3242 output2841) := by
  unfold output3243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3243_skip : Flapjack.WordAlloc.isSkip output3243 = false := by
  rw [output3243_def]
  conv => lhs; cbv
  try rfl
theorem node3243_eq : Flapjack.WordAlloc.removeDeadStructural input3243 value1020 value1 value2 = (output3243, value1161, value1) := by
  rw [input3243_def, output3243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2841_eq]
  try dsimp only
  rw [node3242_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3243 input2836)).val
theorem input3244_def : input3244 = (.seq input3243 input2836) := by
  unfold input3244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3243 output2836)).val
theorem output3244_def : output3244 = (.seq output3243 output2836) := by
  unfold output3244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3244_skip : Flapjack.WordAlloc.isSkip output3244 = false := by
  rw [output3244_def]
  conv => lhs; cbv
  try rfl
theorem node3244_eq : Flapjack.WordAlloc.removeDeadStructural input3244 value1017 value1 value2 = (output3244, value1161, value1) := by
  rw [input3244_def, output3244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2836_eq]
  try dsimp only
  rw [node3243_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3244 input2831)).val
theorem input3245_def : input3245 = (.seq input3244 input2831) := by
  unfold input3245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3244 output2831)).val
theorem output3245_def : output3245 = (.seq output3244 output2831) := by
  unfold output3245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3245_skip : Flapjack.WordAlloc.isSkip output3245 = false := by
  rw [output3245_def]
  conv => lhs; cbv
  try rfl
theorem node3245_eq : Flapjack.WordAlloc.removeDeadStructural input3245 value1016 value1 value2 = (output3245, value1161, value1) := by
  rw [input3245_def, output3245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2831_eq]
  try dsimp only
  rw [node3244_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3245 input2830)).val
theorem input3246_def : input3246 = (.seq input3245 input2830) := by
  unfold input3246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3245 output2830)).val
theorem output3246_def : output3246 = (.seq output3245 output2830) := by
  unfold output3246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3246_skip : Flapjack.WordAlloc.isSkip output3246 = false := by
  rw [output3246_def]
  conv => lhs; cbv
  try rfl
theorem node3246_eq : Flapjack.WordAlloc.removeDeadStructural input3246 value1015 value1 value2 = (output3246, value1161, value1) := by
  rw [input3246_def, output3246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2830_eq]
  try dsimp only
  rw [node3245_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3246 input2829)).val
theorem input3247_def : input3247 = (.seq input3246 input2829) := by
  unfold input3247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3246 output2829)).val
theorem output3247_def : output3247 = (.seq output3246 output2829) := by
  unfold output3247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3247_skip : Flapjack.WordAlloc.isSkip output3247 = false := by
  rw [output3247_def]
  conv => lhs; cbv
  try rfl
theorem node3247_eq : Flapjack.WordAlloc.removeDeadStructural input3247 value1012 value1 value2 = (output3247, value1161, value1) := by
  rw [input3247_def, output3247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2829_eq]
  try dsimp only
  rw [node3246_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3247 input2824)).val
theorem input3248_def : input3248 = (.seq input3247 input2824) := by
  unfold input3248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3247 output2824)).val
theorem output3248_def : output3248 = (.seq output3247 output2824) := by
  unfold output3248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3248_skip : Flapjack.WordAlloc.isSkip output3248 = false := by
  rw [output3248_def]
  conv => lhs; cbv
  try rfl
theorem node3248_eq : Flapjack.WordAlloc.removeDeadStructural input3248 value1012 value1 value2 = (output3248, value1161, value1) := by
  rw [input3248_def, output3248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2824_eq]
  try dsimp only
  rw [node3247_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3248 input2823)).val
theorem input3249_def : input3249 = (.seq input3248 input2823) := by
  unfold input3249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3248 output2823)).val
theorem output3249_def : output3249 = (.seq output3248 output2823) := by
  unfold output3249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3249_skip : Flapjack.WordAlloc.isSkip output3249 = false := by
  rw [output3249_def]
  conv => lhs; cbv
  try rfl
theorem node3249_eq : Flapjack.WordAlloc.removeDeadStructural input3249 value1009 value1 value2 = (output3249, value1161, value1) := by
  rw [input3249_def, output3249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2823_eq]
  try dsimp only
  rw [node3248_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3249 input2818)).val
theorem input3250_def : input3250 = (.seq input3249 input2818) := by
  unfold input3250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3249 output2818)).val
theorem output3250_def : output3250 = (.seq output3249 output2818) := by
  unfold output3250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3250_skip : Flapjack.WordAlloc.isSkip output3250 = false := by
  rw [output3250_def]
  conv => lhs; cbv
  try rfl
theorem node3250_eq : Flapjack.WordAlloc.removeDeadStructural input3250 value1008 value1 value2 = (output3250, value1161, value1) := by
  rw [input3250_def, output3250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2818_eq]
  try dsimp only
  rw [node3249_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3250 input2817)).val
theorem input3251_def : input3251 = (.seq input3250 input2817) := by
  unfold input3251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3250 output2817)).val
theorem output3251_def : output3251 = (.seq output3250 output2817) := by
  unfold output3251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3251_skip : Flapjack.WordAlloc.isSkip output3251 = false := by
  rw [output3251_def]
  conv => lhs; cbv
  try rfl
theorem node3251_eq : Flapjack.WordAlloc.removeDeadStructural input3251 value1005 value1 value2 = (output3251, value1161, value1) := by
  rw [input3251_def, output3251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2817_eq]
  try dsimp only
  rw [node3250_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3251 input2812)).val
theorem input3252_def : input3252 = (.seq input3251 input2812) := by
  unfold input3252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3251 output2812)).val
theorem output3252_def : output3252 = (.seq output3251 output2812) := by
  unfold output3252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3252_skip : Flapjack.WordAlloc.isSkip output3252 = false := by
  rw [output3252_def]
  conv => lhs; cbv
  try rfl
theorem node3252_eq : Flapjack.WordAlloc.removeDeadStructural input3252 value1005 value1 value2 = (output3252, value1161, value1) := by
  rw [input3252_def, output3252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2812_eq]
  try dsimp only
  rw [node3251_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3252 input2811)).val
theorem input3253_def : input3253 = (.seq input3252 input2811) := by
  unfold input3253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3252 output2811)).val
theorem output3253_def : output3253 = (.seq output3252 output2811) := by
  unfold output3253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3253_skip : Flapjack.WordAlloc.isSkip output3253 = false := by
  rw [output3253_def]
  conv => lhs; cbv
  try rfl
theorem node3253_eq : Flapjack.WordAlloc.removeDeadStructural input3253 value1003 value1 value2 = (output3253, value1161, value1) := by
  rw [input3253_def, output3253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2811_eq]
  try dsimp only
  rw [node3252_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3253 input2808)).val
theorem input3254_def : input3254 = (.seq input3253 input2808) := by
  unfold input3254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3253 output2808)).val
theorem output3254_def : output3254 = (.seq output3253 output2808) := by
  unfold output3254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3254_skip : Flapjack.WordAlloc.isSkip output3254 = false := by
  rw [output3254_def]
  conv => lhs; cbv
  try rfl
theorem node3254_eq : Flapjack.WordAlloc.removeDeadStructural input3254 value1001 value1 value2 = (output3254, value1161, value1) := by
  rw [input3254_def, output3254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2808_eq]
  try dsimp only
  rw [node3253_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3254 input2805)).val
theorem input3255_def : input3255 = (.seq input3254 input2805) := by
  unfold input3255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3254 output2805)).val
theorem output3255_def : output3255 = (.seq output3254 output2805) := by
  unfold output3255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3255_skip : Flapjack.WordAlloc.isSkip output3255 = false := by
  rw [output3255_def]
  conv => lhs; cbv
  try rfl
theorem node3255_eq : Flapjack.WordAlloc.removeDeadStructural input3255 value999 value1 value2 = (output3255, value1161, value1) := by
  rw [input3255_def, output3255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2805_eq]
  try dsimp only
  rw [node3254_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3255 input2802)).val
theorem input3256_def : input3256 = (.seq input3255 input2802) := by
  unfold input3256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3255 output2802)).val
theorem output3256_def : output3256 = (.seq output3255 output2802) := by
  unfold output3256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3256_skip : Flapjack.WordAlloc.isSkip output3256 = false := by
  rw [output3256_def]
  conv => lhs; cbv
  try rfl
theorem node3256_eq : Flapjack.WordAlloc.removeDeadStructural input3256 value997 value1 value2 = (output3256, value1161, value1) := by
  rw [input3256_def, output3256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2802_eq]
  try dsimp only
  rw [node3255_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3256 input2799)).val
theorem input3257_def : input3257 = (.seq input3256 input2799) := by
  unfold input3257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3256 output2799)).val
theorem output3257_def : output3257 = (.seq output3256 output2799) := by
  unfold output3257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3257_skip : Flapjack.WordAlloc.isSkip output3257 = false := by
  rw [output3257_def]
  conv => lhs; cbv
  try rfl
theorem node3257_eq : Flapjack.WordAlloc.removeDeadStructural input3257 value996 value1 value2 = (output3257, value1161, value1) := by
  rw [input3257_def, output3257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2799_eq]
  try dsimp only
  rw [node3256_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3257 input2798)).val
theorem input3258_def : input3258 = (.seq input3257 input2798) := by
  unfold input3258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3257 output2798)).val
theorem output3258_def : output3258 = (.seq output3257 output2798) := by
  unfold output3258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3258_skip : Flapjack.WordAlloc.isSkip output3258 = false := by
  rw [output3258_def]
  conv => lhs; cbv
  try rfl
theorem node3258_eq : Flapjack.WordAlloc.removeDeadStructural input3258 value995 value1 value2 = (output3258, value1161, value1) := by
  rw [input3258_def, output3258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2798_eq]
  try dsimp only
  rw [node3257_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3258 input2797)).val
theorem input3259_def : input3259 = (.seq input3258 input2797) := by
  unfold input3259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3258 output2797)).val
theorem output3259_def : output3259 = (.seq output3258 output2797) := by
  unfold output3259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3259_skip : Flapjack.WordAlloc.isSkip output3259 = false := by
  rw [output3259_def]
  conv => lhs; cbv
  try rfl
theorem node3259_eq : Flapjack.WordAlloc.removeDeadStructural input3259 value994 value1 value2 = (output3259, value1161, value1) := by
  rw [input3259_def, output3259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2797_eq]
  try dsimp only
  rw [node3258_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3259 input2796)).val
theorem input3260_def : input3260 = (.seq input3259 input2796) := by
  unfold input3260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3259 output2796)).val
theorem output3260_def : output3260 = (.seq output3259 output2796) := by
  unfold output3260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3260_skip : Flapjack.WordAlloc.isSkip output3260 = false := by
  rw [output3260_def]
  conv => lhs; cbv
  try rfl
theorem node3260_eq : Flapjack.WordAlloc.removeDeadStructural input3260 value993 value1 value2 = (output3260, value1161, value1) := by
  rw [input3260_def, output3260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2796_eq]
  try dsimp only
  rw [node3259_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3260 input2795)).val
theorem input3261_def : input3261 = (.seq input3260 input2795) := by
  unfold input3261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3260 output2795)).val
theorem output3261_def : output3261 = (.seq output3260 output2795) := by
  unfold output3261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3261_skip : Flapjack.WordAlloc.isSkip output3261 = false := by
  rw [output3261_def]
  conv => lhs; cbv
  try rfl
theorem node3261_eq : Flapjack.WordAlloc.removeDeadStructural input3261 value992 value1 value2 = (output3261, value1161, value1) := by
  rw [input3261_def, output3261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2795_eq]
  try dsimp only
  rw [node3260_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3261 input2794)).val
theorem input3262_def : input3262 = (.seq input3261 input2794) := by
  unfold input3262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3261 output2794)).val
theorem output3262_def : output3262 = (.seq output3261 output2794) := by
  unfold output3262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3262_skip : Flapjack.WordAlloc.isSkip output3262 = false := by
  rw [output3262_def]
  conv => lhs; cbv
  try rfl
theorem node3262_eq : Flapjack.WordAlloc.removeDeadStructural input3262 value991 value1 value2 = (output3262, value1161, value1) := by
  rw [input3262_def, output3262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2794_eq]
  try dsimp only
  rw [node3261_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3262 input2793)).val
theorem input3263_def : input3263 = (.seq input3262 input2793) := by
  unfold input3263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3262 output2793)).val
theorem output3263_def : output3263 = (.seq output3262 output2793) := by
  unfold output3263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3263_skip : Flapjack.WordAlloc.isSkip output3263 = false := by
  rw [output3263_def]
  conv => lhs; cbv
  try rfl
theorem node3263_eq : Flapjack.WordAlloc.removeDeadStructural input3263 value990 value1 value2 = (output3263, value1161, value1) := by
  rw [input3263_def, output3263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2793_eq]
  try dsimp only
  rw [node3262_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3263 input2792)).val
theorem input3264_def : input3264 = (.seq input3263 input2792) := by
  unfold input3264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3263 output2792)).val
theorem output3264_def : output3264 = (.seq output3263 output2792) := by
  unfold output3264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3264_skip : Flapjack.WordAlloc.isSkip output3264 = false := by
  rw [output3264_def]
  conv => lhs; cbv
  try rfl
theorem node3264_eq : Flapjack.WordAlloc.removeDeadStructural input3264 value989 value1 value2 = (output3264, value1161, value1) := by
  rw [input3264_def, output3264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2792_eq]
  try dsimp only
  rw [node3263_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3264 input2791)).val
theorem input3265_def : input3265 = (.seq input3264 input2791) := by
  unfold input3265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3264 output2791)).val
theorem output3265_def : output3265 = (.seq output3264 output2791) := by
  unfold output3265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3265_skip : Flapjack.WordAlloc.isSkip output3265 = false := by
  rw [output3265_def]
  conv => lhs; cbv
  try rfl
theorem node3265_eq : Flapjack.WordAlloc.removeDeadStructural input3265 value986 value1 value2 = (output3265, value1161, value1) := by
  rw [input3265_def, output3265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2791_eq]
  try dsimp only
  rw [node3264_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3265 input2786)).val
theorem input3266_def : input3266 = (.seq input3265 input2786) := by
  unfold input3266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3265 output2786)).val
theorem output3266_def : output3266 = (.seq output3265 output2786) := by
  unfold output3266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3266_skip : Flapjack.WordAlloc.isSkip output3266 = false := by
  rw [output3266_def]
  conv => lhs; cbv
  try rfl
theorem node3266_eq : Flapjack.WordAlloc.removeDeadStructural input3266 value986 value1 value2 = (output3266, value1161, value1) := by
  rw [input3266_def, output3266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2786_eq]
  try dsimp only
  rw [node3265_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3266 input2785)).val
theorem input3267_def : input3267 = (.seq input3266 input2785) := by
  unfold input3267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3266 output2785)).val
theorem output3267_def : output3267 = (.seq output3266 output2785) := by
  unfold output3267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3267_skip : Flapjack.WordAlloc.isSkip output3267 = false := by
  rw [output3267_def]
  conv => lhs; cbv
  try rfl
theorem node3267_eq : Flapjack.WordAlloc.removeDeadStructural input3267 value985 value1 value2 = (output3267, value1161, value1) := by
  rw [input3267_def, output3267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2785_eq]
  try dsimp only
  rw [node3266_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3267 input2784)).val
theorem input3268_def : input3268 = (.seq input3267 input2784) := by
  unfold input3268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3267 output2784)).val
theorem output3268_def : output3268 = (.seq output3267 output2784) := by
  unfold output3268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3268_skip : Flapjack.WordAlloc.isSkip output3268 = false := by
  rw [output3268_def]
  conv => lhs; cbv
  try rfl
theorem node3268_eq : Flapjack.WordAlloc.removeDeadStructural input3268 value984 value1 value2 = (output3268, value1161, value1) := by
  rw [input3268_def, output3268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2784_eq]
  try dsimp only
  rw [node3267_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3268 input2783)).val
theorem input3269_def : input3269 = (.seq input3268 input2783) := by
  unfold input3269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3268 output2783)).val
theorem output3269_def : output3269 = (.seq output3268 output2783) := by
  unfold output3269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3269_skip : Flapjack.WordAlloc.isSkip output3269 = false := by
  rw [output3269_def]
  conv => lhs; cbv
  try rfl
theorem node3269_eq : Flapjack.WordAlloc.removeDeadStructural input3269 value983 value1 value2 = (output3269, value1161, value1) := by
  rw [input3269_def, output3269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2783_eq]
  try dsimp only
  rw [node3268_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3269 input2782)).val
theorem input3270_def : input3270 = (.seq input3269 input2782) := by
  unfold input3270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3269 output2782)).val
theorem output3270_def : output3270 = (.seq output3269 output2782) := by
  unfold output3270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3270_skip : Flapjack.WordAlloc.isSkip output3270 = false := by
  rw [output3270_def]
  conv => lhs; cbv
  try rfl
theorem node3270_eq : Flapjack.WordAlloc.removeDeadStructural input3270 value982 value1 value2 = (output3270, value1161, value1) := by
  rw [input3270_def, output3270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2782_eq]
  try dsimp only
  rw [node3269_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3270 input2781)).val
theorem input3271_def : input3271 = (.seq input3270 input2781) := by
  unfold input3271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3270 output2781)).val
theorem output3271_def : output3271 = (.seq output3270 output2781) := by
  unfold output3271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3271_skip : Flapjack.WordAlloc.isSkip output3271 = false := by
  rw [output3271_def]
  conv => lhs; cbv
  try rfl
theorem node3271_eq : Flapjack.WordAlloc.removeDeadStructural input3271 value981 value1 value2 = (output3271, value1161, value1) := by
  rw [input3271_def, output3271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2781_eq]
  try dsimp only
  rw [node3270_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3271 input2780)).val
theorem input3272_def : input3272 = (.seq input3271 input2780) := by
  unfold input3272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3271 output2780)).val
theorem output3272_def : output3272 = (.seq output3271 output2780) := by
  unfold output3272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3272_skip : Flapjack.WordAlloc.isSkip output3272 = false := by
  rw [output3272_def]
  conv => lhs; cbv
  try rfl
theorem node3272_eq : Flapjack.WordAlloc.removeDeadStructural input3272 value980 value1 value2 = (output3272, value1161, value1) := by
  rw [input3272_def, output3272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2780_eq]
  try dsimp only
  rw [node3271_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3272 input2779)).val
theorem input3273_def : input3273 = (.seq input3272 input2779) := by
  unfold input3273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3272 output2779)).val
theorem output3273_def : output3273 = (.seq output3272 output2779) := by
  unfold output3273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3273_skip : Flapjack.WordAlloc.isSkip output3273 = false := by
  rw [output3273_def]
  conv => lhs; cbv
  try rfl
theorem node3273_eq : Flapjack.WordAlloc.removeDeadStructural input3273 value979 value1 value2 = (output3273, value1161, value1) := by
  rw [input3273_def, output3273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2779_eq]
  try dsimp only
  rw [node3272_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3273 input2778)).val
theorem input3274_def : input3274 = (.seq input3273 input2778) := by
  unfold input3274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3273 output2778)).val
theorem output3274_def : output3274 = (.seq output3273 output2778) := by
  unfold output3274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3274_skip : Flapjack.WordAlloc.isSkip output3274 = false := by
  rw [output3274_def]
  conv => lhs; cbv
  try rfl
theorem node3274_eq : Flapjack.WordAlloc.removeDeadStructural input3274 value978 value1 value2 = (output3274, value1161, value1) := by
  rw [input3274_def, output3274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2778_eq]
  try dsimp only
  rw [node3273_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3274 input2777)).val
theorem input3275_def : input3275 = (.seq input3274 input2777) := by
  unfold input3275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3274 output2777)).val
theorem output3275_def : output3275 = (.seq output3274 output2777) := by
  unfold output3275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3275_skip : Flapjack.WordAlloc.isSkip output3275 = false := by
  rw [output3275_def]
  conv => lhs; cbv
  try rfl
theorem node3275_eq : Flapjack.WordAlloc.removeDeadStructural input3275 value975 value1 value2 = (output3275, value1161, value1) := by
  rw [input3275_def, output3275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2777_eq]
  try dsimp only
  rw [node3274_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3275 input2772)).val
theorem input3276_def : input3276 = (.seq input3275 input2772) := by
  unfold input3276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3275 output2772)).val
theorem output3276_def : output3276 = (.seq output3275 output2772) := by
  unfold output3276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3276_skip : Flapjack.WordAlloc.isSkip output3276 = false := by
  rw [output3276_def]
  conv => lhs; cbv
  try rfl
theorem node3276_eq : Flapjack.WordAlloc.removeDeadStructural input3276 value975 value1 value2 = (output3276, value1161, value1) := by
  rw [input3276_def, output3276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2772_eq]
  try dsimp only
  rw [node3275_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3276 input2771)).val
theorem input3277_def : input3277 = (.seq input3276 input2771) := by
  unfold input3277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3276 output2771)).val
theorem output3277_def : output3277 = (.seq output3276 output2771) := by
  unfold output3277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3277_skip : Flapjack.WordAlloc.isSkip output3277 = false := by
  rw [output3277_def]
  conv => lhs; cbv
  try rfl
theorem node3277_eq : Flapjack.WordAlloc.removeDeadStructural input3277 value974 value1 value2 = (output3277, value1161, value1) := by
  rw [input3277_def, output3277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2771_eq]
  try dsimp only
  rw [node3276_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3277 input2770)).val
theorem input3278_def : input3278 = (.seq input3277 input2770) := by
  unfold input3278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3277 output2770)).val
theorem output3278_def : output3278 = (.seq output3277 output2770) := by
  unfold output3278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3278_skip : Flapjack.WordAlloc.isSkip output3278 = false := by
  rw [output3278_def]
  conv => lhs; cbv
  try rfl
theorem node3278_eq : Flapjack.WordAlloc.removeDeadStructural input3278 value973 value1 value2 = (output3278, value1161, value1) := by
  rw [input3278_def, output3278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2770_eq]
  try dsimp only
  rw [node3277_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3278 input2769)).val
theorem input3279_def : input3279 = (.seq input3278 input2769) := by
  unfold input3279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3278 output2769)).val
theorem output3279_def : output3279 = (.seq output3278 output2769) := by
  unfold output3279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3279_skip : Flapjack.WordAlloc.isSkip output3279 = false := by
  rw [output3279_def]
  conv => lhs; cbv
  try rfl
theorem node3279_eq : Flapjack.WordAlloc.removeDeadStructural input3279 value972 value1 value2 = (output3279, value1161, value1) := by
  rw [input3279_def, output3279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2769_eq]
  try dsimp only
  rw [node3278_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3279 input2768)).val
theorem input3280_def : input3280 = (.seq input3279 input2768) := by
  unfold input3280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3279 output2768)).val
theorem output3280_def : output3280 = (.seq output3279 output2768) := by
  unfold output3280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3280_skip : Flapjack.WordAlloc.isSkip output3280 = false := by
  rw [output3280_def]
  conv => lhs; cbv
  try rfl
theorem node3280_eq : Flapjack.WordAlloc.removeDeadStructural input3280 value971 value1 value2 = (output3280, value1161, value1) := by
  rw [input3280_def, output3280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2768_eq]
  try dsimp only
  rw [node3279_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3280 input2767)).val
theorem input3281_def : input3281 = (.seq input3280 input2767) := by
  unfold input3281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3280 output2767)).val
theorem output3281_def : output3281 = (.seq output3280 output2767) := by
  unfold output3281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3281_skip : Flapjack.WordAlloc.isSkip output3281 = false := by
  rw [output3281_def]
  conv => lhs; cbv
  try rfl
theorem node3281_eq : Flapjack.WordAlloc.removeDeadStructural input3281 value970 value1 value2 = (output3281, value1161, value1) := by
  rw [input3281_def, output3281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2767_eq]
  try dsimp only
  rw [node3280_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3281 input2766)).val
theorem input3282_def : input3282 = (.seq input3281 input2766) := by
  unfold input3282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3281 output2766)).val
theorem output3282_def : output3282 = (.seq output3281 output2766) := by
  unfold output3282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3282_skip : Flapjack.WordAlloc.isSkip output3282 = false := by
  rw [output3282_def]
  conv => lhs; cbv
  try rfl
theorem node3282_eq : Flapjack.WordAlloc.removeDeadStructural input3282 value967 value1 value2 = (output3282, value1161, value1) := by
  rw [input3282_def, output3282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2766_eq]
  try dsimp only
  rw [node3281_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3282 input2761)).val
theorem input3283_def : input3283 = (.seq input3282 input2761) := by
  unfold input3283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3282 output2761)).val
theorem output3283_def : output3283 = (.seq output3282 output2761) := by
  unfold output3283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3283_skip : Flapjack.WordAlloc.isSkip output3283 = false := by
  rw [output3283_def]
  conv => lhs; cbv
  try rfl
theorem node3283_eq : Flapjack.WordAlloc.removeDeadStructural input3283 value967 value1 value2 = (output3283, value1161, value1) := by
  rw [input3283_def, output3283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2761_eq]
  try dsimp only
  rw [node3282_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3283 input2760)).val
theorem input3284_def : input3284 = (.seq input3283 input2760) := by
  unfold input3284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3283 output2760)).val
theorem output3284_def : output3284 = (.seq output3283 output2760) := by
  unfold output3284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3284_skip : Flapjack.WordAlloc.isSkip output3284 = false := by
  rw [output3284_def]
  conv => lhs; cbv
  try rfl
theorem node3284_eq : Flapjack.WordAlloc.removeDeadStructural input3284 value965 value1 value2 = (output3284, value1161, value1) := by
  rw [input3284_def, output3284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2760_eq]
  try dsimp only
  rw [node3283_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3284 input2755)).val
theorem input3285_def : input3285 = (.seq input3284 input2755) := by
  unfold input3285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3284 output2755)).val
theorem output3285_def : output3285 = (.seq output3284 output2755) := by
  unfold output3285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3285_skip : Flapjack.WordAlloc.isSkip output3285 = false := by
  rw [output3285_def]
  conv => lhs; cbv
  try rfl
theorem node3285_eq : Flapjack.WordAlloc.removeDeadStructural input3285 value965 value1 value2 = (output3285, value1161, value1) := by
  rw [input3285_def, output3285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2755_eq]
  try dsimp only
  rw [node3284_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3285 input2754)).val
theorem input3286_def : input3286 = (.seq input3285 input2754) := by
  unfold input3286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3285 output2754)).val
theorem output3286_def : output3286 = (.seq output3285 output2754) := by
  unfold output3286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3286_skip : Flapjack.WordAlloc.isSkip output3286 = false := by
  rw [output3286_def]
  conv => lhs; cbv
  try rfl
theorem node3286_eq : Flapjack.WordAlloc.removeDeadStructural input3286 value964 value1 value2 = (output3286, value1161, value1) := by
  rw [input3286_def, output3286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2754_eq]
  try dsimp only
  rw [node3285_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3286 input2753)).val
theorem input3287_def : input3287 = (.seq input3286 input2753) := by
  unfold input3287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3286 output2753)).val
theorem output3287_def : output3287 = (.seq output3286 output2753) := by
  unfold output3287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3287_skip : Flapjack.WordAlloc.isSkip output3287 = false := by
  rw [output3287_def]
  conv => lhs; cbv
  try rfl
theorem node3287_eq : Flapjack.WordAlloc.removeDeadStructural input3287 value961 value1 value2 = (output3287, value1161, value1) := by
  rw [input3287_def, output3287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2753_eq]
  try dsimp only
  rw [node3286_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3287 input2752)).val
theorem input3288_def : input3288 = (.seq input3287 input2752) := by
  unfold input3288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3287 output2752)).val
theorem output3288_def : output3288 = (.seq output3287 output2752) := by
  unfold output3288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3288_skip : Flapjack.WordAlloc.isSkip output3288 = false := by
  rw [output3288_def]
  conv => lhs; cbv
  try rfl
theorem node3288_eq : Flapjack.WordAlloc.removeDeadStructural input3288 value963 value1 value2 = (output3288, value1161, value1) := by
  rw [input3288_def, output3288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2752_eq]
  try dsimp only
  rw [node3287_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3288 input2751)).val
theorem input3289_def : input3289 = (.seq input3288 input2751) := by
  unfold input3289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3288 output2751)).val
theorem output3289_def : output3289 = (.seq output3288 output2751) := by
  unfold output3289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3289_skip : Flapjack.WordAlloc.isSkip output3289 = false := by
  rw [output3289_def]
  conv => lhs; cbv
  try rfl
theorem node3289_eq : Flapjack.WordAlloc.removeDeadStructural input3289 value961 value1 value2 = (output3289, value1161, value1) := by
  rw [input3289_def, output3289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2751_eq]
  try dsimp only
  rw [node3288_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3289 input2748)).val
theorem input3290_def : input3290 = (.seq input3289 input2748) := by
  unfold input3290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3289 output2748)).val
theorem output3290_def : output3290 = (.seq output3289 output2748) := by
  unfold output3290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3290_skip : Flapjack.WordAlloc.isSkip output3290 = false := by
  rw [output3290_def]
  conv => lhs; cbv
  try rfl
theorem node3290_eq : Flapjack.WordAlloc.removeDeadStructural input3290 value959 value1 value2 = (output3290, value1161, value1) := by
  rw [input3290_def, output3290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2748_eq]
  try dsimp only
  rw [node3289_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3290 input2745)).val
theorem input3291_def : input3291 = (.seq input3290 input2745) := by
  unfold input3291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3290 output2745)).val
theorem output3291_def : output3291 = (.seq output3290 output2745) := by
  unfold output3291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3291_skip : Flapjack.WordAlloc.isSkip output3291 = false := by
  rw [output3291_def]
  conv => lhs; cbv
  try rfl
theorem node3291_eq : Flapjack.WordAlloc.removeDeadStructural input3291 value957 value1 value2 = (output3291, value1161, value1) := by
  rw [input3291_def, output3291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2745_eq]
  try dsimp only
  rw [node3290_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3291 input2742)).val
theorem input3292_def : input3292 = (.seq input3291 input2742) := by
  unfold input3292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3291 output2742)).val
theorem output3292_def : output3292 = (.seq output3291 output2742) := by
  unfold output3292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3292_skip : Flapjack.WordAlloc.isSkip output3292 = false := by
  rw [output3292_def]
  conv => lhs; cbv
  try rfl
theorem node3292_eq : Flapjack.WordAlloc.removeDeadStructural input3292 value956 value1 value2 = (output3292, value1161, value1) := by
  rw [input3292_def, output3292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2742_eq]
  try dsimp only
  rw [node3291_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3292 input2741)).val
theorem input3293_def : input3293 = (.seq input3292 input2741) := by
  unfold input3293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3292 output2741)).val
theorem output3293_def : output3293 = (.seq output3292 output2741) := by
  unfold output3293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3293_skip : Flapjack.WordAlloc.isSkip output3293 = false := by
  rw [output3293_def]
  conv => lhs; cbv
  try rfl
theorem node3293_eq : Flapjack.WordAlloc.removeDeadStructural input3293 value954 value1 value2 = (output3293, value1161, value1) := by
  rw [input3293_def, output3293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2741_eq]
  try dsimp only
  rw [node3292_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3293 input2738)).val
theorem input3294_def : input3294 = (.seq input3293 input2738) := by
  unfold input3294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3293 output2738)).val
theorem output3294_def : output3294 = (.seq output3293 output2738) := by
  unfold output3294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3294_skip : Flapjack.WordAlloc.isSkip output3294 = false := by
  rw [output3294_def]
  conv => lhs; cbv
  try rfl
theorem node3294_eq : Flapjack.WordAlloc.removeDeadStructural input3294 value952 value1 value2 = (output3294, value1161, value1) := by
  rw [input3294_def, output3294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2738_eq]
  try dsimp only
  rw [node3293_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3294 input2735)).val
theorem input3295_def : input3295 = (.seq input3294 input2735) := by
  unfold input3295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3294 output2735)).val
theorem output3295_def : output3295 = (.seq output3294 output2735) := by
  unfold output3295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3295_skip : Flapjack.WordAlloc.isSkip output3295 = false := by
  rw [output3295_def]
  conv => lhs; cbv
  try rfl
theorem node3295_eq : Flapjack.WordAlloc.removeDeadStructural input3295 value950 value1 value2 = (output3295, value1161, value1) := by
  rw [input3295_def, output3295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2735_eq]
  try dsimp only
  rw [node3294_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3295 input2732)).val
theorem input3296_def : input3296 = (.seq input3295 input2732) := by
  unfold input3296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3295 output2732)).val
theorem output3296_def : output3296 = (.seq output3295 output2732) := by
  unfold output3296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3296_skip : Flapjack.WordAlloc.isSkip output3296 = false := by
  rw [output3296_def]
  conv => lhs; cbv
  try rfl
theorem node3296_eq : Flapjack.WordAlloc.removeDeadStructural input3296 value948 value1 value2 = (output3296, value1161, value1) := by
  rw [input3296_def, output3296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2732_eq]
  try dsimp only
  rw [node3295_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3296 input2729)).val
theorem input3297_def : input3297 = (.seq input3296 input2729) := by
  unfold input3297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3296 output2729)).val
theorem output3297_def : output3297 = (.seq output3296 output2729) := by
  unfold output3297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3297_skip : Flapjack.WordAlloc.isSkip output3297 = false := by
  rw [output3297_def]
  conv => lhs; cbv
  try rfl
theorem node3297_eq : Flapjack.WordAlloc.removeDeadStructural input3297 value946 value1 value2 = (output3297, value1161, value1) := by
  rw [input3297_def, output3297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2729_eq]
  try dsimp only
  rw [node3296_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3297 input2726)).val
theorem input3298_def : input3298 = (.seq input3297 input2726) := by
  unfold input3298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3297 output2726)).val
theorem output3298_def : output3298 = (.seq output3297 output2726) := by
  unfold output3298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3298_skip : Flapjack.WordAlloc.isSkip output3298 = false := by
  rw [output3298_def]
  conv => lhs; cbv
  try rfl
theorem node3298_eq : Flapjack.WordAlloc.removeDeadStructural input3298 value944 value1 value2 = (output3298, value1161, value1) := by
  rw [input3298_def, output3298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2726_eq]
  try dsimp only
  rw [node3297_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3298 input2723)).val
theorem input3299_def : input3299 = (.seq input3298 input2723) := by
  unfold input3299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3298 output2723)).val
theorem output3299_def : output3299 = (.seq output3298 output2723) := by
  unfold output3299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3299_skip : Flapjack.WordAlloc.isSkip output3299 = false := by
  rw [output3299_def]
  conv => lhs; cbv
  try rfl
theorem node3299_eq : Flapjack.WordAlloc.removeDeadStructural input3299 value943 value1 value2 = (output3299, value1161, value1) := by
  rw [input3299_def, output3299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2723_eq]
  try dsimp only
  rw [node3298_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3299 input2722)).val
theorem input3300_def : input3300 = (.seq input3299 input2722) := by
  unfold input3300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3299 output2722)).val
theorem output3300_def : output3300 = (.seq output3299 output2722) := by
  unfold output3300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3300_skip : Flapjack.WordAlloc.isSkip output3300 = false := by
  rw [output3300_def]
  conv => lhs; cbv
  try rfl
theorem node3300_eq : Flapjack.WordAlloc.removeDeadStructural input3300 value941 value1 value2 = (output3300, value1161, value1) := by
  rw [input3300_def, output3300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2722_eq]
  try dsimp only
  rw [node3299_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3300 input2719)).val
theorem input3301_def : input3301 = (.seq input3300 input2719) := by
  unfold input3301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3300 output2719)).val
theorem output3301_def : output3301 = (.seq output3300 output2719) := by
  unfold output3301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3301_skip : Flapjack.WordAlloc.isSkip output3301 = false := by
  rw [output3301_def]
  conv => lhs; cbv
  try rfl
theorem node3301_eq : Flapjack.WordAlloc.removeDeadStructural input3301 value940 value1 value2 = (output3301, value1161, value1) := by
  rw [input3301_def, output3301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2719_eq]
  try dsimp only
  rw [node3300_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3301 input2718)).val
theorem input3302_def : input3302 = (.seq input3301 input2718) := by
  unfold input3302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3301 output2718)).val
theorem output3302_def : output3302 = (.seq output3301 output2718) := by
  unfold output3302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3302_skip : Flapjack.WordAlloc.isSkip output3302 = false := by
  rw [output3302_def]
  conv => lhs; cbv
  try rfl
theorem node3302_eq : Flapjack.WordAlloc.removeDeadStructural input3302 value938 value1 value2 = (output3302, value1161, value1) := by
  rw [input3302_def, output3302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2718_eq]
  try dsimp only
  rw [node3301_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3302 input2715)).val
theorem input3303_def : input3303 = (.seq input3302 input2715) := by
  unfold input3303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3302 output2715)).val
theorem output3303_def : output3303 = (.seq output3302 output2715) := by
  unfold output3303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3303_skip : Flapjack.WordAlloc.isSkip output3303 = false := by
  rw [output3303_def]
  conv => lhs; cbv
  try rfl
theorem node3303_eq : Flapjack.WordAlloc.removeDeadStructural input3303 value937 value1 value2 = (output3303, value1161, value1) := by
  rw [input3303_def, output3303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2715_eq]
  try dsimp only
  rw [node3302_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3303 input2714)).val
theorem input3304_def : input3304 = (.seq input3303 input2714) := by
  unfold input3304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3303 output2714)).val
theorem output3304_def : output3304 = (.seq output3303 output2714) := by
  unfold output3304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3304_skip : Flapjack.WordAlloc.isSkip output3304 = false := by
  rw [output3304_def]
  conv => lhs; cbv
  try rfl
theorem node3304_eq : Flapjack.WordAlloc.removeDeadStructural input3304 value935 value1 value2 = (output3304, value1161, value1) := by
  rw [input3304_def, output3304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2714_eq]
  try dsimp only
  rw [node3303_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3304 input2711)).val
theorem input3305_def : input3305 = (.seq input3304 input2711) := by
  unfold input3305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3304 output2711)).val
theorem output3305_def : output3305 = (.seq output3304 output2711) := by
  unfold output3305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3305_skip : Flapjack.WordAlloc.isSkip output3305 = false := by
  rw [output3305_def]
  conv => lhs; cbv
  try rfl
theorem node3305_eq : Flapjack.WordAlloc.removeDeadStructural input3305 value934 value1 value2 = (output3305, value1161, value1) := by
  rw [input3305_def, output3305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2711_eq]
  try dsimp only
  rw [node3304_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3305 input2710)).val
theorem input3306_def : input3306 = (.seq input3305 input2710) := by
  unfold input3306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3305 output2710)).val
theorem output3306_def : output3306 = (.seq output3305 output2710) := by
  unfold output3306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3306_skip : Flapjack.WordAlloc.isSkip output3306 = false := by
  rw [output3306_def]
  conv => lhs; cbv
  try rfl
theorem node3306_eq : Flapjack.WordAlloc.removeDeadStructural input3306 value932 value1 value2 = (output3306, value1161, value1) := by
  rw [input3306_def, output3306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2710_eq]
  try dsimp only
  rw [node3305_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3306 input2707)).val
theorem input3307_def : input3307 = (.seq input3306 input2707) := by
  unfold input3307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3306 output2707)).val
theorem output3307_def : output3307 = (.seq output3306 output2707) := by
  unfold output3307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3307_skip : Flapjack.WordAlloc.isSkip output3307 = false := by
  rw [output3307_def]
  conv => lhs; cbv
  try rfl
theorem node3307_eq : Flapjack.WordAlloc.removeDeadStructural input3307 value930 value1 value2 = (output3307, value1161, value1) := by
  rw [input3307_def, output3307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2707_eq]
  try dsimp only
  rw [node3306_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3307 input2704)).val
theorem input3308_def : input3308 = (.seq input3307 input2704) := by
  unfold input3308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3307 output2704)).val
theorem output3308_def : output3308 = (.seq output3307 output2704) := by
  unfold output3308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3308_skip : Flapjack.WordAlloc.isSkip output3308 = false := by
  rw [output3308_def]
  conv => lhs; cbv
  try rfl
theorem node3308_eq : Flapjack.WordAlloc.removeDeadStructural input3308 value929 value1 value2 = (output3308, value1161, value1) := by
  rw [input3308_def, output3308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2704_eq]
  try dsimp only
  rw [node3307_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3308 input2703)).val
theorem input3309_def : input3309 = (.seq input3308 input2703) := by
  unfold input3309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3308 output2703)).val
theorem output3309_def : output3309 = (.seq output3308 output2703) := by
  unfold output3309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3309_skip : Flapjack.WordAlloc.isSkip output3309 = false := by
  rw [output3309_def]
  conv => lhs; cbv
  try rfl
theorem node3309_eq : Flapjack.WordAlloc.removeDeadStructural input3309 value928 value1 value2 = (output3309, value1161, value1) := by
  rw [input3309_def, output3309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2703_eq]
  try dsimp only
  rw [node3308_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3309 input2702)).val
theorem input3310_def : input3310 = (.seq input3309 input2702) := by
  unfold input3310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3309 output2702)).val
theorem output3310_def : output3310 = (.seq output3309 output2702) := by
  unfold output3310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3310_skip : Flapjack.WordAlloc.isSkip output3310 = false := by
  rw [output3310_def]
  conv => lhs; cbv
  try rfl
theorem node3310_eq : Flapjack.WordAlloc.removeDeadStructural input3310 value927 value1 value2 = (output3310, value1161, value1) := by
  rw [input3310_def, output3310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2702_eq]
  try dsimp only
  rw [node3309_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3310 input2701)).val
theorem input3311_def : input3311 = (.seq input3310 input2701) := by
  unfold input3311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3310 output2701)).val
theorem output3311_def : output3311 = (.seq output3310 output2701) := by
  unfold output3311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3311_skip : Flapjack.WordAlloc.isSkip output3311 = false := by
  rw [output3311_def]
  conv => lhs; cbv
  try rfl
theorem node3311_eq : Flapjack.WordAlloc.removeDeadStructural input3311 value926 value1 value2 = (output3311, value1161, value1) := by
  rw [input3311_def, output3311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2701_eq]
  try dsimp only
  rw [node3310_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3311 input2700)).val
theorem input3312_def : input3312 = (.seq input3311 input2700) := by
  unfold input3312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3311 output2700)).val
theorem output3312_def : output3312 = (.seq output3311 output2700) := by
  unfold output3312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3312_skip : Flapjack.WordAlloc.isSkip output3312 = false := by
  rw [output3312_def]
  conv => lhs; cbv
  try rfl
theorem node3312_eq : Flapjack.WordAlloc.removeDeadStructural input3312 value925 value1 value2 = (output3312, value1161, value1) := by
  rw [input3312_def, output3312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2700_eq]
  try dsimp only
  rw [node3311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3312 input2699)).val
theorem input3313_def : input3313 = (.seq input3312 input2699) := by
  unfold input3313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3312 output2699)).val
theorem output3313_def : output3313 = (.seq output3312 output2699) := by
  unfold output3313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3313_skip : Flapjack.WordAlloc.isSkip output3313 = false := by
  rw [output3313_def]
  conv => lhs; cbv
  try rfl
theorem node3313_eq : Flapjack.WordAlloc.removeDeadStructural input3313 value923 value1 value2 = (output3313, value1161, value1) := by
  rw [input3313_def, output3313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2699_eq]
  try dsimp only
  rw [node3312_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3313 input2696)).val
theorem input3314_def : input3314 = (.seq input3313 input2696) := by
  unfold input3314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3313 output2696)).val
theorem output3314_def : output3314 = (.seq output3313 output2696) := by
  unfold output3314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3314_skip : Flapjack.WordAlloc.isSkip output3314 = false := by
  rw [output3314_def]
  conv => lhs; cbv
  try rfl
theorem node3314_eq : Flapjack.WordAlloc.removeDeadStructural input3314 value922 value1 value2 = (output3314, value1161, value1) := by
  rw [input3314_def, output3314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2696_eq]
  try dsimp only
  rw [node3313_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3314 input2695)).val
theorem input3315_def : input3315 = (.seq input3314 input2695) := by
  unfold input3315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3314 output2695)).val
theorem output3315_def : output3315 = (.seq output3314 output2695) := by
  unfold output3315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3315_skip : Flapjack.WordAlloc.isSkip output3315 = false := by
  rw [output3315_def]
  conv => lhs; cbv
  try rfl
theorem node3315_eq : Flapjack.WordAlloc.removeDeadStructural input3315 value920 value1 value2 = (output3315, value1161, value1) := by
  rw [input3315_def, output3315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2695_eq]
  try dsimp only
  rw [node3314_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3315 input2692)).val
theorem input3316_def : input3316 = (.seq input3315 input2692) := by
  unfold input3316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3315 output2692)).val
theorem output3316_def : output3316 = (.seq output3315 output2692) := by
  unfold output3316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3316_skip : Flapjack.WordAlloc.isSkip output3316 = false := by
  rw [output3316_def]
  conv => lhs; cbv
  try rfl
theorem node3316_eq : Flapjack.WordAlloc.removeDeadStructural input3316 value919 value1 value2 = (output3316, value1161, value1) := by
  rw [input3316_def, output3316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2692_eq]
  try dsimp only
  rw [node3315_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3316 input2691)).val
theorem input3317_def : input3317 = (.seq input3316 input2691) := by
  unfold input3317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3316 output2691)).val
theorem output3317_def : output3317 = (.seq output3316 output2691) := by
  unfold output3317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3317_skip : Flapjack.WordAlloc.isSkip output3317 = false := by
  rw [output3317_def]
  conv => lhs; cbv
  try rfl
theorem node3317_eq : Flapjack.WordAlloc.removeDeadStructural input3317 value917 value1 value2 = (output3317, value1161, value1) := by
  rw [input3317_def, output3317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2691_eq]
  try dsimp only
  rw [node3316_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3317 input2688)).val
theorem input3318_def : input3318 = (.seq input3317 input2688) := by
  unfold input3318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3317 output2688)).val
theorem output3318_def : output3318 = (.seq output3317 output2688) := by
  unfold output3318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3318_skip : Flapjack.WordAlloc.isSkip output3318 = false := by
  rw [output3318_def]
  conv => lhs; cbv
  try rfl
theorem node3318_eq : Flapjack.WordAlloc.removeDeadStructural input3318 value916 value1 value2 = (output3318, value1161, value1) := by
  rw [input3318_def, output3318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2688_eq]
  try dsimp only
  rw [node3317_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3318 input2687)).val
theorem input3319_def : input3319 = (.seq input3318 input2687) := by
  unfold input3319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3318 output2687)).val
theorem output3319_def : output3319 = (.seq output3318 output2687) := by
  unfold output3319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3319_skip : Flapjack.WordAlloc.isSkip output3319 = false := by
  rw [output3319_def]
  conv => lhs; cbv
  try rfl
theorem node3319_eq : Flapjack.WordAlloc.removeDeadStructural input3319 value914 value1 value2 = (output3319, value1161, value1) := by
  rw [input3319_def, output3319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2687_eq]
  try dsimp only
  rw [node3318_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3319 input2684)).val
theorem input3320_def : input3320 = (.seq input3319 input2684) := by
  unfold input3320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3319 output2684)).val
theorem output3320_def : output3320 = (.seq output3319 output2684) := by
  unfold output3320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3320_skip : Flapjack.WordAlloc.isSkip output3320 = false := by
  rw [output3320_def]
  conv => lhs; cbv
  try rfl
theorem node3320_eq : Flapjack.WordAlloc.removeDeadStructural input3320 value912 value1 value2 = (output3320, value1161, value1) := by
  rw [input3320_def, output3320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2684_eq]
  try dsimp only
  rw [node3319_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3320 input2681)).val
theorem input3321_def : input3321 = (.seq input3320 input2681) := by
  unfold input3321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3320 output2681)).val
theorem output3321_def : output3321 = (.seq output3320 output2681) := by
  unfold output3321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3321_skip : Flapjack.WordAlloc.isSkip output3321 = false := by
  rw [output3321_def]
  conv => lhs; cbv
  try rfl
theorem node3321_eq : Flapjack.WordAlloc.removeDeadStructural input3321 value911 value1 value2 = (output3321, value1161, value1) := by
  rw [input3321_def, output3321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2681_eq]
  try dsimp only
  rw [node3320_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3321 input2680)).val
theorem input3322_def : input3322 = (.seq input3321 input2680) := by
  unfold input3322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3321 output2680)).val
theorem output3322_def : output3322 = (.seq output3321 output2680) := by
  unfold output3322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3322_skip : Flapjack.WordAlloc.isSkip output3322 = false := by
  rw [output3322_def]
  conv => lhs; cbv
  try rfl
theorem node3322_eq : Flapjack.WordAlloc.removeDeadStructural input3322 value910 value1 value2 = (output3322, value1161, value1) := by
  rw [input3322_def, output3322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2680_eq]
  try dsimp only
  rw [node3321_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3322 input2679)).val
theorem input3323_def : input3323 = (.seq input3322 input2679) := by
  unfold input3323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3322 output2679)).val
theorem output3323_def : output3323 = (.seq output3322 output2679) := by
  unfold output3323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3323_skip : Flapjack.WordAlloc.isSkip output3323 = false := by
  rw [output3323_def]
  conv => lhs; cbv
  try rfl
theorem node3323_eq : Flapjack.WordAlloc.removeDeadStructural input3323 value908 value1 value2 = (output3323, value1161, value1) := by
  rw [input3323_def, output3323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2679_eq]
  try dsimp only
  rw [node3322_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3323 input2676)).val
theorem input3324_def : input3324 = (.seq input3323 input2676) := by
  unfold input3324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3323 output2676)).val
theorem output3324_def : output3324 = (.seq output3323 output2676) := by
  unfold output3324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3324_skip : Flapjack.WordAlloc.isSkip output3324 = false := by
  rw [output3324_def]
  conv => lhs; cbv
  try rfl
theorem node3324_eq : Flapjack.WordAlloc.removeDeadStructural input3324 value906 value1 value2 = (output3324, value1161, value1) := by
  rw [input3324_def, output3324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2676_eq]
  try dsimp only
  rw [node3323_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3324 input2673)).val
theorem input3325_def : input3325 = (.seq input3324 input2673) := by
  unfold input3325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3324 output2673)).val
theorem output3325_def : output3325 = (.seq output3324 output2673) := by
  unfold output3325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3325_skip : Flapjack.WordAlloc.isSkip output3325 = false := by
  rw [output3325_def]
  conv => lhs; cbv
  try rfl
theorem node3325_eq : Flapjack.WordAlloc.removeDeadStructural input3325 value905 value1 value2 = (output3325, value1161, value1) := by
  rw [input3325_def, output3325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2673_eq]
  try dsimp only
  rw [node3324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3325 input2672)).val
theorem input3326_def : input3326 = (.seq input3325 input2672) := by
  unfold input3326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3325 output2672)).val
theorem output3326_def : output3326 = (.seq output3325 output2672) := by
  unfold output3326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3326_skip : Flapjack.WordAlloc.isSkip output3326 = false := by
  rw [output3326_def]
  conv => lhs; cbv
  try rfl
theorem node3326_eq : Flapjack.WordAlloc.removeDeadStructural input3326 value904 value1 value2 = (output3326, value1161, value1) := by
  rw [input3326_def, output3326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2672_eq]
  try dsimp only
  rw [node3325_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3326 input2671)).val
theorem input3327_def : input3327 = (.seq input3326 input2671) := by
  unfold input3327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3326 output2671)).val
theorem output3327_def : output3327 = (.seq output3326 output2671) := by
  unfold output3327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3327_skip : Flapjack.WordAlloc.isSkip output3327 = false := by
  rw [output3327_def]
  conv => lhs; cbv
  try rfl
theorem node3327_eq : Flapjack.WordAlloc.removeDeadStructural input3327 value902 value1 value2 = (output3327, value1161, value1) := by
  rw [input3327_def, output3327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2671_eq]
  try dsimp only
  rw [node3326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node3327_eq
end InitECandidate.Proofs.DeadStages875
