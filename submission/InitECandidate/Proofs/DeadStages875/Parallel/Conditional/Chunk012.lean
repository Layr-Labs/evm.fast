import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk012
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages875.Parallel
theorem node3072_cond_eq
    (child3068 : Flapjack.WordAlloc.removeDeadStructural input3068 value1111 value1 value2 = (output3068, value1112, value1))
    (child3071 : Flapjack.WordAlloc.removeDeadStructural input3071 value1112 value1 value2 = (output3071, value1102, value1)) : Flapjack.WordAlloc.removeDeadStructural input3072 value1111 value1 value2 = (output3072, value1102, value1) := by
  rw [input3072_def, output3072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3068]
  try dsimp only
  rw [child3071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3068_skip, output3071_skip]
  kernel_rfl

theorem node3073_cond_eq
    (child3067 : Flapjack.WordAlloc.removeDeadStructural input3067 value1110 value1 value2 = (output3067, value1111, value1))
    (child3072 : Flapjack.WordAlloc.removeDeadStructural input3072 value1111 value1 value2 = (output3072, value1102, value1)) : Flapjack.WordAlloc.removeDeadStructural input3073 value1110 value1 value2 = (output3073, value1102, value1) := by
  rw [input3073_def, output3073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3067]
  try dsimp only
  rw [child3072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3067_skip, output3072_skip]
  kernel_rfl

theorem node3074_cond_eq
    (child3066 : Flapjack.WordAlloc.removeDeadStructural input3066 value1109 value1 value2 = (output3066, value1110, value1))
    (child3073 : Flapjack.WordAlloc.removeDeadStructural input3073 value1110 value1 value2 = (output3073, value1102, value1)) : Flapjack.WordAlloc.removeDeadStructural input3074 value1109 value1 value2 = (output3074, value1102, value1) := by
  rw [input3074_def, output3074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3066]
  try dsimp only
  rw [child3073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3066_skip, output3073_skip]
  kernel_rfl

theorem node3075_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3075 value1102 value1 value2 = (output3075, value1114, value1) := by
  rw [input3075_def, output3075_def]
  kernel_rfl

theorem node3076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3076 value1114 value1 value2 = (output3076, value1114, value1) := by
  rw [input3076_def, output3076_def]
  kernel_rfl

theorem node3077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3077 value1114 value1 value2 = (output3077, value1114, value1) := by
  rw [input3077_def, output3077_def]
  kernel_rfl

theorem node3078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3078 value1114 value1 value2 = (output3078, value1114, value1) := by
  rw [input3078_def, output3078_def]
  kernel_rfl

