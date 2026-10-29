import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints766.Data.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
theorem node3072_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child3071 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3069 (830, 6) = (output3071, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3070 (830, 6) = (output3072, (830, 6)) := by
  rw [output3072_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child3071

theorem node3073_conditional
    (child3072 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3070 (830, 6) = (output3072, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3071 (830, 6) = (output3073, (830, 6)) := by
  rw [output3073_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3072

theorem node3074_conditional
    (child3067 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3065 (830, 2) = (output3067, (830, 6)))
    (child3073 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3071 (830, 6) = (output3073, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3072 (830, 2) = (output3074, (830, 6)) := by
  rw [output3074_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3067 child3073

theorem node3075_conditional
    (child3074 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3072 (830, 2) = (output3074, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3073 (830, 2) = (output3075, (830, 6)) := by
  rw [output3075_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3074

theorem node3076_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3074 (830, 6) = (output3076, (830, 6)) := by
  rw [output3076_def]
  kernel_rfl

theorem node3077_conditional
    (child3076 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3074 (830, 6) = (output3076, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3075 (830, 6) = (output3077, (830, 6)) := by
  rw [output3077_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3076

theorem node3078_conditional
    (child3077 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3075 (830, 6) = (output3077, (830, 6)))
    (child1675 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1673 (830, 6) = (output1675, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3076 (830, 6) = (output3078, (830, 6)) := by
  rw [output3078_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3077 child1675

theorem node3079_conditional
    (child3078 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3076 (830, 6) = (output3078, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3077 (830, 6) = (output3079, (830, 6)) := by
  rw [output3079_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3078

theorem node3080_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child3079 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3077 (830, 6) = (output3079, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3078 (830, 6) = (output3080, (830, 6)) := by
  rw [output3080_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child3079

theorem node3081_conditional
    (child3080 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3078 (830, 6) = (output3080, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3079 (830, 6) = (output3081, (830, 6)) := by
  rw [output3081_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3080

theorem node3082_conditional
    (child3075 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3073 (830, 2) = (output3075, (830, 6)))
    (child3081 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3079 (830, 6) = (output3081, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3080 (830, 2) = (output3082, (830, 6)) := by
  rw [output3082_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3075 child3081

theorem node3083_conditional
    (child3082 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3080 (830, 2) = (output3082, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3081 (830, 2) = (output3083, (830, 6)) := by
  rw [output3083_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3082

theorem node3084_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3082 (830, 6) = (output3084, (830, 6)) := by
  rw [output3084_def]
  kernel_rfl

theorem node3085_conditional
    (child3084 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3082 (830, 6) = (output3084, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3083 (830, 6) = (output3085, (830, 6)) := by
  rw [output3085_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3084

theorem node3086_conditional
    (child3085 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3083 (830, 6) = (output3085, (830, 6)))
    (child1675 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1673 (830, 6) = (output1675, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3084 (830, 6) = (output3086, (830, 6)) := by
  rw [output3086_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3085 child1675

theorem node3087_conditional
    (child3086 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3084 (830, 6) = (output3086, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3085 (830, 6) = (output3087, (830, 6)) := by
  rw [output3087_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3086

theorem node3088_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child3087 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3085 (830, 6) = (output3087, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3086 (830, 6) = (output3088, (830, 6)) := by
  rw [output3088_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child3087

theorem node3089_conditional
    (child3088 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3086 (830, 6) = (output3088, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3087 (830, 6) = (output3089, (830, 6)) := by
  rw [output3089_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3088

theorem node3090_conditional
    (child3083 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3081 (830, 2) = (output3083, (830, 6)))
    (child3089 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3087 (830, 6) = (output3089, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3088 (830, 2) = (output3090, (830, 6)) := by
  rw [output3090_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3083 child3089

theorem node3091_conditional
    (child3090 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3088 (830, 2) = (output3090, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3089 (830, 2) = (output3091, (830, 6)) := by
  rw [output3091_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3090

theorem node3092_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3090 (830, 6) = (output3092, (830, 6)) := by
  rw [output3092_def]
  kernel_rfl

theorem node3093_conditional
    (child3092 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3090 (830, 6) = (output3092, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3091 (830, 6) = (output3093, (830, 6)) := by
  rw [output3093_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3092

theorem node3094_conditional
    (child3093 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3091 (830, 6) = (output3093, (830, 6)))
    (child1697 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1695 (830, 6) = (output1697, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3092 (830, 6) = (output3094, (830, 6)) := by
  rw [output3094_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3093 child1697

theorem node3095_conditional
    (child3094 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3092 (830, 6) = (output3094, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3093 (830, 6) = (output3095, (830, 6)) := by
  rw [output3095_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3094

theorem node3096_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child3095 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3093 (830, 6) = (output3095, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3094 (830, 6) = (output3096, (830, 6)) := by
  rw [output3096_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child3095

theorem node3097_conditional
    (child3096 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3094 (830, 6) = (output3096, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3095 (830, 6) = (output3097, (830, 6)) := by
  rw [output3097_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3096

theorem node3098_conditional
    (child3091 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3089 (830, 2) = (output3091, (830, 6)))
    (child3097 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3095 (830, 6) = (output3097, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3096 (830, 2) = (output3098, (830, 6)) := by
  rw [output3098_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3091 child3097

theorem node3099_conditional
    (child3098 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3096 (830, 2) = (output3098, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3097 (830, 2) = (output3099, (830, 6)) := by
  rw [output3099_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3098

theorem node3100_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3098 (830, 6) = (output3100, (830, 6)) := by
  rw [output3100_def]
  kernel_rfl

theorem node3101_conditional
    (child3100 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3098 (830, 6) = (output3100, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3099 (830, 6) = (output3101, (830, 6)) := by
  rw [output3101_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3100

theorem node3102_conditional
    (child3101 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3099 (830, 6) = (output3101, (830, 6)))
    (child1711 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1709 (830, 6) = (output1711, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3100 (830, 6) = (output3102, (830, 6)) := by
  rw [output3102_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3101 child1711

theorem node3103_conditional
    (child3102 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3100 (830, 6) = (output3102, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3101 (830, 6) = (output3103, (830, 6)) := by
  rw [output3103_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3102

theorem node3104_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child3103 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3101 (830, 6) = (output3103, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3102 (830, 6) = (output3104, (830, 6)) := by
  rw [output3104_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child3103

theorem node3105_conditional
    (child3104 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3102 (830, 6) = (output3104, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3103 (830, 6) = (output3105, (830, 6)) := by
  rw [output3105_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3104

theorem node3106_conditional
    (child3099 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3097 (830, 2) = (output3099, (830, 6)))
    (child3105 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3103 (830, 6) = (output3105, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3104 (830, 2) = (output3106, (830, 6)) := by
  rw [output3106_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3099 child3105

theorem node3107_conditional
    (child3106 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3104 (830, 2) = (output3106, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3105 (830, 2) = (output3107, (830, 6)) := by
  rw [output3107_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3106

theorem node3108_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3106 (830, 6) = (output3108, (830, 6)) := by
  rw [output3108_def]
  kernel_rfl

theorem node3109_conditional
    (child3108 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3106 (830, 6) = (output3108, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3107 (830, 6) = (output3109, (830, 6)) := by
  rw [output3109_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3108

theorem node3110_conditional
    (child3109 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3107 (830, 6) = (output3109, (830, 6)))
    (child1711 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1709 (830, 6) = (output1711, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3108 (830, 6) = (output3110, (830, 6)) := by
  rw [output3110_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3109 child1711

theorem node3111_conditional
    (child3110 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3108 (830, 6) = (output3110, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3109 (830, 6) = (output3111, (830, 6)) := by
  rw [output3111_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3110

theorem node3112_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child3111 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3109 (830, 6) = (output3111, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3110 (830, 6) = (output3112, (830, 6)) := by
  rw [output3112_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child3111

theorem node3113_conditional
    (child3112 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3110 (830, 6) = (output3112, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3111 (830, 6) = (output3113, (830, 6)) := by
  rw [output3113_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3112

theorem node3114_conditional
    (child3107 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3105 (830, 2) = (output3107, (830, 6)))
    (child3113 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3111 (830, 6) = (output3113, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3112 (830, 2) = (output3114, (830, 6)) := by
  rw [output3114_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3107 child3113

theorem node3115_conditional
    (child3114 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3112 (830, 2) = (output3114, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3113 (830, 2) = (output3115, (830, 6)) := by
  rw [output3115_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3114

theorem node3116_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3114 (830, 6) = (output3116, (830, 6)) := by
  rw [output3116_def]
  kernel_rfl

theorem node3117_conditional
    (child3116 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3114 (830, 6) = (output3116, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3115 (830, 6) = (output3117, (830, 6)) := by
  rw [output3117_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3116

theorem node3118_conditional
    (child3117 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3115 (830, 6) = (output3117, (830, 6)))
    (child1725 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1723 (830, 6) = (output1725, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3116 (830, 6) = (output3118, (830, 6)) := by
  rw [output3118_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3117 child1725

theorem node3119_conditional
    (child3118 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3116 (830, 6) = (output3118, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3117 (830, 6) = (output3119, (830, 6)) := by
  rw [output3119_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3118

theorem node3120_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child3119 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3117 (830, 6) = (output3119, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3118 (830, 6) = (output3120, (830, 6)) := by
  rw [output3120_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child3119

theorem node3121_conditional
    (child3120 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3118 (830, 6) = (output3120, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3119 (830, 6) = (output3121, (830, 6)) := by
  rw [output3121_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3120

theorem node3122_conditional
    (child3115 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3113 (830, 2) = (output3115, (830, 6)))
    (child3121 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3119 (830, 6) = (output3121, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3120 (830, 2) = (output3122, (830, 6)) := by
  rw [output3122_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3115 child3121

theorem node3123_conditional
    (child3122 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3120 (830, 2) = (output3122, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3121 (830, 2) = (output3123, (830, 6)) := by
  rw [output3123_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3122

theorem node3124_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3122 (830, 6) = (output3124, (830, 6)) := by
  rw [output3124_def]
  kernel_rfl

theorem node3125_conditional
    (child3124 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3122 (830, 6) = (output3124, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3123 (830, 6) = (output3125, (830, 6)) := by
  rw [output3125_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3124

theorem node3126_conditional
    (child3125 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3123 (830, 6) = (output3125, (830, 6)))
    (child1747 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1745 (830, 6) = (output1747, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3124 (830, 6) = (output3126, (830, 6)) := by
  rw [output3126_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3125 child1747

theorem node3127_conditional
    (child3126 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3124 (830, 6) = (output3126, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3125 (830, 6) = (output3127, (830, 6)) := by
  rw [output3127_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3126

theorem node3128_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child3127 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3125 (830, 6) = (output3127, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3126 (830, 6) = (output3128, (830, 6)) := by
  rw [output3128_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child3127

theorem node3129_conditional
    (child3128 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3126 (830, 6) = (output3128, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3127 (830, 6) = (output3129, (830, 6)) := by
  rw [output3129_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3128

theorem node3130_conditional
    (child3123 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3121 (830, 2) = (output3123, (830, 6)))
    (child3129 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3127 (830, 6) = (output3129, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3128 (830, 2) = (output3130, (830, 6)) := by
  rw [output3130_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3123 child3129

theorem node3131_conditional
    (child3130 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3128 (830, 2) = (output3130, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3129 (830, 2) = (output3131, (830, 6)) := by
  rw [output3131_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3130

theorem node3132_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3130 (830, 6) = (output3132, (830, 6)) := by
  rw [output3132_def]
  kernel_rfl

theorem node3133_conditional
    (child3132 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3130 (830, 6) = (output3132, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3131 (830, 6) = (output3133, (830, 6)) := by
  rw [output3133_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3132

theorem node3134_conditional
    (child3133 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3131 (830, 6) = (output3133, (830, 6)))
    (child1747 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1745 (830, 6) = (output1747, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3132 (830, 6) = (output3134, (830, 6)) := by
  rw [output3134_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3133 child1747

theorem node3135_conditional
    (child3134 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3132 (830, 6) = (output3134, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3133 (830, 6) = (output3135, (830, 6)) := by
  rw [output3135_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3134

theorem node3136_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child3135 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3133 (830, 6) = (output3135, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3134 (830, 6) = (output3136, (830, 6)) := by
  rw [output3136_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child3135

theorem node3137_conditional
    (child3136 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3134 (830, 6) = (output3136, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3135 (830, 6) = (output3137, (830, 6)) := by
  rw [output3137_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3136

theorem node3138_conditional
    (child3131 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3129 (830, 2) = (output3131, (830, 6)))
    (child3137 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3135 (830, 6) = (output3137, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3136 (830, 2) = (output3138, (830, 6)) := by
  rw [output3138_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3131 child3137

theorem node3139_conditional
    (child3138 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3136 (830, 2) = (output3138, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3137 (830, 2) = (output3139, (830, 6)) := by
  rw [output3139_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3138

theorem node3140_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_12 (830, 6) = (output3140, (830, 6)) := by
  rw [output3140_def]
  kernel_rfl

theorem node3141_conditional
    (child3140 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_12 (830, 6) = (output3140, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_13 (830, 6) = (output3141, (830, 6)) := by
  rw [output3141_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3140

theorem node3142_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_14 (830, 6) = (output3142, (830, 6)) := by
  rw [output3142_def]
  kernel_rfl

theorem node3143_conditional
    (child3142 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_14 (830, 6) = (output3142, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_15 (830, 6) = (output3143, (830, 6)) := by
  rw [output3143_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3142

theorem node3144_conditional
    (child3143 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_15 (830, 6) = (output3143, (830, 6)))
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_18 (830, 6) = (output3144, (830, 6)) := by
  rw [output3144_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3143 child51

theorem node3145_conditional
    (child3144 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_18 (830, 6) = (output3144, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_19 (830, 6) = (output3145, (830, 6)) := by
  rw [output3145_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3144

theorem node3146_conditional
    (child3141 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_13 (830, 6) = (output3141, (830, 6)))
    (child3145 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_19 (830, 6) = (output3145, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_20 (830, 6) = (output3146, (830, 6)) := by
  rw [output3146_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3141 child3145

theorem node3147_conditional
    (child3146 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_20 (830, 6) = (output3146, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_21 (830, 6) = (output3147, (830, 6)) := by
  rw [output3147_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3146

theorem node3148_conditional
    (child3139 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3137 (830, 2) = (output3139, (830, 6)))
    (child3147 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_21 (830, 6) = (output3147, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3138 (830, 2) = (output3148, (830, 6)) := by
  rw [output3148_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3139 child3147

theorem node3149_conditional
    (child3148 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3138 (830, 2) = (output3148, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_3139 (830, 2) = (output3149, (830, 6)) := by
  rw [output3149_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child3148

#print axioms node3149_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
