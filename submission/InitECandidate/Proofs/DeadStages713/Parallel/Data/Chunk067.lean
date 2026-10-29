import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk066
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713.Parallel
@[irreducible, cbv_opaque] def input17152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17151 input1014)).val
theorem input17152_def : input17152 = (.seq input17151 input1014) := by
  unfold input17152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17151 output1014)).val
theorem output17152_def : output17152 = (.seq output17151 output1014) := by
  unfold output17152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17152_skip : Flapjack.WordAlloc.isSkip output17152 = false := by
  rw [output17152_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17152 input1011)).val
theorem input17153_def : input17153 = (.seq input17152 input1011) := by
  unfold input17153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17152 output1011)).val
theorem output17153_def : output17153 = (.seq output17152 output1011) := by
  unfold output17153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17153_skip : Flapjack.WordAlloc.isSkip output17153 = false := by
  rw [output17153_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17153 input1000)).val
theorem input17154_def : input17154 = (.seq input17153 input1000) := by
  unfold input17154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17153)).val
theorem output17154_def : output17154 = (output17153) := by
  unfold output17154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17154_skip : Flapjack.WordAlloc.isSkip output17154 = false := by
  rw [output17154_def]
  exact output17153_skip


@[irreducible, cbv_opaque] def input17155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17154 input999)).val
theorem input17155_def : input17155 = (.seq input17154 input999) := by
  unfold input17155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17154 output999)).val
theorem output17155_def : output17155 = (.seq output17154 output999) := by
  unfold output17155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17155_skip : Flapjack.WordAlloc.isSkip output17155 = false := by
  rw [output17155_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17155 input998)).val
theorem input17156_def : input17156 = (.seq input17155 input998) := by
  unfold input17156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17155 output998)).val
theorem output17156_def : output17156 = (.seq output17155 output998) := by
  unfold output17156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17156_skip : Flapjack.WordAlloc.isSkip output17156 = false := by
  rw [output17156_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17156 input995)).val
theorem input17157_def : input17157 = (.seq input17156 input995) := by
  unfold input17157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17156 output995)).val
theorem output17157_def : output17157 = (.seq output17156 output995) := by
  unfold output17157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17157_skip : Flapjack.WordAlloc.isSkip output17157 = false := by
  rw [output17157_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17157 input984)).val
theorem input17158_def : input17158 = (.seq input17157 input984) := by
  unfold input17158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17157)).val
theorem output17158_def : output17158 = (output17157) := by
  unfold output17158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17158_skip : Flapjack.WordAlloc.isSkip output17158 = false := by
  rw [output17158_def]
  exact output17157_skip


@[irreducible, cbv_opaque] def input17159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17158 input983)).val
theorem input17159_def : input17159 = (.seq input17158 input983) := by
  unfold input17159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17158 output983)).val
theorem output17159_def : output17159 = (.seq output17158 output983) := by
  unfold output17159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17159_skip : Flapjack.WordAlloc.isSkip output17159 = false := by
  rw [output17159_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17159 input982)).val
theorem input17160_def : input17160 = (.seq input17159 input982) := by
  unfold input17160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17159 output982)).val
theorem output17160_def : output17160 = (.seq output17159 output982) := by
  unfold output17160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17160_skip : Flapjack.WordAlloc.isSkip output17160 = false := by
  rw [output17160_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17160 input979)).val
theorem input17161_def : input17161 = (.seq input17160 input979) := by
  unfold input17161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17160 output979)).val
theorem output17161_def : output17161 = (.seq output17160 output979) := by
  unfold output17161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17161_skip : Flapjack.WordAlloc.isSkip output17161 = false := by
  rw [output17161_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17161 input968)).val
theorem input17162_def : input17162 = (.seq input17161 input968) := by
  unfold input17162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17161)).val
theorem output17162_def : output17162 = (output17161) := by
  unfold output17162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17162_skip : Flapjack.WordAlloc.isSkip output17162 = false := by
  rw [output17162_def]
  exact output17161_skip


@[irreducible, cbv_opaque] def input17163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17162 input967)).val
theorem input17163_def : input17163 = (.seq input17162 input967) := by
  unfold input17163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17162 output967)).val
theorem output17163_def : output17163 = (.seq output17162 output967) := by
  unfold output17163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17163_skip : Flapjack.WordAlloc.isSkip output17163 = false := by
  rw [output17163_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17163 input966)).val
theorem input17164_def : input17164 = (.seq input17163 input966) := by
  unfold input17164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17163 output966)).val
theorem output17164_def : output17164 = (.seq output17163 output966) := by
  unfold output17164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17164_skip : Flapjack.WordAlloc.isSkip output17164 = false := by
  rw [output17164_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17164 input963)).val
theorem input17165_def : input17165 = (.seq input17164 input963) := by
  unfold input17165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17164 output963)).val
theorem output17165_def : output17165 = (.seq output17164 output963) := by
  unfold output17165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17165_skip : Flapjack.WordAlloc.isSkip output17165 = false := by
  rw [output17165_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17165 input952)).val
theorem input17166_def : input17166 = (.seq input17165 input952) := by
  unfold input17166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17165)).val
theorem output17166_def : output17166 = (output17165) := by
  unfold output17166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17166_skip : Flapjack.WordAlloc.isSkip output17166 = false := by
  rw [output17166_def]
  exact output17165_skip


@[irreducible, cbv_opaque] def input17167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17166 input951)).val
theorem input17167_def : input17167 = (.seq input17166 input951) := by
  unfold input17167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17166 output951)).val
theorem output17167_def : output17167 = (.seq output17166 output951) := by
  unfold output17167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17167_skip : Flapjack.WordAlloc.isSkip output17167 = false := by
  rw [output17167_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17167 input950)).val
theorem input17168_def : input17168 = (.seq input17167 input950) := by
  unfold input17168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17167 output950)).val
theorem output17168_def : output17168 = (.seq output17167 output950) := by
  unfold output17168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17168_skip : Flapjack.WordAlloc.isSkip output17168 = false := by
  rw [output17168_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17168 input947)).val
theorem input17169_def : input17169 = (.seq input17168 input947) := by
  unfold input17169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17168 output947)).val
theorem output17169_def : output17169 = (.seq output17168 output947) := by
  unfold output17169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17169_skip : Flapjack.WordAlloc.isSkip output17169 = false := by
  rw [output17169_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17169 input936)).val
theorem input17170_def : input17170 = (.seq input17169 input936) := by
  unfold input17170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17169)).val
theorem output17170_def : output17170 = (output17169) := by
  unfold output17170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17170_skip : Flapjack.WordAlloc.isSkip output17170 = false := by
  rw [output17170_def]
  exact output17169_skip


@[irreducible, cbv_opaque] def input17171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17170 input935)).val
theorem input17171_def : input17171 = (.seq input17170 input935) := by
  unfold input17171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17170 output935)).val
theorem output17171_def : output17171 = (.seq output17170 output935) := by
  unfold output17171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17171_skip : Flapjack.WordAlloc.isSkip output17171 = false := by
  rw [output17171_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17171 input934)).val
theorem input17172_def : input17172 = (.seq input17171 input934) := by
  unfold input17172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17171 output934)).val
theorem output17172_def : output17172 = (.seq output17171 output934) := by
  unfold output17172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17172_skip : Flapjack.WordAlloc.isSkip output17172 = false := by
  rw [output17172_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17172 input931)).val
theorem input17173_def : input17173 = (.seq input17172 input931) := by
  unfold input17173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17172 output931)).val
theorem output17173_def : output17173 = (.seq output17172 output931) := by
  unfold output17173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17173_skip : Flapjack.WordAlloc.isSkip output17173 = false := by
  rw [output17173_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17173 input920)).val
theorem input17174_def : input17174 = (.seq input17173 input920) := by
  unfold input17174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17173)).val
theorem output17174_def : output17174 = (output17173) := by
  unfold output17174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17174_skip : Flapjack.WordAlloc.isSkip output17174 = false := by
  rw [output17174_def]
  exact output17173_skip


@[irreducible, cbv_opaque] def input17175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17174 input919)).val
theorem input17175_def : input17175 = (.seq input17174 input919) := by
  unfold input17175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17174 output919)).val
theorem output17175_def : output17175 = (.seq output17174 output919) := by
  unfold output17175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17175_skip : Flapjack.WordAlloc.isSkip output17175 = false := by
  rw [output17175_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17175 input918)).val
theorem input17176_def : input17176 = (.seq input17175 input918) := by
  unfold input17176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17175 output918)).val
theorem output17176_def : output17176 = (.seq output17175 output918) := by
  unfold output17176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17176_skip : Flapjack.WordAlloc.isSkip output17176 = false := by
  rw [output17176_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17176 input915)).val
theorem input17177_def : input17177 = (.seq input17176 input915) := by
  unfold input17177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17176 output915)).val
theorem output17177_def : output17177 = (.seq output17176 output915) := by
  unfold output17177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17177_skip : Flapjack.WordAlloc.isSkip output17177 = false := by
  rw [output17177_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17177 input904)).val
theorem input17178_def : input17178 = (.seq input17177 input904) := by
  unfold input17178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17177)).val
theorem output17178_def : output17178 = (output17177) := by
  unfold output17178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17178_skip : Flapjack.WordAlloc.isSkip output17178 = false := by
  rw [output17178_def]
  exact output17177_skip


@[irreducible, cbv_opaque] def input17179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17178 input903)).val
theorem input17179_def : input17179 = (.seq input17178 input903) := by
  unfold input17179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17178 output903)).val
theorem output17179_def : output17179 = (.seq output17178 output903) := by
  unfold output17179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17179_skip : Flapjack.WordAlloc.isSkip output17179 = false := by
  rw [output17179_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17179 input902)).val
theorem input17180_def : input17180 = (.seq input17179 input902) := by
  unfold input17180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17179 output902)).val
theorem output17180_def : output17180 = (.seq output17179 output902) := by
  unfold output17180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17180_skip : Flapjack.WordAlloc.isSkip output17180 = false := by
  rw [output17180_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17180 input899)).val
theorem input17181_def : input17181 = (.seq input17180 input899) := by
  unfold input17181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17180 output899)).val
theorem output17181_def : output17181 = (.seq output17180 output899) := by
  unfold output17181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17181_skip : Flapjack.WordAlloc.isSkip output17181 = false := by
  rw [output17181_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17181 input888)).val
theorem input17182_def : input17182 = (.seq input17181 input888) := by
  unfold input17182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17181)).val
theorem output17182_def : output17182 = (output17181) := by
  unfold output17182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17182_skip : Flapjack.WordAlloc.isSkip output17182 = false := by
  rw [output17182_def]
  exact output17181_skip


@[irreducible, cbv_opaque] def input17183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17182 input887)).val
theorem input17183_def : input17183 = (.seq input17182 input887) := by
  unfold input17183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17182 output887)).val
