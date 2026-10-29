import InitECandidate.Proofs.LoopWordComputation
import InitECandidate.Proofs.FrontendStages.Word.Variables649
import InitECandidate.Proofs.WordStages.Source713
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints649.Data.Chunk007
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
@[irreducible, cbv_opaque] def output3072 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3071)).val
theorem output3072_def : output3072 = (.seq output39 output3071) := by
  unfold output3072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3073 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3072)).val
theorem output3073_def : output3073 = (output3072) := by
  unfold output3073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3074 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3061 output3073)).val
theorem output3074_def : output3074 = (.seq output3061 output3073) := by
  unfold output3074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3075 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3074)).val
theorem output3075_def : output3075 = (output3074) := by
  unfold output3075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3076 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1912#64]))).val
theorem output3076_def : output3076 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1912#64])) := by
  unfold output3076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3077 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3076)).val
theorem output3077_def : output3077 = (output3076) := by
  unfold output3077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3078 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6201670911048166766#64))).val
theorem output3078_def : output3078 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6201670911048166766#64)) := by
  unfold output3078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3079 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3078)).val
theorem output3079_def : output3079 = (output3078) := by
  unfold output3079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3080 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3079 output87)).val
theorem output3080_def : output3080 = (.seq output3079 output87) := by
  unfold output3080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3081 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3080)).val
theorem output3081_def : output3081 = (output3080) := by
  unfold output3081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3082 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3081)).val
theorem output3082_def : output3082 = (.seq output39 output3081) := by
  unfold output3082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3083 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3082)).val
theorem output3083_def : output3083 = (output3082) := by
  unfold output3083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3084 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3077 output3083)).val
theorem output3084_def : output3084 = (.seq output3077 output3083) := by
  unfold output3084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3085 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3084)).val
theorem output3085_def : output3085 = (output3084) := by
  unfold output3085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3086 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3085)).val
theorem output3086_def : output3086 = (.seq output39 output3085) := by
  unfold output3086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3087 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3086)).val
theorem output3087_def : output3087 = (output3086) := by
  unfold output3087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3088 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3075 output3087)).val
theorem output3088_def : output3088 = (.seq output3075 output3087) := by
  unfold output3088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3089 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3088)).val
theorem output3089_def : output3089 = (output3088) := by
  unfold output3089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3090 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1920#64]))).val
theorem output3090_def : output3090 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1920#64])) := by
  unfold output3090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3091 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3090)).val
theorem output3091_def : output3091 = (output3090) := by
  unfold output3091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3092 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17465657917644792520#64))).val
theorem output3092_def : output3092 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17465657917644792520#64)) := by
  unfold output3092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3093 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3092)).val
theorem output3093_def : output3093 = (output3092) := by
  unfold output3093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3094 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3093 output87)).val
theorem output3094_def : output3094 = (.seq output3093 output87) := by
  unfold output3094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3095 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3094)).val
theorem output3095_def : output3095 = (output3094) := by
  unfold output3095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3096 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3095)).val
theorem output3096_def : output3096 = (.seq output39 output3095) := by
  unfold output3096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3097 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3096)).val
theorem output3097_def : output3097 = (output3096) := by
  unfold output3097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3098 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3091 output3097)).val
theorem output3098_def : output3098 = (.seq output3091 output3097) := by
  unfold output3098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3099 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3098)).val
theorem output3099_def : output3099 = (output3098) := by
  unfold output3099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3100 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3099)).val
theorem output3100_def : output3100 = (.seq output39 output3099) := by
  unfold output3100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3101 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3100)).val
theorem output3101_def : output3101 = (output3100) := by
  unfold output3101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3102 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3089 output3101)).val
theorem output3102_def : output3102 = (.seq output3089 output3101) := by
  unfold output3102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3103 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3102)).val
theorem output3103_def : output3103 = (output3102) := by
  unfold output3103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3104 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1928#64]))).val
theorem output3104_def : output3104 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1928#64])) := by
  unfold output3104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3105 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3104)).val
theorem output3105_def : output3105 = (output3104) := by
  unfold output3105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3106 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7723742117508874335#64))).val
theorem output3106_def : output3106 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7723742117508874335#64)) := by
  unfold output3106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3107 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3106)).val
theorem output3107_def : output3107 = (output3106) := by
  unfold output3107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3108 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3107 output87)).val
theorem output3108_def : output3108 = (.seq output3107 output87) := by
  unfold output3108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3109 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3108)).val
theorem output3109_def : output3109 = (output3108) := by
  unfold output3109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3110 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3109)).val
theorem output3110_def : output3110 = (.seq output39 output3109) := by
  unfold output3110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3111 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3110)).val
theorem output3111_def : output3111 = (output3110) := by
  unfold output3111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3112 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3105 output3111)).val
theorem output3112_def : output3112 = (.seq output3105 output3111) := by
  unfold output3112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3113 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3112)).val
theorem output3113_def : output3113 = (output3112) := by
  unfold output3113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3114 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3113)).val
theorem output3114_def : output3114 = (.seq output39 output3113) := by
  unfold output3114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3115 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3114)).val
theorem output3115_def : output3115 = (output3114) := by
  unfold output3115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3116 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3103 output3115)).val
theorem output3116_def : output3116 = (.seq output3103 output3115) := by
  unfold output3116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3117 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3116)).val
