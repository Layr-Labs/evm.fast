import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints176.Data.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints176
theorem node3072_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3026 (240, 8) = (output3072, (240, 8)) := by
  rw [output3072_def]
  kernel_rfl

theorem node3073_conditional
    (child3072 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3026 (240, 8) = (output3072, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3027 (240, 8) = (output3073, (240, 8)) := by
  rw [output3073_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3072

theorem node3074_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3028 (240, 8) = (output3074, (240, 8)) := by
  rw [output3074_def]
  kernel_rfl

theorem node3075_conditional
    (child3074 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3028 (240, 8) = (output3074, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3029 (240, 8) = (output3075, (240, 8)) := by
  rw [output3075_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3074

theorem node3076_conditional
    (child3075 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3029 (240, 8) = (output3075, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3030 (240, 8) = (output3076, (240, 8)) := by
  rw [output3076_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3075 child167

theorem node3077_conditional
    (child3076 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3030 (240, 8) = (output3076, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3031 (240, 8) = (output3077, (240, 8)) := by
  rw [output3077_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3076

theorem node3078_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3077 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3031 (240, 8) = (output3077, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3032 (240, 8) = (output3078, (240, 8)) := by
  rw [output3078_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3077

theorem node3079_conditional
    (child3078 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3032 (240, 8) = (output3078, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3033 (240, 8) = (output3079, (240, 8)) := by
  rw [output3079_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3078

theorem node3080_conditional
    (child3073 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3027 (240, 8) = (output3073, (240, 8)))
    (child3079 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3033 (240, 8) = (output3079, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3034 (240, 8) = (output3080, (240, 8)) := by
  rw [output3080_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3073 child3079

theorem node3081_conditional
    (child3080 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3034 (240, 8) = (output3080, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3035 (240, 8) = (output3081, (240, 8)) := by
  rw [output3081_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3080

theorem node3082_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3081 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3035 (240, 8) = (output3081, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3036 (240, 8) = (output3082, (240, 8)) := by
  rw [output3082_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3081

theorem node3083_conditional
    (child3082 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3036 (240, 8) = (output3082, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3037 (240, 8) = (output3083, (240, 8)) := by
  rw [output3083_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3082

theorem node3084_conditional
    (child3071 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3025 (240, 2) = (output3071, (240, 8)))
    (child3083 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3037 (240, 8) = (output3083, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3038 (240, 2) = (output3084, (240, 8)) := by
  rw [output3084_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3071 child3083

theorem node3085_conditional
    (child3084 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3038 (240, 2) = (output3084, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3039 (240, 2) = (output3085, (240, 8)) := by
  rw [output3085_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3084

theorem node3086_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3040 (240, 8) = (output3086, (240, 8)) := by
  rw [output3086_def]
  kernel_rfl

theorem node3087_conditional
    (child3086 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3040 (240, 8) = (output3086, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3041 (240, 8) = (output3087, (240, 8)) := by
  rw [output3087_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3086

theorem node3088_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3042 (240, 8) = (output3088, (240, 8)) := by
  rw [output3088_def]
  kernel_rfl

theorem node3089_conditional
    (child3088 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3042 (240, 8) = (output3088, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3043 (240, 8) = (output3089, (240, 8)) := by
  rw [output3089_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3088

theorem node3090_conditional
    (child3089 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3043 (240, 8) = (output3089, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3044 (240, 8) = (output3090, (240, 8)) := by
  rw [output3090_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3089 child167

theorem node3091_conditional
    (child3090 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3044 (240, 8) = (output3090, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3045 (240, 8) = (output3091, (240, 8)) := by
  rw [output3091_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3090

theorem node3092_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3091 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3045 (240, 8) = (output3091, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3046 (240, 8) = (output3092, (240, 8)) := by
  rw [output3092_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3091

theorem node3093_conditional
    (child3092 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3046 (240, 8) = (output3092, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3047 (240, 8) = (output3093, (240, 8)) := by
  rw [output3093_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3092

theorem node3094_conditional
    (child3087 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3041 (240, 8) = (output3087, (240, 8)))
    (child3093 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3047 (240, 8) = (output3093, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3048 (240, 8) = (output3094, (240, 8)) := by
  rw [output3094_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3087 child3093

theorem node3095_conditional
    (child3094 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3048 (240, 8) = (output3094, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3049 (240, 8) = (output3095, (240, 8)) := by
  rw [output3095_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3094

theorem node3096_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3095 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3049 (240, 8) = (output3095, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3050 (240, 8) = (output3096, (240, 8)) := by
  rw [output3096_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3095

theorem node3097_conditional
    (child3096 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3050 (240, 8) = (output3096, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3051 (240, 8) = (output3097, (240, 8)) := by
  rw [output3097_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3096

theorem node3098_conditional
    (child3085 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3039 (240, 2) = (output3085, (240, 8)))
    (child3097 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3051 (240, 8) = (output3097, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3052 (240, 2) = (output3098, (240, 8)) := by
  rw [output3098_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3085 child3097

theorem node3099_conditional
    (child3098 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3052 (240, 2) = (output3098, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3053 (240, 2) = (output3099, (240, 8)) := by
  rw [output3099_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3098

theorem node3100_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3054 (240, 8) = (output3100, (240, 8)) := by
  rw [output3100_def]
  kernel_rfl

theorem node3101_conditional
    (child3100 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3054 (240, 8) = (output3100, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3055 (240, 8) = (output3101, (240, 8)) := by
  rw [output3101_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3100

theorem node3102_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3056 (240, 8) = (output3102, (240, 8)) := by
  rw [output3102_def]
  kernel_rfl

theorem node3103_conditional
    (child3102 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3056 (240, 8) = (output3102, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3057 (240, 8) = (output3103, (240, 8)) := by
  rw [output3103_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3102

theorem node3104_conditional
    (child3103 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3057 (240, 8) = (output3103, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3058 (240, 8) = (output3104, (240, 8)) := by
  rw [output3104_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3103 child167

theorem node3105_conditional
    (child3104 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3058 (240, 8) = (output3104, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3059 (240, 8) = (output3105, (240, 8)) := by
  rw [output3105_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3104

theorem node3106_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3105 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3059 (240, 8) = (output3105, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3060 (240, 8) = (output3106, (240, 8)) := by
  rw [output3106_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3105

theorem node3107_conditional
    (child3106 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3060 (240, 8) = (output3106, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3061 (240, 8) = (output3107, (240, 8)) := by
  rw [output3107_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3106

theorem node3108_conditional
    (child3101 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3055 (240, 8) = (output3101, (240, 8)))
    (child3107 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3061 (240, 8) = (output3107, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3062 (240, 8) = (output3108, (240, 8)) := by
  rw [output3108_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3101 child3107

theorem node3109_conditional
    (child3108 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3062 (240, 8) = (output3108, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3063 (240, 8) = (output3109, (240, 8)) := by
  rw [output3109_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3108

theorem node3110_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3109 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3063 (240, 8) = (output3109, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3064 (240, 8) = (output3110, (240, 8)) := by
  rw [output3110_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3109

theorem node3111_conditional
    (child3110 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3064 (240, 8) = (output3110, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3065 (240, 8) = (output3111, (240, 8)) := by
  rw [output3111_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3110

theorem node3112_conditional
    (child3099 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3053 (240, 2) = (output3099, (240, 8)))
    (child3111 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3065 (240, 8) = (output3111, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3066 (240, 2) = (output3112, (240, 8)) := by
  rw [output3112_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3099 child3111

theorem node3113_conditional
    (child3112 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3066 (240, 2) = (output3112, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3067 (240, 2) = (output3113, (240, 8)) := by
  rw [output3113_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3112

theorem node3114_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3068 (240, 8) = (output3114, (240, 8)) := by
  rw [output3114_def]
  kernel_rfl

theorem node3115_conditional
    (child3114 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3068 (240, 8) = (output3114, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3069 (240, 8) = (output3115, (240, 8)) := by
  rw [output3115_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3114

theorem node3116_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3070 (240, 8) = (output3116, (240, 8)) := by
  rw [output3116_def]
  kernel_rfl

theorem node3117_conditional
    (child3116 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3070 (240, 8) = (output3116, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3071 (240, 8) = (output3117, (240, 8)) := by
  rw [output3117_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3116

theorem node3118_conditional
    (child3117 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3071 (240, 8) = (output3117, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3072 (240, 8) = (output3118, (240, 8)) := by
  rw [output3118_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3117 child167

theorem node3119_conditional
    (child3118 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3072 (240, 8) = (output3118, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3073 (240, 8) = (output3119, (240, 8)) := by
  rw [output3119_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3118

theorem node3120_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3073 (240, 8) = (output3119, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3074 (240, 8) = (output3120, (240, 8)) := by
  rw [output3120_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3119

theorem node3121_conditional
    (child3120 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3074 (240, 8) = (output3120, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3075 (240, 8) = (output3121, (240, 8)) := by
  rw [output3121_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3120

theorem node3122_conditional
    (child3115 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3069 (240, 8) = (output3115, (240, 8)))
    (child3121 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3075 (240, 8) = (output3121, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3076 (240, 8) = (output3122, (240, 8)) := by
  rw [output3122_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3115 child3121

theorem node3123_conditional
    (child3122 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3076 (240, 8) = (output3122, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3077 (240, 8) = (output3123, (240, 8)) := by
  rw [output3123_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3122

theorem node3124_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3123 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3077 (240, 8) = (output3123, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3078 (240, 8) = (output3124, (240, 8)) := by
  rw [output3124_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3123

theorem node3125_conditional
    (child3124 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3078 (240, 8) = (output3124, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3079 (240, 8) = (output3125, (240, 8)) := by
  rw [output3125_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3124

theorem node3126_conditional
    (child3113 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3067 (240, 2) = (output3113, (240, 8)))
    (child3125 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3079 (240, 8) = (output3125, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3080 (240, 2) = (output3126, (240, 8)) := by
  rw [output3126_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3113 child3125

theorem node3127_conditional
    (child3126 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3080 (240, 2) = (output3126, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3081 (240, 2) = (output3127, (240, 8)) := by
  rw [output3127_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3126

theorem node3128_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3082 (240, 8) = (output3128, (240, 8)) := by
  rw [output3128_def]
  kernel_rfl

theorem node3129_conditional
    (child3128 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3082 (240, 8) = (output3128, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3083 (240, 8) = (output3129, (240, 8)) := by
  rw [output3129_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3128

theorem node3130_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3084 (240, 8) = (output3130, (240, 8)) := by
  rw [output3130_def]
  kernel_rfl

theorem node3131_conditional
    (child3130 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3084 (240, 8) = (output3130, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3085 (240, 8) = (output3131, (240, 8)) := by
  rw [output3131_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3130

theorem node3132_conditional
    (child3131 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3085 (240, 8) = (output3131, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3086 (240, 8) = (output3132, (240, 8)) := by
  rw [output3132_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3131 child167

theorem node3133_conditional
    (child3132 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3086 (240, 8) = (output3132, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3087 (240, 8) = (output3133, (240, 8)) := by
  rw [output3133_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3132

theorem node3134_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3133 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3087 (240, 8) = (output3133, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3088 (240, 8) = (output3134, (240, 8)) := by
  rw [output3134_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3133

theorem node3135_conditional
    (child3134 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3088 (240, 8) = (output3134, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3089 (240, 8) = (output3135, (240, 8)) := by
  rw [output3135_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3134

theorem node3136_conditional
    (child3129 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3083 (240, 8) = (output3129, (240, 8)))
    (child3135 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3089 (240, 8) = (output3135, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3090 (240, 8) = (output3136, (240, 8)) := by
  rw [output3136_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3129 child3135

theorem node3137_conditional
    (child3136 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3090 (240, 8) = (output3136, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3091 (240, 8) = (output3137, (240, 8)) := by
  rw [output3137_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3136

theorem node3138_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3137 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3091 (240, 8) = (output3137, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3092 (240, 8) = (output3138, (240, 8)) := by
  rw [output3138_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3137

theorem node3139_conditional
    (child3138 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3092 (240, 8) = (output3138, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3093 (240, 8) = (output3139, (240, 8)) := by
  rw [output3139_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3138

theorem node3140_conditional
    (child3127 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3081 (240, 2) = (output3127, (240, 8)))
    (child3139 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3093 (240, 8) = (output3139, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3094 (240, 2) = (output3140, (240, 8)) := by
  rw [output3140_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3127 child3139

theorem node3141_conditional
    (child3140 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3094 (240, 2) = (output3140, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3095 (240, 2) = (output3141, (240, 8)) := by
  rw [output3141_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3140

theorem node3142_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3096 (240, 8) = (output3142, (240, 8)) := by
  rw [output3142_def]
  kernel_rfl

theorem node3143_conditional
    (child3142 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3096 (240, 8) = (output3142, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3097 (240, 8) = (output3143, (240, 8)) := by
  rw [output3143_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3142

theorem node3144_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3098 (240, 8) = (output3144, (240, 8)) := by
  rw [output3144_def]
  kernel_rfl

theorem node3145_conditional
    (child3144 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3098 (240, 8) = (output3144, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3099 (240, 8) = (output3145, (240, 8)) := by
  rw [output3145_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3144

theorem node3146_conditional
    (child3145 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3099 (240, 8) = (output3145, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3100 (240, 8) = (output3146, (240, 8)) := by
  rw [output3146_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3145 child167

theorem node3147_conditional
    (child3146 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3100 (240, 8) = (output3146, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3101 (240, 8) = (output3147, (240, 8)) := by
  rw [output3147_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3146

theorem node3148_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3147 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3101 (240, 8) = (output3147, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3102 (240, 8) = (output3148, (240, 8)) := by
  rw [output3148_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3147

theorem node3149_conditional
    (child3148 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3102 (240, 8) = (output3148, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3103 (240, 8) = (output3149, (240, 8)) := by
  rw [output3149_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3148

theorem node3150_conditional
    (child3143 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3097 (240, 8) = (output3143, (240, 8)))
    (child3149 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3103 (240, 8) = (output3149, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3104 (240, 8) = (output3150, (240, 8)) := by
  rw [output3150_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3143 child3149

theorem node3151_conditional
    (child3150 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3104 (240, 8) = (output3150, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3105 (240, 8) = (output3151, (240, 8)) := by
  rw [output3151_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3150

theorem node3152_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3151 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3105 (240, 8) = (output3151, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3106 (240, 8) = (output3152, (240, 8)) := by
  rw [output3152_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3151

theorem node3153_conditional
    (child3152 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3106 (240, 8) = (output3152, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3107 (240, 8) = (output3153, (240, 8)) := by
  rw [output3153_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3152

theorem node3154_conditional
    (child3141 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3095 (240, 2) = (output3141, (240, 8)))
    (child3153 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3107 (240, 8) = (output3153, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3108 (240, 2) = (output3154, (240, 8)) := by
  rw [output3154_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3141 child3153

theorem node3155_conditional
    (child3154 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3108 (240, 2) = (output3154, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3109 (240, 2) = (output3155, (240, 8)) := by
  rw [output3155_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3154

theorem node3156_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3110 (240, 8) = (output3156, (240, 8)) := by
  rw [output3156_def]
  kernel_rfl

theorem node3157_conditional
    (child3156 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3110 (240, 8) = (output3156, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3111 (240, 8) = (output3157, (240, 8)) := by
  rw [output3157_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3156

theorem node3158_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3112 (240, 8) = (output3158, (240, 8)) := by
  rw [output3158_def]
  kernel_rfl

theorem node3159_conditional
    (child3158 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3112 (240, 8) = (output3158, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3113 (240, 8) = (output3159, (240, 8)) := by
  rw [output3159_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3158

theorem node3160_conditional
    (child3159 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3113 (240, 8) = (output3159, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3114 (240, 8) = (output3160, (240, 8)) := by
  rw [output3160_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3159 child167

theorem node3161_conditional
    (child3160 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3114 (240, 8) = (output3160, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3115 (240, 8) = (output3161, (240, 8)) := by
  rw [output3161_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3160

theorem node3162_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3161 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3115 (240, 8) = (output3161, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3116 (240, 8) = (output3162, (240, 8)) := by
  rw [output3162_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3161

theorem node3163_conditional
    (child3162 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3116 (240, 8) = (output3162, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3117 (240, 8) = (output3163, (240, 8)) := by
  rw [output3163_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3162

theorem node3164_conditional
    (child3157 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3111 (240, 8) = (output3157, (240, 8)))
    (child3163 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3117 (240, 8) = (output3163, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3118 (240, 8) = (output3164, (240, 8)) := by
  rw [output3164_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3157 child3163

theorem node3165_conditional
    (child3164 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3118 (240, 8) = (output3164, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3119 (240, 8) = (output3165, (240, 8)) := by
  rw [output3165_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3164

theorem node3166_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3165 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3119 (240, 8) = (output3165, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3120 (240, 8) = (output3166, (240, 8)) := by
  rw [output3166_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3165

theorem node3167_conditional
    (child3166 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3120 (240, 8) = (output3166, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3121 (240, 8) = (output3167, (240, 8)) := by
  rw [output3167_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3166

theorem node3168_conditional
    (child3155 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3109 (240, 2) = (output3155, (240, 8)))
    (child3167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3121 (240, 8) = (output3167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3122 (240, 2) = (output3168, (240, 8)) := by
  rw [output3168_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3155 child3167

theorem node3169_conditional
    (child3168 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3122 (240, 2) = (output3168, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3123 (240, 2) = (output3169, (240, 8)) := by
  rw [output3169_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3168

theorem node3170_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3124 (240, 8) = (output3170, (240, 8)) := by
  rw [output3170_def]
  kernel_rfl

theorem node3171_conditional
    (child3170 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3124 (240, 8) = (output3170, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3125 (240, 8) = (output3171, (240, 8)) := by
  rw [output3171_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3170

theorem node3172_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3126 (240, 8) = (output3172, (240, 8)) := by
  rw [output3172_def]
  kernel_rfl

theorem node3173_conditional
    (child3172 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3126 (240, 8) = (output3172, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3127 (240, 8) = (output3173, (240, 8)) := by
  rw [output3173_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3172

theorem node3174_conditional
    (child3173 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3127 (240, 8) = (output3173, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3128 (240, 8) = (output3174, (240, 8)) := by
  rw [output3174_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3173 child167

theorem node3175_conditional
    (child3174 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3128 (240, 8) = (output3174, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3129 (240, 8) = (output3175, (240, 8)) := by
  rw [output3175_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3174

theorem node3176_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3175 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3129 (240, 8) = (output3175, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3130 (240, 8) = (output3176, (240, 8)) := by
  rw [output3176_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3175

theorem node3177_conditional
    (child3176 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3130 (240, 8) = (output3176, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3131 (240, 8) = (output3177, (240, 8)) := by
  rw [output3177_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3176

theorem node3178_conditional
    (child3171 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3125 (240, 8) = (output3171, (240, 8)))
    (child3177 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3131 (240, 8) = (output3177, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3132 (240, 8) = (output3178, (240, 8)) := by
  rw [output3178_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3171 child3177

theorem node3179_conditional
    (child3178 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3132 (240, 8) = (output3178, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3133 (240, 8) = (output3179, (240, 8)) := by
  rw [output3179_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3178

theorem node3180_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3179 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3133 (240, 8) = (output3179, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3134 (240, 8) = (output3180, (240, 8)) := by
  rw [output3180_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3179

theorem node3181_conditional
    (child3180 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3134 (240, 8) = (output3180, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3135 (240, 8) = (output3181, (240, 8)) := by
  rw [output3181_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3180

theorem node3182_conditional
    (child3169 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3123 (240, 2) = (output3169, (240, 8)))
    (child3181 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3135 (240, 8) = (output3181, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3136 (240, 2) = (output3182, (240, 8)) := by
  rw [output3182_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3169 child3181

theorem node3183_conditional
    (child3182 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3136 (240, 2) = (output3182, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3137 (240, 2) = (output3183, (240, 8)) := by
  rw [output3183_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3182

theorem node3184_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3138 (240, 8) = (output3184, (240, 8)) := by
  rw [output3184_def]
  kernel_rfl

theorem node3185_conditional
    (child3184 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3138 (240, 8) = (output3184, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3139 (240, 8) = (output3185, (240, 8)) := by
  rw [output3185_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3184

theorem node3186_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3140 (240, 8) = (output3186, (240, 8)) := by
  rw [output3186_def]
  kernel_rfl

theorem node3187_conditional
    (child3186 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3140 (240, 8) = (output3186, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3141 (240, 8) = (output3187, (240, 8)) := by
  rw [output3187_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3186

theorem node3188_conditional
    (child3187 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3141 (240, 8) = (output3187, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3142 (240, 8) = (output3188, (240, 8)) := by
  rw [output3188_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3187 child167

theorem node3189_conditional
    (child3188 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3142 (240, 8) = (output3188, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3143 (240, 8) = (output3189, (240, 8)) := by
  rw [output3189_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3188

theorem node3190_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3189 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3143 (240, 8) = (output3189, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3144 (240, 8) = (output3190, (240, 8)) := by
  rw [output3190_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3189

theorem node3191_conditional
    (child3190 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3144 (240, 8) = (output3190, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3145 (240, 8) = (output3191, (240, 8)) := by
  rw [output3191_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3190

theorem node3192_conditional
    (child3185 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3139 (240, 8) = (output3185, (240, 8)))
    (child3191 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3145 (240, 8) = (output3191, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3146 (240, 8) = (output3192, (240, 8)) := by
  rw [output3192_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3185 child3191

theorem node3193_conditional
    (child3192 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3146 (240, 8) = (output3192, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3147 (240, 8) = (output3193, (240, 8)) := by
  rw [output3193_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3192

theorem node3194_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3193 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3147 (240, 8) = (output3193, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3148 (240, 8) = (output3194, (240, 8)) := by
  rw [output3194_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3193

theorem node3195_conditional
    (child3194 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3148 (240, 8) = (output3194, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3149 (240, 8) = (output3195, (240, 8)) := by
  rw [output3195_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3194

theorem node3196_conditional
    (child3183 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3137 (240, 2) = (output3183, (240, 8)))
    (child3195 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3149 (240, 8) = (output3195, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3150 (240, 2) = (output3196, (240, 8)) := by
  rw [output3196_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3183 child3195

theorem node3197_conditional
    (child3196 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3150 (240, 2) = (output3196, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3151 (240, 2) = (output3197, (240, 8)) := by
  rw [output3197_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3196

theorem node3198_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3152 (240, 8) = (output3198, (240, 8)) := by
  rw [output3198_def]
  kernel_rfl

theorem node3199_conditional
    (child3198 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3152 (240, 8) = (output3198, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3153 (240, 8) = (output3199, (240, 8)) := by
  rw [output3199_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3198

theorem node3200_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3154 (240, 8) = (output3200, (240, 8)) := by
  rw [output3200_def]
  kernel_rfl

theorem node3201_conditional
    (child3200 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3154 (240, 8) = (output3200, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3155 (240, 8) = (output3201, (240, 8)) := by
  rw [output3201_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3200

theorem node3202_conditional
    (child3201 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3155 (240, 8) = (output3201, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3156 (240, 8) = (output3202, (240, 8)) := by
  rw [output3202_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3201 child167

theorem node3203_conditional
    (child3202 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3156 (240, 8) = (output3202, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3157 (240, 8) = (output3203, (240, 8)) := by
  rw [output3203_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3202

theorem node3204_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3203 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3157 (240, 8) = (output3203, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3158 (240, 8) = (output3204, (240, 8)) := by
  rw [output3204_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3203

theorem node3205_conditional
    (child3204 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3158 (240, 8) = (output3204, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3159 (240, 8) = (output3205, (240, 8)) := by
  rw [output3205_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3204

theorem node3206_conditional
    (child3199 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3153 (240, 8) = (output3199, (240, 8)))
    (child3205 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3159 (240, 8) = (output3205, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3160 (240, 8) = (output3206, (240, 8)) := by
  rw [output3206_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3199 child3205

theorem node3207_conditional
    (child3206 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3160 (240, 8) = (output3206, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3161 (240, 8) = (output3207, (240, 8)) := by
  rw [output3207_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3206

theorem node3208_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3207 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3161 (240, 8) = (output3207, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3162 (240, 8) = (output3208, (240, 8)) := by
  rw [output3208_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3207

theorem node3209_conditional
    (child3208 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3162 (240, 8) = (output3208, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3163 (240, 8) = (output3209, (240, 8)) := by
  rw [output3209_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3208

theorem node3210_conditional
    (child3197 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3151 (240, 2) = (output3197, (240, 8)))
    (child3209 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3163 (240, 8) = (output3209, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3164 (240, 2) = (output3210, (240, 8)) := by
  rw [output3210_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3197 child3209

theorem node3211_conditional
    (child3210 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3164 (240, 2) = (output3210, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3165 (240, 2) = (output3211, (240, 8)) := by
  rw [output3211_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3210

theorem node3212_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3166 (240, 8) = (output3212, (240, 8)) := by
  rw [output3212_def]
  kernel_rfl

theorem node3213_conditional
    (child3212 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3166 (240, 8) = (output3212, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3167 (240, 8) = (output3213, (240, 8)) := by
  rw [output3213_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3212

theorem node3214_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3168 (240, 8) = (output3214, (240, 8)) := by
  rw [output3214_def]
  kernel_rfl

theorem node3215_conditional
    (child3214 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3168 (240, 8) = (output3214, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3169 (240, 8) = (output3215, (240, 8)) := by
  rw [output3215_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3214

theorem node3216_conditional
    (child3215 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3169 (240, 8) = (output3215, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3170 (240, 8) = (output3216, (240, 8)) := by
  rw [output3216_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3215 child167

theorem node3217_conditional
    (child3216 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3170 (240, 8) = (output3216, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3171 (240, 8) = (output3217, (240, 8)) := by
  rw [output3217_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3216

theorem node3218_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3217 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3171 (240, 8) = (output3217, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3172 (240, 8) = (output3218, (240, 8)) := by
  rw [output3218_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3217

theorem node3219_conditional
    (child3218 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3172 (240, 8) = (output3218, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3173 (240, 8) = (output3219, (240, 8)) := by
  rw [output3219_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3218

theorem node3220_conditional
    (child3213 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3167 (240, 8) = (output3213, (240, 8)))
    (child3219 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3173 (240, 8) = (output3219, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3174 (240, 8) = (output3220, (240, 8)) := by
  rw [output3220_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3213 child3219

theorem node3221_conditional
    (child3220 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3174 (240, 8) = (output3220, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3175 (240, 8) = (output3221, (240, 8)) := by
  rw [output3221_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3220

theorem node3222_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3221 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3175 (240, 8) = (output3221, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3176 (240, 8) = (output3222, (240, 8)) := by
  rw [output3222_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3221

theorem node3223_conditional
    (child3222 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3176 (240, 8) = (output3222, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3177 (240, 8) = (output3223, (240, 8)) := by
  rw [output3223_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3222

theorem node3224_conditional
    (child3211 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3165 (240, 2) = (output3211, (240, 8)))
    (child3223 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3177 (240, 8) = (output3223, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3178 (240, 2) = (output3224, (240, 8)) := by
  rw [output3224_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3211 child3223

theorem node3225_conditional
    (child3224 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3178 (240, 2) = (output3224, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3179 (240, 2) = (output3225, (240, 8)) := by
  rw [output3225_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3224

theorem node3226_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3180 (240, 8) = (output3226, (240, 8)) := by
  rw [output3226_def]
  kernel_rfl

theorem node3227_conditional
    (child3226 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3180 (240, 8) = (output3226, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3181 (240, 8) = (output3227, (240, 8)) := by
  rw [output3227_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3226

theorem node3228_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3182 (240, 8) = (output3228, (240, 8)) := by
  rw [output3228_def]
  kernel_rfl

theorem node3229_conditional
    (child3228 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3182 (240, 8) = (output3228, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3183 (240, 8) = (output3229, (240, 8)) := by
  rw [output3229_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3228

theorem node3230_conditional
    (child3229 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3183 (240, 8) = (output3229, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3184 (240, 8) = (output3230, (240, 8)) := by
  rw [output3230_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3229 child167

theorem node3231_conditional
    (child3230 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3184 (240, 8) = (output3230, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3185 (240, 8) = (output3231, (240, 8)) := by
  rw [output3231_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3230

theorem node3232_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3231 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3185 (240, 8) = (output3231, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3186 (240, 8) = (output3232, (240, 8)) := by
  rw [output3232_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3231

theorem node3233_conditional
    (child3232 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3186 (240, 8) = (output3232, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3187 (240, 8) = (output3233, (240, 8)) := by
  rw [output3233_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3232

theorem node3234_conditional
    (child3227 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3181 (240, 8) = (output3227, (240, 8)))
    (child3233 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3187 (240, 8) = (output3233, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3188 (240, 8) = (output3234, (240, 8)) := by
  rw [output3234_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3227 child3233

theorem node3235_conditional
    (child3234 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3188 (240, 8) = (output3234, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3189 (240, 8) = (output3235, (240, 8)) := by
  rw [output3235_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3234

theorem node3236_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3235 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3189 (240, 8) = (output3235, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3190 (240, 8) = (output3236, (240, 8)) := by
  rw [output3236_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3235

theorem node3237_conditional
    (child3236 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3190 (240, 8) = (output3236, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3191 (240, 8) = (output3237, (240, 8)) := by
  rw [output3237_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3236

theorem node3238_conditional
    (child3225 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3179 (240, 2) = (output3225, (240, 8)))
    (child3237 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3191 (240, 8) = (output3237, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3192 (240, 2) = (output3238, (240, 8)) := by
  rw [output3238_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3225 child3237

theorem node3239_conditional
    (child3238 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3192 (240, 2) = (output3238, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3193 (240, 2) = (output3239, (240, 8)) := by
  rw [output3239_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3238

theorem node3240_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3194 (240, 8) = (output3240, (240, 8)) := by
  rw [output3240_def]
  kernel_rfl

theorem node3241_conditional
    (child3240 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3194 (240, 8) = (output3240, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3195 (240, 8) = (output3241, (240, 8)) := by
  rw [output3241_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3240

theorem node3242_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3196 (240, 8) = (output3242, (240, 8)) := by
  rw [output3242_def]
  kernel_rfl

theorem node3243_conditional
    (child3242 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3196 (240, 8) = (output3242, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3197 (240, 8) = (output3243, (240, 8)) := by
  rw [output3243_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3242

theorem node3244_conditional
    (child3243 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3197 (240, 8) = (output3243, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3198 (240, 8) = (output3244, (240, 8)) := by
  rw [output3244_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3243 child167

theorem node3245_conditional
    (child3244 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3198 (240, 8) = (output3244, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3199 (240, 8) = (output3245, (240, 8)) := by
  rw [output3245_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3244

theorem node3246_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3245 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3199 (240, 8) = (output3245, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3200 (240, 8) = (output3246, (240, 8)) := by
  rw [output3246_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3245

theorem node3247_conditional
    (child3246 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3200 (240, 8) = (output3246, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3201 (240, 8) = (output3247, (240, 8)) := by
  rw [output3247_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3246

theorem node3248_conditional
    (child3241 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3195 (240, 8) = (output3241, (240, 8)))
    (child3247 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3201 (240, 8) = (output3247, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3202 (240, 8) = (output3248, (240, 8)) := by
  rw [output3248_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3241 child3247

theorem node3249_conditional
    (child3248 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3202 (240, 8) = (output3248, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3203 (240, 8) = (output3249, (240, 8)) := by
  rw [output3249_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3248

theorem node3250_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3249 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3203 (240, 8) = (output3249, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3204 (240, 8) = (output3250, (240, 8)) := by
  rw [output3250_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3249

theorem node3251_conditional
    (child3250 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3204 (240, 8) = (output3250, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3205 (240, 8) = (output3251, (240, 8)) := by
  rw [output3251_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3250

theorem node3252_conditional
    (child3239 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3193 (240, 2) = (output3239, (240, 8)))
    (child3251 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3205 (240, 8) = (output3251, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3206 (240, 2) = (output3252, (240, 8)) := by
  rw [output3252_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3239 child3251

theorem node3253_conditional
    (child3252 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3206 (240, 2) = (output3252, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3207 (240, 2) = (output3253, (240, 8)) := by
  rw [output3253_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3252

theorem node3254_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3208 (240, 8) = (output3254, (240, 8)) := by
  rw [output3254_def]
  kernel_rfl

theorem node3255_conditional
    (child3254 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3208 (240, 8) = (output3254, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3209 (240, 8) = (output3255, (240, 8)) := by
  rw [output3255_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3254

theorem node3256_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3210 (240, 8) = (output3256, (240, 8)) := by
  rw [output3256_def]
  kernel_rfl

theorem node3257_conditional
    (child3256 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3210 (240, 8) = (output3256, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3211 (240, 8) = (output3257, (240, 8)) := by
  rw [output3257_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3256

theorem node3258_conditional
    (child3257 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3211 (240, 8) = (output3257, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3212 (240, 8) = (output3258, (240, 8)) := by
  rw [output3258_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3257 child167

theorem node3259_conditional
    (child3258 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3212 (240, 8) = (output3258, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3213 (240, 8) = (output3259, (240, 8)) := by
  rw [output3259_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3258

theorem node3260_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3259 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3213 (240, 8) = (output3259, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3214 (240, 8) = (output3260, (240, 8)) := by
  rw [output3260_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3259

theorem node3261_conditional
    (child3260 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3214 (240, 8) = (output3260, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3215 (240, 8) = (output3261, (240, 8)) := by
  rw [output3261_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3260

theorem node3262_conditional
    (child3255 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3209 (240, 8) = (output3255, (240, 8)))
    (child3261 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3215 (240, 8) = (output3261, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3216 (240, 8) = (output3262, (240, 8)) := by
  rw [output3262_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3255 child3261

theorem node3263_conditional
    (child3262 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3216 (240, 8) = (output3262, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3217 (240, 8) = (output3263, (240, 8)) := by
  rw [output3263_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3262

theorem node3264_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3263 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3217 (240, 8) = (output3263, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3218 (240, 8) = (output3264, (240, 8)) := by
  rw [output3264_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3263

theorem node3265_conditional
    (child3264 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3218 (240, 8) = (output3264, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3219 (240, 8) = (output3265, (240, 8)) := by
  rw [output3265_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3264

theorem node3266_conditional
    (child3253 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3207 (240, 2) = (output3253, (240, 8)))
    (child3265 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3219 (240, 8) = (output3265, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3220 (240, 2) = (output3266, (240, 8)) := by
  rw [output3266_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3253 child3265

theorem node3267_conditional
    (child3266 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3220 (240, 2) = (output3266, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3221 (240, 2) = (output3267, (240, 8)) := by
  rw [output3267_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3266

theorem node3268_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3222 (240, 8) = (output3268, (240, 8)) := by
  rw [output3268_def]
  kernel_rfl

theorem node3269_conditional
    (child3268 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3222 (240, 8) = (output3268, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3223 (240, 8) = (output3269, (240, 8)) := by
  rw [output3269_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3268

theorem node3270_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3224 (240, 8) = (output3270, (240, 8)) := by
  rw [output3270_def]
  kernel_rfl

theorem node3271_conditional
    (child3270 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3224 (240, 8) = (output3270, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3225 (240, 8) = (output3271, (240, 8)) := by
  rw [output3271_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3270

theorem node3272_conditional
    (child3271 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3225 (240, 8) = (output3271, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3226 (240, 8) = (output3272, (240, 8)) := by
  rw [output3272_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3271 child167

theorem node3273_conditional
    (child3272 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3226 (240, 8) = (output3272, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3227 (240, 8) = (output3273, (240, 8)) := by
  rw [output3273_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3272

theorem node3274_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3273 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3227 (240, 8) = (output3273, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3228 (240, 8) = (output3274, (240, 8)) := by
  rw [output3274_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3273

theorem node3275_conditional
    (child3274 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3228 (240, 8) = (output3274, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3229 (240, 8) = (output3275, (240, 8)) := by
  rw [output3275_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3274

theorem node3276_conditional
    (child3269 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3223 (240, 8) = (output3269, (240, 8)))
    (child3275 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3229 (240, 8) = (output3275, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3230 (240, 8) = (output3276, (240, 8)) := by
  rw [output3276_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3269 child3275

theorem node3277_conditional
    (child3276 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3230 (240, 8) = (output3276, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3231 (240, 8) = (output3277, (240, 8)) := by
  rw [output3277_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3276

theorem node3278_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3277 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3231 (240, 8) = (output3277, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3232 (240, 8) = (output3278, (240, 8)) := by
  rw [output3278_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3277

theorem node3279_conditional
    (child3278 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3232 (240, 8) = (output3278, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3233 (240, 8) = (output3279, (240, 8)) := by
  rw [output3279_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3278

theorem node3280_conditional
    (child3267 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3221 (240, 2) = (output3267, (240, 8)))
    (child3279 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3233 (240, 8) = (output3279, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3234 (240, 2) = (output3280, (240, 8)) := by
  rw [output3280_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3267 child3279

theorem node3281_conditional
    (child3280 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3234 (240, 2) = (output3280, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3235 (240, 2) = (output3281, (240, 8)) := by
  rw [output3281_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3280

theorem node3282_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3236 (240, 8) = (output3282, (240, 8)) := by
  rw [output3282_def]
  kernel_rfl

theorem node3283_conditional
    (child3282 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3236 (240, 8) = (output3282, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3237 (240, 8) = (output3283, (240, 8)) := by
  rw [output3283_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3282

theorem node3284_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3238 (240, 8) = (output3284, (240, 8)) := by
  rw [output3284_def]
  kernel_rfl

theorem node3285_conditional
    (child3284 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3238 (240, 8) = (output3284, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3239 (240, 8) = (output3285, (240, 8)) := by
  rw [output3285_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3284

theorem node3286_conditional
    (child3285 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3239 (240, 8) = (output3285, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3240 (240, 8) = (output3286, (240, 8)) := by
  rw [output3286_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3285 child167

theorem node3287_conditional
    (child3286 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3240 (240, 8) = (output3286, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3241 (240, 8) = (output3287, (240, 8)) := by
  rw [output3287_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3286

theorem node3288_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3287 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3241 (240, 8) = (output3287, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3242 (240, 8) = (output3288, (240, 8)) := by
  rw [output3288_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3287

theorem node3289_conditional
    (child3288 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3242 (240, 8) = (output3288, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3243 (240, 8) = (output3289, (240, 8)) := by
  rw [output3289_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3288

theorem node3290_conditional
    (child3283 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3237 (240, 8) = (output3283, (240, 8)))
    (child3289 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3243 (240, 8) = (output3289, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3244 (240, 8) = (output3290, (240, 8)) := by
  rw [output3290_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3283 child3289

theorem node3291_conditional
    (child3290 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3244 (240, 8) = (output3290, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3245 (240, 8) = (output3291, (240, 8)) := by
  rw [output3291_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3290

theorem node3292_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3291 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3245 (240, 8) = (output3291, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3246 (240, 8) = (output3292, (240, 8)) := by
  rw [output3292_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3291

theorem node3293_conditional
    (child3292 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3246 (240, 8) = (output3292, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3247 (240, 8) = (output3293, (240, 8)) := by
  rw [output3293_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3292

theorem node3294_conditional
    (child3281 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3235 (240, 2) = (output3281, (240, 8)))
    (child3293 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3247 (240, 8) = (output3293, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3248 (240, 2) = (output3294, (240, 8)) := by
  rw [output3294_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3281 child3293

theorem node3295_conditional
    (child3294 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3248 (240, 2) = (output3294, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3249 (240, 2) = (output3295, (240, 8)) := by
  rw [output3295_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3294

theorem node3296_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3250 (240, 8) = (output3296, (240, 8)) := by
  rw [output3296_def]
  kernel_rfl

theorem node3297_conditional
    (child3296 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3250 (240, 8) = (output3296, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3251 (240, 8) = (output3297, (240, 8)) := by
  rw [output3297_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3296

theorem node3298_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3252 (240, 8) = (output3298, (240, 8)) := by
  rw [output3298_def]
  kernel_rfl

theorem node3299_conditional
    (child3298 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3252 (240, 8) = (output3298, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3253 (240, 8) = (output3299, (240, 8)) := by
  rw [output3299_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3298

theorem node3300_conditional
    (child3299 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3253 (240, 8) = (output3299, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3254 (240, 8) = (output3300, (240, 8)) := by
  rw [output3300_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3299 child167

theorem node3301_conditional
    (child3300 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3254 (240, 8) = (output3300, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3255 (240, 8) = (output3301, (240, 8)) := by
  rw [output3301_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3300

theorem node3302_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3301 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3255 (240, 8) = (output3301, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3256 (240, 8) = (output3302, (240, 8)) := by
  rw [output3302_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3301

theorem node3303_conditional
    (child3302 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3256 (240, 8) = (output3302, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3257 (240, 8) = (output3303, (240, 8)) := by
  rw [output3303_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3302

theorem node3304_conditional
    (child3297 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3251 (240, 8) = (output3297, (240, 8)))
    (child3303 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3257 (240, 8) = (output3303, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3258 (240, 8) = (output3304, (240, 8)) := by
  rw [output3304_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3297 child3303

theorem node3305_conditional
    (child3304 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3258 (240, 8) = (output3304, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3259 (240, 8) = (output3305, (240, 8)) := by
  rw [output3305_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3304

theorem node3306_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3305 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3259 (240, 8) = (output3305, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3260 (240, 8) = (output3306, (240, 8)) := by
  rw [output3306_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3305

theorem node3307_conditional
    (child3306 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3260 (240, 8) = (output3306, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3261 (240, 8) = (output3307, (240, 8)) := by
  rw [output3307_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3306

theorem node3308_conditional
    (child3295 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3249 (240, 2) = (output3295, (240, 8)))
    (child3307 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3261 (240, 8) = (output3307, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3262 (240, 2) = (output3308, (240, 8)) := by
  rw [output3308_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3295 child3307

theorem node3309_conditional
    (child3308 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3262 (240, 2) = (output3308, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3263 (240, 2) = (output3309, (240, 8)) := by
  rw [output3309_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3308

theorem node3310_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3264 (240, 8) = (output3310, (240, 8)) := by
  rw [output3310_def]
  kernel_rfl

theorem node3311_conditional
    (child3310 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3264 (240, 8) = (output3310, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3265 (240, 8) = (output3311, (240, 8)) := by
  rw [output3311_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3310

theorem node3312_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3266 (240, 8) = (output3312, (240, 8)) := by
  rw [output3312_def]
  kernel_rfl

theorem node3313_conditional
    (child3312 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3266 (240, 8) = (output3312, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3267 (240, 8) = (output3313, (240, 8)) := by
  rw [output3313_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3312

theorem node3314_conditional
    (child3313 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3267 (240, 8) = (output3313, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3268 (240, 8) = (output3314, (240, 8)) := by
  rw [output3314_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3313 child167

theorem node3315_conditional
    (child3314 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3268 (240, 8) = (output3314, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3269 (240, 8) = (output3315, (240, 8)) := by
  rw [output3315_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3314

theorem node3316_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3315 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3269 (240, 8) = (output3315, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3270 (240, 8) = (output3316, (240, 8)) := by
  rw [output3316_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3315

theorem node3317_conditional
    (child3316 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3270 (240, 8) = (output3316, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3271 (240, 8) = (output3317, (240, 8)) := by
  rw [output3317_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3316

theorem node3318_conditional
    (child3311 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3265 (240, 8) = (output3311, (240, 8)))
    (child3317 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3271 (240, 8) = (output3317, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3272 (240, 8) = (output3318, (240, 8)) := by
  rw [output3318_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3311 child3317

theorem node3319_conditional
    (child3318 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3272 (240, 8) = (output3318, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3273 (240, 8) = (output3319, (240, 8)) := by
  rw [output3319_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3318

theorem node3320_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3319 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3273 (240, 8) = (output3319, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3274 (240, 8) = (output3320, (240, 8)) := by
  rw [output3320_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3319

theorem node3321_conditional
    (child3320 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3274 (240, 8) = (output3320, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3275 (240, 8) = (output3321, (240, 8)) := by
  rw [output3321_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3320

theorem node3322_conditional
    (child3309 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3263 (240, 2) = (output3309, (240, 8)))
    (child3321 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3275 (240, 8) = (output3321, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3276 (240, 2) = (output3322, (240, 8)) := by
  rw [output3322_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3309 child3321

theorem node3323_conditional
    (child3322 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3276 (240, 2) = (output3322, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3277 (240, 2) = (output3323, (240, 8)) := by
  rw [output3323_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3322

theorem node3324_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3278 (240, 8) = (output3324, (240, 8)) := by
  rw [output3324_def]
  kernel_rfl

theorem node3325_conditional
    (child3324 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3278 (240, 8) = (output3324, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3279 (240, 8) = (output3325, (240, 8)) := by
  rw [output3325_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3324

theorem node3326_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3280 (240, 8) = (output3326, (240, 8)) := by
  rw [output3326_def]
  kernel_rfl

theorem node3327_conditional
    (child3326 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3280 (240, 8) = (output3326, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3281 (240, 8) = (output3327, (240, 8)) := by
  rw [output3327_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3326

theorem node3328_conditional
    (child3327 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3281 (240, 8) = (output3327, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3282 (240, 8) = (output3328, (240, 8)) := by
  rw [output3328_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3327 child167

theorem node3329_conditional
    (child3328 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3282 (240, 8) = (output3328, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3283 (240, 8) = (output3329, (240, 8)) := by
  rw [output3329_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3328

theorem node3330_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3329 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3283 (240, 8) = (output3329, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3284 (240, 8) = (output3330, (240, 8)) := by
  rw [output3330_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3329

theorem node3331_conditional
    (child3330 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3284 (240, 8) = (output3330, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3285 (240, 8) = (output3331, (240, 8)) := by
  rw [output3331_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3330

theorem node3332_conditional
    (child3325 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3279 (240, 8) = (output3325, (240, 8)))
    (child3331 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3285 (240, 8) = (output3331, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3286 (240, 8) = (output3332, (240, 8)) := by
  rw [output3332_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3325 child3331

theorem node3333_conditional
    (child3332 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3286 (240, 8) = (output3332, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3287 (240, 8) = (output3333, (240, 8)) := by
  rw [output3333_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3332

theorem node3334_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3333 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3287 (240, 8) = (output3333, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3288 (240, 8) = (output3334, (240, 8)) := by
  rw [output3334_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3333

theorem node3335_conditional
    (child3334 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3288 (240, 8) = (output3334, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3289 (240, 8) = (output3335, (240, 8)) := by
  rw [output3335_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3334

theorem node3336_conditional
    (child3323 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3277 (240, 2) = (output3323, (240, 8)))
    (child3335 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3289 (240, 8) = (output3335, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3290 (240, 2) = (output3336, (240, 8)) := by
  rw [output3336_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3323 child3335

theorem node3337_conditional
    (child3336 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3290 (240, 2) = (output3336, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3291 (240, 2) = (output3337, (240, 8)) := by
  rw [output3337_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3336

theorem node3338_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3292 (240, 8) = (output3338, (240, 8)) := by
  rw [output3338_def]
  kernel_rfl

theorem node3339_conditional
    (child3338 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3292 (240, 8) = (output3338, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3293 (240, 8) = (output3339, (240, 8)) := by
  rw [output3339_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3338

theorem node3340_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3294 (240, 8) = (output3340, (240, 8)) := by
  rw [output3340_def]
  kernel_rfl

theorem node3341_conditional
    (child3340 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3294 (240, 8) = (output3340, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3295 (240, 8) = (output3341, (240, 8)) := by
  rw [output3341_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3340

theorem node3342_conditional
    (child3341 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3295 (240, 8) = (output3341, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3296 (240, 8) = (output3342, (240, 8)) := by
  rw [output3342_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3341 child167

theorem node3343_conditional
    (child3342 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3296 (240, 8) = (output3342, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3297 (240, 8) = (output3343, (240, 8)) := by
  rw [output3343_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3342

theorem node3344_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3343 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3297 (240, 8) = (output3343, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3298 (240, 8) = (output3344, (240, 8)) := by
  rw [output3344_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3343

theorem node3345_conditional
    (child3344 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3298 (240, 8) = (output3344, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3299 (240, 8) = (output3345, (240, 8)) := by
  rw [output3345_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3344

theorem node3346_conditional
    (child3339 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3293 (240, 8) = (output3339, (240, 8)))
    (child3345 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3299 (240, 8) = (output3345, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3300 (240, 8) = (output3346, (240, 8)) := by
  rw [output3346_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3339 child3345

theorem node3347_conditional
    (child3346 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3300 (240, 8) = (output3346, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3301 (240, 8) = (output3347, (240, 8)) := by
  rw [output3347_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3346

theorem node3348_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3347 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3301 (240, 8) = (output3347, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3302 (240, 8) = (output3348, (240, 8)) := by
  rw [output3348_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3347

theorem node3349_conditional
    (child3348 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3302 (240, 8) = (output3348, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3303 (240, 8) = (output3349, (240, 8)) := by
  rw [output3349_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3348

theorem node3350_conditional
    (child3337 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3291 (240, 2) = (output3337, (240, 8)))
    (child3349 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3303 (240, 8) = (output3349, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3304 (240, 2) = (output3350, (240, 8)) := by
  rw [output3350_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3337 child3349

theorem node3351_conditional
    (child3350 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3304 (240, 2) = (output3350, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3305 (240, 2) = (output3351, (240, 8)) := by
  rw [output3351_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3350

theorem node3352_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3306 (240, 8) = (output3352, (240, 8)) := by
  rw [output3352_def]
  kernel_rfl

theorem node3353_conditional
    (child3352 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3306 (240, 8) = (output3352, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3307 (240, 8) = (output3353, (240, 8)) := by
  rw [output3353_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3352

theorem node3354_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3308 (240, 8) = (output3354, (240, 8)) := by
  rw [output3354_def]
  kernel_rfl

theorem node3355_conditional
    (child3354 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3308 (240, 8) = (output3354, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3309 (240, 8) = (output3355, (240, 8)) := by
  rw [output3355_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3354

theorem node3356_conditional
    (child3355 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3309 (240, 8) = (output3355, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3310 (240, 8) = (output3356, (240, 8)) := by
  rw [output3356_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3355 child167

theorem node3357_conditional
    (child3356 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3310 (240, 8) = (output3356, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3311 (240, 8) = (output3357, (240, 8)) := by
  rw [output3357_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3356

theorem node3358_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3357 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3311 (240, 8) = (output3357, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3312 (240, 8) = (output3358, (240, 8)) := by
  rw [output3358_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3357

theorem node3359_conditional
    (child3358 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3312 (240, 8) = (output3358, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3313 (240, 8) = (output3359, (240, 8)) := by
  rw [output3359_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3358

theorem node3360_conditional
    (child3353 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3307 (240, 8) = (output3353, (240, 8)))
    (child3359 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3313 (240, 8) = (output3359, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3314 (240, 8) = (output3360, (240, 8)) := by
  rw [output3360_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3353 child3359

theorem node3361_conditional
    (child3360 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3314 (240, 8) = (output3360, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3315 (240, 8) = (output3361, (240, 8)) := by
  rw [output3361_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3360

theorem node3362_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3361 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3315 (240, 8) = (output3361, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3316 (240, 8) = (output3362, (240, 8)) := by
  rw [output3362_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3361

theorem node3363_conditional
    (child3362 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3316 (240, 8) = (output3362, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3317 (240, 8) = (output3363, (240, 8)) := by
  rw [output3363_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3362

theorem node3364_conditional
    (child3351 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3305 (240, 2) = (output3351, (240, 8)))
    (child3363 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3317 (240, 8) = (output3363, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3318 (240, 2) = (output3364, (240, 8)) := by
  rw [output3364_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3351 child3363

theorem node3365_conditional
    (child3364 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3318 (240, 2) = (output3364, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3319 (240, 2) = (output3365, (240, 8)) := by
  rw [output3365_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3364

theorem node3366_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3320 (240, 8) = (output3366, (240, 8)) := by
  rw [output3366_def]
  kernel_rfl

theorem node3367_conditional
    (child3366 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3320 (240, 8) = (output3366, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3321 (240, 8) = (output3367, (240, 8)) := by
  rw [output3367_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3366

theorem node3368_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3322 (240, 8) = (output3368, (240, 8)) := by
  rw [output3368_def]
  kernel_rfl

theorem node3369_conditional
    (child3368 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3322 (240, 8) = (output3368, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3323 (240, 8) = (output3369, (240, 8)) := by
  rw [output3369_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3368

theorem node3370_conditional
    (child3369 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3323 (240, 8) = (output3369, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3324 (240, 8) = (output3370, (240, 8)) := by
  rw [output3370_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3369 child167

theorem node3371_conditional
    (child3370 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3324 (240, 8) = (output3370, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3325 (240, 8) = (output3371, (240, 8)) := by
  rw [output3371_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3370

theorem node3372_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3371 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3325 (240, 8) = (output3371, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3326 (240, 8) = (output3372, (240, 8)) := by
  rw [output3372_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3371

theorem node3373_conditional
    (child3372 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3326 (240, 8) = (output3372, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3327 (240, 8) = (output3373, (240, 8)) := by
  rw [output3373_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3372

theorem node3374_conditional
    (child3367 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3321 (240, 8) = (output3367, (240, 8)))
    (child3373 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3327 (240, 8) = (output3373, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3328 (240, 8) = (output3374, (240, 8)) := by
  rw [output3374_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3367 child3373

theorem node3375_conditional
    (child3374 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3328 (240, 8) = (output3374, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3329 (240, 8) = (output3375, (240, 8)) := by
  rw [output3375_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3374

theorem node3376_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3375 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3329 (240, 8) = (output3375, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3330 (240, 8) = (output3376, (240, 8)) := by
  rw [output3376_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3375

theorem node3377_conditional
    (child3376 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3330 (240, 8) = (output3376, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3331 (240, 8) = (output3377, (240, 8)) := by
  rw [output3377_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3376

theorem node3378_conditional
    (child3365 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3319 (240, 2) = (output3365, (240, 8)))
    (child3377 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3331 (240, 8) = (output3377, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3332 (240, 2) = (output3378, (240, 8)) := by
  rw [output3378_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3365 child3377

theorem node3379_conditional
    (child3378 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3332 (240, 2) = (output3378, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3333 (240, 2) = (output3379, (240, 8)) := by
  rw [output3379_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3378

theorem node3380_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3334 (240, 8) = (output3380, (240, 8)) := by
  rw [output3380_def]
  kernel_rfl

theorem node3381_conditional
    (child3380 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3334 (240, 8) = (output3380, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3335 (240, 8) = (output3381, (240, 8)) := by
  rw [output3381_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3380

theorem node3382_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3336 (240, 8) = (output3382, (240, 8)) := by
  rw [output3382_def]
  kernel_rfl

theorem node3383_conditional
    (child3382 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3336 (240, 8) = (output3382, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3337 (240, 8) = (output3383, (240, 8)) := by
  rw [output3383_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3382

theorem node3384_conditional
    (child3383 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3337 (240, 8) = (output3383, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3338 (240, 8) = (output3384, (240, 8)) := by
  rw [output3384_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3383 child167

theorem node3385_conditional
    (child3384 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3338 (240, 8) = (output3384, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3339 (240, 8) = (output3385, (240, 8)) := by
  rw [output3385_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3384

theorem node3386_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3385 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3339 (240, 8) = (output3385, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3340 (240, 8) = (output3386, (240, 8)) := by
  rw [output3386_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3385

theorem node3387_conditional
    (child3386 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3340 (240, 8) = (output3386, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3341 (240, 8) = (output3387, (240, 8)) := by
  rw [output3387_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3386

theorem node3388_conditional
    (child3381 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3335 (240, 8) = (output3381, (240, 8)))
    (child3387 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3341 (240, 8) = (output3387, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3342 (240, 8) = (output3388, (240, 8)) := by
  rw [output3388_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3381 child3387

theorem node3389_conditional
    (child3388 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3342 (240, 8) = (output3388, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3343 (240, 8) = (output3389, (240, 8)) := by
  rw [output3389_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3388

theorem node3390_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3389 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3343 (240, 8) = (output3389, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3344 (240, 8) = (output3390, (240, 8)) := by
  rw [output3390_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3389

theorem node3391_conditional
    (child3390 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3344 (240, 8) = (output3390, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3345 (240, 8) = (output3391, (240, 8)) := by
  rw [output3391_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3390

theorem node3392_conditional
    (child3379 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3333 (240, 2) = (output3379, (240, 8)))
    (child3391 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3345 (240, 8) = (output3391, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3346 (240, 2) = (output3392, (240, 8)) := by
  rw [output3392_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3379 child3391

theorem node3393_conditional
    (child3392 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3346 (240, 2) = (output3392, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3347 (240, 2) = (output3393, (240, 8)) := by
  rw [output3393_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3392

theorem node3394_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3348 (240, 8) = (output3394, (240, 8)) := by
  rw [output3394_def]
  kernel_rfl

theorem node3395_conditional
    (child3394 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3348 (240, 8) = (output3394, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3349 (240, 8) = (output3395, (240, 8)) := by
  rw [output3395_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3394

theorem node3396_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3350 (240, 8) = (output3396, (240, 8)) := by
  rw [output3396_def]
  kernel_rfl

theorem node3397_conditional
    (child3396 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3350 (240, 8) = (output3396, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3351 (240, 8) = (output3397, (240, 8)) := by
  rw [output3397_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3396

theorem node3398_conditional
    (child3397 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3351 (240, 8) = (output3397, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3352 (240, 8) = (output3398, (240, 8)) := by
  rw [output3398_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3397 child167

theorem node3399_conditional
    (child3398 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3352 (240, 8) = (output3398, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3353 (240, 8) = (output3399, (240, 8)) := by
  rw [output3399_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3398

theorem node3400_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3399 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3353 (240, 8) = (output3399, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3354 (240, 8) = (output3400, (240, 8)) := by
  rw [output3400_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3399

theorem node3401_conditional
    (child3400 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3354 (240, 8) = (output3400, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3355 (240, 8) = (output3401, (240, 8)) := by
  rw [output3401_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3400

theorem node3402_conditional
    (child3395 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3349 (240, 8) = (output3395, (240, 8)))
    (child3401 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3355 (240, 8) = (output3401, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3356 (240, 8) = (output3402, (240, 8)) := by
  rw [output3402_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3395 child3401

theorem node3403_conditional
    (child3402 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3356 (240, 8) = (output3402, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3357 (240, 8) = (output3403, (240, 8)) := by
  rw [output3403_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3402

theorem node3404_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3403 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3357 (240, 8) = (output3403, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3358 (240, 8) = (output3404, (240, 8)) := by
  rw [output3404_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3403

theorem node3405_conditional
    (child3404 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3358 (240, 8) = (output3404, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3359 (240, 8) = (output3405, (240, 8)) := by
  rw [output3405_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3404

theorem node3406_conditional
    (child3393 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3347 (240, 2) = (output3393, (240, 8)))
    (child3405 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3359 (240, 8) = (output3405, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3360 (240, 2) = (output3406, (240, 8)) := by
  rw [output3406_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3393 child3405

theorem node3407_conditional
    (child3406 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3360 (240, 2) = (output3406, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3361 (240, 2) = (output3407, (240, 8)) := by
  rw [output3407_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3406

theorem node3408_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3362 (240, 8) = (output3408, (240, 8)) := by
  rw [output3408_def]
  kernel_rfl

theorem node3409_conditional
    (child3408 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3362 (240, 8) = (output3408, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3363 (240, 8) = (output3409, (240, 8)) := by
  rw [output3409_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3408

theorem node3410_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3364 (240, 8) = (output3410, (240, 8)) := by
  rw [output3410_def]
  kernel_rfl

theorem node3411_conditional
    (child3410 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3364 (240, 8) = (output3410, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3365 (240, 8) = (output3411, (240, 8)) := by
  rw [output3411_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3410

theorem node3412_conditional
    (child3411 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3365 (240, 8) = (output3411, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3366 (240, 8) = (output3412, (240, 8)) := by
  rw [output3412_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3411 child167

theorem node3413_conditional
    (child3412 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3366 (240, 8) = (output3412, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3367 (240, 8) = (output3413, (240, 8)) := by
  rw [output3413_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3412

theorem node3414_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3413 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3367 (240, 8) = (output3413, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3368 (240, 8) = (output3414, (240, 8)) := by
  rw [output3414_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3413

theorem node3415_conditional
    (child3414 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3368 (240, 8) = (output3414, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3369 (240, 8) = (output3415, (240, 8)) := by
  rw [output3415_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3414

theorem node3416_conditional
    (child3409 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3363 (240, 8) = (output3409, (240, 8)))
    (child3415 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3369 (240, 8) = (output3415, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3370 (240, 8) = (output3416, (240, 8)) := by
  rw [output3416_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3409 child3415

theorem node3417_conditional
    (child3416 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3370 (240, 8) = (output3416, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3371 (240, 8) = (output3417, (240, 8)) := by
  rw [output3417_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3416

theorem node3418_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3417 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3371 (240, 8) = (output3417, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3372 (240, 8) = (output3418, (240, 8)) := by
  rw [output3418_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3417

theorem node3419_conditional
    (child3418 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3372 (240, 8) = (output3418, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3373 (240, 8) = (output3419, (240, 8)) := by
  rw [output3419_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3418

theorem node3420_conditional
    (child3407 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3361 (240, 2) = (output3407, (240, 8)))
    (child3419 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3373 (240, 8) = (output3419, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3374 (240, 2) = (output3420, (240, 8)) := by
  rw [output3420_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3407 child3419

theorem node3421_conditional
    (child3420 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3374 (240, 2) = (output3420, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3375 (240, 2) = (output3421, (240, 8)) := by
  rw [output3421_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3420

theorem node3422_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3376 (240, 8) = (output3422, (240, 8)) := by
  rw [output3422_def]
  kernel_rfl

theorem node3423_conditional
    (child3422 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3376 (240, 8) = (output3422, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3377 (240, 8) = (output3423, (240, 8)) := by
  rw [output3423_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3422

theorem node3424_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3378 (240, 8) = (output3424, (240, 8)) := by
  rw [output3424_def]
  kernel_rfl

theorem node3425_conditional
    (child3424 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3378 (240, 8) = (output3424, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3379 (240, 8) = (output3425, (240, 8)) := by
  rw [output3425_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3424

theorem node3426_conditional
    (child3425 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3379 (240, 8) = (output3425, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3380 (240, 8) = (output3426, (240, 8)) := by
  rw [output3426_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3425 child167

theorem node3427_conditional
    (child3426 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3380 (240, 8) = (output3426, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3381 (240, 8) = (output3427, (240, 8)) := by
  rw [output3427_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3426

theorem node3428_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3427 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3381 (240, 8) = (output3427, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3382 (240, 8) = (output3428, (240, 8)) := by
  rw [output3428_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3427

theorem node3429_conditional
    (child3428 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3382 (240, 8) = (output3428, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3383 (240, 8) = (output3429, (240, 8)) := by
  rw [output3429_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3428

theorem node3430_conditional
    (child3423 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3377 (240, 8) = (output3423, (240, 8)))
    (child3429 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3383 (240, 8) = (output3429, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3384 (240, 8) = (output3430, (240, 8)) := by
  rw [output3430_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3423 child3429

theorem node3431_conditional
    (child3430 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3384 (240, 8) = (output3430, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3385 (240, 8) = (output3431, (240, 8)) := by
  rw [output3431_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3430

theorem node3432_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3431 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3385 (240, 8) = (output3431, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3386 (240, 8) = (output3432, (240, 8)) := by
  rw [output3432_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3431

theorem node3433_conditional
    (child3432 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3386 (240, 8) = (output3432, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3387 (240, 8) = (output3433, (240, 8)) := by
  rw [output3433_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3432

theorem node3434_conditional
    (child3421 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3375 (240, 2) = (output3421, (240, 8)))
    (child3433 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3387 (240, 8) = (output3433, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3388 (240, 2) = (output3434, (240, 8)) := by
  rw [output3434_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3421 child3433

theorem node3435_conditional
    (child3434 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3388 (240, 2) = (output3434, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3389 (240, 2) = (output3435, (240, 8)) := by
  rw [output3435_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3434

theorem node3436_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3390 (240, 8) = (output3436, (240, 8)) := by
  rw [output3436_def]
  kernel_rfl

theorem node3437_conditional
    (child3436 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3390 (240, 8) = (output3436, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3391 (240, 8) = (output3437, (240, 8)) := by
  rw [output3437_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3436

theorem node3438_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3392 (240, 8) = (output3438, (240, 8)) := by
  rw [output3438_def]
  kernel_rfl

theorem node3439_conditional
    (child3438 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3392 (240, 8) = (output3438, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3393 (240, 8) = (output3439, (240, 8)) := by
  rw [output3439_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3438

theorem node3440_conditional
    (child3439 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3393 (240, 8) = (output3439, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3394 (240, 8) = (output3440, (240, 8)) := by
  rw [output3440_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3439 child167

theorem node3441_conditional
    (child3440 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3394 (240, 8) = (output3440, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3395 (240, 8) = (output3441, (240, 8)) := by
  rw [output3441_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3440

theorem node3442_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3441 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3395 (240, 8) = (output3441, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3396 (240, 8) = (output3442, (240, 8)) := by
  rw [output3442_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3441

theorem node3443_conditional
    (child3442 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3396 (240, 8) = (output3442, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3397 (240, 8) = (output3443, (240, 8)) := by
  rw [output3443_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3442

theorem node3444_conditional
    (child3437 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3391 (240, 8) = (output3437, (240, 8)))
    (child3443 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3397 (240, 8) = (output3443, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3398 (240, 8) = (output3444, (240, 8)) := by
  rw [output3444_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3437 child3443

theorem node3445_conditional
    (child3444 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3398 (240, 8) = (output3444, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3399 (240, 8) = (output3445, (240, 8)) := by
  rw [output3445_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3444

theorem node3446_conditional
    (child119 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_17 (240, 8) = (output119, (240, 8)))
    (child3445 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3399 (240, 8) = (output3445, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3400 (240, 8) = (output3446, (240, 8)) := by
  rw [output3446_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child119 child3445

theorem node3447_conditional
    (child3446 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3400 (240, 8) = (output3446, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3401 (240, 8) = (output3447, (240, 8)) := by
  rw [output3447_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3446

theorem node3448_conditional
    (child3435 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3389 (240, 2) = (output3435, (240, 8)))
    (child3447 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3401 (240, 8) = (output3447, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3402 (240, 2) = (output3448, (240, 8)) := by
  rw [output3448_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3435 child3447

theorem node3449_conditional
    (child3448 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3402 (240, 2) = (output3448, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3403 (240, 2) = (output3449, (240, 8)) := by
  rw [output3449_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3448

theorem node3450_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3404 (240, 8) = (output3450, (240, 8)) := by
  rw [output3450_def]
  kernel_rfl

theorem node3451_conditional
    (child3450 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3404 (240, 8) = (output3450, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3405 (240, 8) = (output3451, (240, 8)) := by
  rw [output3451_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3450

theorem node3452_conditional : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3406 (240, 8) = (output3452, (240, 8)) := by
  rw [output3452_def]
  kernel_rfl

theorem node3453_conditional
    (child3452 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3406 (240, 8) = (output3452, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3407 (240, 8) = (output3453, (240, 8)) := by
  rw [output3453_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3452

theorem node3454_conditional
    (child3453 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3407 (240, 8) = (output3453, (240, 8)))
    (child167 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_121 (240, 8) = (output167, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3408 (240, 8) = (output3454, (240, 8)) := by
  rw [output3454_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3453 child167

theorem node3455_conditional
    (child3454 : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3408 (240, 8) = (output3454, (240, 8))) : Flapjack.LoopToWord.compHOL Word.context176
    Loop.loopBody176_3409 (240, 8) = (output3455, (240, 8)) := by
  rw [output3455_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3454

#print axioms node3455_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints176