theorem output17183_def : output17183 = (.seq output17182 output887) := by
  unfold output17183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17183_skip : Flapjack.WordAlloc.isSkip output17183 = false := by
  rw [output17183_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17183 input886)).val
theorem input17184_def : input17184 = (.seq input17183 input886) := by
  unfold input17184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17183 output886)).val
theorem output17184_def : output17184 = (.seq output17183 output886) := by
  unfold output17184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17184_skip : Flapjack.WordAlloc.isSkip output17184 = false := by
  rw [output17184_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17184 input883)).val
theorem input17185_def : input17185 = (.seq input17184 input883) := by
  unfold input17185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17184 output883)).val
theorem output17185_def : output17185 = (.seq output17184 output883) := by
  unfold output17185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17185_skip : Flapjack.WordAlloc.isSkip output17185 = false := by
  rw [output17185_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17185 input872)).val
theorem input17186_def : input17186 = (.seq input17185 input872) := by
  unfold input17186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17185)).val
theorem output17186_def : output17186 = (output17185) := by
  unfold output17186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17186_skip : Flapjack.WordAlloc.isSkip output17186 = false := by
  rw [output17186_def]
  exact output17185_skip


@[irreducible, cbv_opaque] def input17187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17186 input871)).val
theorem input17187_def : input17187 = (.seq input17186 input871) := by
  unfold input17187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17186 output871)).val
theorem output17187_def : output17187 = (.seq output17186 output871) := by
  unfold output17187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17187_skip : Flapjack.WordAlloc.isSkip output17187 = false := by
  rw [output17187_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17187 input870)).val
theorem input17188_def : input17188 = (.seq input17187 input870) := by
  unfold input17188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17187 output870)).val
theorem output17188_def : output17188 = (.seq output17187 output870) := by
  unfold output17188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17188_skip : Flapjack.WordAlloc.isSkip output17188 = false := by
  rw [output17188_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17188 input867)).val
theorem input17189_def : input17189 = (.seq input17188 input867) := by
  unfold input17189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17188 output867)).val
theorem output17189_def : output17189 = (.seq output17188 output867) := by
  unfold output17189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17189_skip : Flapjack.WordAlloc.isSkip output17189 = false := by
  rw [output17189_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17189 input856)).val
theorem input17190_def : input17190 = (.seq input17189 input856) := by
  unfold input17190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17189)).val
theorem output17190_def : output17190 = (output17189) := by
  unfold output17190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17190_skip : Flapjack.WordAlloc.isSkip output17190 = false := by
  rw [output17190_def]
  exact output17189_skip


@[irreducible, cbv_opaque] def input17191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17190 input855)).val
theorem input17191_def : input17191 = (.seq input17190 input855) := by
  unfold input17191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17190 output855)).val
theorem output17191_def : output17191 = (.seq output17190 output855) := by
  unfold output17191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17191_skip : Flapjack.WordAlloc.isSkip output17191 = false := by
  rw [output17191_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17191 input854)).val
theorem input17192_def : input17192 = (.seq input17191 input854) := by
  unfold input17192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17191 output854)).val
theorem output17192_def : output17192 = (.seq output17191 output854) := by
  unfold output17192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17192_skip : Flapjack.WordAlloc.isSkip output17192 = false := by
  rw [output17192_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17192 input851)).val
theorem input17193_def : input17193 = (.seq input17192 input851) := by
  unfold input17193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17192 output851)).val
theorem output17193_def : output17193 = (.seq output17192 output851) := by
  unfold output17193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17193_skip : Flapjack.WordAlloc.isSkip output17193 = false := by
  rw [output17193_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17193 input840)).val
theorem input17194_def : input17194 = (.seq input17193 input840) := by
  unfold input17194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17193)).val
theorem output17194_def : output17194 = (output17193) := by
  unfold output17194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17194_skip : Flapjack.WordAlloc.isSkip output17194 = false := by
  rw [output17194_def]
  exact output17193_skip


@[irreducible, cbv_opaque] def input17195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17194 input839)).val
theorem input17195_def : input17195 = (.seq input17194 input839) := by
  unfold input17195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17194 output839)).val
theorem output17195_def : output17195 = (.seq output17194 output839) := by
  unfold output17195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17195_skip : Flapjack.WordAlloc.isSkip output17195 = false := by
  rw [output17195_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17195 input838)).val
theorem input17196_def : input17196 = (.seq input17195 input838) := by
  unfold input17196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17195 output838)).val
theorem output17196_def : output17196 = (.seq output17195 output838) := by
  unfold output17196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17196_skip : Flapjack.WordAlloc.isSkip output17196 = false := by
  rw [output17196_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17196 input835)).val
theorem input17197_def : input17197 = (.seq input17196 input835) := by
  unfold input17197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17196 output835)).val
theorem output17197_def : output17197 = (.seq output17196 output835) := by
  unfold output17197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17197_skip : Flapjack.WordAlloc.isSkip output17197 = false := by
  rw [output17197_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17197 input824)).val
theorem input17198_def : input17198 = (.seq input17197 input824) := by
  unfold input17198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17197)).val
theorem output17198_def : output17198 = (output17197) := by
  unfold output17198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17198_skip : Flapjack.WordAlloc.isSkip output17198 = false := by
  rw [output17198_def]
  exact output17197_skip


@[irreducible, cbv_opaque] def input17199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17198 input823)).val
theorem input17199_def : input17199 = (.seq input17198 input823) := by
  unfold input17199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17198 output823)).val
theorem output17199_def : output17199 = (.seq output17198 output823) := by
  unfold output17199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17199_skip : Flapjack.WordAlloc.isSkip output17199 = false := by
  rw [output17199_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17199 input822)).val
theorem input17200_def : input17200 = (.seq input17199 input822) := by
  unfold input17200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17199 output822)).val
theorem output17200_def : output17200 = (.seq output17199 output822) := by
  unfold output17200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17200_skip : Flapjack.WordAlloc.isSkip output17200 = false := by
  rw [output17200_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17200 input819)).val
theorem input17201_def : input17201 = (.seq input17200 input819) := by
  unfold input17201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17200 output819)).val
theorem output17201_def : output17201 = (.seq output17200 output819) := by
  unfold output17201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17201_skip : Flapjack.WordAlloc.isSkip output17201 = false := by
  rw [output17201_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17201 input808)).val
theorem input17202_def : input17202 = (.seq input17201 input808) := by
  unfold input17202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17201)).val
theorem output17202_def : output17202 = (output17201) := by
  unfold output17202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17202_skip : Flapjack.WordAlloc.isSkip output17202 = false := by
  rw [output17202_def]
  exact output17201_skip


@[irreducible, cbv_opaque] def input17203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17202 input807)).val
theorem input17203_def : input17203 = (.seq input17202 input807) := by
  unfold input17203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17202 output807)).val
theorem output17203_def : output17203 = (.seq output17202 output807) := by
  unfold output17203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17203_skip : Flapjack.WordAlloc.isSkip output17203 = false := by
  rw [output17203_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17203 input806)).val
theorem input17204_def : input17204 = (.seq input17203 input806) := by
  unfold input17204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17203 output806)).val
theorem output17204_def : output17204 = (.seq output17203 output806) := by
  unfold output17204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17204_skip : Flapjack.WordAlloc.isSkip output17204 = false := by
  rw [output17204_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17204 input803)).val
theorem input17205_def : input17205 = (.seq input17204 input803) := by
  unfold input17205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17204 output803)).val
theorem output17205_def : output17205 = (.seq output17204 output803) := by
  unfold output17205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17205_skip : Flapjack.WordAlloc.isSkip output17205 = false := by
  rw [output17205_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17205 input792)).val
theorem input17206_def : input17206 = (.seq input17205 input792) := by
  unfold input17206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17205)).val
theorem output17206_def : output17206 = (output17205) := by
  unfold output17206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17206_skip : Flapjack.WordAlloc.isSkip output17206 = false := by
  rw [output17206_def]
  exact output17205_skip


@[irreducible, cbv_opaque] def input17207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17206 input791)).val
theorem input17207_def : input17207 = (.seq input17206 input791) := by
  unfold input17207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17206 output791)).val
theorem output17207_def : output17207 = (.seq output17206 output791) := by
  unfold output17207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17207_skip : Flapjack.WordAlloc.isSkip output17207 = false := by
  rw [output17207_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17207 input790)).val
theorem input17208_def : input17208 = (.seq input17207 input790) := by
  unfold input17208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17207 output790)).val
theorem output17208_def : output17208 = (.seq output17207 output790) := by
  unfold output17208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17208_skip : Flapjack.WordAlloc.isSkip output17208 = false := by
  rw [output17208_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17208 input787)).val
theorem input17209_def : input17209 = (.seq input17208 input787) := by
  unfold input17209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17208 output787)).val
theorem output17209_def : output17209 = (.seq output17208 output787) := by
  unfold output17209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17209_skip : Flapjack.WordAlloc.isSkip output17209 = false := by
  rw [output17209_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17209 input776)).val
theorem input17210_def : input17210 = (.seq input17209 input776) := by
  unfold input17210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17209)).val
theorem output17210_def : output17210 = (output17209) := by
  unfold output17210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17210_skip : Flapjack.WordAlloc.isSkip output17210 = false := by
  rw [output17210_def]
  exact output17209_skip


@[irreducible, cbv_opaque] def input17211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17210 input775)).val
theorem input17211_def : input17211 = (.seq input17210 input775) := by
  unfold input17211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17210 output775)).val
theorem output17211_def : output17211 = (.seq output17210 output775) := by
  unfold output17211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17211_skip : Flapjack.WordAlloc.isSkip output17211 = false := by
  rw [output17211_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17211 input774)).val
theorem input17212_def : input17212 = (.seq input17211 input774) := by
  unfold input17212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17211 output774)).val
theorem output17212_def : output17212 = (.seq output17211 output774) := by
  unfold output17212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17212_skip : Flapjack.WordAlloc.isSkip output17212 = false := by
  rw [output17212_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17212 input771)).val
theorem input17213_def : input17213 = (.seq input17212 input771) := by
  unfold input17213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17212 output771)).val
theorem output17213_def : output17213 = (.seq output17212 output771) := by
  unfold output17213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17213_skip : Flapjack.WordAlloc.isSkip output17213 = false := by
  rw [output17213_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17213 input760)).val
theorem input17214_def : input17214 = (.seq input17213 input760) := by
  unfold input17214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17213)).val
theorem output17214_def : output17214 = (output17213) := by
  unfold output17214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17214_skip : Flapjack.WordAlloc.isSkip output17214 = false := by
  rw [output17214_def]
  exact output17213_skip


@[irreducible, cbv_opaque] def input17215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17214 input759)).val
theorem input17215_def : input17215 = (.seq input17214 input759) := by
  unfold input17215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17214 output759)).val