theorem node3079_cond_eq
    (child3077 : Flapjack.WordAlloc.removeDeadStructural input3077 value1114 value1 value2 = (output3077, value1114, value1))
    (child3078 : Flapjack.WordAlloc.removeDeadStructural input3078 value1114 value1 value2 = (output3078, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3079 value1114 value1 value2 = (output3079, value1114, value1) := by
  rw [input3079_def, output3079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3077]
  try dsimp only
  rw [child3078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3077_skip, output3078_skip]
  kernel_rfl

theorem node3080_cond_eq
    (child3076 : Flapjack.WordAlloc.removeDeadStructural input3076 value1114 value1 value2 = (output3076, value1114, value1))
    (child3079 : Flapjack.WordAlloc.removeDeadStructural input3079 value1114 value1 value2 = (output3079, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3080 value1114 value1 value2 = (output3080, value1114, value1) := by
  rw [input3080_def, output3080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3076]
  try dsimp only
  rw [child3079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3076_skip, output3079_skip]
  kernel_rfl

theorem node3081_cond_eq
    (child3075 : Flapjack.WordAlloc.removeDeadStructural input3075 value1102 value1 value2 = (output3075, value1114, value1))
    (child3080 : Flapjack.WordAlloc.removeDeadStructural input3080 value1114 value1 value2 = (output3080, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3081 value1102 value1 value2 = (output3081, value1114, value1) := by
  rw [input3081_def, output3081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3075]
  try dsimp only
  rw [child3080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3075_skip, output3080_skip]
  kernel_rfl

theorem node3082_cond_eq
    (child3074 : Flapjack.WordAlloc.removeDeadStructural input3074 value1109 value1 value2 = (output3074, value1102, value1))
    (child3081 : Flapjack.WordAlloc.removeDeadStructural input3081 value1102 value1 value2 = (output3081, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3082 value1109 value1 value2 = (output3082, value1114, value1) := by
  rw [input3082_def, output3082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3074]
  try dsimp only
  rw [child3081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3074_skip, output3081_skip]
  kernel_rfl

theorem node3083_cond_eq
    (child3065 : Flapjack.WordAlloc.removeDeadStructural input3065 value1102 value1 value2 = (output3065, value1109, value1))
    (child3082 : Flapjack.WordAlloc.removeDeadStructural input3082 value1109 value1 value2 = (output3082, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3083 value1102 value1 value2 = (output3083, value1114, value1) := by
  rw [input3083_def, output3083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3065]
  try dsimp only
  rw [child3082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3065_skip, output3082_skip]
  kernel_rfl

theorem node3084_cond_eq
    (child3032 : Flapjack.WordAlloc.removeDeadStructural input3032 value1102 value1 value2 = (output3032, value1102, value1))
    (child3083 : Flapjack.WordAlloc.removeDeadStructural input3083 value1102 value1 value2 = (output3083, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3084 value1102 value1 value2 = (output3084, value1114, value1) := by
  rw [input3084_def, output3084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3032]
  try dsimp only
  rw [child3083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3032_skip, output3083_skip]
  kernel_rfl

theorem node3085_cond_eq
    (child3031 : Flapjack.WordAlloc.removeDeadStructural input3031 value1101 value1 value2 = (output3031, value1102, value1))
    (child3084 : Flapjack.WordAlloc.removeDeadStructural input3084 value1102 value1 value2 = (output3084, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3085 value1101 value1 value2 = (output3085, value1114, value1) := by
  rw [input3085_def, output3085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3031]
  try dsimp only
  rw [child3084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3031_skip, output3084_skip]
  kernel_rfl

theorem node3086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3086 value1101 value1 value2 = (output3086, value1101, value1) := by
  rw [input3086_def, output3086_def]
  kernel_rfl

theorem node3087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3087 value1101 value1 value2 = (output3087, value1101, value1) := by
  rw [input3087_def, output3087_def]
  kernel_rfl

theorem node3088_cond_eq
    (child3086 : Flapjack.WordAlloc.removeDeadStructural input3086 value1101 value1 value2 = (output3086, value1101, value1))
    (child3087 : Flapjack.WordAlloc.removeDeadStructural input3087 value1101 value1 value2 = (output3087, value1101, value1)) : Flapjack.WordAlloc.removeDeadStructural input3088 value1101 value1 value2 = (output3088, value1101, value1) := by
  rw [input3088_def, output3088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3086]
  try dsimp only
  rw [child3087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3086_skip, output3087_skip]
  kernel_rfl

theorem node3089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3089 value1101 value1 value2 = (output3089, value1114, value1) := by
  rw [input3089_def, output3089_def]
  kernel_rfl

theorem node3090_cond_eq
    (child3088 : Flapjack.WordAlloc.removeDeadStructural input3088 value1101 value1 value2 = (output3088, value1101, value1))
    (child3089 : Flapjack.WordAlloc.removeDeadStructural input3089 value1101 value1 value2 = (output3089, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3090 value1101 value1 value2 = (output3090, value1114, value1) := by
  rw [input3090_def, output3090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3088]
  try dsimp only
  rw [child3089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3088_skip, output3089_skip]
  kernel_rfl

theorem node3091_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3091 value1114 value1 value2 = (output3091, value1114, value1) := by
  rw [input3091_def, output3091_def]
  kernel_rfl

theorem node3092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3092 value1114 value1 value2 = (output3092, value1114, value1) := by
  rw [input3092_def, output3092_def]
  kernel_rfl

theorem node3093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3093 value1114 value1 value2 = (output3093, value1114, value1) := by
  rw [input3093_def, output3093_def]
  kernel_rfl

theorem node3094_cond_eq
    (child3092 : Flapjack.WordAlloc.removeDeadStructural input3092 value1114 value1 value2 = (output3092, value1114, value1))
    (child3093 : Flapjack.WordAlloc.removeDeadStructural input3093 value1114 value1 value2 = (output3093, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3094 value1114 value1 value2 = (output3094, value1114, value1) := by
  rw [input3094_def, output3094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3092]
  try dsimp only
  rw [child3093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3092_skip, output3093_skip]
  kernel_rfl

theorem node3095_cond_eq
    (child3091 : Flapjack.WordAlloc.removeDeadStructural input3091 value1114 value1 value2 = (output3091, value1114, value1))
    (child3094 : Flapjack.WordAlloc.removeDeadStructural input3094 value1114 value1 value2 = (output3094, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3095 value1114 value1 value2 = (output3095, value1114, value1) := by
  rw [input3095_def, output3095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3091]
  try dsimp only
  rw [child3094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3091_skip, output3094_skip]
  kernel_rfl

theorem node3096_cond_eq
    (child3090 : Flapjack.WordAlloc.removeDeadStructural input3090 value1101 value1 value2 = (output3090, value1114, value1))
    (child3095 : Flapjack.WordAlloc.removeDeadStructural input3095 value1114 value1 value2 = (output3095, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3096 value1101 value1 value2 = (output3096, value1114, value1) := by
  rw [input3096_def, output3096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3090]
  try dsimp only
  rw [child3095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3090_skip, output3095_skip]
  kernel_rfl

theorem node3097_cond_eq
    (child3085 : Flapjack.WordAlloc.removeDeadStructural input3085 value1101 value1 value2 = (output3085, value1114, value1))
    (child3096 : Flapjack.WordAlloc.removeDeadStructural input3096 value1101 value1 value2 = (output3096, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input3097 value1101 value1 value2 = (output3097, value1116, value1) := by
  rw [input3097_def, output3097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3085]
  try dsimp only
  rw [child3096]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3085_skip, output3096_skip]
  kernel_rfl

theorem node3098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3098 value1116 value1 value2 = (output3098, value1114, value1) := by
  rw [input3098_def, output3098_def]
  kernel_rfl

theorem node3099_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3099 value1114 value1 value2 = (output3099, value1117, value1) := by
  rw [input3099_def, output3099_def]
  kernel_rfl

theorem node3100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3100 value1117 value1 value2 = (output3100, value1117, value1) := by
  rw [input3100_def, output3100_def]
  kernel_rfl

theorem node3101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3101 value1117 value1 value2 = (output3101, value1118, value1) := by
  rw [input3101_def, output3101_def]
  kernel_rfl

theorem node3102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3102 value1118 value1 value2 = (output3102, value1119, value1) := by
  rw [input3102_def, output3102_def]
  kernel_rfl

theorem node3103_cond_eq
    (child3101 : Flapjack.WordAlloc.removeDeadStructural input3101 value1117 value1 value2 = (output3101, value1118, value1))
    (child3102 : Flapjack.WordAlloc.removeDeadStructural input3102 value1118 value1 value2 = (output3102, value1119, value1)) : Flapjack.WordAlloc.removeDeadStructural input3103 value1117 value1 value2 = (output3103, value1119, value1) := by
  rw [input3103_def, output3103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3101]
  try dsimp only
  rw [child3102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3101_skip, output3102_skip]
  kernel_rfl

theorem node3104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3104 value1119 value1 value2 = (output3104, value1120, value1) := by
  rw [input3104_def, output3104_def]
  kernel_rfl

theorem node3105_cond_eq
    (child3103 : Flapjack.WordAlloc.removeDeadStructural input3103 value1117 value1 value2 = (output3103, value1119, value1))
    (child3104 : Flapjack.WordAlloc.removeDeadStructural input3104 value1119 value1 value2 = (output3104, value1120, value1)) : Flapjack.WordAlloc.removeDeadStructural input3105 value1117 value1 value2 = (output3105, value1120, value1) := by
  rw [input3105_def, output3105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3103]
  try dsimp only
  rw [child3104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3103_skip, output3104_skip]
  kernel_rfl

theorem node3106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3106 value1120 value1 value2 = (output3106, value1121, value1) := by
  rw [input3106_def, output3106_def]
  kernel_rfl

theorem node3107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3107 value1121 value1 value2 = (output3107, value1122, value1) := by
  rw [input3107_def, output3107_def]
  kernel_rfl

theorem node3108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3108 value1122 value1 value2 = (output3108, value1123, value1) := by
  rw [input3108_def, output3108_def]
  kernel_rfl

theorem node3109_cond_eq
    (child3107 : Flapjack.WordAlloc.removeDeadStructural input3107 value1121 value1 value2 = (output3107, value1122, value1))
    (child3108 : Flapjack.WordAlloc.removeDeadStructural input3108 value1122 value1 value2 = (output3108, value1123, value1)) : Flapjack.WordAlloc.removeDeadStructural input3109 value1121 value1 value2 = (output3109, value1123, value1) := by
  rw [input3109_def, output3109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3107]
  try dsimp only
  rw [child3108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3107_skip, output3108_skip]
  kernel_rfl

theorem node3110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3110 value1123 value1 value2 = (output3110, value1124, value1) := by
  rw [input3110_def, output3110_def]
  kernel_rfl

theorem node3111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3111 value1124 value1 value2 = (output3111, value1125, value1) := by
  rw [input3111_def, output3111_def]
  kernel_rfl

theorem node3112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3112 value1125 value1 value2 = (output3112, value1126, value1) := by
  rw [input3112_def, output3112_def]
  kernel_rfl

theorem node3113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3113 value1126 value1 value2 = (output3113, value1127, value1) := by
  rw [input3113_def, output3113_def]
  kernel_rfl

theorem node3114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3114 value1127 value1 value2 = (output3114, value1128, value1) := by
  rw [input3114_def, output3114_def]
  kernel_rfl

theorem node3115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3115 value1128 value1 value2 = (output3115, value1129, value1) := by
  rw [input3115_def, output3115_def]
  kernel_rfl

theorem node3116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3116 value1129 value1 value2 = (output3116, value1130, value1) := by
  rw [input3116_def, output3116_def]
  kernel_rfl

theorem node3117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3117 value1130 value1 value2 = (output3117, value1131, value1) := by
  rw [input3117_def, output3117_def]
  kernel_rfl

theorem node3118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3118 value1131 value1 value2 = (output3118, value1132, value1) := by
  rw [input3118_def, output3118_def]
  kernel_rfl

theorem node3119_cond_eq
    (child3117 : Flapjack.WordAlloc.removeDeadStructural input3117 value1130 value1 value2 = (output3117, value1131, value1))
    (child3118 : Flapjack.WordAlloc.removeDeadStructural input3118 value1131 value1 value2 = (output3118, value1132, value1)) : Flapjack.WordAlloc.removeDeadStructural input3119 value1130 value1 value2 = (output3119, value1132, value1) := by
  rw [input3119_def, output3119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3117]
  try dsimp only
  rw [child3118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3117_skip, output3118_skip]
  kernel_rfl

theorem node3120_cond_eq
    (child3116 : Flapjack.WordAlloc.removeDeadStructural input3116 value1129 value1 value2 = (output3116, value1130, value1))
    (child3119 : Flapjack.WordAlloc.removeDeadStructural input3119 value1130 value1 value2 = (output3119, value1132, value1)) : Flapjack.WordAlloc.removeDeadStructural input3120 value1129 value1 value2 = (output3120, value1132, value1) := by
  rw [input3120_def, output3120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3116]
  try dsimp only
  rw [child3119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3116_skip, output3119_skip]
  kernel_rfl

theorem node3121_cond_eq
    (child3115 : Flapjack.WordAlloc.removeDeadStructural input3115 value1128 value1 value2 = (output3115, value1129, value1))
    (child3120 : Flapjack.WordAlloc.removeDeadStructural input3120 value1129 value1 value2 = (output3120, value1132, value1)) : Flapjack.WordAlloc.removeDeadStructural input3121 value1128 value1 value2 = (output3121, value1132, value1) := by
  rw [input3121_def, output3121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3115]
  try dsimp only
  rw [child3120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3115_skip, output3120_skip]
  kernel_rfl

theorem node3122_cond_eq
    (child3114 : Flapjack.WordAlloc.removeDeadStructural input3114 value1127 value1 value2 = (output3114, value1128, value1))
    (child3121 : Flapjack.WordAlloc.removeDeadStructural input3121 value1128 value1 value2 = (output3121, value1132, value1)) : Flapjack.WordAlloc.removeDeadStructural input3122 value1127 value1 value2 = (output3122, value1132, value1) := by
  rw [input3122_def, output3122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3114]
  try dsimp only
  rw [child3121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3114_skip, output3121_skip]
  kernel_rfl

theorem node3123_cond_eq
    (child3113 : Flapjack.WordAlloc.removeDeadStructural input3113 value1126 value1 value2 = (output3113, value1127, value1))
    (child3122 : Flapjack.WordAlloc.removeDeadStructural input3122 value1127 value1 value2 = (output3122, value1132, value1)) : Flapjack.WordAlloc.removeDeadStructural input3123 value1126 value1 value2 = (output3123, value1132, value1) := by
  rw [input3123_def, output3123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3113]
  try dsimp only
  rw [child3122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3113_skip, output3122_skip]
  kernel_rfl

theorem node3124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3124 value1132 value1 value2 = (output3124, value1133, value1) := by
  rw [input3124_def, output3124_def]
  kernel_rfl

theorem node3125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3125 value1133 value1 value2 = (output3125, value1134, value1) := by
  rw [input3125_def, output3125_def]
  kernel_rfl

theorem node3126_cond_eq
    (child3124 : Flapjack.WordAlloc.removeDeadStructural input3124 value1132 value1 value2 = (output3124, value1133, value1))
    (child3125 : Flapjack.WordAlloc.removeDeadStructural input3125 value1133 value1 value2 = (output3125, value1134, value1)) : Flapjack.WordAlloc.removeDeadStructural input3126 value1132 value1 value2 = (output3126, value1134, value1) := by
  rw [input3126_def, output3126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3124]
  try dsimp only
  rw [child3125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3124_skip, output3125_skip]
  kernel_rfl

theorem node3127_cond_eq
    (child3123 : Flapjack.WordAlloc.removeDeadStructural input3123 value1126 value1 value2 = (output3123, value1132, value1))
    (child3126 : Flapjack.WordAlloc.removeDeadStructural input3126 value1132 value1 value2 = (output3126, value1134, value1)) : Flapjack.WordAlloc.removeDeadStructural input3127 value1126 value1 value2 = (output3127, value1134, value1) := by
  rw [input3127_def, output3127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3123]
  try dsimp only
  rw [child3126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3123_skip, output3126_skip]
  kernel_rfl

theorem node3128_cond_eq
    (child3112 : Flapjack.WordAlloc.removeDeadStructural input3112 value1125 value1 value2 = (output3112, value1126, value1))
    (child3127 : Flapjack.WordAlloc.removeDeadStructural input3127 value1126 value1 value2 = (output3127, value1134, value1)) : Flapjack.WordAlloc.removeDeadStructural input3128 value1125 value1 value2 = (output3128, value1134, value1) := by
  rw [input3128_def, output3128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3112]
  try dsimp only
  rw [child3127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3112_skip, output3127_skip]
  kernel_rfl

theorem node3129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3129 value1134 value1 value2 = (output3129, value1135, value1) := by
  rw [input3129_def, output3129_def]
  kernel_rfl

theorem node3130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3130 value1135 value1 value2 = (output3130, value1136, value1) := by
  rw [input3130_def, output3130_def]
  kernel_rfl

theorem node3131_cond_eq
    (child3129 : Flapjack.WordAlloc.removeDeadStructural input3129 value1134 value1 value2 = (output3129, value1135, value1))
    (child3130 : Flapjack.WordAlloc.removeDeadStructural input3130 value1135 value1 value2 = (output3130, value1136, value1)) : Flapjack.WordAlloc.removeDeadStructural input3131 value1134 value1 value2 = (output3131, value1136, value1) := by
  rw [input3131_def, output3131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3129]
  try dsimp only
  rw [child3130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3129_skip, output3130_skip]
  kernel_rfl

theorem node3132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3132 value1136 value1 value2 = (output3132, value1137, value1) := by
  rw [input3132_def, output3132_def]
  kernel_rfl

theorem node3133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3133 value1137 value1 value2 = (output3133, value1138, value1) := by
  rw [input3133_def, output3133_def]
  kernel_rfl

theorem node3134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3134 value1138 value1 value2 = (output3134, value1139, value1) := by
  rw [input3134_def, output3134_def]
  kernel_rfl

theorem node3135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3135 value1139 value1 value2 = (output3135, value1140, value1) := by
  rw [input3135_def, output3135_def]
  kernel_rfl

theorem node3136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3136 value1140 value1 value2 = (output3136, value1141, value1) := by
  rw [input3136_def, output3136_def]
  kernel_rfl

theorem node3137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3137 value1141 value1 value2 = (output3137, value1142, value1) := by
  rw [input3137_def, output3137_def]
  kernel_rfl

theorem node3138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3138 value1142 value1 value2 = (output3138, value1143, value1) := by
  rw [input3138_def, output3138_def]
  kernel_rfl

theorem node3139_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3139 value1143 value1 value2 = (output3139, value1144, value1) := by
  rw [input3139_def, output3139_def]
  kernel_rfl

theorem node3140_cond_eq
    (child3138 : Flapjack.WordAlloc.removeDeadStructural input3138 value1142 value1 value2 = (output3138, value1143, value1))
    (child3139 : Flapjack.WordAlloc.removeDeadStructural input3139 value1143 value1 value2 = (output3139, value1144, value1)) : Flapjack.WordAlloc.removeDeadStructural input3140 value1142 value1 value2 = (output3140, value1144, value1) := by
  rw [input3140_def, output3140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3138]
  try dsimp only
  rw [child3139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3138_skip, output3139_skip]
  kernel_rfl

theorem node3141_cond_eq
    (child3137 : Flapjack.WordAlloc.removeDeadStructural input3137 value1141 value1 value2 = (output3137, value1142, value1))
    (child3140 : Flapjack.WordAlloc.removeDeadStructural input3140 value1142 value1 value2 = (output3140, value1144, value1)) : Flapjack.WordAlloc.removeDeadStructural input3141 value1141 value1 value2 = (output3141, value1144, value1) := by
  rw [input3141_def, output3141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3137]
  try dsimp only
  rw [child3140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3137_skip, output3140_skip]
  kernel_rfl

theorem node3142_cond_eq
    (child3136 : Flapjack.WordAlloc.removeDeadStructural input3136 value1140 value1 value2 = (output3136, value1141, value1))
    (child3141 : Flapjack.WordAlloc.removeDeadStructural input3141 value1141 value1 value2 = (output3141, value1144, value1)) : Flapjack.WordAlloc.removeDeadStructural input3142 value1140 value1 value2 = (output3142, value1144, value1) := by
  rw [input3142_def, output3142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3136]
  try dsimp only
  rw [child3141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3136_skip, output3141_skip]
  kernel_rfl

theorem node3143_cond_eq
    (child3135 : Flapjack.WordAlloc.removeDeadStructural input3135 value1139 value1 value2 = (output3135, value1140, value1))
    (child3142 : Flapjack.WordAlloc.removeDeadStructural input3142 value1140 value1 value2 = (output3142, value1144, value1)) : Flapjack.WordAlloc.removeDeadStructural input3143 value1139 value1 value2 = (output3143, value1144, value1) := by
  rw [input3143_def, output3143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3135]
  try dsimp only
  rw [child3142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3135_skip, output3142_skip]
  kernel_rfl

theorem node3144_cond_eq
    (child3134 : Flapjack.WordAlloc.removeDeadStructural input3134 value1138 value1 value2 = (output3134, value1139, value1))
    (child3143 : Flapjack.WordAlloc.removeDeadStructural input3143 value1139 value1 value2 = (output3143, value1144, value1)) : Flapjack.WordAlloc.removeDeadStructural input3144 value1138 value1 value2 = (output3144, value1144, value1) := by
  rw [input3144_def, output3144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3134]
  try dsimp only
  rw [child3143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3134_skip, output3143_skip]
  kernel_rfl

theorem node3145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3145 value1144 value1 value2 = (output3145, value1145, value1) := by
  rw [input3145_def, output3145_def]
  kernel_rfl

theorem node3146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3146 value1145 value1 value2 = (output3146, value1146, value1) := by
  rw [input3146_def, output3146_def]
  kernel_rfl

theorem node3147_cond_eq
    (child3145 : Flapjack.WordAlloc.removeDeadStructural input3145 value1144 value1 value2 = (output3145, value1145, value1))
    (child3146 : Flapjack.WordAlloc.removeDeadStructural input3146 value1145 value1 value2 = (output3146, value1146, value1)) : Flapjack.WordAlloc.removeDeadStructural input3147 value1144 value1 value2 = (output3147, value1146, value1) := by
  rw [input3147_def, output3147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3145]
  try dsimp only
  rw [child3146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3145_skip, output3146_skip]
  kernel_rfl

theorem node3148_cond_eq
    (child3144 : Flapjack.WordAlloc.removeDeadStructural input3144 value1138 value1 value2 = (output3144, value1144, value1))
    (child3147 : Flapjack.WordAlloc.removeDeadStructural input3147 value1144 value1 value2 = (output3147, value1146, value1)) : Flapjack.WordAlloc.removeDeadStructural input3148 value1138 value1 value2 = (output3148, value1146, value1) := by
  rw [input3148_def, output3148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3144]
  try dsimp only
  rw [child3147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3144_skip, output3147_skip]
  kernel_rfl

theorem node3149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3149 value1146 value1 value2 = (output3149, value1146, value1) := by
  rw [input3149_def, output3149_def]
  kernel_rfl

theorem node3150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3150 value1146 value1 value2 = (output3150, value1147, value1) := by
  rw [input3150_def, output3150_def]
  kernel_rfl

theorem node3151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3151 value1147 value1 value2 = (output3151, value1148, value1) := by
  rw [input3151_def, output3151_def]
  kernel_rfl

theorem node3152_cond_eq
    (child3150 : Flapjack.WordAlloc.removeDeadStructural input3150 value1146 value1 value2 = (output3150, value1147, value1))
    (child3151 : Flapjack.WordAlloc.removeDeadStructural input3151 value1147 value1 value2 = (output3151, value1148, value1)) : Flapjack.WordAlloc.removeDeadStructural input3152 value1146 value1 value2 = (output3152, value1148, value1) := by
  rw [input3152_def, output3152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3150]
  try dsimp only
  rw [child3151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3150_skip, output3151_skip]
  kernel_rfl

theorem node3153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3153 value1148 value1 value2 = (output3153, value1149, value1) := by
  rw [input3153_def, output3153_def]
  kernel_rfl

theorem node3154_cond_eq
    (child3152 : Flapjack.WordAlloc.removeDeadStructural input3152 value1146 value1 value2 = (output3152, value1148, value1))
    (child3153 : Flapjack.WordAlloc.removeDeadStructural input3153 value1148 value1 value2 = (output3153, value1149, value1)) : Flapjack.WordAlloc.removeDeadStructural input3154 value1146 value1 value2 = (output3154, value1149, value1) := by
  rw [input3154_def, output3154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3152]
  try dsimp only
  rw [child3153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3152_skip, output3153_skip]
  kernel_rfl

theorem node3155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3155 value1149 value1 value2 = (output3155, value1150, value1) := by
  rw [input3155_def, output3155_def]
  kernel_rfl

theorem node3156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3156 value1150 value1 value2 = (output3156, value1151, value1) := by
  rw [input3156_def, output3156_def]
  kernel_rfl

theorem node3157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3157 value1151 value1 value2 = (output3157, value1152, value1) := by
  rw [input3157_def, output3157_def]
  kernel_rfl

theorem node3158_cond_eq
    (child3156 : Flapjack.WordAlloc.removeDeadStructural input3156 value1150 value1 value2 = (output3156, value1151, value1))
    (child3157 : Flapjack.WordAlloc.removeDeadStructural input3157 value1151 value1 value2 = (output3157, value1152, value1)) : Flapjack.WordAlloc.removeDeadStructural input3158 value1150 value1 value2 = (output3158, value1152, value1) := by
  rw [input3158_def, output3158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3156]
  try dsimp only
  rw [child3157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3156_skip, output3157_skip]
  kernel_rfl

theorem node3159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3159 value1152 value1 value2 = (output3159, value1153, value1) := by
  rw [input3159_def, output3159_def]
  kernel_rfl

theorem node3160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3160 value1153 value1 value2 = (output3160, value1154, value1) := by
  rw [input3160_def, output3160_def]
  kernel_rfl

theorem node3161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3161 value1154 value1 value2 = (output3161, value1155, value1) := by
  rw [input3161_def, output3161_def]
  kernel_rfl

theorem node3162_cond_eq
    (child3160 : Flapjack.WordAlloc.removeDeadStructural input3160 value1153 value1 value2 = (output3160, value1154, value1))
    (child3161 : Flapjack.WordAlloc.removeDeadStructural input3161 value1154 value1 value2 = (output3161, value1155, value1)) : Flapjack.WordAlloc.removeDeadStructural input3162 value1153 value1 value2 = (output3162, value1155, value1) := by
  rw [input3162_def, output3162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3160]
  try dsimp only
  rw [child3161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3160_skip, output3161_skip]
  kernel_rfl

theorem node3163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3163 value1155 value1 value2 = (output3163, value1156, value1) := by
  rw [input3163_def, output3163_def]
  kernel_rfl

theorem node3164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3164 value1156 value1 value2 = (output3164, value1157, value1) := by
  rw [input3164_def, output3164_def]
  kernel_rfl

theorem node3165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3165 value1157 value1 value2 = (output3165, value1158, value1) := by
  rw [input3165_def, output3165_def]
  kernel_rfl

theorem node3166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3166 value1158 value1 value2 = (output3166, value1159, value1) := by
  rw [input3166_def, output3166_def]
  kernel_rfl

theorem node3167_cond_eq
    (child3165 : Flapjack.WordAlloc.removeDeadStructural input3165 value1157 value1 value2 = (output3165, value1158, value1))
    (child3166 : Flapjack.WordAlloc.removeDeadStructural input3166 value1158 value1 value2 = (output3166, value1159, value1)) : Flapjack.WordAlloc.removeDeadStructural input3167 value1157 value1 value2 = (output3167, value1159, value1) := by
  rw [input3167_def, output3167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3165]
  try dsimp only
  rw [child3166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3165_skip, output3166_skip]
  kernel_rfl

theorem node3168_cond_eq
    (child3164 : Flapjack.WordAlloc.removeDeadStructural input3164 value1156 value1 value2 = (output3164, value1157, value1))
    (child3167 : Flapjack.WordAlloc.removeDeadStructural input3167 value1157 value1 value2 = (output3167, value1159, value1)) : Flapjack.WordAlloc.removeDeadStructural input3168 value1156 value1 value2 = (output3168, value1159, value1) := by
  rw [input3168_def, output3168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3164]
  try dsimp only
  rw [child3167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3164_skip, output3167_skip]
  kernel_rfl

theorem node3169_cond_eq
    (child3163 : Flapjack.WordAlloc.removeDeadStructural input3163 value1155 value1 value2 = (output3163, value1156, value1))
    (child3168 : Flapjack.WordAlloc.removeDeadStructural input3168 value1156 value1 value2 = (output3168, value1159, value1)) : Flapjack.WordAlloc.removeDeadStructural input3169 value1155 value1 value2 = (output3169, value1159, value1) := by
  rw [input3169_def, output3169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3163]
  try dsimp only
  rw [child3168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3163_skip, output3168_skip]
  kernel_rfl

theorem node3170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3170 value1159 value1 value2 = (output3170, value1159, value1) := by
  rw [input3170_def, output3170_def]
  kernel_rfl

theorem node3171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3171 value1159 value1 value2 = (output3171, value1160, value1) := by
  rw [input3171_def, output3171_def]
  kernel_rfl

theorem node3172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3172 value1160 value1 value2 = (output3172, value1160, value1) := by
  rw [input3172_def, output3172_def]
  kernel_rfl

theorem node3173_cond_eq
    (child3171 : Flapjack.WordAlloc.removeDeadStructural input3171 value1159 value1 value2 = (output3171, value1160, value1))
    (child3172 : Flapjack.WordAlloc.removeDeadStructural input3172 value1160 value1 value2 = (output3172, value1160, value1)) : Flapjack.WordAlloc.removeDeadStructural input3173 value1159 value1 value2 = (output3173, value1160, value1) := by
  rw [input3173_def, output3173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3171]
  try dsimp only
  rw [child3172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3171_skip, output3172_skip]
  kernel_rfl

theorem node3174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3174 value1160 value1 value2 = (output3174, value1161, value1) := by
  rw [input3174_def, output3174_def]
  kernel_rfl

theorem node3175_cond_eq
    (child3173 : Flapjack.WordAlloc.removeDeadStructural input3173 value1159 value1 value2 = (output3173, value1160, value1))
    (child3174 : Flapjack.WordAlloc.removeDeadStructural input3174 value1160 value1 value2 = (output3174, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3175 value1159 value1 value2 = (output3175, value1161, value1) := by
  rw [input3175_def, output3175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3173]
  try dsimp only
  rw [child3174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3173_skip, output3174_skip]
  kernel_rfl

theorem node3176_cond_eq
    (child3170 : Flapjack.WordAlloc.removeDeadStructural input3170 value1159 value1 value2 = (output3170, value1159, value1))
    (child3175 : Flapjack.WordAlloc.removeDeadStructural input3175 value1159 value1 value2 = (output3175, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3176 value1159 value1 value2 = (output3176, value1161, value1) := by
  rw [input3176_def, output3176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3170]
  try dsimp only
  rw [child3175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3170_skip, output3175_skip]
  kernel_rfl

theorem node3177_cond_eq
    (child3169 : Flapjack.WordAlloc.removeDeadStructural input3169 value1155 value1 value2 = (output3169, value1159, value1))
    (child3176 : Flapjack.WordAlloc.removeDeadStructural input3176 value1159 value1 value2 = (output3176, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3177 value1155 value1 value2 = (output3177, value1161, value1) := by
  rw [input3177_def, output3177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3169]
  try dsimp only
  rw [child3176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3169_skip, output3176_skip]
  kernel_rfl

theorem node3178_cond_eq
    (child3162 : Flapjack.WordAlloc.removeDeadStructural input3162 value1153 value1 value2 = (output3162, value1155, value1))
    (child3177 : Flapjack.WordAlloc.removeDeadStructural input3177 value1155 value1 value2 = (output3177, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3178 value1153 value1 value2 = (output3178, value1161, value1) := by
  rw [input3178_def, output3178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3162]
  try dsimp only
  rw [child3177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3162_skip, output3177_skip]
  kernel_rfl

theorem node3179_cond_eq
    (child3159 : Flapjack.WordAlloc.removeDeadStructural input3159 value1152 value1 value2 = (output3159, value1153, value1))
    (child3178 : Flapjack.WordAlloc.removeDeadStructural input3178 value1153 value1 value2 = (output3178, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3179 value1152 value1 value2 = (output3179, value1161, value1) := by
  rw [input3179_def, output3179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3159]
  try dsimp only
  rw [child3178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3159_skip, output3178_skip]
  kernel_rfl

theorem node3180_cond_eq
    (child3158 : Flapjack.WordAlloc.removeDeadStructural input3158 value1150 value1 value2 = (output3158, value1152, value1))
    (child3179 : Flapjack.WordAlloc.removeDeadStructural input3179 value1152 value1 value2 = (output3179, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3180 value1150 value1 value2 = (output3180, value1161, value1) := by
  rw [input3180_def, output3180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3158]
  try dsimp only
  rw [child3179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3158_skip, output3179_skip]
  kernel_rfl

theorem node3181_cond_eq
    (child3155 : Flapjack.WordAlloc.removeDeadStructural input3155 value1149 value1 value2 = (output3155, value1150, value1))
    (child3180 : Flapjack.WordAlloc.removeDeadStructural input3180 value1150 value1 value2 = (output3180, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3181 value1149 value1 value2 = (output3181, value1161, value1) := by
  rw [input3181_def, output3181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3155]
  try dsimp only
  rw [child3180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3155_skip, output3180_skip]
  kernel_rfl

theorem node3182_cond_eq
    (child3154 : Flapjack.WordAlloc.removeDeadStructural input3154 value1146 value1 value2 = (output3154, value1149, value1))
    (child3181 : Flapjack.WordAlloc.removeDeadStructural input3181 value1149 value1 value2 = (output3181, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3182 value1146 value1 value2 = (output3182, value1161, value1) := by
  rw [input3182_def, output3182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3154]
  try dsimp only
  rw [child3181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3154_skip, output3181_skip]
  kernel_rfl

theorem node3183_cond_eq
    (child3149 : Flapjack.WordAlloc.removeDeadStructural input3149 value1146 value1 value2 = (output3149, value1146, value1))
    (child3182 : Flapjack.WordAlloc.removeDeadStructural input3182 value1146 value1 value2 = (output3182, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3183 value1146 value1 value2 = (output3183, value1161, value1) := by
  rw [input3183_def, output3183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3149]
  try dsimp only
  rw [child3182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3149_skip, output3182_skip]
  kernel_rfl

theorem node3184_cond_eq
    (child3148 : Flapjack.WordAlloc.removeDeadStructural input3148 value1138 value1 value2 = (output3148, value1146, value1))
    (child3183 : Flapjack.WordAlloc.removeDeadStructural input3183 value1146 value1 value2 = (output3183, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3184 value1138 value1 value2 = (output3184, value1161, value1) := by
  rw [input3184_def, output3184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3148]
  try dsimp only
  rw [child3183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3148_skip, output3183_skip]
  kernel_rfl

theorem node3185_cond_eq
    (child3133 : Flapjack.WordAlloc.removeDeadStructural input3133 value1137 value1 value2 = (output3133, value1138, value1))
    (child3184 : Flapjack.WordAlloc.removeDeadStructural input3184 value1138 value1 value2 = (output3184, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3185 value1137 value1 value2 = (output3185, value1161, value1) := by
  rw [input3185_def, output3185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3133]
  try dsimp only
  rw [child3184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3133_skip, output3184_skip]
  kernel_rfl

theorem node3186_cond_eq
    (child3132 : Flapjack.WordAlloc.removeDeadStructural input3132 value1136 value1 value2 = (output3132, value1137, value1))
    (child3185 : Flapjack.WordAlloc.removeDeadStructural input3185 value1137 value1 value2 = (output3185, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3186 value1136 value1 value2 = (output3186, value1161, value1) := by
  rw [input3186_def, output3186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3132]
  try dsimp only
  rw [child3185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3132_skip, output3185_skip]
  kernel_rfl

theorem node3187_cond_eq
    (child3131 : Flapjack.WordAlloc.removeDeadStructural input3131 value1134 value1 value2 = (output3131, value1136, value1))
    (child3186 : Flapjack.WordAlloc.removeDeadStructural input3186 value1136 value1 value2 = (output3186, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3187 value1134 value1 value2 = (output3187, value1161, value1) := by
  rw [input3187_def, output3187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3131]
  try dsimp only
  rw [child3186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3131_skip, output3186_skip]
  kernel_rfl

theorem node3188_cond_eq
    (child3128 : Flapjack.WordAlloc.removeDeadStructural input3128 value1125 value1 value2 = (output3128, value1134, value1))
    (child3187 : Flapjack.WordAlloc.removeDeadStructural input3187 value1134 value1 value2 = (output3187, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3188 value1125 value1 value2 = (output3188, value1161, value1) := by
  rw [input3188_def, output3188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3128]
  try dsimp only
  rw [child3187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3128_skip, output3187_skip]
  kernel_rfl

theorem node3189_cond_eq
    (child3111 : Flapjack.WordAlloc.removeDeadStructural input3111 value1124 value1 value2 = (output3111, value1125, value1))
    (child3188 : Flapjack.WordAlloc.removeDeadStructural input3188 value1125 value1 value2 = (output3188, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3189 value1124 value1 value2 = (output3189, value1161, value1) := by
  rw [input3189_def, output3189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3111]
  try dsimp only
  rw [child3188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3111_skip, output3188_skip]
  kernel_rfl

theorem node3190_cond_eq
    (child3110 : Flapjack.WordAlloc.removeDeadStructural input3110 value1123 value1 value2 = (output3110, value1124, value1))
    (child3189 : Flapjack.WordAlloc.removeDeadStructural input3189 value1124 value1 value2 = (output3189, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3190 value1123 value1 value2 = (output3190, value1161, value1) := by
  rw [input3190_def, output3190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3110]
  try dsimp only
  rw [child3189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3110_skip, output3189_skip]
  kernel_rfl

theorem node3191_cond_eq
    (child3109 : Flapjack.WordAlloc.removeDeadStructural input3109 value1121 value1 value2 = (output3109, value1123, value1))
    (child3190 : Flapjack.WordAlloc.removeDeadStructural input3190 value1123 value1 value2 = (output3190, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3191 value1121 value1 value2 = (output3191, value1161, value1) := by
  rw [input3191_def, output3191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3109]
  try dsimp only
  rw [child3190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3109_skip, output3190_skip]
  kernel_rfl

theorem node3192_cond_eq
    (child3106 : Flapjack.WordAlloc.removeDeadStructural input3106 value1120 value1 value2 = (output3106, value1121, value1))
    (child3191 : Flapjack.WordAlloc.removeDeadStructural input3191 value1121 value1 value2 = (output3191, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3192 value1120 value1 value2 = (output3192, value1161, value1) := by
  rw [input3192_def, output3192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3106]
  try dsimp only
  rw [child3191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3106_skip, output3191_skip]
  kernel_rfl

theorem node3193_cond_eq
    (child3105 : Flapjack.WordAlloc.removeDeadStructural input3105 value1117 value1 value2 = (output3105, value1120, value1))
    (child3192 : Flapjack.WordAlloc.removeDeadStructural input3192 value1120 value1 value2 = (output3192, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3193 value1117 value1 value2 = (output3193, value1161, value1) := by
  rw [input3193_def, output3193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3105]
  try dsimp only
  rw [child3192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3105_skip, output3192_skip]
  kernel_rfl

theorem node3194_cond_eq
    (child3100 : Flapjack.WordAlloc.removeDeadStructural input3100 value1117 value1 value2 = (output3100, value1117, value1))
    (child3193 : Flapjack.WordAlloc.removeDeadStructural input3193 value1117 value1 value2 = (output3193, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3194 value1117 value1 value2 = (output3194, value1161, value1) := by
  rw [input3194_def, output3194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3100]
  try dsimp only
  rw [child3193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3100_skip, output3193_skip]
  kernel_rfl

theorem node3195_cond_eq
    (child3099 : Flapjack.WordAlloc.removeDeadStructural input3099 value1114 value1 value2 = (output3099, value1117, value1))
    (child3194 : Flapjack.WordAlloc.removeDeadStructural input3194 value1117 value1 value2 = (output3194, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3195 value1114 value1 value2 = (output3195, value1161, value1) := by
  rw [input3195_def, output3195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3099]
  try dsimp only
  rw [child3194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3099_skip, output3194_skip]
  kernel_rfl

theorem node3196_cond_eq
    (child3098 : Flapjack.WordAlloc.removeDeadStructural input3098 value1116 value1 value2 = (output3098, value1114, value1))
    (child3195 : Flapjack.WordAlloc.removeDeadStructural input3195 value1114 value1 value2 = (output3195, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3196 value1116 value1 value2 = (output3196, value1161, value1) := by
  rw [input3196_def, output3196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3098]
  try dsimp only
  rw [child3195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3098_skip, output3195_skip]
  kernel_rfl

theorem node3197_cond_eq
    (child3097 : Flapjack.WordAlloc.removeDeadStructural input3097 value1101 value1 value2 = (output3097, value1116, value1))
    (child3196 : Flapjack.WordAlloc.removeDeadStructural input3196 value1116 value1 value2 = (output3196, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3197 value1101 value1 value2 = (output3197, value1161, value1) := by
  rw [input3197_def, output3197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3097]
  try dsimp only
  rw [child3196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3097_skip, output3196_skip]
  kernel_rfl

theorem node3198_cond_eq
    (child3026 : Flapjack.WordAlloc.removeDeadStructural input3026 value1101 value1 value2 = (output3026, value1101, value1))
    (child3197 : Flapjack.WordAlloc.removeDeadStructural input3197 value1101 value1 value2 = (output3197, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3198 value1101 value1 value2 = (output3198, value1161, value1) := by
  rw [input3198_def, output3198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3026]
  try dsimp only
  rw [child3197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3026_skip, output3197_skip]
  kernel_rfl

theorem node3199_cond_eq
    (child3025 : Flapjack.WordAlloc.removeDeadStructural input3025 value1101 value1 value2 = (output3025, value1101, value1))
    (child3198 : Flapjack.WordAlloc.removeDeadStructural input3198 value1101 value1 value2 = (output3198, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3199 value1101 value1 value2 = (output3199, value1161, value1) := by
  rw [input3199_def, output3199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3025]
  try dsimp only
  rw [child3198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3025_skip, output3198_skip]
  kernel_rfl

theorem node3200_cond_eq
    (child3024 : Flapjack.WordAlloc.removeDeadStructural input3024 value1100 value1 value2 = (output3024, value1101, value1))
    (child3199 : Flapjack.WordAlloc.removeDeadStructural input3199 value1101 value1 value2 = (output3199, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3200 value1100 value1 value2 = (output3200, value1161, value1) := by
  rw [input3200_def, output3200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3024]
  try dsimp only
  rw [child3199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3024_skip, output3199_skip]
  kernel_rfl

theorem node3201_cond_eq
    (child3023 : Flapjack.WordAlloc.removeDeadStructural input3023 value1097 value1 value2 = (output3023, value1100, value1))
    (child3200 : Flapjack.WordAlloc.removeDeadStructural input3200 value1100 value1 value2 = (output3200, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3201 value1097 value1 value2 = (output3201, value1161, value1) := by
  rw [input3201_def, output3201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3023]
  try dsimp only
  rw [child3200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3023_skip, output3200_skip]
  kernel_rfl

theorem node3202_cond_eq
    (child3018 : Flapjack.WordAlloc.removeDeadStructural input3018 value1097 value1 value2 = (output3018, value1097, value1))
    (child3201 : Flapjack.WordAlloc.removeDeadStructural input3201 value1097 value1 value2 = (output3201, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3202 value1097 value1 value2 = (output3202, value1161, value1) := by
  rw [input3202_def, output3202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3018]
  try dsimp only
  rw [child3201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3018_skip, output3201_skip]
  kernel_rfl

theorem node3203_cond_eq
    (child3017 : Flapjack.WordAlloc.removeDeadStructural input3017 value1096 value1 value2 = (output3017, value1097, value1))
    (child3202 : Flapjack.WordAlloc.removeDeadStructural input3202 value1097 value1 value2 = (output3202, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3203 value1096 value1 value2 = (output3203, value1161, value1) := by
  rw [input3203_def, output3203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3017]
  try dsimp only
  rw [child3202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3017_skip, output3202_skip]
  kernel_rfl

theorem node3204_cond_eq
    (child3016 : Flapjack.WordAlloc.removeDeadStructural input3016 value1091 value1 value2 = (output3016, value1096, value1))
    (child3203 : Flapjack.WordAlloc.removeDeadStructural input3203 value1096 value1 value2 = (output3203, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3204 value1091 value1 value2 = (output3204, value1161, value1) := by
  rw [input3204_def, output3204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3016]
  try dsimp only
  rw [child3203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3016_skip, output3203_skip]
  kernel_rfl

theorem node3205_cond_eq
    (child3007 : Flapjack.WordAlloc.removeDeadStructural input3007 value1090 value1 value2 = (output3007, value1091, value1))
    (child3204 : Flapjack.WordAlloc.removeDeadStructural input3204 value1091 value1 value2 = (output3204, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3205 value1090 value1 value2 = (output3205, value1161, value1) := by
  rw [input3205_def, output3205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3007]
  try dsimp only
  rw [child3204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3007_skip, output3204_skip]
  kernel_rfl

theorem node3206_cond_eq
    (child3006 : Flapjack.WordAlloc.removeDeadStructural input3006 value1087 value1 value2 = (output3006, value1090, value1))
    (child3205 : Flapjack.WordAlloc.removeDeadStructural input3205 value1090 value1 value2 = (output3205, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3206 value1087 value1 value2 = (output3206, value1161, value1) := by
  rw [input3206_def, output3206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3006]
  try dsimp only
  rw [child3205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3006_skip, output3205_skip]
  kernel_rfl

theorem node3207_cond_eq
    (child3001 : Flapjack.WordAlloc.removeDeadStructural input3001 value1087 value1 value2 = (output3001, value1087, value1))
    (child3206 : Flapjack.WordAlloc.removeDeadStructural input3206 value1087 value1 value2 = (output3206, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3207 value1087 value1 value2 = (output3207, value1161, value1) := by
  rw [input3207_def, output3207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3001]
  try dsimp only
  rw [child3206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3001_skip, output3206_skip]
  kernel_rfl

theorem node3208_cond_eq
    (child3000 : Flapjack.WordAlloc.removeDeadStructural input3000 value1086 value1 value2 = (output3000, value1087, value1))
    (child3207 : Flapjack.WordAlloc.removeDeadStructural input3207 value1087 value1 value2 = (output3207, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3208 value1086 value1 value2 = (output3208, value1161, value1) := by
  rw [input3208_def, output3208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3000]
  try dsimp only
  rw [child3207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3000_skip, output3207_skip]
  kernel_rfl

theorem node3209_cond_eq
    (child2999 : Flapjack.WordAlloc.removeDeadStructural input2999 value1085 value1 value2 = (output2999, value1086, value1))
    (child3208 : Flapjack.WordAlloc.removeDeadStructural input3208 value1086 value1 value2 = (output3208, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3209 value1085 value1 value2 = (output3209, value1161, value1) := by
  rw [input3209_def, output3209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2999]
  try dsimp only
  rw [child3208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2999_skip, output3208_skip]
  kernel_rfl

theorem node3210_cond_eq
    (child2998 : Flapjack.WordAlloc.removeDeadStructural input2998 value1082 value1 value2 = (output2998, value1085, value1))
    (child3209 : Flapjack.WordAlloc.removeDeadStructural input3209 value1085 value1 value2 = (output3209, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3210 value1082 value1 value2 = (output3210, value1161, value1) := by
  rw [input3210_def, output3210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2998]
  try dsimp only
  rw [child3209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2998_skip, output3209_skip]
  kernel_rfl

theorem node3211_cond_eq
    (child2993 : Flapjack.WordAlloc.removeDeadStructural input2993 value1082 value1 value2 = (output2993, value1082, value1))
    (child3210 : Flapjack.WordAlloc.removeDeadStructural input3210 value1082 value1 value2 = (output3210, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3211 value1082 value1 value2 = (output3211, value1161, value1) := by
  rw [input3211_def, output3211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2993]
  try dsimp only
  rw [child3210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2993_skip, output3210_skip]
  kernel_rfl

theorem node3212_cond_eq
    (child2992 : Flapjack.WordAlloc.removeDeadStructural input2992 value1079 value1 value2 = (output2992, value1082, value1))
    (child3211 : Flapjack.WordAlloc.removeDeadStructural input3211 value1082 value1 value2 = (output3211, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3212 value1079 value1 value2 = (output3212, value1161, value1) := by
  rw [input3212_def, output3212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2992]
  try dsimp only
  rw [child3211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2992_skip, output3211_skip]
  kernel_rfl

theorem node3213_cond_eq
    (child2987 : Flapjack.WordAlloc.removeDeadStructural input2987 value1078 value1 value2 = (output2987, value1079, value1))
    (child3212 : Flapjack.WordAlloc.removeDeadStructural input3212 value1079 value1 value2 = (output3212, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3213 value1078 value1 value2 = (output3213, value1161, value1) := by
  rw [input3213_def, output3213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2987]
  try dsimp only
  rw [child3212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2987_skip, output3212_skip]
  kernel_rfl

theorem node3214_cond_eq
    (child2986 : Flapjack.WordAlloc.removeDeadStructural input2986 value1077 value1 value2 = (output2986, value1078, value1))
    (child3213 : Flapjack.WordAlloc.removeDeadStructural input3213 value1078 value1 value2 = (output3213, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3214 value1077 value1 value2 = (output3214, value1161, value1) := by
  rw [input3214_def, output3214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2986]
  try dsimp only
  rw [child3213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2986_skip, output3213_skip]
  kernel_rfl

theorem node3215_cond_eq
    (child2985 : Flapjack.WordAlloc.removeDeadStructural input2985 value1074 value1 value2 = (output2985, value1077, value1))
    (child3214 : Flapjack.WordAlloc.removeDeadStructural input3214 value1077 value1 value2 = (output3214, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3215 value1074 value1 value2 = (output3215, value1161, value1) := by
  rw [input3215_def, output3215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2985]
  try dsimp only
  rw [child3214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2985_skip, output3214_skip]
  kernel_rfl

theorem node3216_cond_eq
    (child2980 : Flapjack.WordAlloc.removeDeadStructural input2980 value1074 value1 value2 = (output2980, value1074, value1))
    (child3215 : Flapjack.WordAlloc.removeDeadStructural input3215 value1074 value1 value2 = (output3215, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3216 value1074 value1 value2 = (output3216, value1161, value1) := by
  rw [input3216_def, output3216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2980]
  try dsimp only
  rw [child3215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2980_skip, output3215_skip]
  kernel_rfl

theorem node3217_cond_eq
    (child2979 : Flapjack.WordAlloc.removeDeadStructural input2979 value1073 value1 value2 = (output2979, value1074, value1))
    (child3216 : Flapjack.WordAlloc.removeDeadStructural input3216 value1074 value1 value2 = (output3216, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3217 value1073 value1 value2 = (output3217, value1161, value1) := by
  rw [input3217_def, output3217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2979]
  try dsimp only
  rw [child3216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2979_skip, output3216_skip]
  kernel_rfl

theorem node3218_cond_eq
    (child2978 : Flapjack.WordAlloc.removeDeadStructural input2978 value1070 value1 value2 = (output2978, value1073, value1))
    (child3217 : Flapjack.WordAlloc.removeDeadStructural input3217 value1073 value1 value2 = (output3217, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3218 value1070 value1 value2 = (output3218, value1161, value1) := by
  rw [input3218_def, output3218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2978]
  try dsimp only
  rw [child3217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2978_skip, output3217_skip]
  kernel_rfl

theorem node3219_cond_eq
    (child2973 : Flapjack.WordAlloc.removeDeadStructural input2973 value1070 value1 value2 = (output2973, value1070, value1))
    (child3218 : Flapjack.WordAlloc.removeDeadStructural input3218 value1070 value1 value2 = (output3218, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3219 value1070 value1 value2 = (output3219, value1161, value1) := by
  rw [input3219_def, output3219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2973]
  try dsimp only
  rw [child3218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2973_skip, output3218_skip]
  kernel_rfl

theorem node3220_cond_eq
    (child2972 : Flapjack.WordAlloc.removeDeadStructural input2972 value1069 value1 value2 = (output2972, value1070, value1))
    (child3219 : Flapjack.WordAlloc.removeDeadStructural input3219 value1070 value1 value2 = (output3219, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3220 value1069 value1 value2 = (output3220, value1161, value1) := by
  rw [input3220_def, output3220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2972]
  try dsimp only
  rw [child3219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2972_skip, output3219_skip]
  kernel_rfl

theorem node3221_cond_eq
    (child2971 : Flapjack.WordAlloc.removeDeadStructural input2971 value1066 value1 value2 = (output2971, value1069, value1))
    (child3220 : Flapjack.WordAlloc.removeDeadStructural input3220 value1069 value1 value2 = (output3220, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3221 value1066 value1 value2 = (output3221, value1161, value1) := by
  rw [input3221_def, output3221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2971]
  try dsimp only
  rw [child3220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2971_skip, output3220_skip]
  kernel_rfl

theorem node3222_cond_eq
    (child2966 : Flapjack.WordAlloc.removeDeadStructural input2966 value1066 value1 value2 = (output2966, value1066, value1))
    (child3221 : Flapjack.WordAlloc.removeDeadStructural input3221 value1066 value1 value2 = (output3221, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3222 value1066 value1 value2 = (output3222, value1161, value1) := by
  rw [input3222_def, output3222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2966]
  try dsimp only
  rw [child3221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2966_skip, output3221_skip]
  kernel_rfl

theorem node3223_cond_eq
    (child2965 : Flapjack.WordAlloc.removeDeadStructural input2965 value1065 value1 value2 = (output2965, value1066, value1))
    (child3222 : Flapjack.WordAlloc.removeDeadStructural input3222 value1066 value1 value2 = (output3222, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3223 value1065 value1 value2 = (output3223, value1161, value1) := by
  rw [input3223_def, output3223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2965]
  try dsimp only
  rw [child3222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2965_skip, output3222_skip]
  kernel_rfl

theorem node3224_cond_eq
    (child2964 : Flapjack.WordAlloc.removeDeadStructural input2964 value1064 value1 value2 = (output2964, value1065, value1))
    (child3223 : Flapjack.WordAlloc.removeDeadStructural input3223 value1065 value1 value2 = (output3223, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3224 value1064 value1 value2 = (output3224, value1161, value1) := by
  rw [input3224_def, output3224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2964]
  try dsimp only
  rw [child3223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2964_skip, output3223_skip]
  kernel_rfl

theorem node3225_cond_eq
    (child2963 : Flapjack.WordAlloc.removeDeadStructural input2963 value1063 value1 value2 = (output2963, value1064, value1))
    (child3224 : Flapjack.WordAlloc.removeDeadStructural input3224 value1064 value1 value2 = (output3224, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3225 value1063 value1 value2 = (output3225, value1161, value1) := by
  rw [input3225_def, output3225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2963]
  try dsimp only
  rw [child3224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2963_skip, output3224_skip]
  kernel_rfl

theorem node3226_cond_eq
    (child2962 : Flapjack.WordAlloc.removeDeadStructural input2962 value1062 value1 value2 = (output2962, value1063, value1))
    (child3225 : Flapjack.WordAlloc.removeDeadStructural input3225 value1063 value1 value2 = (output3225, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3226 value1062 value1 value2 = (output3226, value1161, value1) := by
  rw [input3226_def, output3226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2962]
  try dsimp only
  rw [child3225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2962_skip, output3225_skip]
  kernel_rfl

theorem node3227_cond_eq
    (child2961 : Flapjack.WordAlloc.removeDeadStructural input2961 value1059 value1 value2 = (output2961, value1062, value1))
    (child3226 : Flapjack.WordAlloc.removeDeadStructural input3226 value1062 value1 value2 = (output3226, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3227 value1059 value1 value2 = (output3227, value1161, value1) := by
  rw [input3227_def, output3227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2961]
  try dsimp only
  rw [child3226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2961_skip, output3226_skip]
  kernel_rfl

theorem node3228_cond_eq
    (child2960 : Flapjack.WordAlloc.removeDeadStructural input2960 value1061 value1 value2 = (output2960, value1059, value1))
    (child3227 : Flapjack.WordAlloc.removeDeadStructural input3227 value1059 value1 value2 = (output3227, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3228 value1061 value1 value2 = (output3228, value1161, value1) := by
  rw [input3228_def, output3228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2960]
  try dsimp only
  rw [child3227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2960_skip, output3227_skip]
  kernel_rfl

theorem node3229_cond_eq
    (child2959 : Flapjack.WordAlloc.removeDeadStructural input2959 value1037 value1 value2 = (output2959, value1061, value1))
    (child3228 : Flapjack.WordAlloc.removeDeadStructural input3228 value1061 value1 value2 = (output3228, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3229 value1037 value1 value2 = (output3229, value1161, value1) := by
  rw [input3229_def, output3229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2959]
  try dsimp only
  rw [child3228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2959_skip, output3228_skip]
  kernel_rfl

theorem node3230_cond_eq
    (child2860 : Flapjack.WordAlloc.removeDeadStructural input2860 value1037 value1 value2 = (output2860, value1037, value1))
    (child3229 : Flapjack.WordAlloc.removeDeadStructural input3229 value1037 value1 value2 = (output3229, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3230 value1037 value1 value2 = (output3230, value1161, value1) := by
  rw [input3230_def, output3230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2860]
  try dsimp only
  rw [child3229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2860_skip, output3229_skip]
  kernel_rfl

theorem node3231_cond_eq
    (child2859 : Flapjack.WordAlloc.removeDeadStructural input2859 value1035 value1 value2 = (output2859, value1037, value1))
    (child3230 : Flapjack.WordAlloc.removeDeadStructural input3230 value1037 value1 value2 = (output3230, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3231 value1035 value1 value2 = (output3231, value1161, value1) := by
  rw [input3231_def, output3231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2859]
  try dsimp only
  rw [child3230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2859_skip, output3230_skip]
  kernel_rfl

theorem node3232_cond_eq
    (child2856 : Flapjack.WordAlloc.removeDeadStructural input2856 value1034 value1 value2 = (output2856, value1035, value1))
    (child3231 : Flapjack.WordAlloc.removeDeadStructural input3231 value1035 value1 value2 = (output3231, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3232 value1034 value1 value2 = (output3232, value1161, value1) := by
  rw [input3232_def, output3232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2856]
  try dsimp only
  rw [child3231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2856_skip, output3231_skip]
  kernel_rfl

theorem node3233_cond_eq
    (child2855 : Flapjack.WordAlloc.removeDeadStructural input2855 value1033 value1 value2 = (output2855, value1034, value1))
    (child3232 : Flapjack.WordAlloc.removeDeadStructural input3232 value1034 value1 value2 = (output3232, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3233 value1033 value1 value2 = (output3233, value1161, value1) := by
  rw [input3233_def, output3233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2855]
  try dsimp only
  rw [child3232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2855_skip, output3232_skip]
  kernel_rfl

theorem node3234_cond_eq
    (child2854 : Flapjack.WordAlloc.removeDeadStructural input2854 value1032 value1 value2 = (output2854, value1033, value1))
    (child3233 : Flapjack.WordAlloc.removeDeadStructural input3233 value1033 value1 value2 = (output3233, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3234 value1032 value1 value2 = (output3234, value1161, value1) := by
  rw [input3234_def, output3234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2854]
  try dsimp only
  rw [child3233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2854_skip, output3233_skip]
  kernel_rfl

theorem node3235_cond_eq
    (child2853 : Flapjack.WordAlloc.removeDeadStructural input2853 value1031 value1 value2 = (output2853, value1032, value1))
    (child3234 : Flapjack.WordAlloc.removeDeadStructural input3234 value1032 value1 value2 = (output3234, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3235 value1031 value1 value2 = (output3235, value1161, value1) := by
  rw [input3235_def, output3235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2853]
  try dsimp only
  rw [child3234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2853_skip, output3234_skip]
  kernel_rfl

theorem node3236_cond_eq
    (child2852 : Flapjack.WordAlloc.removeDeadStructural input2852 value1030 value1 value2 = (output2852, value1031, value1))
    (child3235 : Flapjack.WordAlloc.removeDeadStructural input3235 value1031 value1 value2 = (output3235, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3236 value1030 value1 value2 = (output3236, value1161, value1) := by
  rw [input3236_def, output3236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2852]
  try dsimp only
  rw [child3235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2852_skip, output3235_skip]
  kernel_rfl

theorem node3237_cond_eq
    (child2851 : Flapjack.WordAlloc.removeDeadStructural input2851 value1027 value1 value2 = (output2851, value1030, value1))
    (child3236 : Flapjack.WordAlloc.removeDeadStructural input3236 value1030 value1 value2 = (output3236, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3237 value1027 value1 value2 = (output3237, value1161, value1) := by
  rw [input3237_def, output3237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2851]
  try dsimp only
  rw [child3236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2851_skip, output3236_skip]
  kernel_rfl

theorem node3238_cond_eq
    (child2846 : Flapjack.WordAlloc.removeDeadStructural input2846 value1027 value1 value2 = (output2846, value1027, value1))
    (child3237 : Flapjack.WordAlloc.removeDeadStructural input3237 value1027 value1 value2 = (output3237, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3238 value1027 value1 value2 = (output3238, value1161, value1) := by
  rw [input3238_def, output3238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2846]
  try dsimp only
  rw [child3237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2846_skip, output3237_skip]
  kernel_rfl

theorem node3239_cond_eq
    (child2845 : Flapjack.WordAlloc.removeDeadStructural input2845 value1026 value1 value2 = (output2845, value1027, value1))
    (child3238 : Flapjack.WordAlloc.removeDeadStructural input3238 value1027 value1 value2 = (output3238, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3239 value1026 value1 value2 = (output3239, value1161, value1) := by
  rw [input3239_def, output3239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2845]
  try dsimp only
  rw [child3238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2845_skip, output3238_skip]
  kernel_rfl

theorem node3240_cond_eq
    (child2844 : Flapjack.WordAlloc.removeDeadStructural input2844 value1025 value1 value2 = (output2844, value1026, value1))
    (child3239 : Flapjack.WordAlloc.removeDeadStructural input3239 value1026 value1 value2 = (output3239, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3240 value1025 value1 value2 = (output3240, value1161, value1) := by
  rw [input3240_def, output3240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2844]
  try dsimp only
  rw [child3239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2844_skip, output3239_skip]
  kernel_rfl

theorem node3241_cond_eq
    (child2843 : Flapjack.WordAlloc.removeDeadStructural input2843 value1024 value1 value2 = (output2843, value1025, value1))
    (child3240 : Flapjack.WordAlloc.removeDeadStructural input3240 value1025 value1 value2 = (output3240, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3241 value1024 value1 value2 = (output3241, value1161, value1) := by
  rw [input3241_def, output3241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2843]
  try dsimp only
  rw [child3240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2843_skip, output3240_skip]
  kernel_rfl

theorem node3242_cond_eq
    (child2842 : Flapjack.WordAlloc.removeDeadStructural input2842 value1023 value1 value2 = (output2842, value1024, value1))
    (child3241 : Flapjack.WordAlloc.removeDeadStructural input3241 value1024 value1 value2 = (output3241, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3242 value1023 value1 value2 = (output3242, value1161, value1) := by
  rw [input3242_def, output3242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2842]
  try dsimp only
  rw [child3241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2842_skip, output3241_skip]
  kernel_rfl

theorem node3243_cond_eq
    (child2841 : Flapjack.WordAlloc.removeDeadStructural input2841 value1020 value1 value2 = (output2841, value1023, value1))
    (child3242 : Flapjack.WordAlloc.removeDeadStructural input3242 value1023 value1 value2 = (output3242, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3243 value1020 value1 value2 = (output3243, value1161, value1) := by
  rw [input3243_def, output3243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2841]
  try dsimp only
  rw [child3242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2841_skip, output3242_skip]
  kernel_rfl

theorem node3244_cond_eq
    (child2836 : Flapjack.WordAlloc.removeDeadStructural input2836 value1017 value1 value2 = (output2836, value1020, value1))
    (child3243 : Flapjack.WordAlloc.removeDeadStructural input3243 value1020 value1 value2 = (output3243, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3244 value1017 value1 value2 = (output3244, value1161, value1) := by
  rw [input3244_def, output3244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2836]
  try dsimp only
  rw [child3243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2836_skip, output3243_skip]
  kernel_rfl

theorem node3245_cond_eq
    (child2831 : Flapjack.WordAlloc.removeDeadStructural input2831 value1016 value1 value2 = (output2831, value1017, value1))
    (child3244 : Flapjack.WordAlloc.removeDeadStructural input3244 value1017 value1 value2 = (output3244, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3245 value1016 value1 value2 = (output3245, value1161, value1) := by
  rw [input3245_def, output3245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2831]
  try dsimp only
  rw [child3244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2831_skip, output3244_skip]
  kernel_rfl

theorem node3246_cond_eq
    (child2830 : Flapjack.WordAlloc.removeDeadStructural input2830 value1015 value1 value2 = (output2830, value1016, value1))
    (child3245 : Flapjack.WordAlloc.removeDeadStructural input3245 value1016 value1 value2 = (output3245, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3246 value1015 value1 value2 = (output3246, value1161, value1) := by
  rw [input3246_def, output3246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2830]
  try dsimp only
  rw [child3245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2830_skip, output3245_skip]
  kernel_rfl

theorem node3247_cond_eq
    (child2829 : Flapjack.WordAlloc.removeDeadStructural input2829 value1012 value1 value2 = (output2829, value1015, value1))
    (child3246 : Flapjack.WordAlloc.removeDeadStructural input3246 value1015 value1 value2 = (output3246, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3247 value1012 value1 value2 = (output3247, value1161, value1) := by
  rw [input3247_def, output3247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2829]
  try dsimp only
  rw [child3246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2829_skip, output3246_skip]
  kernel_rfl

theorem node3248_cond_eq
    (child2824 : Flapjack.WordAlloc.removeDeadStructural input2824 value1012 value1 value2 = (output2824, value1012, value1))
    (child3247 : Flapjack.WordAlloc.removeDeadStructural input3247 value1012 value1 value2 = (output3247, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3248 value1012 value1 value2 = (output3248, value1161, value1) := by
  rw [input3248_def, output3248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2824]
  try dsimp only
  rw [child3247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2824_skip, output3247_skip]
  kernel_rfl

theorem node3249_cond_eq
    (child2823 : Flapjack.WordAlloc.removeDeadStructural input2823 value1009 value1 value2 = (output2823, value1012, value1))
    (child3248 : Flapjack.WordAlloc.removeDeadStructural input3248 value1012 value1 value2 = (output3248, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3249 value1009 value1 value2 = (output3249, value1161, value1) := by
  rw [input3249_def, output3249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2823]
  try dsimp only
  rw [child3248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2823_skip, output3248_skip]
  kernel_rfl

theorem node3250_cond_eq
    (child2818 : Flapjack.WordAlloc.removeDeadStructural input2818 value1008 value1 value2 = (output2818, value1009, value1))
    (child3249 : Flapjack.WordAlloc.removeDeadStructural input3249 value1009 value1 value2 = (output3249, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3250 value1008 value1 value2 = (output3250, value1161, value1) := by
  rw [input3250_def, output3250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2818]
  try dsimp only
  rw [child3249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2818_skip, output3249_skip]
  kernel_rfl

theorem node3251_cond_eq
    (child2817 : Flapjack.WordAlloc.removeDeadStructural input2817 value1005 value1 value2 = (output2817, value1008, value1))
    (child3250 : Flapjack.WordAlloc.removeDeadStructural input3250 value1008 value1 value2 = (output3250, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3251 value1005 value1 value2 = (output3251, value1161, value1) := by
  rw [input3251_def, output3251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2817]
  try dsimp only
  rw [child3250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2817_skip, output3250_skip]
  kernel_rfl

theorem node3252_cond_eq
    (child2812 : Flapjack.WordAlloc.removeDeadStructural input2812 value1005 value1 value2 = (output2812, value1005, value1))
    (child3251 : Flapjack.WordAlloc.removeDeadStructural input3251 value1005 value1 value2 = (output3251, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3252 value1005 value1 value2 = (output3252, value1161, value1) := by
  rw [input3252_def, output3252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2812]
  try dsimp only
  rw [child3251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2812_skip, output3251_skip]
  kernel_rfl

theorem node3253_cond_eq
    (child2811 : Flapjack.WordAlloc.removeDeadStructural input2811 value1003 value1 value2 = (output2811, value1005, value1))
    (child3252 : Flapjack.WordAlloc.removeDeadStructural input3252 value1005 value1 value2 = (output3252, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3253 value1003 value1 value2 = (output3253, value1161, value1) := by
  rw [input3253_def, output3253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2811]
  try dsimp only
  rw [child3252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2811_skip, output3252_skip]
  kernel_rfl

theorem node3254_cond_eq
    (child2808 : Flapjack.WordAlloc.removeDeadStructural input2808 value1001 value1 value2 = (output2808, value1003, value1))
    (child3253 : Flapjack.WordAlloc.removeDeadStructural input3253 value1003 value1 value2 = (output3253, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3254 value1001 value1 value2 = (output3254, value1161, value1) := by
  rw [input3254_def, output3254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2808]
  try dsimp only
  rw [child3253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2808_skip, output3253_skip]
  kernel_rfl

theorem node3255_cond_eq
    (child2805 : Flapjack.WordAlloc.removeDeadStructural input2805 value999 value1 value2 = (output2805, value1001, value1))
    (child3254 : Flapjack.WordAlloc.removeDeadStructural input3254 value1001 value1 value2 = (output3254, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3255 value999 value1 value2 = (output3255, value1161, value1) := by
  rw [input3255_def, output3255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2805]
  try dsimp only
  rw [child3254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2805_skip, output3254_skip]
  kernel_rfl

theorem node3256_cond_eq
    (child2802 : Flapjack.WordAlloc.removeDeadStructural input2802 value997 value1 value2 = (output2802, value999, value1))
    (child3255 : Flapjack.WordAlloc.removeDeadStructural input3255 value999 value1 value2 = (output3255, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3256 value997 value1 value2 = (output3256, value1161, value1) := by
  rw [input3256_def, output3256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2802]
  try dsimp only
  rw [child3255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2802_skip, output3255_skip]
  kernel_rfl

theorem node3257_cond_eq
    (child2799 : Flapjack.WordAlloc.removeDeadStructural input2799 value996 value1 value2 = (output2799, value997, value1))
    (child3256 : Flapjack.WordAlloc.removeDeadStructural input3256 value997 value1 value2 = (output3256, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3257 value996 value1 value2 = (output3257, value1161, value1) := by
  rw [input3257_def, output3257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2799]
  try dsimp only
  rw [child3256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2799_skip, output3256_skip]
  kernel_rfl

theorem node3258_cond_eq
    (child2798 : Flapjack.WordAlloc.removeDeadStructural input2798 value995 value1 value2 = (output2798, value996, value1))
    (child3257 : Flapjack.WordAlloc.removeDeadStructural input3257 value996 value1 value2 = (output3257, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3258 value995 value1 value2 = (output3258, value1161, value1) := by
  rw [input3258_def, output3258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2798]
  try dsimp only
  rw [child3257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2798_skip, output3257_skip]
  kernel_rfl

theorem node3259_cond_eq
    (child2797 : Flapjack.WordAlloc.removeDeadStructural input2797 value994 value1 value2 = (output2797, value995, value1))
    (child3258 : Flapjack.WordAlloc.removeDeadStructural input3258 value995 value1 value2 = (output3258, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3259 value994 value1 value2 = (output3259, value1161, value1) := by
  rw [input3259_def, output3259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2797]
  try dsimp only
  rw [child3258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2797_skip, output3258_skip]
  kernel_rfl

theorem node3260_cond_eq
    (child2796 : Flapjack.WordAlloc.removeDeadStructural input2796 value993 value1 value2 = (output2796, value994, value1))
    (child3259 : Flapjack.WordAlloc.removeDeadStructural input3259 value994 value1 value2 = (output3259, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3260 value993 value1 value2 = (output3260, value1161, value1) := by
  rw [input3260_def, output3260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2796]
  try dsimp only
  rw [child3259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2796_skip, output3259_skip]
  kernel_rfl

theorem node3261_cond_eq
    (child2795 : Flapjack.WordAlloc.removeDeadStructural input2795 value992 value1 value2 = (output2795, value993, value1))
    (child3260 : Flapjack.WordAlloc.removeDeadStructural input3260 value993 value1 value2 = (output3260, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3261 value992 value1 value2 = (output3261, value1161, value1) := by
  rw [input3261_def, output3261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2795]
  try dsimp only
  rw [child3260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2795_skip, output3260_skip]
  kernel_rfl

theorem node3262_cond_eq
    (child2794 : Flapjack.WordAlloc.removeDeadStructural input2794 value991 value1 value2 = (output2794, value992, value1))
    (child3261 : Flapjack.WordAlloc.removeDeadStructural input3261 value992 value1 value2 = (output3261, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3262 value991 value1 value2 = (output3262, value1161, value1) := by
  rw [input3262_def, output3262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2794]
  try dsimp only
  rw [child3261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2794_skip, output3261_skip]
  kernel_rfl

theorem node3263_cond_eq
    (child2793 : Flapjack.WordAlloc.removeDeadStructural input2793 value990 value1 value2 = (output2793, value991, value1))
    (child3262 : Flapjack.WordAlloc.removeDeadStructural input3262 value991 value1 value2 = (output3262, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3263 value990 value1 value2 = (output3263, value1161, value1) := by
  rw [input3263_def, output3263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2793]
  try dsimp only
  rw [child3262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2793_skip, output3262_skip]
  kernel_rfl

theorem node3264_cond_eq
    (child2792 : Flapjack.WordAlloc.removeDeadStructural input2792 value989 value1 value2 = (output2792, value990, value1))
    (child3263 : Flapjack.WordAlloc.removeDeadStructural input3263 value990 value1 value2 = (output3263, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3264 value989 value1 value2 = (output3264, value1161, value1) := by
  rw [input3264_def, output3264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2792]
  try dsimp only
  rw [child3263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2792_skip, output3263_skip]
  kernel_rfl

theorem node3265_cond_eq
    (child2791 : Flapjack.WordAlloc.removeDeadStructural input2791 value986 value1 value2 = (output2791, value989, value1))
    (child3264 : Flapjack.WordAlloc.removeDeadStructural input3264 value989 value1 value2 = (output3264, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3265 value986 value1 value2 = (output3265, value1161, value1) := by
  rw [input3265_def, output3265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2791]
  try dsimp only
  rw [child3264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2791_skip, output3264_skip]
  kernel_rfl

theorem node3266_cond_eq
    (child2786 : Flapjack.WordAlloc.removeDeadStructural input2786 value986 value1 value2 = (output2786, value986, value1))
    (child3265 : Flapjack.WordAlloc.removeDeadStructural input3265 value986 value1 value2 = (output3265, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3266 value986 value1 value2 = (output3266, value1161, value1) := by
  rw [input3266_def, output3266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2786]
  try dsimp only
  rw [child3265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2786_skip, output3265_skip]
  kernel_rfl

theorem node3267_cond_eq
    (child2785 : Flapjack.WordAlloc.removeDeadStructural input2785 value985 value1 value2 = (output2785, value986, value1))
    (child3266 : Flapjack.WordAlloc.removeDeadStructural input3266 value986 value1 value2 = (output3266, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3267 value985 value1 value2 = (output3267, value1161, value1) := by
  rw [input3267_def, output3267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2785]
  try dsimp only
  rw [child3266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2785_skip, output3266_skip]
  kernel_rfl

theorem node3268_cond_eq
    (child2784 : Flapjack.WordAlloc.removeDeadStructural input2784 value984 value1 value2 = (output2784, value985, value1))
    (child3267 : Flapjack.WordAlloc.removeDeadStructural input3267 value985 value1 value2 = (output3267, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3268 value984 value1 value2 = (output3268, value1161, value1) := by
  rw [input3268_def, output3268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2784]
  try dsimp only
  rw [child3267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2784_skip, output3267_skip]
  kernel_rfl

theorem node3269_cond_eq
    (child2783 : Flapjack.WordAlloc.removeDeadStructural input2783 value983 value1 value2 = (output2783, value984, value1))
    (child3268 : Flapjack.WordAlloc.removeDeadStructural input3268 value984 value1 value2 = (output3268, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3269 value983 value1 value2 = (output3269, value1161, value1) := by
  rw [input3269_def, output3269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2783]
  try dsimp only
  rw [child3268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2783_skip, output3268_skip]
  kernel_rfl

theorem node3270_cond_eq
    (child2782 : Flapjack.WordAlloc.removeDeadStructural input2782 value982 value1 value2 = (output2782, value983, value1))
    (child3269 : Flapjack.WordAlloc.removeDeadStructural input3269 value983 value1 value2 = (output3269, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3270 value982 value1 value2 = (output3270, value1161, value1) := by
  rw [input3270_def, output3270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2782]
  try dsimp only
  rw [child3269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2782_skip, output3269_skip]
  kernel_rfl

theorem node3271_cond_eq
    (child2781 : Flapjack.WordAlloc.removeDeadStructural input2781 value981 value1 value2 = (output2781, value982, value1))
    (child3270 : Flapjack.WordAlloc.removeDeadStructural input3270 value982 value1 value2 = (output3270, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3271 value981 value1 value2 = (output3271, value1161, value1) := by
  rw [input3271_def, output3271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2781]
  try dsimp only
  rw [child3270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2781_skip, output3270_skip]
  kernel_rfl

theorem node3272_cond_eq
    (child2780 : Flapjack.WordAlloc.removeDeadStructural input2780 value980 value1 value2 = (output2780, value981, value1))
    (child3271 : Flapjack.WordAlloc.removeDeadStructural input3271 value981 value1 value2 = (output3271, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3272 value980 value1 value2 = (output3272, value1161, value1) := by
  rw [input3272_def, output3272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2780]
  try dsimp only
  rw [child3271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2780_skip, output3271_skip]
  kernel_rfl

theorem node3273_cond_eq
    (child2779 : Flapjack.WordAlloc.removeDeadStructural input2779 value979 value1 value2 = (output2779, value980, value1))
    (child3272 : Flapjack.WordAlloc.removeDeadStructural input3272 value980 value1 value2 = (output3272, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3273 value979 value1 value2 = (output3273, value1161, value1) := by
  rw [input3273_def, output3273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2779]
  try dsimp only
  rw [child3272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2779_skip, output3272_skip]
  kernel_rfl

theorem node3274_cond_eq
    (child2778 : Flapjack.WordAlloc.removeDeadStructural input2778 value978 value1 value2 = (output2778, value979, value1))
    (child3273 : Flapjack.WordAlloc.removeDeadStructural input3273 value979 value1 value2 = (output3273, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3274 value978 value1 value2 = (output3274, value1161, value1) := by
  rw [input3274_def, output3274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2778]
  try dsimp only
  rw [child3273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2778_skip, output3273_skip]
  kernel_rfl

theorem node3275_cond_eq
    (child2777 : Flapjack.WordAlloc.removeDeadStructural input2777 value975 value1 value2 = (output2777, value978, value1))
    (child3274 : Flapjack.WordAlloc.removeDeadStructural input3274 value978 value1 value2 = (output3274, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3275 value975 value1 value2 = (output3275, value1161, value1) := by
  rw [input3275_def, output3275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2777]
  try dsimp only
  rw [child3274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2777_skip, output3274_skip]
  kernel_rfl

theorem node3276_cond_eq
    (child2772 : Flapjack.WordAlloc.removeDeadStructural input2772 value975 value1 value2 = (output2772, value975, value1))
    (child3275 : Flapjack.WordAlloc.removeDeadStructural input3275 value975 value1 value2 = (output3275, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3276 value975 value1 value2 = (output3276, value1161, value1) := by
  rw [input3276_def, output3276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2772]
  try dsimp only
  rw [child3275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2772_skip, output3275_skip]
  kernel_rfl

theorem node3277_cond_eq
    (child2771 : Flapjack.WordAlloc.removeDeadStructural input2771 value974 value1 value2 = (output2771, value975, value1))
    (child3276 : Flapjack.WordAlloc.removeDeadStructural input3276 value975 value1 value2 = (output3276, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3277 value974 value1 value2 = (output3277, value1161, value1) := by
  rw [input3277_def, output3277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2771]
  try dsimp only
  rw [child3276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2771_skip, output3276_skip]
  kernel_rfl

theorem node3278_cond_eq
    (child2770 : Flapjack.WordAlloc.removeDeadStructural input2770 value973 value1 value2 = (output2770, value974, value1))
    (child3277 : Flapjack.WordAlloc.removeDeadStructural input3277 value974 value1 value2 = (output3277, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3278 value973 value1 value2 = (output3278, value1161, value1) := by
  rw [input3278_def, output3278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2770]
  try dsimp only
  rw [child3277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2770_skip, output3277_skip]
  kernel_rfl

theorem node3279_cond_eq
    (child2769 : Flapjack.WordAlloc.removeDeadStructural input2769 value972 value1 value2 = (output2769, value973, value1))
    (child3278 : Flapjack.WordAlloc.removeDeadStructural input3278 value973 value1 value2 = (output3278, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3279 value972 value1 value2 = (output3279, value1161, value1) := by
  rw [input3279_def, output3279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2769]
  try dsimp only
  rw [child3278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2769_skip, output3278_skip]
  kernel_rfl

theorem node3280_cond_eq
    (child2768 : Flapjack.WordAlloc.removeDeadStructural input2768 value971 value1 value2 = (output2768, value972, value1))
    (child3279 : Flapjack.WordAlloc.removeDeadStructural input3279 value972 value1 value2 = (output3279, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3280 value971 value1 value2 = (output3280, value1161, value1) := by
  rw [input3280_def, output3280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2768]
  try dsimp only
  rw [child3279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2768_skip, output3279_skip]
  kernel_rfl

theorem node3281_cond_eq
    (child2767 : Flapjack.WordAlloc.removeDeadStructural input2767 value970 value1 value2 = (output2767, value971, value1))
    (child3280 : Flapjack.WordAlloc.removeDeadStructural input3280 value971 value1 value2 = (output3280, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3281 value970 value1 value2 = (output3281, value1161, value1) := by
  rw [input3281_def, output3281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2767]
  try dsimp only
  rw [child3280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2767_skip, output3280_skip]
  kernel_rfl

theorem node3282_cond_eq
    (child2766 : Flapjack.WordAlloc.removeDeadStructural input2766 value967 value1 value2 = (output2766, value970, value1))
    (child3281 : Flapjack.WordAlloc.removeDeadStructural input3281 value970 value1 value2 = (output3281, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3282 value967 value1 value2 = (output3282, value1161, value1) := by
  rw [input3282_def, output3282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2766]
  try dsimp only
  rw [child3281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2766_skip, output3281_skip]
  kernel_rfl

theorem node3283_cond_eq
    (child2761 : Flapjack.WordAlloc.removeDeadStructural input2761 value967 value1 value2 = (output2761, value967, value1))
    (child3282 : Flapjack.WordAlloc.removeDeadStructural input3282 value967 value1 value2 = (output3282, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3283 value967 value1 value2 = (output3283, value1161, value1) := by
  rw [input3283_def, output3283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2761]
  try dsimp only
  rw [child3282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2761_skip, output3282_skip]
  kernel_rfl

theorem node3284_cond_eq
    (child2760 : Flapjack.WordAlloc.removeDeadStructural input2760 value965 value1 value2 = (output2760, value967, value1))
    (child3283 : Flapjack.WordAlloc.removeDeadStructural input3283 value967 value1 value2 = (output3283, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3284 value965 value1 value2 = (output3284, value1161, value1) := by
  rw [input3284_def, output3284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2760]
  try dsimp only
  rw [child3283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2760_skip, output3283_skip]
  kernel_rfl

theorem node3285_cond_eq
    (child2755 : Flapjack.WordAlloc.removeDeadStructural input2755 value965 value1 value2 = (output2755, value965, value1))
    (child3284 : Flapjack.WordAlloc.removeDeadStructural input3284 value965 value1 value2 = (output3284, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3285 value965 value1 value2 = (output3285, value1161, value1) := by
  rw [input3285_def, output3285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2755]
  try dsimp only
  rw [child3284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2755_skip, output3284_skip]
  kernel_rfl

theorem node3286_cond_eq
    (child2754 : Flapjack.WordAlloc.removeDeadStructural input2754 value964 value1 value2 = (output2754, value965, value1))
    (child3285 : Flapjack.WordAlloc.removeDeadStructural input3285 value965 value1 value2 = (output3285, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3286 value964 value1 value2 = (output3286, value1161, value1) := by
  rw [input3286_def, output3286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2754]
  try dsimp only
  rw [child3285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2754_skip, output3285_skip]
  kernel_rfl

theorem node3287_cond_eq
    (child2753 : Flapjack.WordAlloc.removeDeadStructural input2753 value961 value1 value2 = (output2753, value964, value1))
    (child3286 : Flapjack.WordAlloc.removeDeadStructural input3286 value964 value1 value2 = (output3286, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3287 value961 value1 value2 = (output3287, value1161, value1) := by
  rw [input3287_def, output3287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2753]
  try dsimp only
  rw [child3286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2753_skip, output3286_skip]
  kernel_rfl

theorem node3288_cond_eq
    (child2752 : Flapjack.WordAlloc.removeDeadStructural input2752 value963 value1 value2 = (output2752, value961, value1))
    (child3287 : Flapjack.WordAlloc.removeDeadStructural input3287 value961 value1 value2 = (output3287, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3288 value963 value1 value2 = (output3288, value1161, value1) := by
  rw [input3288_def, output3288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2752]
  try dsimp only
  rw [child3287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2752_skip, output3287_skip]
  kernel_rfl

theorem node3289_cond_eq
    (child2751 : Flapjack.WordAlloc.removeDeadStructural input2751 value961 value1 value2 = (output2751, value963, value1))
    (child3288 : Flapjack.WordAlloc.removeDeadStructural input3288 value963 value1 value2 = (output3288, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3289 value961 value1 value2 = (output3289, value1161, value1) := by
  rw [input3289_def, output3289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2751]
  try dsimp only
  rw [child3288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2751_skip, output3288_skip]
  kernel_rfl

theorem node3290_cond_eq
    (child2748 : Flapjack.WordAlloc.removeDeadStructural input2748 value959 value1 value2 = (output2748, value961, value1))
    (child3289 : Flapjack.WordAlloc.removeDeadStructural input3289 value961 value1 value2 = (output3289, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3290 value959 value1 value2 = (output3290, value1161, value1) := by
  rw [input3290_def, output3290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2748]
  try dsimp only
  rw [child3289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2748_skip, output3289_skip]
  kernel_rfl

theorem node3291_cond_eq
    (child2745 : Flapjack.WordAlloc.removeDeadStructural input2745 value957 value1 value2 = (output2745, value959, value1))
    (child3290 : Flapjack.WordAlloc.removeDeadStructural input3290 value959 value1 value2 = (output3290, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3291 value957 value1 value2 = (output3291, value1161, value1) := by
  rw [input3291_def, output3291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2745]
  try dsimp only
  rw [child3290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2745_skip, output3290_skip]
  kernel_rfl

theorem node3292_cond_eq
    (child2742 : Flapjack.WordAlloc.removeDeadStructural input2742 value956 value1 value2 = (output2742, value957, value1))
    (child3291 : Flapjack.WordAlloc.removeDeadStructural input3291 value957 value1 value2 = (output3291, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3292 value956 value1 value2 = (output3292, value1161, value1) := by
  rw [input3292_def, output3292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2742]
  try dsimp only
  rw [child3291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2742_skip, output3291_skip]
  kernel_rfl

theorem node3293_cond_eq
    (child2741 : Flapjack.WordAlloc.removeDeadStructural input2741 value954 value1 value2 = (output2741, value956, value1))
    (child3292 : Flapjack.WordAlloc.removeDeadStructural input3292 value956 value1 value2 = (output3292, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3293 value954 value1 value2 = (output3293, value1161, value1) := by
  rw [input3293_def, output3293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2741]
  try dsimp only
  rw [child3292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2741_skip, output3292_skip]
  kernel_rfl

theorem node3294_cond_eq
    (child2738 : Flapjack.WordAlloc.removeDeadStructural input2738 value952 value1 value2 = (output2738, value954, value1))
    (child3293 : Flapjack.WordAlloc.removeDeadStructural input3293 value954 value1 value2 = (output3293, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3294 value952 value1 value2 = (output3294, value1161, value1) := by
  rw [input3294_def, output3294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2738]
  try dsimp only
  rw [child3293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2738_skip, output3293_skip]
  kernel_rfl

theorem node3295_cond_eq
    (child2735 : Flapjack.WordAlloc.removeDeadStructural input2735 value950 value1 value2 = (output2735, value952, value1))
    (child3294 : Flapjack.WordAlloc.removeDeadStructural input3294 value952 value1 value2 = (output3294, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3295 value950 value1 value2 = (output3295, value1161, value1) := by
  rw [input3295_def, output3295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2735]
  try dsimp only
  rw [child3294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2735_skip, output3294_skip]
  kernel_rfl

theorem node3296_cond_eq
    (child2732 : Flapjack.WordAlloc.removeDeadStructural input2732 value948 value1 value2 = (output2732, value950, value1))
    (child3295 : Flapjack.WordAlloc.removeDeadStructural input3295 value950 value1 value2 = (output3295, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3296 value948 value1 value2 = (output3296, value1161, value1) := by
  rw [input3296_def, output3296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2732]
  try dsimp only
  rw [child3295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2732_skip, output3295_skip]
  kernel_rfl

theorem node3297_cond_eq
    (child2729 : Flapjack.WordAlloc.removeDeadStructural input2729 value946 value1 value2 = (output2729, value948, value1))
    (child3296 : Flapjack.WordAlloc.removeDeadStructural input3296 value948 value1 value2 = (output3296, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3297 value946 value1 value2 = (output3297, value1161, value1) := by
  rw [input3297_def, output3297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2729]
  try dsimp only
  rw [child3296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2729_skip, output3296_skip]
  kernel_rfl

theorem node3298_cond_eq
    (child2726 : Flapjack.WordAlloc.removeDeadStructural input2726 value944 value1 value2 = (output2726, value946, value1))
    (child3297 : Flapjack.WordAlloc.removeDeadStructural input3297 value946 value1 value2 = (output3297, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3298 value944 value1 value2 = (output3298, value1161, value1) := by
  rw [input3298_def, output3298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2726]
  try dsimp only
  rw [child3297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2726_skip, output3297_skip]
  kernel_rfl

theorem node3299_cond_eq
    (child2723 : Flapjack.WordAlloc.removeDeadStructural input2723 value943 value1 value2 = (output2723, value944, value1))
    (child3298 : Flapjack.WordAlloc.removeDeadStructural input3298 value944 value1 value2 = (output3298, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3299 value943 value1 value2 = (output3299, value1161, value1) := by
  rw [input3299_def, output3299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2723]
  try dsimp only
  rw [child3298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2723_skip, output3298_skip]
  kernel_rfl

theorem node3300_cond_eq
    (child2722 : Flapjack.WordAlloc.removeDeadStructural input2722 value941 value1 value2 = (output2722, value943, value1))
    (child3299 : Flapjack.WordAlloc.removeDeadStructural input3299 value943 value1 value2 = (output3299, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3300 value941 value1 value2 = (output3300, value1161, value1) := by
  rw [input3300_def, output3300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2722]
  try dsimp only
  rw [child3299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2722_skip, output3299_skip]
  kernel_rfl

theorem node3301_cond_eq
    (child2719 : Flapjack.WordAlloc.removeDeadStructural input2719 value940 value1 value2 = (output2719, value941, value1))
    (child3300 : Flapjack.WordAlloc.removeDeadStructural input3300 value941 value1 value2 = (output3300, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3301 value940 value1 value2 = (output3301, value1161, value1) := by
  rw [input3301_def, output3301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2719]
  try dsimp only
  rw [child3300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2719_skip, output3300_skip]
  kernel_rfl

theorem node3302_cond_eq
    (child2718 : Flapjack.WordAlloc.removeDeadStructural input2718 value938 value1 value2 = (output2718, value940, value1))
    (child3301 : Flapjack.WordAlloc.removeDeadStructural input3301 value940 value1 value2 = (output3301, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3302 value938 value1 value2 = (output3302, value1161, value1) := by
  rw [input3302_def, output3302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2718]
  try dsimp only
  rw [child3301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2718_skip, output3301_skip]
  kernel_rfl

theorem node3303_cond_eq
    (child2715 : Flapjack.WordAlloc.removeDeadStructural input2715 value937 value1 value2 = (output2715, value938, value1))
    (child3302 : Flapjack.WordAlloc.removeDeadStructural input3302 value938 value1 value2 = (output3302, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3303 value937 value1 value2 = (output3303, value1161, value1) := by
  rw [input3303_def, output3303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2715]
  try dsimp only
  rw [child3302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2715_skip, output3302_skip]
  kernel_rfl

theorem node3304_cond_eq
    (child2714 : Flapjack.WordAlloc.removeDeadStructural input2714 value935 value1 value2 = (output2714, value937, value1))
    (child3303 : Flapjack.WordAlloc.removeDeadStructural input3303 value937 value1 value2 = (output3303, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3304 value935 value1 value2 = (output3304, value1161, value1) := by
  rw [input3304_def, output3304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2714]
  try dsimp only
  rw [child3303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2714_skip, output3303_skip]
  kernel_rfl

theorem node3305_cond_eq
    (child2711 : Flapjack.WordAlloc.removeDeadStructural input2711 value934 value1 value2 = (output2711, value935, value1))
    (child3304 : Flapjack.WordAlloc.removeDeadStructural input3304 value935 value1 value2 = (output3304, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3305 value934 value1 value2 = (output3305, value1161, value1) := by
  rw [input3305_def, output3305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2711]
  try dsimp only
  rw [child3304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2711_skip, output3304_skip]
  kernel_rfl

theorem node3306_cond_eq
    (child2710 : Flapjack.WordAlloc.removeDeadStructural input2710 value932 value1 value2 = (output2710, value934, value1))
    (child3305 : Flapjack.WordAlloc.removeDeadStructural input3305 value934 value1 value2 = (output3305, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3306 value932 value1 value2 = (output3306, value1161, value1) := by
  rw [input3306_def, output3306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2710]
  try dsimp only
  rw [child3305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2710_skip, output3305_skip]
  kernel_rfl

theorem node3307_cond_eq
    (child2707 : Flapjack.WordAlloc.removeDeadStructural input2707 value930 value1 value2 = (output2707, value932, value1))
    (child3306 : Flapjack.WordAlloc.removeDeadStructural input3306 value932 value1 value2 = (output3306, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3307 value930 value1 value2 = (output3307, value1161, value1) := by
  rw [input3307_def, output3307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2707]
  try dsimp only
  rw [child3306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2707_skip, output3306_skip]
  kernel_rfl

theorem node3308_cond_eq
    (child2704 : Flapjack.WordAlloc.removeDeadStructural input2704 value929 value1 value2 = (output2704, value930, value1))
    (child3307 : Flapjack.WordAlloc.removeDeadStructural input3307 value930 value1 value2 = (output3307, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3308 value929 value1 value2 = (output3308, value1161, value1) := by
  rw [input3308_def, output3308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2704]
  try dsimp only
  rw [child3307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2704_skip, output3307_skip]
  kernel_rfl

theorem node3309_cond_eq
    (child2703 : Flapjack.WordAlloc.removeDeadStructural input2703 value928 value1 value2 = (output2703, value929, value1))
    (child3308 : Flapjack.WordAlloc.removeDeadStructural input3308 value929 value1 value2 = (output3308, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3309 value928 value1 value2 = (output3309, value1161, value1) := by
  rw [input3309_def, output3309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2703]
  try dsimp only
  rw [child3308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2703_skip, output3308_skip]
  kernel_rfl

theorem node3310_cond_eq
    (child2702 : Flapjack.WordAlloc.removeDeadStructural input2702 value927 value1 value2 = (output2702, value928, value1))
    (child3309 : Flapjack.WordAlloc.removeDeadStructural input3309 value928 value1 value2 = (output3309, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3310 value927 value1 value2 = (output3310, value1161, value1) := by
  rw [input3310_def, output3310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2702]
  try dsimp only
  rw [child3309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2702_skip, output3309_skip]
  kernel_rfl

theorem node3311_cond_eq
    (child2701 : Flapjack.WordAlloc.removeDeadStructural input2701 value926 value1 value2 = (output2701, value927, value1))
    (child3310 : Flapjack.WordAlloc.removeDeadStructural input3310 value927 value1 value2 = (output3310, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3311 value926 value1 value2 = (output3311, value1161, value1) := by
  rw [input3311_def, output3311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2701]
  try dsimp only
  rw [child3310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2701_skip, output3310_skip]
  kernel_rfl

theorem node3312_cond_eq
    (child2700 : Flapjack.WordAlloc.removeDeadStructural input2700 value925 value1 value2 = (output2700, value926, value1))
    (child3311 : Flapjack.WordAlloc.removeDeadStructural input3311 value926 value1 value2 = (output3311, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3312 value925 value1 value2 = (output3312, value1161, value1) := by
  rw [input3312_def, output3312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2700]
  try dsimp only
  rw [child3311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2700_skip, output3311_skip]
  kernel_rfl

theorem node3313_cond_eq
    (child2699 : Flapjack.WordAlloc.removeDeadStructural input2699 value923 value1 value2 = (output2699, value925, value1))
    (child3312 : Flapjack.WordAlloc.removeDeadStructural input3312 value925 value1 value2 = (output3312, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3313 value923 value1 value2 = (output3313, value1161, value1) := by
  rw [input3313_def, output3313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2699]
  try dsimp only
  rw [child3312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2699_skip, output3312_skip]
  kernel_rfl

theorem node3314_cond_eq
    (child2696 : Flapjack.WordAlloc.removeDeadStructural input2696 value922 value1 value2 = (output2696, value923, value1))
    (child3313 : Flapjack.WordAlloc.removeDeadStructural input3313 value923 value1 value2 = (output3313, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3314 value922 value1 value2 = (output3314, value1161, value1) := by
  rw [input3314_def, output3314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2696]
  try dsimp only
  rw [child3313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2696_skip, output3313_skip]
  kernel_rfl

theorem node3315_cond_eq
    (child2695 : Flapjack.WordAlloc.removeDeadStructural input2695 value920 value1 value2 = (output2695, value922, value1))
    (child3314 : Flapjack.WordAlloc.removeDeadStructural input3314 value922 value1 value2 = (output3314, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3315 value920 value1 value2 = (output3315, value1161, value1) := by
  rw [input3315_def, output3315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2695]
  try dsimp only
  rw [child3314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2695_skip, output3314_skip]
  kernel_rfl

theorem node3316_cond_eq
    (child2692 : Flapjack.WordAlloc.removeDeadStructural input2692 value919 value1 value2 = (output2692, value920, value1))
    (child3315 : Flapjack.WordAlloc.removeDeadStructural input3315 value920 value1 value2 = (output3315, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3316 value919 value1 value2 = (output3316, value1161, value1) := by
  rw [input3316_def, output3316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2692]
  try dsimp only
  rw [child3315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2692_skip, output3315_skip]
  kernel_rfl

theorem node3317_cond_eq
    (child2691 : Flapjack.WordAlloc.removeDeadStructural input2691 value917 value1 value2 = (output2691, value919, value1))
    (child3316 : Flapjack.WordAlloc.removeDeadStructural input3316 value919 value1 value2 = (output3316, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3317 value917 value1 value2 = (output3317, value1161, value1) := by
  rw [input3317_def, output3317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2691]
  try dsimp only
  rw [child3316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2691_skip, output3316_skip]
  kernel_rfl

theorem node3318_cond_eq
    (child2688 : Flapjack.WordAlloc.removeDeadStructural input2688 value916 value1 value2 = (output2688, value917, value1))
    (child3317 : Flapjack.WordAlloc.removeDeadStructural input3317 value917 value1 value2 = (output3317, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3318 value916 value1 value2 = (output3318, value1161, value1) := by
  rw [input3318_def, output3318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2688]
  try dsimp only
  rw [child3317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2688_skip, output3317_skip]
  kernel_rfl

theorem node3319_cond_eq
    (child2687 : Flapjack.WordAlloc.removeDeadStructural input2687 value914 value1 value2 = (output2687, value916, value1))
    (child3318 : Flapjack.WordAlloc.removeDeadStructural input3318 value916 value1 value2 = (output3318, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3319 value914 value1 value2 = (output3319, value1161, value1) := by
  rw [input3319_def, output3319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2687]
  try dsimp only
  rw [child3318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2687_skip, output3318_skip]
  kernel_rfl

theorem node3320_cond_eq
    (child2684 : Flapjack.WordAlloc.removeDeadStructural input2684 value912 value1 value2 = (output2684, value914, value1))
    (child3319 : Flapjack.WordAlloc.removeDeadStructural input3319 value914 value1 value2 = (output3319, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3320 value912 value1 value2 = (output3320, value1161, value1) := by
  rw [input3320_def, output3320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2684]
  try dsimp only
  rw [child3319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2684_skip, output3319_skip]
  kernel_rfl

theorem node3321_cond_eq
    (child2681 : Flapjack.WordAlloc.removeDeadStructural input2681 value911 value1 value2 = (output2681, value912, value1))
    (child3320 : Flapjack.WordAlloc.removeDeadStructural input3320 value912 value1 value2 = (output3320, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3321 value911 value1 value2 = (output3321, value1161, value1) := by
  rw [input3321_def, output3321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2681]
  try dsimp only
  rw [child3320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2681_skip, output3320_skip]
  kernel_rfl

theorem node3322_cond_eq
    (child2680 : Flapjack.WordAlloc.removeDeadStructural input2680 value910 value1 value2 = (output2680, value911, value1))
    (child3321 : Flapjack.WordAlloc.removeDeadStructural input3321 value911 value1 value2 = (output3321, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3322 value910 value1 value2 = (output3322, value1161, value1) := by
  rw [input3322_def, output3322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2680]
  try dsimp only
  rw [child3321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2680_skip, output3321_skip]
  kernel_rfl

theorem node3323_cond_eq
    (child2679 : Flapjack.WordAlloc.removeDeadStructural input2679 value908 value1 value2 = (output2679, value910, value1))
    (child3322 : Flapjack.WordAlloc.removeDeadStructural input3322 value910 value1 value2 = (output3322, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3323 value908 value1 value2 = (output3323, value1161, value1) := by
  rw [input3323_def, output3323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2679]
  try dsimp only
  rw [child3322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2679_skip, output3322_skip]
  kernel_rfl

theorem node3324_cond_eq
    (child2676 : Flapjack.WordAlloc.removeDeadStructural input2676 value906 value1 value2 = (output2676, value908, value1))
    (child3323 : Flapjack.WordAlloc.removeDeadStructural input3323 value908 value1 value2 = (output3323, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3324 value906 value1 value2 = (output3324, value1161, value1) := by
  rw [input3324_def, output3324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2676]
  try dsimp only
  rw [child3323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2676_skip, output3323_skip]
  kernel_rfl

theorem node3325_cond_eq
    (child2673 : Flapjack.WordAlloc.removeDeadStructural input2673 value905 value1 value2 = (output2673, value906, value1))
    (child3324 : Flapjack.WordAlloc.removeDeadStructural input3324 value906 value1 value2 = (output3324, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3325 value905 value1 value2 = (output3325, value1161, value1) := by
  rw [input3325_def, output3325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2673]
  try dsimp only
  rw [child3324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2673_skip, output3324_skip]
  kernel_rfl

theorem node3326_cond_eq
    (child2672 : Flapjack.WordAlloc.removeDeadStructural input2672 value904 value1 value2 = (output2672, value905, value1))
    (child3325 : Flapjack.WordAlloc.removeDeadStructural input3325 value905 value1 value2 = (output3325, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3326 value904 value1 value2 = (output3326, value1161, value1) := by
  rw [input3326_def, output3326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2672]
  try dsimp only
  rw [child3325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2672_skip, output3325_skip]
  kernel_rfl

theorem node3327_cond_eq
    (child2671 : Flapjack.WordAlloc.removeDeadStructural input2671 value902 value1 value2 = (output2671, value904, value1))
    (child3326 : Flapjack.WordAlloc.removeDeadStructural input3326 value904 value1 value2 = (output3326, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3327 value902 value1 value2 = (output3327, value1161, value1) := by
  rw [input3327_def, output3327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2671]
  try dsimp only
  rw [child3326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2671_skip, output3326_skip]
  kernel_rfl

#print axioms node3327_cond_eq
end InitECandidate.Proofs.DeadStages875.Parallel