theorem output3117_def : output3117 = (output3116) := by
  unfold output3117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3118 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1936#64]))).val
theorem output3118_def : output3118 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1936#64])) := by
  unfold output3118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3119 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3118)).val
theorem output3119_def : output3119 = (output3118) := by
  unfold output3119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3120 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13261148298159854981#64))).val
theorem output3120_def : output3120 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13261148298159854981#64)) := by
  unfold output3120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3121 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3120)).val
theorem output3121_def : output3121 = (output3120) := by
  unfold output3121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3122 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3121 output87)).val
theorem output3122_def : output3122 = (.seq output3121 output87) := by
  unfold output3122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3123 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3122)).val
theorem output3123_def : output3123 = (output3122) := by
  unfold output3123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3124 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3123)).val
theorem output3124_def : output3124 = (.seq output39 output3123) := by
  unfold output3124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3125 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3124)).val
theorem output3125_def : output3125 = (output3124) := by
  unfold output3125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3126 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3119 output3125)).val
theorem output3126_def : output3126 = (.seq output3119 output3125) := by
  unfold output3126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3127 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3126)).val
theorem output3127_def : output3127 = (output3126) := by
  unfold output3127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3128 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3127)).val
theorem output3128_def : output3128 = (.seq output39 output3127) := by
  unfold output3128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3129 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3128)).val
theorem output3129_def : output3129 = (output3128) := by
  unfold output3129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3130 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3117 output3129)).val
theorem output3130_def : output3130 = (.seq output3117 output3129) := by
  unfold output3130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3131 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3130)).val
theorem output3131_def : output3131 = (output3130) := by
  unfold output3131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3132 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1944#64]))).val
theorem output3132_def : output3132 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1944#64])) := by
  unfold output3132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3133 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3132)).val
theorem output3133_def : output3133 = (output3132) := by
  unfold output3133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3134 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1270119733718627136#64))).val
theorem output3134_def : output3134 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1270119733718627136#64)) := by
  unfold output3134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3135 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3134)).val
theorem output3135_def : output3135 = (output3134) := by
  unfold output3135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3136 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3135 output87)).val
theorem output3136_def : output3136 = (.seq output3135 output87) := by
  unfold output3136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3137 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3136)).val
theorem output3137_def : output3137 = (output3136) := by
  unfold output3137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3138 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3137)).val
theorem output3138_def : output3138 = (.seq output39 output3137) := by
  unfold output3138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3139 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3138)).val
theorem output3139_def : output3139 = (output3138) := by
  unfold output3139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3140 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3133 output3139)).val
theorem output3140_def : output3140 = (.seq output3133 output3139) := by
  unfold output3140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3141 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3140)).val
theorem output3141_def : output3141 = (output3140) := by
  unfold output3141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3142 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3141)).val
theorem output3142_def : output3142 = (.seq output39 output3141) := by
  unfold output3142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3143 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3142)).val
theorem output3143_def : output3143 = (output3142) := by
  unfold output3143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3144 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3131 output3143)).val
theorem output3144_def : output3144 = (.seq output3131 output3143) := by
  unfold output3144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3145 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3144)).val
theorem output3145_def : output3145 = (output3144) := by
  unfold output3145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3146 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1952#64]))).val
theorem output3146_def : output3146 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1952#64])) := by
  unfold output3146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3147 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3146)).val
theorem output3147_def : output3147 = (output3146) := by
  unfold output3147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3148 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16732261237459223483#64))).val
theorem output3148_def : output3148 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16732261237459223483#64)) := by
  unfold output3148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3149 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3148)).val
theorem output3149_def : output3149 = (output3148) := by
  unfold output3149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3150 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3149 output87)).val
theorem output3150_def : output3150 = (.seq output3149 output87) := by
  unfold output3150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3151 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3150)).val
theorem output3151_def : output3151 = (output3150) := by
  unfold output3151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3152 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3151)).val
theorem output3152_def : output3152 = (.seq output39 output3151) := by
  unfold output3152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3153 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3152)).val
theorem output3153_def : output3153 = (output3152) := by
  unfold output3153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3154 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3147 output3153)).val
theorem output3154_def : output3154 = (.seq output3147 output3153) := by
  unfold output3154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3155 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3154)).val
theorem output3155_def : output3155 = (output3154) := by
  unfold output3155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3156 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3155)).val
theorem output3156_def : output3156 = (.seq output39 output3155) := by
  unfold output3156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3157 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3156)).val
theorem output3157_def : output3157 = (output3156) := by
  unfold output3157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3158 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3145 output3157)).val
theorem output3158_def : output3158 = (.seq output3145 output3157) := by
  unfold output3158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3159 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3158)).val
theorem output3159_def : output3159 = (output3158) := by
  unfold output3159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3160 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1960#64]))).val
theorem output3160_def : output3160 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1960#64])) := by
  unfold output3160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3161 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3160)).val
theorem output3161_def : output3161 = (output3160) := by
  unfold output3161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3162 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5204176168283587414#64))).val
theorem output3162_def : output3162 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5204176168283587414#64)) := by
  unfold output3162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3163 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3162)).val
theorem output3163_def : output3163 = (output3162) := by
  unfold output3163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3164 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3163 output87)).val
theorem output3164_def : output3164 = (.seq output3163 output87) := by
  unfold output3164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3165 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3164)).val
theorem output3165_def : output3165 = (output3164) := by
  unfold output3165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3166 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3165)).val