theorem output17215_def : output17215 = (.seq output17214 output759) := by
  unfold output17215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17215_skip : Flapjack.WordAlloc.isSkip output17215 = false := by
  rw [output17215_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17215 input758)).val
theorem input17216_def : input17216 = (.seq input17215 input758) := by
  unfold input17216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17215 output758)).val
theorem output17216_def : output17216 = (.seq output17215 output758) := by
  unfold output17216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17216_skip : Flapjack.WordAlloc.isSkip output17216 = false := by
  rw [output17216_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17216 input755)).val
theorem input17217_def : input17217 = (.seq input17216 input755) := by
  unfold input17217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17216 output755)).val
theorem output17217_def : output17217 = (.seq output17216 output755) := by
  unfold output17217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17217_skip : Flapjack.WordAlloc.isSkip output17217 = false := by
  rw [output17217_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17217 input744)).val
theorem input17218_def : input17218 = (.seq input17217 input744) := by
  unfold input17218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17217)).val
theorem output17218_def : output17218 = (output17217) := by
  unfold output17218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17218_skip : Flapjack.WordAlloc.isSkip output17218 = false := by
  rw [output17218_def]
  exact output17217_skip


@[irreducible, cbv_opaque] def input17219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17218 input743)).val
theorem input17219_def : input17219 = (.seq input17218 input743) := by
  unfold input17219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17218 output743)).val
theorem output17219_def : output17219 = (.seq output17218 output743) := by
  unfold output17219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17219_skip : Flapjack.WordAlloc.isSkip output17219 = false := by
  rw [output17219_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17219 input742)).val
theorem input17220_def : input17220 = (.seq input17219 input742) := by
  unfold input17220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17219 output742)).val
theorem output17220_def : output17220 = (.seq output17219 output742) := by
  unfold output17220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17220_skip : Flapjack.WordAlloc.isSkip output17220 = false := by
  rw [output17220_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17220 input739)).val
theorem input17221_def : input17221 = (.seq input17220 input739) := by
  unfold input17221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17220 output739)).val
theorem output17221_def : output17221 = (.seq output17220 output739) := by
  unfold output17221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17221_skip : Flapjack.WordAlloc.isSkip output17221 = false := by
  rw [output17221_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17221 input728)).val
theorem input17222_def : input17222 = (.seq input17221 input728) := by
  unfold input17222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17221)).val
theorem output17222_def : output17222 = (output17221) := by
  unfold output17222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17222_skip : Flapjack.WordAlloc.isSkip output17222 = false := by
  rw [output17222_def]
  exact output17221_skip


@[irreducible, cbv_opaque] def input17223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17222 input727)).val
theorem input17223_def : input17223 = (.seq input17222 input727) := by
  unfold input17223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17222 output727)).val
theorem output17223_def : output17223 = (.seq output17222 output727) := by
  unfold output17223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17223_skip : Flapjack.WordAlloc.isSkip output17223 = false := by
  rw [output17223_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17223 input726)).val
theorem input17224_def : input17224 = (.seq input17223 input726) := by
  unfold input17224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17223 output726)).val
theorem output17224_def : output17224 = (.seq output17223 output726) := by
  unfold output17224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17224_skip : Flapjack.WordAlloc.isSkip output17224 = false := by
  rw [output17224_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17224 input723)).val
theorem input17225_def : input17225 = (.seq input17224 input723) := by
  unfold input17225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17224 output723)).val
theorem output17225_def : output17225 = (.seq output17224 output723) := by
  unfold output17225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17225_skip : Flapjack.WordAlloc.isSkip output17225 = false := by
  rw [output17225_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17225 input712)).val
theorem input17226_def : input17226 = (.seq input17225 input712) := by
  unfold input17226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17225)).val
theorem output17226_def : output17226 = (output17225) := by
  unfold output17226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17226_skip : Flapjack.WordAlloc.isSkip output17226 = false := by
  rw [output17226_def]
  exact output17225_skip


@[irreducible, cbv_opaque] def input17227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17226 input711)).val
theorem input17227_def : input17227 = (.seq input17226 input711) := by
  unfold input17227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17226 output711)).val
theorem output17227_def : output17227 = (.seq output17226 output711) := by
  unfold output17227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17227_skip : Flapjack.WordAlloc.isSkip output17227 = false := by
  rw [output17227_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17227 input710)).val
theorem input17228_def : input17228 = (.seq input17227 input710) := by
  unfold input17228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17227 output710)).val
theorem output17228_def : output17228 = (.seq output17227 output710) := by
  unfold output17228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17228_skip : Flapjack.WordAlloc.isSkip output17228 = false := by
  rw [output17228_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17228 input707)).val
theorem input17229_def : input17229 = (.seq input17228 input707) := by
  unfold input17229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17228 output707)).val
theorem output17229_def : output17229 = (.seq output17228 output707) := by
  unfold output17229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17229_skip : Flapjack.WordAlloc.isSkip output17229 = false := by
  rw [output17229_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17229 input696)).val
theorem input17230_def : input17230 = (.seq input17229 input696) := by
  unfold input17230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17229)).val
theorem output17230_def : output17230 = (output17229) := by
  unfold output17230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17230_skip : Flapjack.WordAlloc.isSkip output17230 = false := by
  rw [output17230_def]
  exact output17229_skip


@[irreducible, cbv_opaque] def input17231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17230 input695)).val
theorem input17231_def : input17231 = (.seq input17230 input695) := by
  unfold input17231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17230 output695)).val
theorem output17231_def : output17231 = (.seq output17230 output695) := by
  unfold output17231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17231_skip : Flapjack.WordAlloc.isSkip output17231 = false := by
  rw [output17231_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17231 input694)).val
theorem input17232_def : input17232 = (.seq input17231 input694) := by
  unfold input17232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17231 output694)).val
theorem output17232_def : output17232 = (.seq output17231 output694) := by
  unfold output17232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17232_skip : Flapjack.WordAlloc.isSkip output17232 = false := by
  rw [output17232_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17232 input691)).val
theorem input17233_def : input17233 = (.seq input17232 input691) := by
  unfold input17233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17232 output691)).val
theorem output17233_def : output17233 = (.seq output17232 output691) := by
  unfold output17233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17233_skip : Flapjack.WordAlloc.isSkip output17233 = false := by
  rw [output17233_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17233 input680)).val
theorem input17234_def : input17234 = (.seq input17233 input680) := by
  unfold input17234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17233)).val
theorem output17234_def : output17234 = (output17233) := by
  unfold output17234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17234_skip : Flapjack.WordAlloc.isSkip output17234 = false := by
  rw [output17234_def]
  exact output17233_skip


@[irreducible, cbv_opaque] def input17235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17234 input679)).val
theorem input17235_def : input17235 = (.seq input17234 input679) := by
  unfold input17235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17234 output679)).val
theorem output17235_def : output17235 = (.seq output17234 output679) := by
  unfold output17235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17235_skip : Flapjack.WordAlloc.isSkip output17235 = false := by
  rw [output17235_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17235 input678)).val
theorem input17236_def : input17236 = (.seq input17235 input678) := by
  unfold input17236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17235 output678)).val
theorem output17236_def : output17236 = (.seq output17235 output678) := by
  unfold output17236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17236_skip : Flapjack.WordAlloc.isSkip output17236 = false := by
  rw [output17236_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17236 input675)).val
theorem input17237_def : input17237 = (.seq input17236 input675) := by
  unfold input17237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17236 output675)).val
theorem output17237_def : output17237 = (.seq output17236 output675) := by
  unfold output17237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17237_skip : Flapjack.WordAlloc.isSkip output17237 = false := by
  rw [output17237_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17237 input664)).val
theorem input17238_def : input17238 = (.seq input17237 input664) := by
  unfold input17238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17237)).val
theorem output17238_def : output17238 = (output17237) := by
  unfold output17238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17238_skip : Flapjack.WordAlloc.isSkip output17238 = false := by
  rw [output17238_def]
  exact output17237_skip


@[irreducible, cbv_opaque] def input17239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17238 input663)).val
theorem input17239_def : input17239 = (.seq input17238 input663) := by
  unfold input17239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17238 output663)).val
theorem output17239_def : output17239 = (.seq output17238 output663) := by
  unfold output17239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17239_skip : Flapjack.WordAlloc.isSkip output17239 = false := by
  rw [output17239_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17239 input662)).val
theorem input17240_def : input17240 = (.seq input17239 input662) := by
  unfold input17240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17239 output662)).val
theorem output17240_def : output17240 = (.seq output17239 output662) := by
  unfold output17240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17240_skip : Flapjack.WordAlloc.isSkip output17240 = false := by
  rw [output17240_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17240 input659)).val
theorem input17241_def : input17241 = (.seq input17240 input659) := by
  unfold input17241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17240 output659)).val
theorem output17241_def : output17241 = (.seq output17240 output659) := by
  unfold output17241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17241_skip : Flapjack.WordAlloc.isSkip output17241 = false := by
  rw [output17241_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17241 input648)).val
theorem input17242_def : input17242 = (.seq input17241 input648) := by
  unfold input17242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17241)).val
theorem output17242_def : output17242 = (output17241) := by
  unfold output17242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17242_skip : Flapjack.WordAlloc.isSkip output17242 = false := by
  rw [output17242_def]
  exact output17241_skip


@[irreducible, cbv_opaque] def input17243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17242 input647)).val
theorem input17243_def : input17243 = (.seq input17242 input647) := by
  unfold input17243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17242 output647)).val
theorem output17243_def : output17243 = (.seq output17242 output647) := by
  unfold output17243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17243_skip : Flapjack.WordAlloc.isSkip output17243 = false := by
  rw [output17243_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17243 input646)).val
theorem input17244_def : input17244 = (.seq input17243 input646) := by
  unfold input17244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17243 output646)).val
theorem output17244_def : output17244 = (.seq output17243 output646) := by
  unfold output17244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17244_skip : Flapjack.WordAlloc.isSkip output17244 = false := by
  rw [output17244_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17244 input643)).val
theorem input17245_def : input17245 = (.seq input17244 input643) := by
  unfold input17245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17244 output643)).val
theorem output17245_def : output17245 = (.seq output17244 output643) := by
  unfold output17245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17245_skip : Flapjack.WordAlloc.isSkip output17245 = false := by
  rw [output17245_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17245 input632)).val
theorem input17246_def : input17246 = (.seq input17245 input632) := by
  unfold input17246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17245)).val
theorem output17246_def : output17246 = (output17245) := by
  unfold output17246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17246_skip : Flapjack.WordAlloc.isSkip output17246 = false := by
  rw [output17246_def]
  exact output17245_skip


@[irreducible, cbv_opaque] def input17247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17246 input631)).val
theorem input17247_def : input17247 = (.seq input17246 input631) := by
  unfold input17247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17246 output631)).val
theorem output17247_def : output17247 = (.seq output17246 output631) := by
  unfold output17247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17247_skip : Flapjack.WordAlloc.isSkip output17247 = false := by
  rw [output17247_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17247 input630)).val