theorem output3166_def : output3166 = (.seq output39 output3165) := by
  unfold output3166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3167 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3166)).val
theorem output3167_def : output3167 = (output3166) := by
  unfold output3167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3168 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3161 output3167)).val
theorem output3168_def : output3168 = (.seq output3161 output3167) := by
  unfold output3168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3169 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3168)).val
theorem output3169_def : output3169 = (output3168) := by
  unfold output3169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3170 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3169)).val
theorem output3170_def : output3170 = (.seq output39 output3169) := by
  unfold output3170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3171 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3170)).val
theorem output3171_def : output3171 = (output3170) := by
  unfold output3171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3172 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3159 output3171)).val
theorem output3172_def : output3172 = (.seq output3159 output3171) := by
  unfold output3172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3173 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3172)).val
theorem output3173_def : output3173 = (output3172) := by
  unfold output3173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3174 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1968#64]))).val
theorem output3174_def : output3174 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1968#64])) := by
  unfold output3174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3175 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3174)).val
theorem output3175_def : output3175 = (output3174) := by
  unfold output3175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3176 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17682789360670468203#64))).val
theorem output3176_def : output3176 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17682789360670468203#64)) := by
  unfold output3176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3177 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3176)).val
theorem output3177_def : output3177 = (output3176) := by
  unfold output3177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3178 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3177 output87)).val
theorem output3178_def : output3178 = (.seq output3177 output87) := by
  unfold output3178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3179 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3178)).val
theorem output3179_def : output3179 = (output3178) := by
  unfold output3179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3180 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3179)).val
theorem output3180_def : output3180 = (.seq output39 output3179) := by
  unfold output3180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3181 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3180)).val
theorem output3181_def : output3181 = (output3180) := by
  unfold output3181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3182 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3175 output3181)).val
theorem output3182_def : output3182 = (.seq output3175 output3181) := by
  unfold output3182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3183 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3182)).val
theorem output3183_def : output3183 = (output3182) := by
  unfold output3183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3184 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3183)).val
theorem output3184_def : output3184 = (.seq output39 output3183) := by
  unfold output3184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3185 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3184)).val
theorem output3185_def : output3185 = (output3184) := by
  unfold output3185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3186 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3173 output3185)).val
theorem output3186_def : output3186 = (.seq output3173 output3185) := by
  unfold output3186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3187 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3186)).val
theorem output3187_def : output3187 = (output3186) := by
  unfold output3187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3188 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1976#64]))).val
theorem output3188_def : output3188 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1976#64])) := by
  unfold output3188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3189 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3188)).val
theorem output3189_def : output3189 = (output3188) := by
  unfold output3189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3190 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8941869963990959127#64))).val
theorem output3190_def : output3190 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8941869963990959127#64)) := by
  unfold output3190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3191 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3190)).val
theorem output3191_def : output3191 = (output3190) := by
  unfold output3191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3192 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3191 output87)).val
theorem output3192_def : output3192 = (.seq output3191 output87) := by
  unfold output3192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3193 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3192)).val
theorem output3193_def : output3193 = (output3192) := by
  unfold output3193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3194 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3193)).val
theorem output3194_def : output3194 = (.seq output39 output3193) := by
  unfold output3194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3195 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3194)).val
theorem output3195_def : output3195 = (output3194) := by
  unfold output3195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3196 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3189 output3195)).val
theorem output3196_def : output3196 = (.seq output3189 output3195) := by
  unfold output3196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3197 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3196)).val
theorem output3197_def : output3197 = (output3196) := by
  unfold output3197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3198 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3197)).val
theorem output3198_def : output3198 = (.seq output39 output3197) := by
  unfold output3198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3199 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3198)).val
theorem output3199_def : output3199 = (output3198) := by
  unfold output3199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3200 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3187 output3199)).val
theorem output3200_def : output3200 = (.seq output3187 output3199) := by
  unfold output3200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3201 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3200)).val
theorem output3201_def : output3201 = (output3200) := by
  unfold output3201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3202 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1984#64]))).val
theorem output3202_def : output3202 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1984#64])) := by
  unfold output3202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3203 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3202)).val
theorem output3203_def : output3203 = (output3202) := by
  unfold output3203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3204 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 398773841247578140#64))).val
theorem output3204_def : output3204 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 398773841247578140#64)) := by
  unfold output3204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3205 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3204)).val
theorem output3205_def : output3205 = (output3204) := by
  unfold output3205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3206 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3205 output87)).val
theorem output3206_def : output3206 = (.seq output3205 output87) := by
  unfold output3206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3207 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3206)).val
theorem output3207_def : output3207 = (output3206) := by
  unfold output3207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3208 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3207)).val
theorem output3208_def : output3208 = (.seq output39 output3207) := by
  unfold output3208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3209 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3208)).val
theorem output3209_def : output3209 = (output3208) := by
  unfold output3209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3210 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3203 output3209)).val
theorem output3210_def : output3210 = (.seq output3203 output3209) := by
  unfold output3210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3211 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3210)).val
theorem output3211_def : output3211 = (output3210) := by
  unfold output3211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3212 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3211)).val
theorem output3212_def : output3212 = (.seq output39 output3211) := by
  unfold output3212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3213 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3212)).val
theorem output3213_def : output3213 = (output3212) := by
  unfold output3213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3214 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3201 output3213)).val