theorem input17248_def : input17248 = (.seq input17247 input630) := by
  unfold input17248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17247 output630)).val
theorem output17248_def : output17248 = (.seq output17247 output630) := by
  unfold output17248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17248_skip : Flapjack.WordAlloc.isSkip output17248 = false := by
  rw [output17248_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17248 input627)).val
theorem input17249_def : input17249 = (.seq input17248 input627) := by
  unfold input17249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17248 output627)).val
theorem output17249_def : output17249 = (.seq output17248 output627) := by
  unfold output17249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17249_skip : Flapjack.WordAlloc.isSkip output17249 = false := by
  rw [output17249_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17249 input616)).val
theorem input17250_def : input17250 = (.seq input17249 input616) := by
  unfold input17250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17249)).val
theorem output17250_def : output17250 = (output17249) := by
  unfold output17250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17250_skip : Flapjack.WordAlloc.isSkip output17250 = false := by
  rw [output17250_def]
  exact output17249_skip


@[irreducible, cbv_opaque] def input17251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17250 input615)).val
theorem input17251_def : input17251 = (.seq input17250 input615) := by
  unfold input17251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17250 output615)).val
theorem output17251_def : output17251 = (.seq output17250 output615) := by
  unfold output17251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17251_skip : Flapjack.WordAlloc.isSkip output17251 = false := by
  rw [output17251_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17251 input614)).val
theorem input17252_def : input17252 = (.seq input17251 input614) := by
  unfold input17252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17251 output614)).val
theorem output17252_def : output17252 = (.seq output17251 output614) := by
  unfold output17252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17252_skip : Flapjack.WordAlloc.isSkip output17252 = false := by
  rw [output17252_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17252 input611)).val
theorem input17253_def : input17253 = (.seq input17252 input611) := by
  unfold input17253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17252 output611)).val
theorem output17253_def : output17253 = (.seq output17252 output611) := by
  unfold output17253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17253_skip : Flapjack.WordAlloc.isSkip output17253 = false := by
  rw [output17253_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17253 input600)).val
theorem input17254_def : input17254 = (.seq input17253 input600) := by
  unfold input17254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17253)).val
theorem output17254_def : output17254 = (output17253) := by
  unfold output17254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17254_skip : Flapjack.WordAlloc.isSkip output17254 = false := by
  rw [output17254_def]
  exact output17253_skip


@[irreducible, cbv_opaque] def input17255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17254 input599)).val
theorem input17255_def : input17255 = (.seq input17254 input599) := by
  unfold input17255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17254 output599)).val
theorem output17255_def : output17255 = (.seq output17254 output599) := by
  unfold output17255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17255_skip : Flapjack.WordAlloc.isSkip output17255 = false := by
  rw [output17255_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17255 input598)).val
theorem input17256_def : input17256 = (.seq input17255 input598) := by
  unfold input17256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17255 output598)).val
theorem output17256_def : output17256 = (.seq output17255 output598) := by
  unfold output17256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17256_skip : Flapjack.WordAlloc.isSkip output17256 = false := by
  rw [output17256_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17256 input595)).val
theorem input17257_def : input17257 = (.seq input17256 input595) := by
  unfold input17257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17256 output595)).val
theorem output17257_def : output17257 = (.seq output17256 output595) := by
  unfold output17257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17257_skip : Flapjack.WordAlloc.isSkip output17257 = false := by
  rw [output17257_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17257 input584)).val
theorem input17258_def : input17258 = (.seq input17257 input584) := by
  unfold input17258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17257)).val
theorem output17258_def : output17258 = (output17257) := by
  unfold output17258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17258_skip : Flapjack.WordAlloc.isSkip output17258 = false := by
  rw [output17258_def]
  exact output17257_skip


@[irreducible, cbv_opaque] def input17259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17258 input583)).val
theorem input17259_def : input17259 = (.seq input17258 input583) := by
  unfold input17259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17258 output583)).val
theorem output17259_def : output17259 = (.seq output17258 output583) := by
  unfold output17259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17259_skip : Flapjack.WordAlloc.isSkip output17259 = false := by
  rw [output17259_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17259 input582)).val
theorem input17260_def : input17260 = (.seq input17259 input582) := by
  unfold input17260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17259 output582)).val
theorem output17260_def : output17260 = (.seq output17259 output582) := by
  unfold output17260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17260_skip : Flapjack.WordAlloc.isSkip output17260 = false := by
  rw [output17260_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17260 input579)).val
theorem input17261_def : input17261 = (.seq input17260 input579) := by
  unfold input17261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17260 output579)).val
theorem output17261_def : output17261 = (.seq output17260 output579) := by
  unfold output17261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17261_skip : Flapjack.WordAlloc.isSkip output17261 = false := by
  rw [output17261_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17261 input568)).val
theorem input17262_def : input17262 = (.seq input17261 input568) := by
  unfold input17262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17261)).val
theorem output17262_def : output17262 = (output17261) := by
  unfold output17262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17262_skip : Flapjack.WordAlloc.isSkip output17262 = false := by
  rw [output17262_def]
  exact output17261_skip


@[irreducible, cbv_opaque] def input17263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17262 input567)).val
theorem input17263_def : input17263 = (.seq input17262 input567) := by
  unfold input17263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17262 output567)).val
theorem output17263_def : output17263 = (.seq output17262 output567) := by
  unfold output17263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17263_skip : Flapjack.WordAlloc.isSkip output17263 = false := by
  rw [output17263_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17263 input566)).val
theorem input17264_def : input17264 = (.seq input17263 input566) := by
  unfold input17264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17263 output566)).val
theorem output17264_def : output17264 = (.seq output17263 output566) := by
  unfold output17264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17264_skip : Flapjack.WordAlloc.isSkip output17264 = false := by
  rw [output17264_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17264 input563)).val
theorem input17265_def : input17265 = (.seq input17264 input563) := by
  unfold input17265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17264 output563)).val
theorem output17265_def : output17265 = (.seq output17264 output563) := by
  unfold output17265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17265_skip : Flapjack.WordAlloc.isSkip output17265 = false := by
  rw [output17265_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17265 input552)).val
theorem input17266_def : input17266 = (.seq input17265 input552) := by
  unfold input17266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17265)).val
theorem output17266_def : output17266 = (output17265) := by
  unfold output17266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17266_skip : Flapjack.WordAlloc.isSkip output17266 = false := by
  rw [output17266_def]
  exact output17265_skip


@[irreducible, cbv_opaque] def input17267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17266 input551)).val
theorem input17267_def : input17267 = (.seq input17266 input551) := by
  unfold input17267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17266 output551)).val
theorem output17267_def : output17267 = (.seq output17266 output551) := by
  unfold output17267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17267_skip : Flapjack.WordAlloc.isSkip output17267 = false := by
  rw [output17267_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17267 input550)).val
theorem input17268_def : input17268 = (.seq input17267 input550) := by
  unfold input17268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17267 output550)).val
theorem output17268_def : output17268 = (.seq output17267 output550) := by
  unfold output17268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17268_skip : Flapjack.WordAlloc.isSkip output17268 = false := by
  rw [output17268_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17268 input547)).val
theorem input17269_def : input17269 = (.seq input17268 input547) := by
  unfold input17269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17268 output547)).val
theorem output17269_def : output17269 = (.seq output17268 output547) := by
  unfold output17269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17269_skip : Flapjack.WordAlloc.isSkip output17269 = false := by
  rw [output17269_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17269 input536)).val
theorem input17270_def : input17270 = (.seq input17269 input536) := by
  unfold input17270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17269)).val
theorem output17270_def : output17270 = (output17269) := by
  unfold output17270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17270_skip : Flapjack.WordAlloc.isSkip output17270 = false := by
  rw [output17270_def]
  exact output17269_skip


@[irreducible, cbv_opaque] def input17271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17270 input535)).val
theorem input17271_def : input17271 = (.seq input17270 input535) := by
  unfold input17271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17270 output535)).val
theorem output17271_def : output17271 = (.seq output17270 output535) := by
  unfold output17271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17271_skip : Flapjack.WordAlloc.isSkip output17271 = false := by
  rw [output17271_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17271 input534)).val
theorem input17272_def : input17272 = (.seq input17271 input534) := by
  unfold input17272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17271 output534)).val
theorem output17272_def : output17272 = (.seq output17271 output534) := by
  unfold output17272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17272_skip : Flapjack.WordAlloc.isSkip output17272 = false := by
  rw [output17272_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17272 input531)).val
theorem input17273_def : input17273 = (.seq input17272 input531) := by
  unfold input17273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17272 output531)).val
theorem output17273_def : output17273 = (.seq output17272 output531) := by
  unfold output17273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17273_skip : Flapjack.WordAlloc.isSkip output17273 = false := by
  rw [output17273_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17273 input520)).val
theorem input17274_def : input17274 = (.seq input17273 input520) := by
  unfold input17274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17273)).val
theorem output17274_def : output17274 = (output17273) := by
  unfold output17274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17274_skip : Flapjack.WordAlloc.isSkip output17274 = false := by
  rw [output17274_def]
  exact output17273_skip


@[irreducible, cbv_opaque] def input17275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17274 input519)).val
theorem input17275_def : input17275 = (.seq input17274 input519) := by
  unfold input17275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17274 output519)).val
theorem output17275_def : output17275 = (.seq output17274 output519) := by
  unfold output17275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17275_skip : Flapjack.WordAlloc.isSkip output17275 = false := by
  rw [output17275_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17275 input518)).val
theorem input17276_def : input17276 = (.seq input17275 input518) := by
  unfold input17276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17275 output518)).val
theorem output17276_def : output17276 = (.seq output17275 output518) := by
  unfold output17276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17276_skip : Flapjack.WordAlloc.isSkip output17276 = false := by
  rw [output17276_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17276 input515)).val
theorem input17277_def : input17277 = (.seq input17276 input515) := by
  unfold input17277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17276 output515)).val
theorem output17277_def : output17277 = (.seq output17276 output515) := by
  unfold output17277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17277_skip : Flapjack.WordAlloc.isSkip output17277 = false := by
  rw [output17277_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17277 input504)).val
theorem input17278_def : input17278 = (.seq input17277 input504) := by
  unfold input17278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17277)).val
theorem output17278_def : output17278 = (output17277) := by
  unfold output17278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17278_skip : Flapjack.WordAlloc.isSkip output17278 = false := by
  rw [output17278_def]
  exact output17277_skip


@[irreducible, cbv_opaque] def input17279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17278 input503)).val
theorem input17279_def : input17279 = (.seq input17278 input503) := by
  unfold input17279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17278 output503)).val
theorem output17279_def : output17279 = (.seq output17278 output503) := by
  unfold output17279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17279_skip : Flapjack.WordAlloc.isSkip output17279 = false := by
  rw [output17279_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17279 input502)).val