theorem output3214_def : output3214 = (.seq output3201 output3213) := by
  unfold output3214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3215 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3214)).val
theorem output3215_def : output3215 = (output3214) := by
  unfold output3215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3216 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1992#64]))).val
theorem output3216_def : output3216 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1992#64])) := by
  unfold output3216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3217 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3216)).val
theorem output3217_def : output3217 = (output3216) := by
  unfold output3217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3218 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1668951808976071471#64))).val
theorem output3218_def : output3218 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1668951808976071471#64)) := by
  unfold output3218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3219 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3218)).val
theorem output3219_def : output3219 = (output3218) := by
  unfold output3219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3220 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3219 output87)).val
theorem output3220_def : output3220 = (.seq output3219 output87) := by
  unfold output3220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3221 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3220)).val
theorem output3221_def : output3221 = (output3220) := by
  unfold output3221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3222 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3221)).val
theorem output3222_def : output3222 = (.seq output39 output3221) := by
  unfold output3222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3223 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3222)).val
theorem output3223_def : output3223 = (output3222) := by
  unfold output3223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3224 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3217 output3223)).val
theorem output3224_def : output3224 = (.seq output3217 output3223) := by
  unfold output3224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3225 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3224)).val
theorem output3225_def : output3225 = (output3224) := by
  unfold output3225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3226 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3225)).val
theorem output3226_def : output3226 = (.seq output39 output3225) := by
  unfold output3226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3227 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3226)).val
theorem output3227_def : output3227 = (output3226) := by
  unfold output3227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3228 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3215 output3227)).val
theorem output3228_def : output3228 = (.seq output3215 output3227) := by
  unfold output3228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3229 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3228)).val
theorem output3229_def : output3229 = (output3228) := by
  unfold output3229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3230 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2000#64]))).val
theorem output3230_def : output3230 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2000#64])) := by
  unfold output3230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3231 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3230)).val
theorem output3231_def : output3231 = (output3230) := by
  unfold output3231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3232 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16147550488514976944#64))).val
theorem output3232_def : output3232 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16147550488514976944#64)) := by
  unfold output3232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3233 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3232)).val
theorem output3233_def : output3233 = (output3232) := by
  unfold output3233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3234 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3233 output87)).val
theorem output3234_def : output3234 = (.seq output3233 output87) := by
  unfold output3234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3235 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3234)).val
theorem output3235_def : output3235 = (output3234) := by
  unfold output3235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3236 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3235)).val
theorem output3236_def : output3236 = (.seq output39 output3235) := by
  unfold output3236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3237 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3236)).val
theorem output3237_def : output3237 = (output3236) := by
  unfold output3237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3238 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3231 output3237)).val
theorem output3238_def : output3238 = (.seq output3231 output3237) := by
  unfold output3238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3239 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3238)).val
theorem output3239_def : output3239 = (output3238) := by
  unfold output3239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3240 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3239)).val
theorem output3240_def : output3240 = (.seq output39 output3239) := by
  unfold output3240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3241 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3240)).val
theorem output3241_def : output3241 = (output3240) := by
  unfold output3241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3242 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3229 output3241)).val
theorem output3242_def : output3242 = (.seq output3229 output3241) := by
  unfold output3242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3243 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3242)).val
theorem output3243_def : output3243 = (output3242) := by
  unfold output3243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3244 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2008#64]))).val
theorem output3244_def : output3244 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2008#64])) := by
  unfold output3244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3245 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3244)).val
theorem output3245_def : output3245 = (output3244) := by
  unfold output3245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3246 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10776056440809943711#64))).val
theorem output3246_def : output3246 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10776056440809943711#64)) := by
  unfold output3246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3247 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3246)).val
theorem output3247_def : output3247 = (output3246) := by
  unfold output3247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3248 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3247 output87)).val
theorem output3248_def : output3248 = (.seq output3247 output87) := by
  unfold output3248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3249 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3248)).val
theorem output3249_def : output3249 = (output3248) := by
  unfold output3249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3250 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3249)).val
theorem output3250_def : output3250 = (.seq output39 output3249) := by
  unfold output3250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3251 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3250)).val
theorem output3251_def : output3251 = (output3250) := by
  unfold output3251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3252 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3245 output3251)).val
theorem output3252_def : output3252 = (.seq output3245 output3251) := by
  unfold output3252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3253 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3252)).val
theorem output3253_def : output3253 = (output3252) := by
  unfold output3253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3254 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3253)).val
theorem output3254_def : output3254 = (.seq output39 output3253) := by
  unfold output3254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3255 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3254)).val
theorem output3255_def : output3255 = (output3254) := by
  unfold output3255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3256 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3243 output3255)).val
theorem output3256_def : output3256 = (.seq output3243 output3255) := by
  unfold output3256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3257 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3256)).val
theorem output3257_def : output3257 = (output3256) := by
  unfold output3257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3258 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2016#64]))).val
theorem output3258_def : output3258 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2016#64])) := by
  unfold output3258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3259 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3258)).val
theorem output3259_def : output3259 = (output3258) := by
  unfold output3259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3260 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7528018573573808732#64))).val
theorem output3260_def : output3260 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7528018573573808732#64)) := by
  unfold output3260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3261 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3260)).val
theorem output3261_def : output3261 = (output3260) := by
  unfold output3261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3262 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3261 output87)).val
theorem output3262_def : output3262 = (.seq output3261 output87) := by
  unfold output3262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3263 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3262)).val
theorem output3263_def : output3263 = (output3262) := by
  unfold output3263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3264 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3263)).val
theorem output3264_def : output3264 = (.seq output39 output3263) := by
  unfold output3264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3265 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3264)).val
theorem output3265_def : output3265 = (output3264) := by
  unfold output3265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3266 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3259 output3265)).val
theorem output3266_def : output3266 = (.seq output3259 output3265) := by
  unfold output3266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3267 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3266)).val
theorem output3267_def : output3267 = (output3266) := by
  unfold output3267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3268 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3267)).val
theorem output3268_def : output3268 = (.seq output39 output3267) := by
  unfold output3268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3269 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3268)).val
theorem output3269_def : output3269 = (output3268) := by
  unfold output3269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3270 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3257 output3269)).val
theorem output3270_def : output3270 = (.seq output3257 output3269) := by
  unfold output3270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3271 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3270)).val
theorem output3271_def : output3271 = (output3270) := by
  unfold output3271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3272 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2024#64]))).val
theorem output3272_def : output3272 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2024#64])) := by
  unfold output3272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3273 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3272)).val
theorem output3273_def : output3273 = (output3272) := by
  unfold output3273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3274 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14844748873776858085#64))).val
theorem output3274_def : output3274 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14844748873776858085#64)) := by
  unfold output3274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3275 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3274)).val
theorem output3275_def : output3275 = (output3274) := by
  unfold output3275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3276 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3275 output87)).val
theorem output3276_def : output3276 = (.seq output3275 output87) := by
  unfold output3276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3277 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3276)).val
theorem output3277_def : output3277 = (output3276) := by
  unfold output3277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3278 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3277)).val
theorem output3278_def : output3278 = (.seq output39 output3277) := by
  unfold output3278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3279 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3278)).val
theorem output3279_def : output3279 = (output3278) := by
  unfold output3279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3280 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3273 output3279)).val
theorem output3280_def : output3280 = (.seq output3273 output3279) := by
  unfold output3280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3281 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3280)).val
theorem output3281_def : output3281 = (output3280) := by
  unfold output3281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3282 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3281)).val
theorem output3282_def : output3282 = (.seq output39 output3281) := by
  unfold output3282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3283 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3282)).val
theorem output3283_def : output3283 = (output3282) := by
  unfold output3283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3284 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3271 output3283)).val
theorem output3284_def : output3284 = (.seq output3271 output3283) := by
  unfold output3284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3285 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3284)).val
theorem output3285_def : output3285 = (output3284) := by
  unfold output3285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3286 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2032#64]))).val
theorem output3286_def : output3286 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2032#64])) := by
  unfold output3286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3287 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3286)).val
theorem output3287_def : output3287 = (output3286) := by
  unfold output3287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3288 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2094253841180170779#64))).val
theorem output3288_def : output3288 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2094253841180170779#64)) := by
  unfold output3288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3289 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3288)).val
theorem output3289_def : output3289 = (output3288) := by
  unfold output3289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3290 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3289 output87)).val
theorem output3290_def : output3290 = (.seq output3289 output87) := by
  unfold output3290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3291 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3290)).val
theorem output3291_def : output3291 = (output3290) := by
  unfold output3291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3292 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3291)).val
theorem output3292_def : output3292 = (.seq output39 output3291) := by
  unfold output3292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3293 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3292)).val
theorem output3293_def : output3293 = (output3292) := by
  unfold output3293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3294 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3287 output3293)).val
theorem output3294_def : output3294 = (.seq output3287 output3293) := by
  unfold output3294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3295 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3294)).val
theorem output3295_def : output3295 = (output3294) := by
  unfold output3295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3296 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3295)).val
theorem output3296_def : output3296 = (.seq output39 output3295) := by
  unfold output3296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3297 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3296)).val
theorem output3297_def : output3297 = (output3296) := by
  unfold output3297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3298 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3285 output3297)).val
theorem output3298_def : output3298 = (.seq output3285 output3297) := by
  unfold output3298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3299 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3298)).val
theorem output3299_def : output3299 = (output3298) := by
  unfold output3299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3300 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2040#64]))).val
theorem output3300_def : output3300 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2040#64])) := by
  unfold output3300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3301 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3300)).val
theorem output3301_def : output3301 = (output3300) := by
  unfold output3301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3302 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 960393023080265964#64))).val
theorem output3302_def : output3302 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 960393023080265964#64)) := by
  unfold output3302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3303 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3302)).val
theorem output3303_def : output3303 = (output3302) := by
  unfold output3303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3304 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3303 output87)).val
theorem output3304_def : output3304 = (.seq output3303 output87) := by
  unfold output3304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3305 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3304)).val
theorem output3305_def : output3305 = (output3304) := by
  unfold output3305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3306 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3305)).val
theorem output3306_def : output3306 = (.seq output39 output3305) := by
  unfold output3306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3307 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3306)).val
theorem output3307_def : output3307 = (output3306) := by
  unfold output3307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3308 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3301 output3307)).val
theorem output3308_def : output3308 = (.seq output3301 output3307) := by
  unfold output3308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3309 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3308)).val
theorem output3309_def : output3309 = (output3308) := by
  unfold output3309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3310 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3309)).val
theorem output3310_def : output3310 = (.seq output39 output3309) := by
  unfold output3310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3311 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3310)).val