theorem input17280_def : input17280 = (.seq input17279 input502) := by
  unfold input17280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17279 output502)).val
theorem output17280_def : output17280 = (.seq output17279 output502) := by
  unfold output17280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17280_skip : Flapjack.WordAlloc.isSkip output17280 = false := by
  rw [output17280_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17280 input499)).val
theorem input17281_def : input17281 = (.seq input17280 input499) := by
  unfold input17281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17280 output499)).val
theorem output17281_def : output17281 = (.seq output17280 output499) := by
  unfold output17281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17281_skip : Flapjack.WordAlloc.isSkip output17281 = false := by
  rw [output17281_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17281 input488)).val
theorem input17282_def : input17282 = (.seq input17281 input488) := by
  unfold input17282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17281)).val
theorem output17282_def : output17282 = (output17281) := by
  unfold output17282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17282_skip : Flapjack.WordAlloc.isSkip output17282 = false := by
  rw [output17282_def]
  exact output17281_skip


@[irreducible, cbv_opaque] def input17283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17282 input487)).val
theorem input17283_def : input17283 = (.seq input17282 input487) := by
  unfold input17283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17282 output487)).val
theorem output17283_def : output17283 = (.seq output17282 output487) := by
  unfold output17283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17283_skip : Flapjack.WordAlloc.isSkip output17283 = false := by
  rw [output17283_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17283 input486)).val
theorem input17284_def : input17284 = (.seq input17283 input486) := by
  unfold input17284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17283 output486)).val
theorem output17284_def : output17284 = (.seq output17283 output486) := by
  unfold output17284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17284_skip : Flapjack.WordAlloc.isSkip output17284 = false := by
  rw [output17284_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17284 input483)).val
theorem input17285_def : input17285 = (.seq input17284 input483) := by
  unfold input17285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17284 output483)).val
theorem output17285_def : output17285 = (.seq output17284 output483) := by
  unfold output17285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17285_skip : Flapjack.WordAlloc.isSkip output17285 = false := by
  rw [output17285_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17285 input472)).val
theorem input17286_def : input17286 = (.seq input17285 input472) := by
  unfold input17286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17285)).val
theorem output17286_def : output17286 = (output17285) := by
  unfold output17286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17286_skip : Flapjack.WordAlloc.isSkip output17286 = false := by
  rw [output17286_def]
  exact output17285_skip


@[irreducible, cbv_opaque] def input17287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17286 input471)).val
theorem input17287_def : input17287 = (.seq input17286 input471) := by
  unfold input17287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17286 output471)).val
theorem output17287_def : output17287 = (.seq output17286 output471) := by
  unfold output17287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17287_skip : Flapjack.WordAlloc.isSkip output17287 = false := by
  rw [output17287_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17287 input470)).val
theorem input17288_def : input17288 = (.seq input17287 input470) := by
  unfold input17288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17287 output470)).val
theorem output17288_def : output17288 = (.seq output17287 output470) := by
  unfold output17288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17288_skip : Flapjack.WordAlloc.isSkip output17288 = false := by
  rw [output17288_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17288 input467)).val
theorem input17289_def : input17289 = (.seq input17288 input467) := by
  unfold input17289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17288 output467)).val
theorem output17289_def : output17289 = (.seq output17288 output467) := by
  unfold output17289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17289_skip : Flapjack.WordAlloc.isSkip output17289 = false := by
  rw [output17289_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17289 input456)).val
theorem input17290_def : input17290 = (.seq input17289 input456) := by
  unfold input17290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17289)).val
theorem output17290_def : output17290 = (output17289) := by
  unfold output17290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17290_skip : Flapjack.WordAlloc.isSkip output17290 = false := by
  rw [output17290_def]
  exact output17289_skip


@[irreducible, cbv_opaque] def input17291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17290 input455)).val
theorem input17291_def : input17291 = (.seq input17290 input455) := by
  unfold input17291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17290 output455)).val
theorem output17291_def : output17291 = (.seq output17290 output455) := by
  unfold output17291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17291_skip : Flapjack.WordAlloc.isSkip output17291 = false := by
  rw [output17291_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17291 input454)).val
theorem input17292_def : input17292 = (.seq input17291 input454) := by
  unfold input17292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17291 output454)).val
theorem output17292_def : output17292 = (.seq output17291 output454) := by
  unfold output17292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17292_skip : Flapjack.WordAlloc.isSkip output17292 = false := by
  rw [output17292_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17292 input451)).val
theorem input17293_def : input17293 = (.seq input17292 input451) := by
  unfold input17293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17292 output451)).val
theorem output17293_def : output17293 = (.seq output17292 output451) := by
  unfold output17293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17293_skip : Flapjack.WordAlloc.isSkip output17293 = false := by
  rw [output17293_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17293 input440)).val
theorem input17294_def : input17294 = (.seq input17293 input440) := by
  unfold input17294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17293)).val
theorem output17294_def : output17294 = (output17293) := by
  unfold output17294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17294_skip : Flapjack.WordAlloc.isSkip output17294 = false := by
  rw [output17294_def]
  exact output17293_skip


@[irreducible, cbv_opaque] def input17295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17294 input439)).val
theorem input17295_def : input17295 = (.seq input17294 input439) := by
  unfold input17295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17294 output439)).val
theorem output17295_def : output17295 = (.seq output17294 output439) := by
  unfold output17295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17295_skip : Flapjack.WordAlloc.isSkip output17295 = false := by
  rw [output17295_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17295 input438)).val
theorem input17296_def : input17296 = (.seq input17295 input438) := by
  unfold input17296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17295 output438)).val
theorem output17296_def : output17296 = (.seq output17295 output438) := by
  unfold output17296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17296_skip : Flapjack.WordAlloc.isSkip output17296 = false := by
  rw [output17296_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17296 input435)).val
theorem input17297_def : input17297 = (.seq input17296 input435) := by
  unfold input17297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17296 output435)).val
theorem output17297_def : output17297 = (.seq output17296 output435) := by
  unfold output17297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17297_skip : Flapjack.WordAlloc.isSkip output17297 = false := by
  rw [output17297_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17297 input424)).val
theorem input17298_def : input17298 = (.seq input17297 input424) := by
  unfold input17298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17297)).val
theorem output17298_def : output17298 = (output17297) := by
  unfold output17298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17298_skip : Flapjack.WordAlloc.isSkip output17298 = false := by
  rw [output17298_def]
  exact output17297_skip


@[irreducible, cbv_opaque] def input17299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17298 input423)).val
theorem input17299_def : input17299 = (.seq input17298 input423) := by
  unfold input17299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17298 output423)).val
theorem output17299_def : output17299 = (.seq output17298 output423) := by
  unfold output17299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17299_skip : Flapjack.WordAlloc.isSkip output17299 = false := by
  rw [output17299_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17299 input422)).val
theorem input17300_def : input17300 = (.seq input17299 input422) := by
  unfold input17300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17299 output422)).val
theorem output17300_def : output17300 = (.seq output17299 output422) := by
  unfold output17300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17300_skip : Flapjack.WordAlloc.isSkip output17300 = false := by
  rw [output17300_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17300 input419)).val
theorem input17301_def : input17301 = (.seq input17300 input419) := by
  unfold input17301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17300 output419)).val
theorem output17301_def : output17301 = (.seq output17300 output419) := by
  unfold output17301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17301_skip : Flapjack.WordAlloc.isSkip output17301 = false := by
  rw [output17301_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17301 input408)).val
theorem input17302_def : input17302 = (.seq input17301 input408) := by
  unfold input17302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17301)).val
theorem output17302_def : output17302 = (output17301) := by
  unfold output17302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17302_skip : Flapjack.WordAlloc.isSkip output17302 = false := by
  rw [output17302_def]
  exact output17301_skip


@[irreducible, cbv_opaque] def input17303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17302 input407)).val
theorem input17303_def : input17303 = (.seq input17302 input407) := by
  unfold input17303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17302 output407)).val
theorem output17303_def : output17303 = (.seq output17302 output407) := by
  unfold output17303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17303_skip : Flapjack.WordAlloc.isSkip output17303 = false := by
  rw [output17303_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17303 input406)).val
theorem input17304_def : input17304 = (.seq input17303 input406) := by
  unfold input17304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17303 output406)).val
theorem output17304_def : output17304 = (.seq output17303 output406) := by
  unfold output17304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17304_skip : Flapjack.WordAlloc.isSkip output17304 = false := by
  rw [output17304_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17304 input403)).val
theorem input17305_def : input17305 = (.seq input17304 input403) := by
  unfold input17305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17304 output403)).val
theorem output17305_def : output17305 = (.seq output17304 output403) := by
  unfold output17305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17305_skip : Flapjack.WordAlloc.isSkip output17305 = false := by
  rw [output17305_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17305 input392)).val
theorem input17306_def : input17306 = (.seq input17305 input392) := by
  unfold input17306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17305)).val
theorem output17306_def : output17306 = (output17305) := by
  unfold output17306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17306_skip : Flapjack.WordAlloc.isSkip output17306 = false := by
  rw [output17306_def]
  exact output17305_skip


@[irreducible, cbv_opaque] def input17307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17306 input391)).val
theorem input17307_def : input17307 = (.seq input17306 input391) := by
  unfold input17307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17306 output391)).val
theorem output17307_def : output17307 = (.seq output17306 output391) := by
  unfold output17307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17307_skip : Flapjack.WordAlloc.isSkip output17307 = false := by
  rw [output17307_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17307 input390)).val
theorem input17308_def : input17308 = (.seq input17307 input390) := by
  unfold input17308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17307 output390)).val
theorem output17308_def : output17308 = (.seq output17307 output390) := by
  unfold output17308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17308_skip : Flapjack.WordAlloc.isSkip output17308 = false := by
  rw [output17308_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17308 input387)).val
theorem input17309_def : input17309 = (.seq input17308 input387) := by
  unfold input17309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17308 output387)).val
theorem output17309_def : output17309 = (.seq output17308 output387) := by
  unfold output17309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17309_skip : Flapjack.WordAlloc.isSkip output17309 = false := by
  rw [output17309_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17309 input376)).val
theorem input17310_def : input17310 = (.seq input17309 input376) := by
  unfold input17310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17309)).val
theorem output17310_def : output17310 = (output17309) := by
  unfold output17310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17310_skip : Flapjack.WordAlloc.isSkip output17310 = false := by
  rw [output17310_def]
  exact output17309_skip


@[irreducible, cbv_opaque] def input17311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17310 input375)).val
theorem input17311_def : input17311 = (.seq input17310 input375) := by
  unfold input17311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17310 output375)).val
theorem output17311_def : output17311 = (.seq output17310 output375) := by
  unfold output17311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17311_skip : Flapjack.WordAlloc.isSkip output17311 = false := by
  rw [output17311_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17311 input374)).val
theorem input17312_def : input17312 = (.seq input17311 input374) := by
  unfold input17312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17311 output374)).val