theorem output3311_def : output3311 = (output3310) := by
  unfold output3311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3312 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3299 output3311)).val
theorem output3312_def : output3312 = (.seq output3299 output3311) := by
  unfold output3312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3313 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3312)).val
theorem output3313_def : output3313 = (output3312) := by
  unfold output3313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3314 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2048#64]))).val
theorem output3314_def : output3314 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2048#64])) := by
  unfold output3314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3315 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3314)).val
theorem output3315_def : output3315 = (output3314) := by
  unfold output3315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3316 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14245880009877842017#64))).val
theorem output3316_def : output3316 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14245880009877842017#64)) := by
  unfold output3316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3317 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3316)).val
theorem output3317_def : output3317 = (output3316) := by
  unfold output3317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3318 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3317 output87)).val
theorem output3318_def : output3318 = (.seq output3317 output87) := by
  unfold output3318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3319 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3318)).val
theorem output3319_def : output3319 = (output3318) := by
  unfold output3319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3320 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3319)).val
theorem output3320_def : output3320 = (.seq output39 output3319) := by
  unfold output3320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3321 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3320)).val
theorem output3321_def : output3321 = (output3320) := by
  unfold output3321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3322 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3315 output3321)).val
theorem output3322_def : output3322 = (.seq output3315 output3321) := by
  unfold output3322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3323 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3322)).val
theorem output3323_def : output3323 = (output3322) := by
  unfold output3323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3324 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3323)).val
theorem output3324_def : output3324 = (.seq output39 output3323) := by
  unfold output3324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3325 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3324)).val
theorem output3325_def : output3325 = (output3324) := by
  unfold output3325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3326 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3313 output3325)).val
theorem output3326_def : output3326 = (.seq output3313 output3325) := by
  unfold output3326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3327 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3326)).val
theorem output3327_def : output3327 = (output3326) := by
  unfold output3327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3328 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2056#64]))).val
theorem output3328_def : output3328 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2056#64])) := by
  unfold output3328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3329 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3328)).val
theorem output3329_def : output3329 = (output3328) := by
  unfold output3329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3330 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5996228842464768403#64))).val
theorem output3330_def : output3330 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5996228842464768403#64)) := by
  unfold output3330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3331 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3330)).val
theorem output3331_def : output3331 = (output3330) := by
  unfold output3331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3332 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3331 output87)).val
theorem output3332_def : output3332 = (.seq output3331 output87) := by
  unfold output3332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3333 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3332)).val
theorem output3333_def : output3333 = (output3332) := by
  unfold output3333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3334 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3333)).val
theorem output3334_def : output3334 = (.seq output39 output3333) := by
  unfold output3334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3335 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3334)).val
theorem output3335_def : output3335 = (output3334) := by
  unfold output3335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3336 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3329 output3335)).val
theorem output3336_def : output3336 = (.seq output3329 output3335) := by
  unfold output3336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3337 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3336)).val
theorem output3337_def : output3337 = (output3336) := by
  unfold output3337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3338 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3337)).val
theorem output3338_def : output3338 = (.seq output39 output3337) := by
  unfold output3338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3339 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3338)).val
theorem output3339_def : output3339 = (output3338) := by
  unfold output3339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3340 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3327 output3339)).val
theorem output3340_def : output3340 = (.seq output3327 output3339) := by
  unfold output3340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3341 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3340)).val
theorem output3341_def : output3341 = (output3340) := by
  unfold output3341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3342 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2064#64]))).val
theorem output3342_def : output3342 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2064#64])) := by
  unfold output3342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3343 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3342)).val
theorem output3343_def : output3343 = (output3342) := by
  unfold output3343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3344 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17416319752018800771#64))).val
theorem output3344_def : output3344 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17416319752018800771#64)) := by
  unfold output3344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3345 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3344)).val
theorem output3345_def : output3345 = (output3344) := by
  unfold output3345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3346 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3345 output87)).val
theorem output3346_def : output3346 = (.seq output3345 output87) := by
  unfold output3346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3347 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3346)).val
theorem output3347_def : output3347 = (output3346) := by
  unfold output3347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3348 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3347)).val
theorem output3348_def : output3348 = (.seq output39 output3347) := by
  unfold output3348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3349 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3348)).val
theorem output3349_def : output3349 = (output3348) := by
  unfold output3349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3350 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3343 output3349)).val
theorem output3350_def : output3350 = (.seq output3343 output3349) := by
  unfold output3350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3351 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3350)).val
theorem output3351_def : output3351 = (output3350) := by
  unfold output3351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3352 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3351)).val
theorem output3352_def : output3352 = (.seq output39 output3351) := by
  unfold output3352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3353 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3352)).val
theorem output3353_def : output3353 = (output3352) := by
  unfold output3353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3354 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3341 output3353)).val
theorem output3354_def : output3354 = (.seq output3341 output3353) := by
  unfold output3354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3355 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3354)).val
theorem output3355_def : output3355 = (output3354) := by
  unfold output3355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3356 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2072#64]))).val
theorem output3356_def : output3356 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2072#64])) := by
  unfold output3356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3357 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3356)).val
theorem output3357_def : output3357 = (output3356) := by
  unfold output3357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3358 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15561595211679121189#64))).val
theorem output3358_def : output3358 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15561595211679121189#64)) := by
  unfold output3358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3359 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3358)).val
theorem output3359_def : output3359 = (output3358) := by
  unfold output3359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3360 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3359 output87)).val
theorem output3360_def : output3360 = (.seq output3359 output87) := by
  unfold output3360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3361 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3360)).val
theorem output3361_def : output3361 = (output3360) := by
  unfold output3361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3362 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3361)).val
theorem output3362_def : output3362 = (.seq output39 output3361) := by
  unfold output3362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3363 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3362)).val
theorem output3363_def : output3363 = (output3362) := by
  unfold output3363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3364 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3357 output3363)).val
theorem output3364_def : output3364 = (.seq output3357 output3363) := by
  unfold output3364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3365 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3364)).val
theorem output3365_def : output3365 = (output3364) := by
  unfold output3365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3366 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3365)).val
theorem output3366_def : output3366 = (.seq output39 output3365) := by
  unfold output3366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3367 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3366)).val
theorem output3367_def : output3367 = (output3366) := by
  unfold output3367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3368 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3355 output3367)).val
theorem output3368_def : output3368 = (.seq output3355 output3367) := by
  unfold output3368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3369 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3368)).val
theorem output3369_def : output3369 = (output3368) := by
  unfold output3369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3370 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2080#64]))).val
theorem output3370_def : output3370 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2080#64])) := by
  unfold output3370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3371 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3370)).val
theorem output3371_def : output3371 = (output3370) := by
  unfold output3371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3372 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5622191986793862162#64))).val
theorem output3372_def : output3372 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5622191986793862162#64)) := by
  unfold output3372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3373 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3372)).val
theorem output3373_def : output3373 = (output3372) := by
  unfold output3373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3374 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3373 output87)).val
theorem output3374_def : output3374 = (.seq output3373 output87) := by
  unfold output3374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3375 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3374)).val
theorem output3375_def : output3375 = (output3374) := by
  unfold output3375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3376 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3375)).val
theorem output3376_def : output3376 = (.seq output39 output3375) := by
  unfold output3376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3377 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3376)).val
theorem output3377_def : output3377 = (output3376) := by
  unfold output3377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3378 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3371 output3377)).val
theorem output3378_def : output3378 = (.seq output3371 output3377) := by
  unfold output3378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3379 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3378)).val
theorem output3379_def : output3379 = (output3378) := by
  unfold output3379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3380 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3379)).val
theorem output3380_def : output3380 = (.seq output39 output3379) := by
  unfold output3380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3381 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3380)).val
theorem output3381_def : output3381 = (output3380) := by
  unfold output3381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3382 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3369 output3381)).val
theorem output3382_def : output3382 = (.seq output3369 output3381) := by
  unfold output3382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3383 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3382)).val
theorem output3383_def : output3383 = (output3382) := by
  unfold output3383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3384 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2088#64]))).val
theorem output3384_def : output3384 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2088#64])) := by
  unfold output3384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3385 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3384)).val
theorem output3385_def : output3385 = (output3384) := by
  unfold output3385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3386 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1691355743628586423#64))).val
theorem output3386_def : output3386 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1691355743628586423#64)) := by
  unfold output3386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3387 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3386)).val
theorem output3387_def : output3387 = (output3386) := by
  unfold output3387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3388 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3387 output87)).val
theorem output3388_def : output3388 = (.seq output3387 output87) := by
  unfold output3388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3389 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3388)).val
theorem output3389_def : output3389 = (output3388) := by
  unfold output3389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3390 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3389)).val
theorem output3390_def : output3390 = (.seq output39 output3389) := by
  unfold output3390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3391 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3390)).val
theorem output3391_def : output3391 = (output3390) := by
  unfold output3391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3392 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3385 output3391)).val
theorem output3392_def : output3392 = (.seq output3385 output3391) := by
  unfold output3392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3393 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3392)).val
theorem output3393_def : output3393 = (output3392) := by
  unfold output3393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3394 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3393)).val
theorem output3394_def : output3394 = (.seq output39 output3393) := by
  unfold output3394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3395 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3394)).val
theorem output3395_def : output3395 = (output3394) := by
  unfold output3395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3396 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3383 output3395)).val
theorem output3396_def : output3396 = (.seq output3383 output3395) := by
  unfold output3396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3397 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3396)).val
theorem output3397_def : output3397 = (output3396) := by
  unfold output3397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3398 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2096#64]))).val
theorem output3398_def : output3398 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2096#64])) := by
  unfold output3398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3399 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3398)).val
theorem output3399_def : output3399 = (output3398) := by
  unfold output3399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3400 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5842660658088809945#64))).val
theorem output3400_def : output3400 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5842660658088809945#64)) := by
  unfold output3400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3401 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3400)).val
theorem output3401_def : output3401 = (output3400) := by
  unfold output3401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3402 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3401 output87)).val
theorem output3402_def : output3402 = (.seq output3401 output87) := by
  unfold output3402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3403 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3402)).val
theorem output3403_def : output3403 = (output3402) := by
  unfold output3403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3404 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3403)).val
theorem output3404_def : output3404 = (.seq output39 output3403) := by
  unfold output3404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3405 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3404)).val
theorem output3405_def : output3405 = (output3404) := by
  unfold output3405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3406 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3399 output3405)).val
theorem output3406_def : output3406 = (.seq output3399 output3405) := by
  unfold output3406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3407 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3406)).val