theorem output17312_def : output17312 = (.seq output17311 output374) := by
  unfold output17312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17312_skip : Flapjack.WordAlloc.isSkip output17312 = false := by
  rw [output17312_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17312 input371)).val
theorem input17313_def : input17313 = (.seq input17312 input371) := by
  unfold input17313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17312 output371)).val
theorem output17313_def : output17313 = (.seq output17312 output371) := by
  unfold output17313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17313_skip : Flapjack.WordAlloc.isSkip output17313 = false := by
  rw [output17313_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17313 input360)).val
theorem input17314_def : input17314 = (.seq input17313 input360) := by
  unfold input17314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17313)).val
theorem output17314_def : output17314 = (output17313) := by
  unfold output17314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17314_skip : Flapjack.WordAlloc.isSkip output17314 = false := by
  rw [output17314_def]
  exact output17313_skip


@[irreducible, cbv_opaque] def input17315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17314 input359)).val
theorem input17315_def : input17315 = (.seq input17314 input359) := by
  unfold input17315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17314 output359)).val
theorem output17315_def : output17315 = (.seq output17314 output359) := by
  unfold output17315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17315_skip : Flapjack.WordAlloc.isSkip output17315 = false := by
  rw [output17315_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17315 input358)).val
theorem input17316_def : input17316 = (.seq input17315 input358) := by
  unfold input17316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17315 output358)).val
theorem output17316_def : output17316 = (.seq output17315 output358) := by
  unfold output17316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17316_skip : Flapjack.WordAlloc.isSkip output17316 = false := by
  rw [output17316_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17316 input355)).val
theorem input17317_def : input17317 = (.seq input17316 input355) := by
  unfold input17317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17316 output355)).val
theorem output17317_def : output17317 = (.seq output17316 output355) := by
  unfold output17317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17317_skip : Flapjack.WordAlloc.isSkip output17317 = false := by
  rw [output17317_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17317 input344)).val
theorem input17318_def : input17318 = (.seq input17317 input344) := by
  unfold input17318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17317)).val
theorem output17318_def : output17318 = (output17317) := by
  unfold output17318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17318_skip : Flapjack.WordAlloc.isSkip output17318 = false := by
  rw [output17318_def]
  exact output17317_skip


@[irreducible, cbv_opaque] def input17319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17318 input343)).val
theorem input17319_def : input17319 = (.seq input17318 input343) := by
  unfold input17319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17318 output343)).val
theorem output17319_def : output17319 = (.seq output17318 output343) := by
  unfold output17319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17319_skip : Flapjack.WordAlloc.isSkip output17319 = false := by
  rw [output17319_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17319 input342)).val
theorem input17320_def : input17320 = (.seq input17319 input342) := by
  unfold input17320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17319 output342)).val
theorem output17320_def : output17320 = (.seq output17319 output342) := by
  unfold output17320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17320_skip : Flapjack.WordAlloc.isSkip output17320 = false := by
  rw [output17320_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17320 input339)).val
theorem input17321_def : input17321 = (.seq input17320 input339) := by
  unfold input17321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17320 output339)).val
theorem output17321_def : output17321 = (.seq output17320 output339) := by
  unfold output17321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17321_skip : Flapjack.WordAlloc.isSkip output17321 = false := by
  rw [output17321_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17321 input328)).val
theorem input17322_def : input17322 = (.seq input17321 input328) := by
  unfold input17322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17321)).val
theorem output17322_def : output17322 = (output17321) := by
  unfold output17322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17322_skip : Flapjack.WordAlloc.isSkip output17322 = false := by
  rw [output17322_def]
  exact output17321_skip


@[irreducible, cbv_opaque] def input17323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17322 input327)).val
theorem input17323_def : input17323 = (.seq input17322 input327) := by
  unfold input17323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17322 output327)).val
theorem output17323_def : output17323 = (.seq output17322 output327) := by
  unfold output17323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17323_skip : Flapjack.WordAlloc.isSkip output17323 = false := by
  rw [output17323_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17323 input326)).val
theorem input17324_def : input17324 = (.seq input17323 input326) := by
  unfold input17324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17323 output326)).val
theorem output17324_def : output17324 = (.seq output17323 output326) := by
  unfold output17324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17324_skip : Flapjack.WordAlloc.isSkip output17324 = false := by
  rw [output17324_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17324 input323)).val
theorem input17325_def : input17325 = (.seq input17324 input323) := by
  unfold input17325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17324 output323)).val
theorem output17325_def : output17325 = (.seq output17324 output323) := by
  unfold output17325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17325_skip : Flapjack.WordAlloc.isSkip output17325 = false := by
  rw [output17325_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17325 input312)).val
theorem input17326_def : input17326 = (.seq input17325 input312) := by
  unfold input17326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17325)).val
theorem output17326_def : output17326 = (output17325) := by
  unfold output17326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17326_skip : Flapjack.WordAlloc.isSkip output17326 = false := by
  rw [output17326_def]
  exact output17325_skip


@[irreducible, cbv_opaque] def input17327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17326 input311)).val
theorem input17327_def : input17327 = (.seq input17326 input311) := by
  unfold input17327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17326 output311)).val
theorem output17327_def : output17327 = (.seq output17326 output311) := by
  unfold output17327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17327_skip : Flapjack.WordAlloc.isSkip output17327 = false := by
  rw [output17327_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17327 input310)).val
theorem input17328_def : input17328 = (.seq input17327 input310) := by
  unfold input17328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17327 output310)).val
theorem output17328_def : output17328 = (.seq output17327 output310) := by
  unfold output17328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17328_skip : Flapjack.WordAlloc.isSkip output17328 = false := by
  rw [output17328_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17328 input307)).val
theorem input17329_def : input17329 = (.seq input17328 input307) := by
  unfold input17329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17328 output307)).val
theorem output17329_def : output17329 = (.seq output17328 output307) := by
  unfold output17329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17329_skip : Flapjack.WordAlloc.isSkip output17329 = false := by
  rw [output17329_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17329 input296)).val
theorem input17330_def : input17330 = (.seq input17329 input296) := by
  unfold input17330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17329)).val
theorem output17330_def : output17330 = (output17329) := by
  unfold output17330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17330_skip : Flapjack.WordAlloc.isSkip output17330 = false := by
  rw [output17330_def]
  exact output17329_skip


@[irreducible, cbv_opaque] def input17331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17330 input295)).val
theorem input17331_def : input17331 = (.seq input17330 input295) := by
  unfold input17331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17330 output295)).val
theorem output17331_def : output17331 = (.seq output17330 output295) := by
  unfold output17331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17331_skip : Flapjack.WordAlloc.isSkip output17331 = false := by
  rw [output17331_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17331 input294)).val
theorem input17332_def : input17332 = (.seq input17331 input294) := by
  unfold input17332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17331 output294)).val
theorem output17332_def : output17332 = (.seq output17331 output294) := by
  unfold output17332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17332_skip : Flapjack.WordAlloc.isSkip output17332 = false := by
  rw [output17332_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17332 input291)).val
theorem input17333_def : input17333 = (.seq input17332 input291) := by
  unfold input17333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17332 output291)).val
theorem output17333_def : output17333 = (.seq output17332 output291) := by
  unfold output17333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17333_skip : Flapjack.WordAlloc.isSkip output17333 = false := by
  rw [output17333_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17333 input280)).val
theorem input17334_def : input17334 = (.seq input17333 input280) := by
  unfold input17334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17333)).val
theorem output17334_def : output17334 = (output17333) := by
  unfold output17334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17334_skip : Flapjack.WordAlloc.isSkip output17334 = false := by
  rw [output17334_def]
  exact output17333_skip


@[irreducible, cbv_opaque] def input17335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17334 input279)).val
theorem input17335_def : input17335 = (.seq input17334 input279) := by
  unfold input17335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17334 output279)).val
theorem output17335_def : output17335 = (.seq output17334 output279) := by
  unfold output17335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17335_skip : Flapjack.WordAlloc.isSkip output17335 = false := by
  rw [output17335_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17335 input278)).val
theorem input17336_def : input17336 = (.seq input17335 input278) := by
  unfold input17336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17335 output278)).val
theorem output17336_def : output17336 = (.seq output17335 output278) := by
  unfold output17336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17336_skip : Flapjack.WordAlloc.isSkip output17336 = false := by
  rw [output17336_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17336 input275)).val
theorem input17337_def : input17337 = (.seq input17336 input275) := by
  unfold input17337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17336 output275)).val
theorem output17337_def : output17337 = (.seq output17336 output275) := by
  unfold output17337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17337_skip : Flapjack.WordAlloc.isSkip output17337 = false := by
  rw [output17337_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17337 input264)).val
theorem input17338_def : input17338 = (.seq input17337 input264) := by
  unfold input17338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17337)).val
theorem output17338_def : output17338 = (output17337) := by
  unfold output17338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17338_skip : Flapjack.WordAlloc.isSkip output17338 = false := by
  rw [output17338_def]
  exact output17337_skip


@[irreducible, cbv_opaque] def input17339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17338 input263)).val
theorem input17339_def : input17339 = (.seq input17338 input263) := by
  unfold input17339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17338 output263)).val
theorem output17339_def : output17339 = (.seq output17338 output263) := by
  unfold output17339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17339_skip : Flapjack.WordAlloc.isSkip output17339 = false := by
  rw [output17339_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17339 input262)).val
theorem input17340_def : input17340 = (.seq input17339 input262) := by
  unfold input17340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17339 output262)).val
theorem output17340_def : output17340 = (.seq output17339 output262) := by
  unfold output17340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17340_skip : Flapjack.WordAlloc.isSkip output17340 = false := by
  rw [output17340_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17340 input259)).val
theorem input17341_def : input17341 = (.seq input17340 input259) := by
  unfold input17341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17340 output259)).val
theorem output17341_def : output17341 = (.seq output17340 output259) := by
  unfold output17341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17341_skip : Flapjack.WordAlloc.isSkip output17341 = false := by
  rw [output17341_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17341 input248)).val
theorem input17342_def : input17342 = (.seq input17341 input248) := by
  unfold input17342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17341)).val
theorem output17342_def : output17342 = (output17341) := by
  unfold output17342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17342_skip : Flapjack.WordAlloc.isSkip output17342 = false := by
  rw [output17342_def]
  exact output17341_skip


@[irreducible, cbv_opaque] def input17343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17342 input247)).val
theorem input17343_def : input17343 = (.seq input17342 input247) := by
  unfold input17343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17342 output247)).val
theorem output17343_def : output17343 = (.seq output17342 output247) := by
  unfold output17343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17343_skip : Flapjack.WordAlloc.isSkip output17343 = false := by
  rw [output17343_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17343 input246)).val
theorem input17344_def : input17344 = (.seq input17343 input246) := by
  unfold input17344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17343 output246)).val
theorem output17344_def : output17344 = (.seq output17343 output246) := by
  unfold output17344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17344_skip : Flapjack.WordAlloc.isSkip output17344 = false := by
  rw [output17344_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17344 input243)).val
theorem input17345_def : input17345 = (.seq input17344 input243) := by
  unfold input17345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17344 output243)).val
theorem output17345_def : output17345 = (.seq output17344 output243) := by
  unfold output17345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17345_skip : Flapjack.WordAlloc.isSkip output17345 = false := by
  rw [output17345_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17345 input232)).val
theorem input17346_def : input17346 = (.seq input17345 input232) := by
  unfold input17346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17345)).val
theorem output17346_def : output17346 = (output17345) := by
  unfold output17346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17346_skip : Flapjack.WordAlloc.isSkip output17346 = false := by
  rw [output17346_def]
  exact output17345_skip


@[irreducible, cbv_opaque] def input17347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17346 input231)).val
theorem input17347_def : input17347 = (.seq input17346 input231) := by
  unfold input17347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17346 output231)).val
theorem output17347_def : output17347 = (.seq output17346 output231) := by
  unfold output17347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17347_skip : Flapjack.WordAlloc.isSkip output17347 = false := by
  rw [output17347_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17347 input230)).val
theorem input17348_def : input17348 = (.seq input17347 input230) := by
  unfold input17348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17347 output230)).val
theorem output17348_def : output17348 = (.seq output17347 output230) := by
  unfold output17348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17348_skip : Flapjack.WordAlloc.isSkip output17348 = false := by
  rw [output17348_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17348 input227)).val
theorem input17349_def : input17349 = (.seq input17348 input227) := by
  unfold input17349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17348 output227)).val
theorem output17349_def : output17349 = (.seq output17348 output227) := by
  unfold output17349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17349_skip : Flapjack.WordAlloc.isSkip output17349 = false := by
  rw [output17349_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17349 input216)).val
theorem input17350_def : input17350 = (.seq input17349 input216) := by
  unfold input17350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17349)).val
theorem output17350_def : output17350 = (output17349) := by
  unfold output17350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17350_skip : Flapjack.WordAlloc.isSkip output17350 = false := by
  rw [output17350_def]
  exact output17349_skip


@[irreducible, cbv_opaque] def input17351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17350 input215)).val
theorem input17351_def : input17351 = (.seq input17350 input215) := by
  unfold input17351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17350 output215)).val
theorem output17351_def : output17351 = (.seq output17350 output215) := by
  unfold output17351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17351_skip : Flapjack.WordAlloc.isSkip output17351 = false := by
  rw [output17351_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17351 input214)).val
theorem input17352_def : input17352 = (.seq input17351 input214) := by
  unfold input17352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17351 output214)).val
theorem output17352_def : output17352 = (.seq output17351 output214) := by
  unfold output17352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17352_skip : Flapjack.WordAlloc.isSkip output17352 = false := by
  rw [output17352_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17352 input211)).val
theorem input17353_def : input17353 = (.seq input17352 input211) := by
  unfold input17353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17352 output211)).val
theorem output17353_def : output17353 = (.seq output17352 output211) := by
  unfold output17353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17353_skip : Flapjack.WordAlloc.isSkip output17353 = false := by
  rw [output17353_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17353 input200)).val
theorem input17354_def : input17354 = (.seq input17353 input200) := by
  unfold input17354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17353)).val
theorem output17354_def : output17354 = (output17353) := by
  unfold output17354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17354_skip : Flapjack.WordAlloc.isSkip output17354 = false := by
  rw [output17354_def]
  exact output17353_skip


@[irreducible, cbv_opaque] def input17355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17354 input199)).val
theorem input17355_def : input17355 = (.seq input17354 input199) := by
  unfold input17355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17354 output199)).val
theorem output17355_def : output17355 = (.seq output17354 output199) := by
  unfold output17355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17355_skip : Flapjack.WordAlloc.isSkip output17355 = false := by
  rw [output17355_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17355 input198)).val
theorem input17356_def : input17356 = (.seq input17355 input198) := by
  unfold input17356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17355 output198)).val
theorem output17356_def : output17356 = (.seq output17355 output198) := by
  unfold output17356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17356_skip : Flapjack.WordAlloc.isSkip output17356 = false := by
  rw [output17356_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17356 input195)).val
theorem input17357_def : input17357 = (.seq input17356 input195) := by
  unfold input17357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17356 output195)).val
theorem output17357_def : output17357 = (.seq output17356 output195) := by
  unfold output17357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17357_skip : Flapjack.WordAlloc.isSkip output17357 = false := by
  rw [output17357_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17357 input184)).val
theorem input17358_def : input17358 = (.seq input17357 input184) := by
  unfold input17358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17357)).val
theorem output17358_def : output17358 = (output17357) := by
  unfold output17358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17358_skip : Flapjack.WordAlloc.isSkip output17358 = false := by
  rw [output17358_def]
  exact output17357_skip


@[irreducible, cbv_opaque] def input17359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17358 input183)).val
theorem input17359_def : input17359 = (.seq input17358 input183) := by
  unfold input17359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17358 output183)).val
theorem output17359_def : output17359 = (.seq output17358 output183) := by
  unfold output17359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17359_skip : Flapjack.WordAlloc.isSkip output17359 = false := by
  rw [output17359_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17359 input182)).val
theorem input17360_def : input17360 = (.seq input17359 input182) := by
  unfold input17360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17359 output182)).val
theorem output17360_def : output17360 = (.seq output17359 output182) := by
  unfold output17360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17360_skip : Flapjack.WordAlloc.isSkip output17360 = false := by
  rw [output17360_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17360 input179)).val
theorem input17361_def : input17361 = (.seq input17360 input179) := by
  unfold input17361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17360 output179)).val
theorem output17361_def : output17361 = (.seq output17360 output179) := by
  unfold output17361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17361_skip : Flapjack.WordAlloc.isSkip output17361 = false := by
  rw [output17361_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17361 input168)).val
theorem input17362_def : input17362 = (.seq input17361 input168) := by
  unfold input17362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17361)).val
theorem output17362_def : output17362 = (output17361) := by
  unfold output17362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17362_skip : Flapjack.WordAlloc.isSkip output17362 = false := by
  rw [output17362_def]
  exact output17361_skip


@[irreducible, cbv_opaque] def input17363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17362 input167)).val
theorem input17363_def : input17363 = (.seq input17362 input167) := by
  unfold input17363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17362 output167)).val
theorem output17363_def : output17363 = (.seq output17362 output167) := by
  unfold output17363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17363_skip : Flapjack.WordAlloc.isSkip output17363 = false := by
  rw [output17363_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17363 input166)).val
theorem input17364_def : input17364 = (.seq input17363 input166) := by
  unfold input17364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17363 output166)).val
theorem output17364_def : output17364 = (.seq output17363 output166) := by
  unfold output17364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17364_skip : Flapjack.WordAlloc.isSkip output17364 = false := by
  rw [output17364_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17364 input163)).val
theorem input17365_def : input17365 = (.seq input17364 input163) := by
  unfold input17365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17364 output163)).val
theorem output17365_def : output17365 = (.seq output17364 output163) := by
  unfold output17365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17365_skip : Flapjack.WordAlloc.isSkip output17365 = false := by
  rw [output17365_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17365 input152)).val
theorem input17366_def : input17366 = (.seq input17365 input152) := by
  unfold input17366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17365)).val
theorem output17366_def : output17366 = (output17365) := by
  unfold output17366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17366_skip : Flapjack.WordAlloc.isSkip output17366 = false := by
  rw [output17366_def]
  exact output17365_skip


@[irreducible, cbv_opaque] def input17367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17366 input151)).val
theorem input17367_def : input17367 = (.seq input17366 input151) := by
  unfold input17367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17366 output151)).val
theorem output17367_def : output17367 = (.seq output17366 output151) := by
  unfold output17367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17367_skip : Flapjack.WordAlloc.isSkip output17367 = false := by
  rw [output17367_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17367 input150)).val
theorem input17368_def : input17368 = (.seq input17367 input150) := by
  unfold input17368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17367 output150)).val
theorem output17368_def : output17368 = (.seq output17367 output150) := by
  unfold output17368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17368_skip : Flapjack.WordAlloc.isSkip output17368 = false := by
  rw [output17368_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17368 input147)).val
theorem input17369_def : input17369 = (.seq input17368 input147) := by
  unfold input17369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17368 output147)).val
theorem output17369_def : output17369 = (.seq output17368 output147) := by
  unfold output17369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17369_skip : Flapjack.WordAlloc.isSkip output17369 = false := by
  rw [output17369_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17369 input136)).val
theorem input17370_def : input17370 = (.seq input17369 input136) := by
  unfold input17370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17369)).val
theorem output17370_def : output17370 = (output17369) := by
  unfold output17370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17370_skip : Flapjack.WordAlloc.isSkip output17370 = false := by
  rw [output17370_def]
  exact output17369_skip


@[irreducible, cbv_opaque] def input17371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17370 input135)).val
theorem input17371_def : input17371 = (.seq input17370 input135) := by
  unfold input17371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17370 output135)).val
theorem output17371_def : output17371 = (.seq output17370 output135) := by
  unfold output17371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17371_skip : Flapjack.WordAlloc.isSkip output17371 = false := by
  rw [output17371_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17371 input134)).val
theorem input17372_def : input17372 = (.seq input17371 input134) := by
  unfold input17372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17371 output134)).val
theorem output17372_def : output17372 = (.seq output17371 output134) := by
  unfold output17372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17372_skip : Flapjack.WordAlloc.isSkip output17372 = false := by
  rw [output17372_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17372 input131)).val
theorem input17373_def : input17373 = (.seq input17372 input131) := by
  unfold input17373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17372 output131)).val
theorem output17373_def : output17373 = (.seq output17372 output131) := by
  unfold output17373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17373_skip : Flapjack.WordAlloc.isSkip output17373 = false := by
  rw [output17373_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17373 input120)).val
theorem input17374_def : input17374 = (.seq input17373 input120) := by
  unfold input17374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17373)).val
theorem output17374_def : output17374 = (output17373) := by
  unfold output17374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17374_skip : Flapjack.WordAlloc.isSkip output17374 = false := by
  rw [output17374_def]
  exact output17373_skip


@[irreducible, cbv_opaque] def input17375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17374 input119)).val
theorem input17375_def : input17375 = (.seq input17374 input119) := by
  unfold input17375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17374 output119)).val
theorem output17375_def : output17375 = (.seq output17374 output119) := by
  unfold output17375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17375_skip : Flapjack.WordAlloc.isSkip output17375 = false := by
  rw [output17375_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17375 input118)).val
theorem input17376_def : input17376 = (.seq input17375 input118) := by
  unfold input17376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17375 output118)).val