theorem output3407_def : output3407 = (output3406) := by
  unfold output3407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3408 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3407)).val
theorem output3408_def : output3408 = (.seq output39 output3407) := by
  unfold output3408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3409 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3408)).val
theorem output3409_def : output3409 = (output3408) := by
  unfold output3409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3410 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3397 output3409)).val
theorem output3410_def : output3410 = (.seq output3397 output3409) := by
  unfold output3410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3411 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3410)).val
theorem output3411_def : output3411 = (output3410) := by
  unfold output3411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3412 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2104#64]))).val
theorem output3412_def : output3412 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2104#64])) := by
  unfold output3412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3413 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3412)).val
theorem output3413_def : output3413 = (output3412) := by
  unfold output3413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3414 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10978131499682789316#64))).val
theorem output3414_def : output3414 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10978131499682789316#64)) := by
  unfold output3414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3415 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3414)).val
theorem output3415_def : output3415 = (output3414) := by
  unfold output3415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3416 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3415 output87)).val
theorem output3416_def : output3416 = (.seq output3415 output87) := by
  unfold output3416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3417 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3416)).val
theorem output3417_def : output3417 = (output3416) := by
  unfold output3417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3418 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3417)).val
theorem output3418_def : output3418 = (.seq output39 output3417) := by
  unfold output3418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3419 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3418)).val
theorem output3419_def : output3419 = (output3418) := by
  unfold output3419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3420 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3413 output3419)).val
theorem output3420_def : output3420 = (.seq output3413 output3419) := by
  unfold output3420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3421 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3420)).val
theorem output3421_def : output3421 = (output3420) := by
  unfold output3421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3422 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3421)).val
theorem output3422_def : output3422 = (.seq output39 output3421) := by
  unfold output3422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3423 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3422)).val
theorem output3423_def : output3423 = (output3422) := by
  unfold output3423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3424 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3411 output3423)).val
theorem output3424_def : output3424 = (.seq output3411 output3423) := by
  unfold output3424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3425 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3424)).val
theorem output3425_def : output3425 = (output3424) := by
  unfold output3425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3426 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2112#64]))).val
theorem output3426_def : output3426 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2112#64])) := by
  unfold output3426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3427 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3426)).val
theorem output3427_def : output3427 = (output3426) := by
  unfold output3427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3428 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 607681821319080984#64))).val
theorem output3428_def : output3428 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 607681821319080984#64)) := by
  unfold output3428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3429 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3428)).val
theorem output3429_def : output3429 = (output3428) := by
  unfold output3429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3430 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3429 output87)).val
theorem output3430_def : output3430 = (.seq output3429 output87) := by
  unfold output3430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3431 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3430)).val
theorem output3431_def : output3431 = (output3430) := by
  unfold output3431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3432 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3431)).val
theorem output3432_def : output3432 = (.seq output39 output3431) := by
  unfold output3432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3433 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3432)).val
theorem output3433_def : output3433 = (output3432) := by
  unfold output3433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3434 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3427 output3433)).val
theorem output3434_def : output3434 = (.seq output3427 output3433) := by
  unfold output3434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3435 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3434)).val
theorem output3435_def : output3435 = (output3434) := by
  unfold output3435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3436 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3435)).val
theorem output3436_def : output3436 = (.seq output39 output3435) := by
  unfold output3436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3437 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3436)).val
theorem output3437_def : output3437 = (output3436) := by
  unfold output3437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3438 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3425 output3437)).val
theorem output3438_def : output3438 = (.seq output3425 output3437) := by
  unfold output3438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3439 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3438)).val
theorem output3439_def : output3439 = (output3438) := by
  unfold output3439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3440 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2120#64]))).val
theorem output3440_def : output3440 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2120#64])) := by
  unfold output3440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3441 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3440)).val
theorem output3441_def : output3441 = (output3440) := by
  unfold output3441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3442 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11086623519836470079#64))).val
theorem output3442_def : output3442 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11086623519836470079#64)) := by
  unfold output3442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3443 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3442)).val
theorem output3443_def : output3443 = (output3442) := by
  unfold output3443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3444 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3443 output87)).val
theorem output3444_def : output3444 = (.seq output3443 output87) := by
  unfold output3444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3445 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3444)).val
theorem output3445_def : output3445 = (output3444) := by
  unfold output3445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3446 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3445)).val
theorem output3446_def : output3446 = (.seq output39 output3445) := by
  unfold output3446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3447 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3446)).val
theorem output3447_def : output3447 = (output3446) := by
  unfold output3447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3448 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3441 output3447)).val
theorem output3448_def : output3448 = (.seq output3441 output3447) := by
  unfold output3448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3449 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3448)).val
theorem output3449_def : output3449 = (output3448) := by
  unfold output3449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3450 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output3449)).val
theorem output3450_def : output3450 = (.seq output39 output3449) := by
  unfold output3450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3451 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3450)).val
theorem output3451_def : output3451 = (output3450) := by
  unfold output3451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3452 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3439 output3451)).val
theorem output3452_def : output3452 = (.seq output3439 output3451) := by
  unfold output3452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3453 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3452)).val
theorem output3453_def : output3453 = (output3452) := by
  unfold output3453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3454 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2128#64]))).val
theorem output3454_def : output3454 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2128#64])) := by
  unfold output3454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3455 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3454)).val
theorem output3455_def : output3455 = (output3454) := by
  unfold output3455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

end InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