theorem output17376_def : output17376 = (.seq output17375 output118) := by
  unfold output17376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17376_skip : Flapjack.WordAlloc.isSkip output17376 = false := by
  rw [output17376_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17376 input115)).val
theorem input17377_def : input17377 = (.seq input17376 input115) := by
  unfold input17377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17376 output115)).val
theorem output17377_def : output17377 = (.seq output17376 output115) := by
  unfold output17377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17377_skip : Flapjack.WordAlloc.isSkip output17377 = false := by
  rw [output17377_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17377 input104)).val
theorem input17378_def : input17378 = (.seq input17377 input104) := by
  unfold input17378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17377)).val
theorem output17378_def : output17378 = (output17377) := by
  unfold output17378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17378_skip : Flapjack.WordAlloc.isSkip output17378 = false := by
  rw [output17378_def]
  exact output17377_skip


@[irreducible, cbv_opaque] def input17379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17378 input103)).val
theorem input17379_def : input17379 = (.seq input17378 input103) := by
  unfold input17379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17378 output103)).val
theorem output17379_def : output17379 = (.seq output17378 output103) := by
  unfold output17379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17379_skip : Flapjack.WordAlloc.isSkip output17379 = false := by
  rw [output17379_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17379 input102)).val
theorem input17380_def : input17380 = (.seq input17379 input102) := by
  unfold input17380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17379 output102)).val
theorem output17380_def : output17380 = (.seq output17379 output102) := by
  unfold output17380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17380_skip : Flapjack.WordAlloc.isSkip output17380 = false := by
  rw [output17380_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17380 input99)).val
theorem input17381_def : input17381 = (.seq input17380 input99) := by
  unfold input17381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17380 output99)).val
theorem output17381_def : output17381 = (.seq output17380 output99) := by
  unfold output17381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17381_skip : Flapjack.WordAlloc.isSkip output17381 = false := by
  rw [output17381_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17381 input88)).val
theorem input17382_def : input17382 = (.seq input17381 input88) := by
  unfold input17382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17381)).val
theorem output17382_def : output17382 = (output17381) := by
  unfold output17382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17382_skip : Flapjack.WordAlloc.isSkip output17382 = false := by
  rw [output17382_def]
  exact output17381_skip


@[irreducible, cbv_opaque] def input17383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17382 input87)).val
theorem input17383_def : input17383 = (.seq input17382 input87) := by
  unfold input17383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17382 output87)).val
theorem output17383_def : output17383 = (.seq output17382 output87) := by
  unfold output17383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17383_skip : Flapjack.WordAlloc.isSkip output17383 = false := by
  rw [output17383_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17383 input86)).val
theorem input17384_def : input17384 = (.seq input17383 input86) := by
  unfold input17384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17383 output86)).val
theorem output17384_def : output17384 = (.seq output17383 output86) := by
  unfold output17384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17384_skip : Flapjack.WordAlloc.isSkip output17384 = false := by
  rw [output17384_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17384 input83)).val
theorem input17385_def : input17385 = (.seq input17384 input83) := by
  unfold input17385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17384 output83)).val
theorem output17385_def : output17385 = (.seq output17384 output83) := by
  unfold output17385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17385_skip : Flapjack.WordAlloc.isSkip output17385 = false := by
  rw [output17385_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17385 input72)).val
theorem input17386_def : input17386 = (.seq input17385 input72) := by
  unfold input17386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17385)).val
theorem output17386_def : output17386 = (output17385) := by
  unfold output17386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17386_skip : Flapjack.WordAlloc.isSkip output17386 = false := by
  rw [output17386_def]
  exact output17385_skip


@[irreducible, cbv_opaque] def input17387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17386 input71)).val
theorem input17387_def : input17387 = (.seq input17386 input71) := by
  unfold input17387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17386 output71)).val
theorem output17387_def : output17387 = (.seq output17386 output71) := by
  unfold output17387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17387_skip : Flapjack.WordAlloc.isSkip output17387 = false := by
  rw [output17387_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17387 input70)).val
theorem input17388_def : input17388 = (.seq input17387 input70) := by
  unfold input17388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17387 output70)).val
theorem output17388_def : output17388 = (.seq output17387 output70) := by
  unfold output17388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17388_skip : Flapjack.WordAlloc.isSkip output17388 = false := by
  rw [output17388_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17388 input67)).val
theorem input17389_def : input17389 = (.seq input17388 input67) := by
  unfold input17389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17388 output67)).val
theorem output17389_def : output17389 = (.seq output17388 output67) := by
  unfold output17389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17389_skip : Flapjack.WordAlloc.isSkip output17389 = false := by
  rw [output17389_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17389 input56)).val
theorem input17390_def : input17390 = (.seq input17389 input56) := by
  unfold input17390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17389)).val
theorem output17390_def : output17390 = (output17389) := by
  unfold output17390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17390_skip : Flapjack.WordAlloc.isSkip output17390 = false := by
  rw [output17390_def]
  exact output17389_skip


@[irreducible, cbv_opaque] def input17391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17390 input55)).val
theorem input17391_def : input17391 = (.seq input17390 input55) := by
  unfold input17391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17390 output55)).val
theorem output17391_def : output17391 = (.seq output17390 output55) := by
  unfold output17391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17391_skip : Flapjack.WordAlloc.isSkip output17391 = false := by
  rw [output17391_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17391 input54)).val
theorem input17392_def : input17392 = (.seq input17391 input54) := by
  unfold input17392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17391 output54)).val
theorem output17392_def : output17392 = (.seq output17391 output54) := by
  unfold output17392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17392_skip : Flapjack.WordAlloc.isSkip output17392 = false := by
  rw [output17392_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17392 input51)).val
theorem input17393_def : input17393 = (.seq input17392 input51) := by
  unfold input17393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17392 output51)).val
theorem output17393_def : output17393 = (.seq output17392 output51) := by
  unfold output17393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17393_skip : Flapjack.WordAlloc.isSkip output17393 = false := by
  rw [output17393_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17393 input40)).val
theorem input17394_def : input17394 = (.seq input17393 input40) := by
  unfold input17394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17393)).val
theorem output17394_def : output17394 = (output17393) := by
  unfold output17394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17394_skip : Flapjack.WordAlloc.isSkip output17394 = false := by
  rw [output17394_def]
  exact output17393_skip


@[irreducible, cbv_opaque] def input17395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17394 input39)).val
theorem input17395_def : input17395 = (.seq input17394 input39) := by
  unfold input17395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17394 output39)).val
theorem output17395_def : output17395 = (.seq output17394 output39) := by
  unfold output17395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17395_skip : Flapjack.WordAlloc.isSkip output17395 = false := by
  rw [output17395_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17395 input38)).val
theorem input17396_def : input17396 = (.seq input17395 input38) := by
  unfold input17396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17395 output38)).val
theorem output17396_def : output17396 = (.seq output17395 output38) := by
  unfold output17396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17396_skip : Flapjack.WordAlloc.isSkip output17396 = false := by
  rw [output17396_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17396 input35)).val
theorem input17397_def : input17397 = (.seq input17396 input35) := by
  unfold input17397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17396 output35)).val
theorem output17397_def : output17397 = (.seq output17396 output35) := by
  unfold output17397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17397_skip : Flapjack.WordAlloc.isSkip output17397 = false := by
  rw [output17397_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17397 input24)).val
theorem input17398_def : input17398 = (.seq input17397 input24) := by
  unfold input17398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17397)).val
theorem output17398_def : output17398 = (output17397) := by
  unfold output17398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17398_skip : Flapjack.WordAlloc.isSkip output17398 = false := by
  rw [output17398_def]
  exact output17397_skip


@[irreducible, cbv_opaque] def input17399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17398 input23)).val
theorem input17399_def : input17399 = (.seq input17398 input23) := by
  unfold input17399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17398 output23)).val
theorem output17399_def : output17399 = (.seq output17398 output23) := by
  unfold output17399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17399_skip : Flapjack.WordAlloc.isSkip output17399 = false := by
  rw [output17399_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17399 input22)).val
theorem input17400_def : input17400 = (.seq input17399 input22) := by
  unfold input17400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17399 output22)).val
theorem output17400_def : output17400 = (.seq output17399 output22) := by
  unfold output17400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17400_skip : Flapjack.WordAlloc.isSkip output17400 = false := by
  rw [output17400_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17400 input19)).val
theorem input17401_def : input17401 = (.seq input17400 input19) := by
  unfold input17401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17400 output19)).val
theorem output17401_def : output17401 = (.seq output17400 output19) := by
  unfold output17401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17401_skip : Flapjack.WordAlloc.isSkip output17401 = false := by
  rw [output17401_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17401 input8)).val
theorem input17402_def : input17402 = (.seq input17401 input8) := by
  unfold input17402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output17401)).val
theorem output17402_def : output17402 = (output17401) := by
  unfold output17402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17402_skip : Flapjack.WordAlloc.isSkip output17402 = false := by
  rw [output17402_def]
  exact output17401_skip


@[irreducible, cbv_opaque] def input17403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17402 input7)).val
theorem input17403_def : input17403 = (.seq input17402 input7) := by
  unfold input17403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17402 output7)).val
theorem output17403_def : output17403 = (.seq output17402 output7) := by
  unfold output17403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17403_skip : Flapjack.WordAlloc.isSkip output17403 = false := by
  rw [output17403_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17403 input6)).val
theorem input17404_def : input17404 = (.seq input17403 input6) := by
  unfold input17404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17403 output6)).val
theorem output17404_def : output17404 = (.seq output17403 output6) := by
  unfold output17404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17404_skip : Flapjack.WordAlloc.isSkip output17404 = false := by
  rw [output17404_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17404 input3)).val
theorem input17405_def : input17405 = (.seq input17404 input3) := by
  unfold input17405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17404 output3)).val
theorem output17405_def : output17405 = (.seq output17404 output3) := by
  unfold output17405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17405_skip : Flapjack.WordAlloc.isSkip output17405 = false := by
  rw [output17405_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input17406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input17405 input2)).val
theorem input17406_def : input17406 = (.seq input17405 input2) := by
  unfold input17406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output17405 output2)).val
theorem output17406_def : output17406 = (.seq output17405 output2) := by
  unfold output17406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17406_skip : Flapjack.WordAlloc.isSkip output17406 = false := by
  rw [output17406_def]
  kernel_rfl


def value6906 : Flapjack.NumSet :=
Flapjack.Spt.ls PUnit.unit

@[irreducible, cbv_opaque] def input17407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(13, 0)])).val
theorem input17407_def : input17407 = (Flapjack.WordLangProgHOL.move 1 [(13, 0)]) := by
  unfold input17407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output17407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(13, 0)])).val
theorem output17407_def : output17407 = (Flapjack.WordLangProgHOL.move 1 [(13, 0)]) := by
  unfold output17407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output17407_skip : Flapjack.WordAlloc.isSkip output17407 = false := by
  rw [output17407_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages713.Parallel
