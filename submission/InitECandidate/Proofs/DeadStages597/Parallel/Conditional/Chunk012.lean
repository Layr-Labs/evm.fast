import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk012
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node3072_cond_eq
    (child3068 : Flapjack.WordAlloc.removeDeadStructural input3068 value572 value1 value2 = (output3068, value572, value1))
    (child3071 : Flapjack.WordAlloc.removeDeadStructural input3071 value572 value1 value2 = (output3071, value567, value1)) : Flapjack.WordAlloc.removeDeadStructural input3072 value572 value1 value2 = (output3072, value567, value1) := by
  rw [input3072_def, output3072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3068]
  try dsimp only
  rw [child3071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3068_skip, output3071_skip]
  kernel_rfl

theorem node3073_cond_eq
    (child3067 : Flapjack.WordAlloc.removeDeadStructural input3067 value572 value1 value2 = (output3067, value572, value1))
    (child3072 : Flapjack.WordAlloc.removeDeadStructural input3072 value572 value1 value2 = (output3072, value567, value1)) : Flapjack.WordAlloc.removeDeadStructural input3073 value572 value1 value2 = (output3073, value567, value1) := by
  rw [input3073_def, output3073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3067]
  try dsimp only
  rw [child3072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3067_skip, output3072_skip]
  kernel_rfl

theorem node3074_cond_eq
    (child3066 : Flapjack.WordAlloc.removeDeadStructural input3066 value572 value1 value2 = (output3066, value572, value1))
    (child3073 : Flapjack.WordAlloc.removeDeadStructural input3073 value572 value1 value2 = (output3073, value567, value1)) : Flapjack.WordAlloc.removeDeadStructural input3074 value572 value1 value2 = (output3074, value567, value1) := by
  rw [input3074_def, output3074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3066]
  try dsimp only
  rw [child3073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3066_skip, output3073_skip]
  kernel_rfl

theorem node3075_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3075 value567 value1 value2 = (output3075, value573, value1) := by
  rw [input3075_def, output3075_def]
  kernel_rfl

theorem node3076_cond_eq
    (child3074 : Flapjack.WordAlloc.removeDeadStructural input3074 value572 value1 value2 = (output3074, value567, value1))
    (child3075 : Flapjack.WordAlloc.removeDeadStructural input3075 value567 value1 value2 = (output3075, value573, value1)) : Flapjack.WordAlloc.removeDeadStructural input3076 value572 value1 value2 = (output3076, value573, value1) := by
  rw [input3076_def, output3076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3074]
  try dsimp only
  rw [child3075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3074_skip, output3075_skip]
  kernel_rfl

theorem node3077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3077 value573 value1 value2 = (output3077, value574, value1) := by
  rw [input3077_def, output3077_def]
  kernel_rfl

theorem node3078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3078 value574 value1 value2 = (output3078, value575, value1) := by
  rw [input3078_def, output3078_def]
  kernel_rfl

theorem node3079_cond_eq
    (child3077 : Flapjack.WordAlloc.removeDeadStructural input3077 value573 value1 value2 = (output3077, value574, value1))
    (child3078 : Flapjack.WordAlloc.removeDeadStructural input3078 value574 value1 value2 = (output3078, value575, value1)) : Flapjack.WordAlloc.removeDeadStructural input3079 value573 value1 value2 = (output3079, value575, value1) := by
  rw [input3079_def, output3079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3077]
  try dsimp only
  rw [child3078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3077_skip, output3078_skip]
  kernel_rfl

theorem node3080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3080 value575 value1 value2 = (output3080, value573, value1) := by
  rw [input3080_def, output3080_def]
  kernel_rfl

theorem node3081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3081 value573 value1 value2 = (output3081, value573, value1) := by
  rw [input3081_def, output3081_def]
  kernel_rfl

theorem node3082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3082 value573 value1 value2 = (output3082, value576, value1) := by
  rw [input3082_def, output3082_def]
  kernel_rfl

theorem node3083_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3083 value576 value1 value2 = (output3083, value576, value1) := by
  rw [input3083_def, output3083_def]
  kernel_rfl

theorem node3084_cond_eq
    (child3082 : Flapjack.WordAlloc.removeDeadStructural input3082 value573 value1 value2 = (output3082, value576, value1))
    (child3083 : Flapjack.WordAlloc.removeDeadStructural input3083 value576 value1 value2 = (output3083, value576, value1)) : Flapjack.WordAlloc.removeDeadStructural input3084 value573 value1 value2 = (output3084, value576, value1) := by
  rw [input3084_def, output3084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3082]
  try dsimp only
  rw [child3083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3082_skip, output3083_skip]
  kernel_rfl

theorem node3085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3085 value576 value1 value2 = (output3085, value577, value1) := by
  rw [input3085_def, output3085_def]
  kernel_rfl

theorem node3086_cond_eq
    (child3084 : Flapjack.WordAlloc.removeDeadStructural input3084 value573 value1 value2 = (output3084, value576, value1))
    (child3085 : Flapjack.WordAlloc.removeDeadStructural input3085 value576 value1 value2 = (output3085, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3086 value573 value1 value2 = (output3086, value577, value1) := by
  rw [input3086_def, output3086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3084]
  try dsimp only
  rw [child3085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3084_skip, output3085_skip]
  kernel_rfl

theorem node3087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3087 value577 value1 value2 = (output3087, value577, value1) := by
  rw [input3087_def, output3087_def]
  kernel_rfl

theorem node3088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3088 value577 value1 value2 = (output3088, value577, value1) := by
  rw [input3088_def, output3088_def]
  kernel_rfl

theorem node3089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3089 value577 value1 value2 = (output3089, value577, value1) := by
  rw [input3089_def, output3089_def]
  kernel_rfl

theorem node3090_cond_eq
    (child3088 : Flapjack.WordAlloc.removeDeadStructural input3088 value577 value1 value2 = (output3088, value577, value1))
    (child3089 : Flapjack.WordAlloc.removeDeadStructural input3089 value577 value1 value2 = (output3089, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3090 value577 value1 value2 = (output3090, value577, value1) := by
  rw [input3090_def, output3090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3088]
  try dsimp only
  rw [child3089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3088_skip, output3089_skip]
  kernel_rfl

theorem node3091_cond_eq
    (child3087 : Flapjack.WordAlloc.removeDeadStructural input3087 value577 value1 value2 = (output3087, value577, value1))
    (child3090 : Flapjack.WordAlloc.removeDeadStructural input3090 value577 value1 value2 = (output3090, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3091 value577 value1 value2 = (output3091, value577, value1) := by
  rw [input3091_def, output3091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3087]
  try dsimp only
  rw [child3090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3087_skip, output3090_skip]
  kernel_rfl

theorem node3092_cond_eq
    (child3086 : Flapjack.WordAlloc.removeDeadStructural input3086 value573 value1 value2 = (output3086, value577, value1))
    (child3091 : Flapjack.WordAlloc.removeDeadStructural input3091 value577 value1 value2 = (output3091, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3092 value573 value1 value2 = (output3092, value577, value1) := by
  rw [input3092_def, output3092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3086]
  try dsimp only
  rw [child3091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3086_skip, output3091_skip]
  kernel_rfl

theorem node3093_cond_eq
    (child3081 : Flapjack.WordAlloc.removeDeadStructural input3081 value573 value1 value2 = (output3081, value573, value1))
    (child3092 : Flapjack.WordAlloc.removeDeadStructural input3092 value573 value1 value2 = (output3092, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3093 value573 value1 value2 = (output3093, value577, value1) := by
  rw [input3093_def, output3093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3081]
  try dsimp only
  rw [child3092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3081_skip, output3092_skip]
  kernel_rfl

theorem node3094_cond_eq
    (child3080 : Flapjack.WordAlloc.removeDeadStructural input3080 value575 value1 value2 = (output3080, value573, value1))
    (child3093 : Flapjack.WordAlloc.removeDeadStructural input3093 value573 value1 value2 = (output3093, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3094 value575 value1 value2 = (output3094, value577, value1) := by
  rw [input3094_def, output3094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3080]
  try dsimp only
  rw [child3093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3080_skip, output3093_skip]
  kernel_rfl

theorem node3095_cond_eq
    (child3079 : Flapjack.WordAlloc.removeDeadStructural input3079 value573 value1 value2 = (output3079, value575, value1))
    (child3094 : Flapjack.WordAlloc.removeDeadStructural input3094 value575 value1 value2 = (output3094, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3095 value573 value1 value2 = (output3095, value577, value1) := by
  rw [input3095_def, output3095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3079]
  try dsimp only
  rw [child3094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3079_skip, output3094_skip]
  kernel_rfl

theorem node3096_cond_eq
    (child3076 : Flapjack.WordAlloc.removeDeadStructural input3076 value572 value1 value2 = (output3076, value573, value1))
    (child3095 : Flapjack.WordAlloc.removeDeadStructural input3095 value573 value1 value2 = (output3095, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3096 value572 value1 value2 = (output3096, value577, value1) := by
  rw [input3096_def, output3096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3076]
  try dsimp only
  rw [child3095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3076_skip, output3095_skip]
  kernel_rfl

theorem node3097_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3097 value572 value1 value2 = (output3097, value572, value1) := by
  rw [input3097_def, output3097_def]
  kernel_rfl

theorem node3098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3098 value572 value1 value2 = (output3098, value572, value1) := by
  rw [input3098_def, output3098_def]
  kernel_rfl

theorem node3099_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3099 value572 value1 value2 = (output3099, value572, value1) := by
  rw [input3099_def, output3099_def]
  kernel_rfl

theorem node3100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3100 value572 value1 value2 = (output3100, value578, value1) := by
  rw [input3100_def, output3100_def]
  kernel_rfl

theorem node3101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3101 value578 value1 value2 = (output3101, value578, value1) := by
  rw [input3101_def, output3101_def]
  kernel_rfl

theorem node3102_cond_eq
    (child3100 : Flapjack.WordAlloc.removeDeadStructural input3100 value572 value1 value2 = (output3100, value578, value1))
    (child3101 : Flapjack.WordAlloc.removeDeadStructural input3101 value578 value1 value2 = (output3101, value578, value1)) : Flapjack.WordAlloc.removeDeadStructural input3102 value572 value1 value2 = (output3102, value578, value1) := by
  rw [input3102_def, output3102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3100]
  try dsimp only
  rw [child3101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3100_skip, output3101_skip]
  kernel_rfl

theorem node3103_cond_eq
    (child3099 : Flapjack.WordAlloc.removeDeadStructural input3099 value572 value1 value2 = (output3099, value572, value1))
    (child3102 : Flapjack.WordAlloc.removeDeadStructural input3102 value572 value1 value2 = (output3102, value578, value1)) : Flapjack.WordAlloc.removeDeadStructural input3103 value572 value1 value2 = (output3103, value578, value1) := by
  rw [input3103_def, output3103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3099]
  try dsimp only
  rw [child3102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3099_skip, output3102_skip]
  kernel_rfl

theorem node3104_cond_eq
    (child3098 : Flapjack.WordAlloc.removeDeadStructural input3098 value572 value1 value2 = (output3098, value572, value1))
    (child3103 : Flapjack.WordAlloc.removeDeadStructural input3103 value572 value1 value2 = (output3103, value578, value1)) : Flapjack.WordAlloc.removeDeadStructural input3104 value572 value1 value2 = (output3104, value578, value1) := by
  rw [input3104_def, output3104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3098]
  try dsimp only
  rw [child3103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3098_skip, output3103_skip]
  kernel_rfl

theorem node3105_cond_eq
    (child3097 : Flapjack.WordAlloc.removeDeadStructural input3097 value572 value1 value2 = (output3097, value572, value1))
    (child3104 : Flapjack.WordAlloc.removeDeadStructural input3104 value572 value1 value2 = (output3104, value578, value1)) : Flapjack.WordAlloc.removeDeadStructural input3105 value572 value1 value2 = (output3105, value578, value1) := by
  rw [input3105_def, output3105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3097]
  try dsimp only
  rw [child3104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3097_skip, output3104_skip]
  kernel_rfl

theorem node3106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3106 value578 value1 value2 = (output3106, value579, value1) := by
  rw [input3106_def, output3106_def]
  kernel_rfl

theorem node3107_cond_eq
    (child3105 : Flapjack.WordAlloc.removeDeadStructural input3105 value572 value1 value2 = (output3105, value578, value1))
    (child3106 : Flapjack.WordAlloc.removeDeadStructural input3106 value578 value1 value2 = (output3106, value579, value1)) : Flapjack.WordAlloc.removeDeadStructural input3107 value572 value1 value2 = (output3107, value579, value1) := by
  rw [input3107_def, output3107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3105]
  try dsimp only
  rw [child3106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3105_skip, output3106_skip]
  kernel_rfl

theorem node3108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3108 value579 value1 value2 = (output3108, value579, value1) := by
  rw [input3108_def, output3108_def]
  kernel_rfl

theorem node3109_cond_eq
    (child3107 : Flapjack.WordAlloc.removeDeadStructural input3107 value572 value1 value2 = (output3107, value579, value1))
    (child3108 : Flapjack.WordAlloc.removeDeadStructural input3108 value579 value1 value2 = (output3108, value579, value1)) : Flapjack.WordAlloc.removeDeadStructural input3109 value572 value1 value2 = (output3109, value579, value1) := by
  rw [input3109_def, output3109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3107]
  try dsimp only
  rw [child3108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3107_skip, output3108_skip]
  kernel_rfl

theorem node3110_cond_eq
    (child3096 : Flapjack.WordAlloc.removeDeadStructural input3096 value572 value1 value2 = (output3096, value577, value1))
    (child3109 : Flapjack.WordAlloc.removeDeadStructural input3109 value572 value1 value2 = (output3109, value579, value1)) : Flapjack.WordAlloc.removeDeadStructural input3110 value572 value1 value2 = (output3110, value581, value1) := by
  rw [input3110_def, output3110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3096]
  try dsimp only
  rw [child3109]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3096_skip, output3109_skip]
  kernel_rfl

theorem node3111_cond_eq
    (child3065 : Flapjack.WordAlloc.removeDeadStructural input3065 value572 value1 value2 = (output3065, value572, value1))
    (child3110 : Flapjack.WordAlloc.removeDeadStructural input3110 value572 value1 value2 = (output3110, value581, value1)) : Flapjack.WordAlloc.removeDeadStructural input3111 value572 value1 value2 = (output3111, value581, value1) := by
  rw [input3111_def, output3111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3065]
  try dsimp only
  rw [child3110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3065_skip, output3110_skip]
  kernel_rfl

theorem node3112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3112 value581 value1 value2 = (output3112, value579, value1) := by
  rw [input3112_def, output3112_def]
  kernel_rfl

theorem node3113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3113 value579 value1 value2 = (output3113, value582, value1) := by
  rw [input3113_def, output3113_def]
  kernel_rfl

theorem node3114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3114 value582 value1 value2 = (output3114, value582, value1) := by
  rw [input3114_def, output3114_def]
  kernel_rfl

theorem node3115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3115 value582 value1 value2 = (output3115, value582, value1) := by
  rw [input3115_def, output3115_def]
  kernel_rfl

theorem node3116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3116 value582 value1 value2 = (output3116, value582, value1) := by
  rw [input3116_def, output3116_def]
  kernel_rfl

theorem node3117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3117 value582 value1 value2 = (output3117, value582, value1) := by
  rw [input3117_def, output3117_def]
  kernel_rfl

theorem node3118_cond_eq
    (child3116 : Flapjack.WordAlloc.removeDeadStructural input3116 value582 value1 value2 = (output3116, value582, value1))
    (child3117 : Flapjack.WordAlloc.removeDeadStructural input3117 value582 value1 value2 = (output3117, value582, value1)) : Flapjack.WordAlloc.removeDeadStructural input3118 value582 value1 value2 = (output3118, value582, value1) := by
  rw [input3118_def, output3118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3116]
  try dsimp only
  rw [child3117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3116_skip, output3117_skip]
  kernel_rfl

theorem node3119_cond_eq
    (child3115 : Flapjack.WordAlloc.removeDeadStructural input3115 value582 value1 value2 = (output3115, value582, value1))
    (child3118 : Flapjack.WordAlloc.removeDeadStructural input3118 value582 value1 value2 = (output3118, value582, value1)) : Flapjack.WordAlloc.removeDeadStructural input3119 value582 value1 value2 = (output3119, value582, value1) := by
  rw [input3119_def, output3119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3115]
  try dsimp only
  rw [child3118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3115_skip, output3118_skip]
  kernel_rfl

theorem node3120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3120 value582 value1 value2 = (output3120, value582, value1) := by
  rw [input3120_def, output3120_def]
  kernel_rfl

theorem node3121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3121 value582 value1 value2 = (output3121, value582, value1) := by
  rw [input3121_def, output3121_def]
  kernel_rfl

theorem node3122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3122 value582 value1 value2 = (output3122, value582, value1) := by
  rw [input3122_def, output3122_def]
  kernel_rfl

theorem node3123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3123 value582 value1 value2 = (output3123, value577, value1) := by
  rw [input3123_def, output3123_def]
  kernel_rfl

theorem node3124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3124 value577 value1 value2 = (output3124, value577, value1) := by
  rw [input3124_def, output3124_def]
  kernel_rfl

theorem node3125_cond_eq
    (child3123 : Flapjack.WordAlloc.removeDeadStructural input3123 value582 value1 value2 = (output3123, value577, value1))
    (child3124 : Flapjack.WordAlloc.removeDeadStructural input3124 value577 value1 value2 = (output3124, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3125 value582 value1 value2 = (output3125, value577, value1) := by
  rw [input3125_def, output3125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3123]
  try dsimp only
  rw [child3124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3123_skip, output3124_skip]
  kernel_rfl

theorem node3126_cond_eq
    (child3122 : Flapjack.WordAlloc.removeDeadStructural input3122 value582 value1 value2 = (output3122, value582, value1))
    (child3125 : Flapjack.WordAlloc.removeDeadStructural input3125 value582 value1 value2 = (output3125, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3126 value582 value1 value2 = (output3126, value577, value1) := by
  rw [input3126_def, output3126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3122]
  try dsimp only
  rw [child3125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3122_skip, output3125_skip]
  kernel_rfl

theorem node3127_cond_eq
    (child3121 : Flapjack.WordAlloc.removeDeadStructural input3121 value582 value1 value2 = (output3121, value582, value1))
    (child3126 : Flapjack.WordAlloc.removeDeadStructural input3126 value582 value1 value2 = (output3126, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3127 value582 value1 value2 = (output3127, value577, value1) := by
  rw [input3127_def, output3127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3121]
  try dsimp only
  rw [child3126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3121_skip, output3126_skip]
  kernel_rfl

theorem node3128_cond_eq
    (child3120 : Flapjack.WordAlloc.removeDeadStructural input3120 value582 value1 value2 = (output3120, value582, value1))
    (child3127 : Flapjack.WordAlloc.removeDeadStructural input3127 value582 value1 value2 = (output3127, value577, value1)) : Flapjack.WordAlloc.removeDeadStructural input3128 value582 value1 value2 = (output3128, value577, value1) := by
  rw [input3128_def, output3128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3120]
  try dsimp only
  rw [child3127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3120_skip, output3127_skip]
  kernel_rfl

theorem node3129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3129 value577 value1 value2 = (output3129, value583, value1) := by
  rw [input3129_def, output3129_def]
  kernel_rfl

theorem node3130_cond_eq
    (child3128 : Flapjack.WordAlloc.removeDeadStructural input3128 value582 value1 value2 = (output3128, value577, value1))
    (child3129 : Flapjack.WordAlloc.removeDeadStructural input3129 value577 value1 value2 = (output3129, value583, value1)) : Flapjack.WordAlloc.removeDeadStructural input3130 value582 value1 value2 = (output3130, value583, value1) := by
  rw [input3130_def, output3130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3128]
  try dsimp only
  rw [child3129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3128_skip, output3129_skip]
  kernel_rfl

theorem node3131_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3131 value583 value1 value2 = (output3131, value584, value1) := by
  rw [input3131_def, output3131_def]
  kernel_rfl

theorem node3132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3132 value584 value1 value2 = (output3132, value585, value1) := by
  rw [input3132_def, output3132_def]
  kernel_rfl

theorem node3133_cond_eq
    (child3131 : Flapjack.WordAlloc.removeDeadStructural input3131 value583 value1 value2 = (output3131, value584, value1))
    (child3132 : Flapjack.WordAlloc.removeDeadStructural input3132 value584 value1 value2 = (output3132, value585, value1)) : Flapjack.WordAlloc.removeDeadStructural input3133 value583 value1 value2 = (output3133, value585, value1) := by
  rw [input3133_def, output3133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3131]
  try dsimp only
  rw [child3132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3131_skip, output3132_skip]
  kernel_rfl

theorem node3134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3134 value585 value1 value2 = (output3134, value583, value1) := by
  rw [input3134_def, output3134_def]
  kernel_rfl

theorem node3135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3135 value583 value1 value2 = (output3135, value583, value1) := by
  rw [input3135_def, output3135_def]
  kernel_rfl

theorem node3136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3136 value583 value1 value2 = (output3136, value586, value1) := by
  rw [input3136_def, output3136_def]
  kernel_rfl

theorem node3137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3137 value586 value1 value2 = (output3137, value586, value1) := by
  rw [input3137_def, output3137_def]
  kernel_rfl

theorem node3138_cond_eq
    (child3136 : Flapjack.WordAlloc.removeDeadStructural input3136 value583 value1 value2 = (output3136, value586, value1))
    (child3137 : Flapjack.WordAlloc.removeDeadStructural input3137 value586 value1 value2 = (output3137, value586, value1)) : Flapjack.WordAlloc.removeDeadStructural input3138 value583 value1 value2 = (output3138, value586, value1) := by
  rw [input3138_def, output3138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3136]
  try dsimp only
  rw [child3137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3136_skip, output3137_skip]
  kernel_rfl

theorem node3139_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3139 value586 value1 value2 = (output3139, value587, value1) := by
  rw [input3139_def, output3139_def]
  kernel_rfl

theorem node3140_cond_eq
    (child3138 : Flapjack.WordAlloc.removeDeadStructural input3138 value583 value1 value2 = (output3138, value586, value1))
    (child3139 : Flapjack.WordAlloc.removeDeadStructural input3139 value586 value1 value2 = (output3139, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3140 value583 value1 value2 = (output3140, value587, value1) := by
  rw [input3140_def, output3140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3138]
  try dsimp only
  rw [child3139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3138_skip, output3139_skip]
  kernel_rfl

theorem node3141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3141 value587 value1 value2 = (output3141, value587, value1) := by
  rw [input3141_def, output3141_def]
  kernel_rfl

theorem node3142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3142 value587 value1 value2 = (output3142, value587, value1) := by
  rw [input3142_def, output3142_def]
  kernel_rfl

theorem node3143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3143 value587 value1 value2 = (output3143, value587, value1) := by
  rw [input3143_def, output3143_def]
  kernel_rfl

theorem node3144_cond_eq
    (child3142 : Flapjack.WordAlloc.removeDeadStructural input3142 value587 value1 value2 = (output3142, value587, value1))
    (child3143 : Flapjack.WordAlloc.removeDeadStructural input3143 value587 value1 value2 = (output3143, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3144 value587 value1 value2 = (output3144, value587, value1) := by
  rw [input3144_def, output3144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3142]
  try dsimp only
  rw [child3143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3142_skip, output3143_skip]
  kernel_rfl

theorem node3145_cond_eq
    (child3141 : Flapjack.WordAlloc.removeDeadStructural input3141 value587 value1 value2 = (output3141, value587, value1))
    (child3144 : Flapjack.WordAlloc.removeDeadStructural input3144 value587 value1 value2 = (output3144, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3145 value587 value1 value2 = (output3145, value587, value1) := by
  rw [input3145_def, output3145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3141]
  try dsimp only
  rw [child3144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3141_skip, output3144_skip]
  kernel_rfl

theorem node3146_cond_eq
    (child3140 : Flapjack.WordAlloc.removeDeadStructural input3140 value583 value1 value2 = (output3140, value587, value1))
    (child3145 : Flapjack.WordAlloc.removeDeadStructural input3145 value587 value1 value2 = (output3145, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3146 value583 value1 value2 = (output3146, value587, value1) := by
  rw [input3146_def, output3146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3140]
  try dsimp only
  rw [child3145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3140_skip, output3145_skip]
  kernel_rfl

theorem node3147_cond_eq
    (child3135 : Flapjack.WordAlloc.removeDeadStructural input3135 value583 value1 value2 = (output3135, value583, value1))
    (child3146 : Flapjack.WordAlloc.removeDeadStructural input3146 value583 value1 value2 = (output3146, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3147 value583 value1 value2 = (output3147, value587, value1) := by
  rw [input3147_def, output3147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3135]
  try dsimp only
  rw [child3146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3135_skip, output3146_skip]
  kernel_rfl

theorem node3148_cond_eq
    (child3134 : Flapjack.WordAlloc.removeDeadStructural input3134 value585 value1 value2 = (output3134, value583, value1))
    (child3147 : Flapjack.WordAlloc.removeDeadStructural input3147 value583 value1 value2 = (output3147, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3148 value585 value1 value2 = (output3148, value587, value1) := by
  rw [input3148_def, output3148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3134]
  try dsimp only
  rw [child3147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3134_skip, output3147_skip]
  kernel_rfl

theorem node3149_cond_eq
    (child3133 : Flapjack.WordAlloc.removeDeadStructural input3133 value583 value1 value2 = (output3133, value585, value1))
    (child3148 : Flapjack.WordAlloc.removeDeadStructural input3148 value585 value1 value2 = (output3148, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3149 value583 value1 value2 = (output3149, value587, value1) := by
  rw [input3149_def, output3149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3133]
  try dsimp only
  rw [child3148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3133_skip, output3148_skip]
  kernel_rfl

theorem node3150_cond_eq
    (child3130 : Flapjack.WordAlloc.removeDeadStructural input3130 value582 value1 value2 = (output3130, value583, value1))
    (child3149 : Flapjack.WordAlloc.removeDeadStructural input3149 value583 value1 value2 = (output3149, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3150 value582 value1 value2 = (output3150, value587, value1) := by
  rw [input3150_def, output3150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3130]
  try dsimp only
  rw [child3149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3130_skip, output3149_skip]
  kernel_rfl

theorem node3151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3151 value582 value1 value2 = (output3151, value582, value1) := by
  rw [input3151_def, output3151_def]
  kernel_rfl

theorem node3152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3152 value582 value1 value2 = (output3152, value582, value1) := by
  rw [input3152_def, output3152_def]
  kernel_rfl

theorem node3153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3153 value582 value1 value2 = (output3153, value582, value1) := by
  rw [input3153_def, output3153_def]
  kernel_rfl

theorem node3154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3154 value582 value1 value2 = (output3154, value588, value1) := by
  rw [input3154_def, output3154_def]
  kernel_rfl

theorem node3155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3155 value588 value1 value2 = (output3155, value588, value1) := by
  rw [input3155_def, output3155_def]
  kernel_rfl

theorem node3156_cond_eq
    (child3154 : Flapjack.WordAlloc.removeDeadStructural input3154 value582 value1 value2 = (output3154, value588, value1))
    (child3155 : Flapjack.WordAlloc.removeDeadStructural input3155 value588 value1 value2 = (output3155, value588, value1)) : Flapjack.WordAlloc.removeDeadStructural input3156 value582 value1 value2 = (output3156, value588, value1) := by
  rw [input3156_def, output3156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3154]
  try dsimp only
  rw [child3155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3154_skip, output3155_skip]
  kernel_rfl

theorem node3157_cond_eq
    (child3153 : Flapjack.WordAlloc.removeDeadStructural input3153 value582 value1 value2 = (output3153, value582, value1))
    (child3156 : Flapjack.WordAlloc.removeDeadStructural input3156 value582 value1 value2 = (output3156, value588, value1)) : Flapjack.WordAlloc.removeDeadStructural input3157 value582 value1 value2 = (output3157, value588, value1) := by
  rw [input3157_def, output3157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3153]
  try dsimp only
  rw [child3156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3153_skip, output3156_skip]
  kernel_rfl

theorem node3158_cond_eq
    (child3152 : Flapjack.WordAlloc.removeDeadStructural input3152 value582 value1 value2 = (output3152, value582, value1))
    (child3157 : Flapjack.WordAlloc.removeDeadStructural input3157 value582 value1 value2 = (output3157, value588, value1)) : Flapjack.WordAlloc.removeDeadStructural input3158 value582 value1 value2 = (output3158, value588, value1) := by
  rw [input3158_def, output3158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3152]
  try dsimp only
  rw [child3157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3152_skip, output3157_skip]
  kernel_rfl

theorem node3159_cond_eq
    (child3151 : Flapjack.WordAlloc.removeDeadStructural input3151 value582 value1 value2 = (output3151, value582, value1))
    (child3158 : Flapjack.WordAlloc.removeDeadStructural input3158 value582 value1 value2 = (output3158, value588, value1)) : Flapjack.WordAlloc.removeDeadStructural input3159 value582 value1 value2 = (output3159, value588, value1) := by
  rw [input3159_def, output3159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3151]
  try dsimp only
  rw [child3158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3151_skip, output3158_skip]
  kernel_rfl

theorem node3160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3160 value588 value1 value2 = (output3160, value589, value1) := by
  rw [input3160_def, output3160_def]
  kernel_rfl

theorem node3161_cond_eq
    (child3159 : Flapjack.WordAlloc.removeDeadStructural input3159 value582 value1 value2 = (output3159, value588, value1))
    (child3160 : Flapjack.WordAlloc.removeDeadStructural input3160 value588 value1 value2 = (output3160, value589, value1)) : Flapjack.WordAlloc.removeDeadStructural input3161 value582 value1 value2 = (output3161, value589, value1) := by
  rw [input3161_def, output3161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3159]
  try dsimp only
  rw [child3160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3159_skip, output3160_skip]
  kernel_rfl

theorem node3162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3162 value589 value1 value2 = (output3162, value589, value1) := by
  rw [input3162_def, output3162_def]
  kernel_rfl

theorem node3163_cond_eq
    (child3161 : Flapjack.WordAlloc.removeDeadStructural input3161 value582 value1 value2 = (output3161, value589, value1))
    (child3162 : Flapjack.WordAlloc.removeDeadStructural input3162 value589 value1 value2 = (output3162, value589, value1)) : Flapjack.WordAlloc.removeDeadStructural input3163 value582 value1 value2 = (output3163, value589, value1) := by
  rw [input3163_def, output3163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3161]
  try dsimp only
  rw [child3162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3161_skip, output3162_skip]
  kernel_rfl

theorem node3164_cond_eq
    (child3150 : Flapjack.WordAlloc.removeDeadStructural input3150 value582 value1 value2 = (output3150, value587, value1))
    (child3163 : Flapjack.WordAlloc.removeDeadStructural input3163 value582 value1 value2 = (output3163, value589, value1)) : Flapjack.WordAlloc.removeDeadStructural input3164 value582 value1 value2 = (output3164, value591, value1) := by
  rw [input3164_def, output3164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3150]
  try dsimp only
  rw [child3163]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3150_skip, output3163_skip]
  kernel_rfl

theorem node3165_cond_eq
    (child3119 : Flapjack.WordAlloc.removeDeadStructural input3119 value582 value1 value2 = (output3119, value582, value1))
    (child3164 : Flapjack.WordAlloc.removeDeadStructural input3164 value582 value1 value2 = (output3164, value591, value1)) : Flapjack.WordAlloc.removeDeadStructural input3165 value582 value1 value2 = (output3165, value591, value1) := by
  rw [input3165_def, output3165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3119]
  try dsimp only
  rw [child3164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3119_skip, output3164_skip]
  kernel_rfl

theorem node3166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3166 value591 value1 value2 = (output3166, value589, value1) := by
  rw [input3166_def, output3166_def]
  kernel_rfl

theorem node3167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3167 value589 value1 value2 = (output3167, value592, value1) := by
  rw [input3167_def, output3167_def]
  kernel_rfl

theorem node3168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3168 value592 value1 value2 = (output3168, value592, value1) := by
  rw [input3168_def, output3168_def]
  kernel_rfl

theorem node3169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3169 value592 value1 value2 = (output3169, value592, value1) := by
  rw [input3169_def, output3169_def]
  kernel_rfl

theorem node3170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3170 value592 value1 value2 = (output3170, value592, value1) := by
  rw [input3170_def, output3170_def]
  kernel_rfl

theorem node3171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3171 value592 value1 value2 = (output3171, value592, value1) := by
  rw [input3171_def, output3171_def]
  kernel_rfl

theorem node3172_cond_eq
    (child3170 : Flapjack.WordAlloc.removeDeadStructural input3170 value592 value1 value2 = (output3170, value592, value1))
    (child3171 : Flapjack.WordAlloc.removeDeadStructural input3171 value592 value1 value2 = (output3171, value592, value1)) : Flapjack.WordAlloc.removeDeadStructural input3172 value592 value1 value2 = (output3172, value592, value1) := by
  rw [input3172_def, output3172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3170]
  try dsimp only
  rw [child3171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3170_skip, output3171_skip]
  kernel_rfl

theorem node3173_cond_eq
    (child3169 : Flapjack.WordAlloc.removeDeadStructural input3169 value592 value1 value2 = (output3169, value592, value1))
    (child3172 : Flapjack.WordAlloc.removeDeadStructural input3172 value592 value1 value2 = (output3172, value592, value1)) : Flapjack.WordAlloc.removeDeadStructural input3173 value592 value1 value2 = (output3173, value592, value1) := by
  rw [input3173_def, output3173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3169]
  try dsimp only
  rw [child3172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3169_skip, output3172_skip]
  kernel_rfl

theorem node3174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3174 value592 value1 value2 = (output3174, value592, value1) := by
  rw [input3174_def, output3174_def]
  kernel_rfl

theorem node3175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3175 value592 value1 value2 = (output3175, value592, value1) := by
  rw [input3175_def, output3175_def]
  kernel_rfl

theorem node3176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3176 value592 value1 value2 = (output3176, value592, value1) := by
  rw [input3176_def, output3176_def]
  kernel_rfl

theorem node3177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3177 value592 value1 value2 = (output3177, value587, value1) := by
  rw [input3177_def, output3177_def]
  kernel_rfl

theorem node3178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3178 value587 value1 value2 = (output3178, value587, value1) := by
  rw [input3178_def, output3178_def]
  kernel_rfl

theorem node3179_cond_eq
    (child3177 : Flapjack.WordAlloc.removeDeadStructural input3177 value592 value1 value2 = (output3177, value587, value1))
    (child3178 : Flapjack.WordAlloc.removeDeadStructural input3178 value587 value1 value2 = (output3178, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3179 value592 value1 value2 = (output3179, value587, value1) := by
  rw [input3179_def, output3179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3177]
  try dsimp only
  rw [child3178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3177_skip, output3178_skip]
  kernel_rfl

theorem node3180_cond_eq
    (child3176 : Flapjack.WordAlloc.removeDeadStructural input3176 value592 value1 value2 = (output3176, value592, value1))
    (child3179 : Flapjack.WordAlloc.removeDeadStructural input3179 value592 value1 value2 = (output3179, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3180 value592 value1 value2 = (output3180, value587, value1) := by
  rw [input3180_def, output3180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3176]
  try dsimp only
  rw [child3179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3176_skip, output3179_skip]
  kernel_rfl

theorem node3181_cond_eq
    (child3175 : Flapjack.WordAlloc.removeDeadStructural input3175 value592 value1 value2 = (output3175, value592, value1))
    (child3180 : Flapjack.WordAlloc.removeDeadStructural input3180 value592 value1 value2 = (output3180, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3181 value592 value1 value2 = (output3181, value587, value1) := by
  rw [input3181_def, output3181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3175]
  try dsimp only
  rw [child3180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3175_skip, output3180_skip]
  kernel_rfl

theorem node3182_cond_eq
    (child3174 : Flapjack.WordAlloc.removeDeadStructural input3174 value592 value1 value2 = (output3174, value592, value1))
    (child3181 : Flapjack.WordAlloc.removeDeadStructural input3181 value592 value1 value2 = (output3181, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input3182 value592 value1 value2 = (output3182, value587, value1) := by
  rw [input3182_def, output3182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3174]
  try dsimp only
  rw [child3181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3174_skip, output3181_skip]
  kernel_rfl

theorem node3183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3183 value587 value1 value2 = (output3183, value593, value1) := by
  rw [input3183_def, output3183_def]
  kernel_rfl

theorem node3184_cond_eq
    (child3182 : Flapjack.WordAlloc.removeDeadStructural input3182 value592 value1 value2 = (output3182, value587, value1))
    (child3183 : Flapjack.WordAlloc.removeDeadStructural input3183 value587 value1 value2 = (output3183, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input3184 value592 value1 value2 = (output3184, value593, value1) := by
  rw [input3184_def, output3184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3182]
  try dsimp only
  rw [child3183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3182_skip, output3183_skip]
  kernel_rfl

theorem node3185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3185 value593 value1 value2 = (output3185, value594, value1) := by
  rw [input3185_def, output3185_def]
  kernel_rfl

theorem node3186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3186 value594 value1 value2 = (output3186, value595, value1) := by
  rw [input3186_def, output3186_def]
  kernel_rfl

theorem node3187_cond_eq
    (child3185 : Flapjack.WordAlloc.removeDeadStructural input3185 value593 value1 value2 = (output3185, value594, value1))
    (child3186 : Flapjack.WordAlloc.removeDeadStructural input3186 value594 value1 value2 = (output3186, value595, value1)) : Flapjack.WordAlloc.removeDeadStructural input3187 value593 value1 value2 = (output3187, value595, value1) := by
  rw [input3187_def, output3187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3185]
  try dsimp only
  rw [child3186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3185_skip, output3186_skip]
  kernel_rfl

theorem node3188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3188 value595 value1 value2 = (output3188, value593, value1) := by
  rw [input3188_def, output3188_def]
  kernel_rfl

theorem node3189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3189 value593 value1 value2 = (output3189, value593, value1) := by
  rw [input3189_def, output3189_def]
  kernel_rfl

theorem node3190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3190 value593 value1 value2 = (output3190, value596, value1) := by
  rw [input3190_def, output3190_def]
  kernel_rfl

theorem node3191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3191 value596 value1 value2 = (output3191, value596, value1) := by
  rw [input3191_def, output3191_def]
  kernel_rfl

theorem node3192_cond_eq
    (child3190 : Flapjack.WordAlloc.removeDeadStructural input3190 value593 value1 value2 = (output3190, value596, value1))
    (child3191 : Flapjack.WordAlloc.removeDeadStructural input3191 value596 value1 value2 = (output3191, value596, value1)) : Flapjack.WordAlloc.removeDeadStructural input3192 value593 value1 value2 = (output3192, value596, value1) := by
  rw [input3192_def, output3192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3190]
  try dsimp only
  rw [child3191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3190_skip, output3191_skip]
  kernel_rfl

theorem node3193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3193 value596 value1 value2 = (output3193, value597, value1) := by
  rw [input3193_def, output3193_def]
  kernel_rfl

theorem node3194_cond_eq
    (child3192 : Flapjack.WordAlloc.removeDeadStructural input3192 value593 value1 value2 = (output3192, value596, value1))
    (child3193 : Flapjack.WordAlloc.removeDeadStructural input3193 value596 value1 value2 = (output3193, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3194 value593 value1 value2 = (output3194, value597, value1) := by
  rw [input3194_def, output3194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3192]
  try dsimp only
  rw [child3193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3192_skip, output3193_skip]
  kernel_rfl

theorem node3195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3195 value597 value1 value2 = (output3195, value597, value1) := by
  rw [input3195_def, output3195_def]
  kernel_rfl

theorem node3196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3196 value597 value1 value2 = (output3196, value597, value1) := by
  rw [input3196_def, output3196_def]
  kernel_rfl

theorem node3197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3197 value597 value1 value2 = (output3197, value597, value1) := by
  rw [input3197_def, output3197_def]
  kernel_rfl

theorem node3198_cond_eq
    (child3196 : Flapjack.WordAlloc.removeDeadStructural input3196 value597 value1 value2 = (output3196, value597, value1))
    (child3197 : Flapjack.WordAlloc.removeDeadStructural input3197 value597 value1 value2 = (output3197, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3198 value597 value1 value2 = (output3198, value597, value1) := by
  rw [input3198_def, output3198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3196]
  try dsimp only
  rw [child3197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3196_skip, output3197_skip]
  kernel_rfl

theorem node3199_cond_eq
    (child3195 : Flapjack.WordAlloc.removeDeadStructural input3195 value597 value1 value2 = (output3195, value597, value1))
    (child3198 : Flapjack.WordAlloc.removeDeadStructural input3198 value597 value1 value2 = (output3198, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3199 value597 value1 value2 = (output3199, value597, value1) := by
  rw [input3199_def, output3199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3195]
  try dsimp only
  rw [child3198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3195_skip, output3198_skip]
  kernel_rfl

theorem node3200_cond_eq
    (child3194 : Flapjack.WordAlloc.removeDeadStructural input3194 value593 value1 value2 = (output3194, value597, value1))
    (child3199 : Flapjack.WordAlloc.removeDeadStructural input3199 value597 value1 value2 = (output3199, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3200 value593 value1 value2 = (output3200, value597, value1) := by
  rw [input3200_def, output3200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3194]
  try dsimp only
  rw [child3199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3194_skip, output3199_skip]
  kernel_rfl

theorem node3201_cond_eq
    (child3189 : Flapjack.WordAlloc.removeDeadStructural input3189 value593 value1 value2 = (output3189, value593, value1))
    (child3200 : Flapjack.WordAlloc.removeDeadStructural input3200 value593 value1 value2 = (output3200, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3201 value593 value1 value2 = (output3201, value597, value1) := by
  rw [input3201_def, output3201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3189]
  try dsimp only
  rw [child3200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3189_skip, output3200_skip]
  kernel_rfl

theorem node3202_cond_eq
    (child3188 : Flapjack.WordAlloc.removeDeadStructural input3188 value595 value1 value2 = (output3188, value593, value1))
    (child3201 : Flapjack.WordAlloc.removeDeadStructural input3201 value593 value1 value2 = (output3201, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3202 value595 value1 value2 = (output3202, value597, value1) := by
  rw [input3202_def, output3202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3188]
  try dsimp only
  rw [child3201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3188_skip, output3201_skip]
  kernel_rfl

theorem node3203_cond_eq
    (child3187 : Flapjack.WordAlloc.removeDeadStructural input3187 value593 value1 value2 = (output3187, value595, value1))
    (child3202 : Flapjack.WordAlloc.removeDeadStructural input3202 value595 value1 value2 = (output3202, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3203 value593 value1 value2 = (output3203, value597, value1) := by
  rw [input3203_def, output3203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3187]
  try dsimp only
  rw [child3202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3187_skip, output3202_skip]
  kernel_rfl

theorem node3204_cond_eq
    (child3184 : Flapjack.WordAlloc.removeDeadStructural input3184 value592 value1 value2 = (output3184, value593, value1))
    (child3203 : Flapjack.WordAlloc.removeDeadStructural input3203 value593 value1 value2 = (output3203, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3204 value592 value1 value2 = (output3204, value597, value1) := by
  rw [input3204_def, output3204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3184]
  try dsimp only
  rw [child3203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3184_skip, output3203_skip]
  kernel_rfl

theorem node3205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3205 value592 value1 value2 = (output3205, value592, value1) := by
  rw [input3205_def, output3205_def]
  kernel_rfl

theorem node3206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3206 value592 value1 value2 = (output3206, value592, value1) := by
  rw [input3206_def, output3206_def]
  kernel_rfl

theorem node3207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3207 value592 value1 value2 = (output3207, value592, value1) := by
  rw [input3207_def, output3207_def]
  kernel_rfl

theorem node3208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3208 value592 value1 value2 = (output3208, value598, value1) := by
  rw [input3208_def, output3208_def]
  kernel_rfl

theorem node3209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3209 value598 value1 value2 = (output3209, value598, value1) := by
  rw [input3209_def, output3209_def]
  kernel_rfl

theorem node3210_cond_eq
    (child3208 : Flapjack.WordAlloc.removeDeadStructural input3208 value592 value1 value2 = (output3208, value598, value1))
    (child3209 : Flapjack.WordAlloc.removeDeadStructural input3209 value598 value1 value2 = (output3209, value598, value1)) : Flapjack.WordAlloc.removeDeadStructural input3210 value592 value1 value2 = (output3210, value598, value1) := by
  rw [input3210_def, output3210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3208]
  try dsimp only
  rw [child3209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3208_skip, output3209_skip]
  kernel_rfl

theorem node3211_cond_eq
    (child3207 : Flapjack.WordAlloc.removeDeadStructural input3207 value592 value1 value2 = (output3207, value592, value1))
    (child3210 : Flapjack.WordAlloc.removeDeadStructural input3210 value592 value1 value2 = (output3210, value598, value1)) : Flapjack.WordAlloc.removeDeadStructural input3211 value592 value1 value2 = (output3211, value598, value1) := by
  rw [input3211_def, output3211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3207]
  try dsimp only
  rw [child3210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3207_skip, output3210_skip]
  kernel_rfl

theorem node3212_cond_eq
    (child3206 : Flapjack.WordAlloc.removeDeadStructural input3206 value592 value1 value2 = (output3206, value592, value1))
    (child3211 : Flapjack.WordAlloc.removeDeadStructural input3211 value592 value1 value2 = (output3211, value598, value1)) : Flapjack.WordAlloc.removeDeadStructural input3212 value592 value1 value2 = (output3212, value598, value1) := by
  rw [input3212_def, output3212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3206]
  try dsimp only
  rw [child3211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3206_skip, output3211_skip]
  kernel_rfl

theorem node3213_cond_eq
    (child3205 : Flapjack.WordAlloc.removeDeadStructural input3205 value592 value1 value2 = (output3205, value592, value1))
    (child3212 : Flapjack.WordAlloc.removeDeadStructural input3212 value592 value1 value2 = (output3212, value598, value1)) : Flapjack.WordAlloc.removeDeadStructural input3213 value592 value1 value2 = (output3213, value598, value1) := by
  rw [input3213_def, output3213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3205]
  try dsimp only
  rw [child3212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3205_skip, output3212_skip]
  kernel_rfl

theorem node3214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3214 value598 value1 value2 = (output3214, value599, value1) := by
  rw [input3214_def, output3214_def]
  kernel_rfl

theorem node3215_cond_eq
    (child3213 : Flapjack.WordAlloc.removeDeadStructural input3213 value592 value1 value2 = (output3213, value598, value1))
    (child3214 : Flapjack.WordAlloc.removeDeadStructural input3214 value598 value1 value2 = (output3214, value599, value1)) : Flapjack.WordAlloc.removeDeadStructural input3215 value592 value1 value2 = (output3215, value599, value1) := by
  rw [input3215_def, output3215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3213]
  try dsimp only
  rw [child3214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3213_skip, output3214_skip]
  kernel_rfl

theorem node3216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3216 value599 value1 value2 = (output3216, value599, value1) := by
  rw [input3216_def, output3216_def]
  kernel_rfl

theorem node3217_cond_eq
    (child3215 : Flapjack.WordAlloc.removeDeadStructural input3215 value592 value1 value2 = (output3215, value599, value1))
    (child3216 : Flapjack.WordAlloc.removeDeadStructural input3216 value599 value1 value2 = (output3216, value599, value1)) : Flapjack.WordAlloc.removeDeadStructural input3217 value592 value1 value2 = (output3217, value599, value1) := by
  rw [input3217_def, output3217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3215]
  try dsimp only
  rw [child3216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3215_skip, output3216_skip]
  kernel_rfl

theorem node3218_cond_eq
    (child3204 : Flapjack.WordAlloc.removeDeadStructural input3204 value592 value1 value2 = (output3204, value597, value1))
    (child3217 : Flapjack.WordAlloc.removeDeadStructural input3217 value592 value1 value2 = (output3217, value599, value1)) : Flapjack.WordAlloc.removeDeadStructural input3218 value592 value1 value2 = (output3218, value601, value1) := by
  rw [input3218_def, output3218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3204]
  try dsimp only
  rw [child3217]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3204_skip, output3217_skip]
  kernel_rfl

theorem node3219_cond_eq
    (child3173 : Flapjack.WordAlloc.removeDeadStructural input3173 value592 value1 value2 = (output3173, value592, value1))
    (child3218 : Flapjack.WordAlloc.removeDeadStructural input3218 value592 value1 value2 = (output3218, value601, value1)) : Flapjack.WordAlloc.removeDeadStructural input3219 value592 value1 value2 = (output3219, value601, value1) := by
  rw [input3219_def, output3219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3173]
  try dsimp only
  rw [child3218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3173_skip, output3218_skip]
  kernel_rfl

theorem node3220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3220 value601 value1 value2 = (output3220, value599, value1) := by
  rw [input3220_def, output3220_def]
  kernel_rfl

theorem node3221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3221 value599 value1 value2 = (output3221, value602, value1) := by
  rw [input3221_def, output3221_def]
  kernel_rfl

theorem node3222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3222 value602 value1 value2 = (output3222, value602, value1) := by
  rw [input3222_def, output3222_def]
  kernel_rfl

theorem node3223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3223 value602 value1 value2 = (output3223, value602, value1) := by
  rw [input3223_def, output3223_def]
  kernel_rfl

theorem node3224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3224 value602 value1 value2 = (output3224, value602, value1) := by
  rw [input3224_def, output3224_def]
  kernel_rfl

theorem node3225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3225 value602 value1 value2 = (output3225, value602, value1) := by
  rw [input3225_def, output3225_def]
  kernel_rfl

theorem node3226_cond_eq
    (child3224 : Flapjack.WordAlloc.removeDeadStructural input3224 value602 value1 value2 = (output3224, value602, value1))
    (child3225 : Flapjack.WordAlloc.removeDeadStructural input3225 value602 value1 value2 = (output3225, value602, value1)) : Flapjack.WordAlloc.removeDeadStructural input3226 value602 value1 value2 = (output3226, value602, value1) := by
  rw [input3226_def, output3226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3224]
  try dsimp only
  rw [child3225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3224_skip, output3225_skip]
  kernel_rfl

theorem node3227_cond_eq
    (child3223 : Flapjack.WordAlloc.removeDeadStructural input3223 value602 value1 value2 = (output3223, value602, value1))
    (child3226 : Flapjack.WordAlloc.removeDeadStructural input3226 value602 value1 value2 = (output3226, value602, value1)) : Flapjack.WordAlloc.removeDeadStructural input3227 value602 value1 value2 = (output3227, value602, value1) := by
  rw [input3227_def, output3227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3223]
  try dsimp only
  rw [child3226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3223_skip, output3226_skip]
  kernel_rfl

theorem node3228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3228 value602 value1 value2 = (output3228, value602, value1) := by
  rw [input3228_def, output3228_def]
  kernel_rfl

theorem node3229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3229 value602 value1 value2 = (output3229, value602, value1) := by
  rw [input3229_def, output3229_def]
  kernel_rfl

theorem node3230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3230 value602 value1 value2 = (output3230, value602, value1) := by
  rw [input3230_def, output3230_def]
  kernel_rfl

theorem node3231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3231 value602 value1 value2 = (output3231, value597, value1) := by
  rw [input3231_def, output3231_def]
  kernel_rfl

theorem node3232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3232 value597 value1 value2 = (output3232, value597, value1) := by
  rw [input3232_def, output3232_def]
  kernel_rfl

theorem node3233_cond_eq
    (child3231 : Flapjack.WordAlloc.removeDeadStructural input3231 value602 value1 value2 = (output3231, value597, value1))
    (child3232 : Flapjack.WordAlloc.removeDeadStructural input3232 value597 value1 value2 = (output3232, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3233 value602 value1 value2 = (output3233, value597, value1) := by
  rw [input3233_def, output3233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3231]
  try dsimp only
  rw [child3232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3231_skip, output3232_skip]
  kernel_rfl

theorem node3234_cond_eq
    (child3230 : Flapjack.WordAlloc.removeDeadStructural input3230 value602 value1 value2 = (output3230, value602, value1))
    (child3233 : Flapjack.WordAlloc.removeDeadStructural input3233 value602 value1 value2 = (output3233, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3234 value602 value1 value2 = (output3234, value597, value1) := by
  rw [input3234_def, output3234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3230]
  try dsimp only
  rw [child3233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3230_skip, output3233_skip]
  kernel_rfl

theorem node3235_cond_eq
    (child3229 : Flapjack.WordAlloc.removeDeadStructural input3229 value602 value1 value2 = (output3229, value602, value1))
    (child3234 : Flapjack.WordAlloc.removeDeadStructural input3234 value602 value1 value2 = (output3234, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3235 value602 value1 value2 = (output3235, value597, value1) := by
  rw [input3235_def, output3235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3229]
  try dsimp only
  rw [child3234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3229_skip, output3234_skip]
  kernel_rfl

theorem node3236_cond_eq
    (child3228 : Flapjack.WordAlloc.removeDeadStructural input3228 value602 value1 value2 = (output3228, value602, value1))
    (child3235 : Flapjack.WordAlloc.removeDeadStructural input3235 value602 value1 value2 = (output3235, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input3236 value602 value1 value2 = (output3236, value597, value1) := by
  rw [input3236_def, output3236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3228]
  try dsimp only
  rw [child3235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3228_skip, output3235_skip]
  kernel_rfl

theorem node3237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3237 value597 value1 value2 = (output3237, value603, value1) := by
  rw [input3237_def, output3237_def]
  kernel_rfl

theorem node3238_cond_eq
    (child3236 : Flapjack.WordAlloc.removeDeadStructural input3236 value602 value1 value2 = (output3236, value597, value1))
    (child3237 : Flapjack.WordAlloc.removeDeadStructural input3237 value597 value1 value2 = (output3237, value603, value1)) : Flapjack.WordAlloc.removeDeadStructural input3238 value602 value1 value2 = (output3238, value603, value1) := by
  rw [input3238_def, output3238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3236]
  try dsimp only
  rw [child3237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3236_skip, output3237_skip]
  kernel_rfl

theorem node3239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3239 value603 value1 value2 = (output3239, value604, value1) := by
  rw [input3239_def, output3239_def]
  kernel_rfl

theorem node3240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3240 value604 value1 value2 = (output3240, value605, value1) := by
  rw [input3240_def, output3240_def]
  kernel_rfl

theorem node3241_cond_eq
    (child3239 : Flapjack.WordAlloc.removeDeadStructural input3239 value603 value1 value2 = (output3239, value604, value1))
    (child3240 : Flapjack.WordAlloc.removeDeadStructural input3240 value604 value1 value2 = (output3240, value605, value1)) : Flapjack.WordAlloc.removeDeadStructural input3241 value603 value1 value2 = (output3241, value605, value1) := by
  rw [input3241_def, output3241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3239]
  try dsimp only
  rw [child3240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3239_skip, output3240_skip]
  kernel_rfl

theorem node3242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3242 value605 value1 value2 = (output3242, value603, value1) := by
  rw [input3242_def, output3242_def]
  kernel_rfl

theorem node3243_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3243 value603 value1 value2 = (output3243, value603, value1) := by
  rw [input3243_def, output3243_def]
  kernel_rfl

theorem node3244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3244 value603 value1 value2 = (output3244, value606, value1) := by
  rw [input3244_def, output3244_def]
  kernel_rfl

theorem node3245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3245 value606 value1 value2 = (output3245, value606, value1) := by
  rw [input3245_def, output3245_def]
  kernel_rfl

theorem node3246_cond_eq
    (child3244 : Flapjack.WordAlloc.removeDeadStructural input3244 value603 value1 value2 = (output3244, value606, value1))
    (child3245 : Flapjack.WordAlloc.removeDeadStructural input3245 value606 value1 value2 = (output3245, value606, value1)) : Flapjack.WordAlloc.removeDeadStructural input3246 value603 value1 value2 = (output3246, value606, value1) := by
  rw [input3246_def, output3246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3244]
  try dsimp only
  rw [child3245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3244_skip, output3245_skip]
  kernel_rfl

theorem node3247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3247 value606 value1 value2 = (output3247, value607, value1) := by
  rw [input3247_def, output3247_def]
  kernel_rfl

theorem node3248_cond_eq
    (child3246 : Flapjack.WordAlloc.removeDeadStructural input3246 value603 value1 value2 = (output3246, value606, value1))
    (child3247 : Flapjack.WordAlloc.removeDeadStructural input3247 value606 value1 value2 = (output3247, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3248 value603 value1 value2 = (output3248, value607, value1) := by
  rw [input3248_def, output3248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3246]
  try dsimp only
  rw [child3247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3246_skip, output3247_skip]
  kernel_rfl

theorem node3249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3249 value607 value1 value2 = (output3249, value607, value1) := by
  rw [input3249_def, output3249_def]
  kernel_rfl

theorem node3250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3250 value607 value1 value2 = (output3250, value607, value1) := by
  rw [input3250_def, output3250_def]
  kernel_rfl

theorem node3251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3251 value607 value1 value2 = (output3251, value607, value1) := by
  rw [input3251_def, output3251_def]
  kernel_rfl

theorem node3252_cond_eq
    (child3250 : Flapjack.WordAlloc.removeDeadStructural input3250 value607 value1 value2 = (output3250, value607, value1))
    (child3251 : Flapjack.WordAlloc.removeDeadStructural input3251 value607 value1 value2 = (output3251, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3252 value607 value1 value2 = (output3252, value607, value1) := by
  rw [input3252_def, output3252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3250]
  try dsimp only
  rw [child3251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3250_skip, output3251_skip]
  kernel_rfl

theorem node3253_cond_eq
    (child3249 : Flapjack.WordAlloc.removeDeadStructural input3249 value607 value1 value2 = (output3249, value607, value1))
    (child3252 : Flapjack.WordAlloc.removeDeadStructural input3252 value607 value1 value2 = (output3252, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3253 value607 value1 value2 = (output3253, value607, value1) := by
  rw [input3253_def, output3253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3249]
  try dsimp only
  rw [child3252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3249_skip, output3252_skip]
  kernel_rfl

theorem node3254_cond_eq
    (child3248 : Flapjack.WordAlloc.removeDeadStructural input3248 value603 value1 value2 = (output3248, value607, value1))
    (child3253 : Flapjack.WordAlloc.removeDeadStructural input3253 value607 value1 value2 = (output3253, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3254 value603 value1 value2 = (output3254, value607, value1) := by
  rw [input3254_def, output3254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3248]
  try dsimp only
  rw [child3253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3248_skip, output3253_skip]
  kernel_rfl

theorem node3255_cond_eq
    (child3243 : Flapjack.WordAlloc.removeDeadStructural input3243 value603 value1 value2 = (output3243, value603, value1))
    (child3254 : Flapjack.WordAlloc.removeDeadStructural input3254 value603 value1 value2 = (output3254, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3255 value603 value1 value2 = (output3255, value607, value1) := by
  rw [input3255_def, output3255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3243]
  try dsimp only
  rw [child3254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3243_skip, output3254_skip]
  kernel_rfl

theorem node3256_cond_eq
    (child3242 : Flapjack.WordAlloc.removeDeadStructural input3242 value605 value1 value2 = (output3242, value603, value1))
    (child3255 : Flapjack.WordAlloc.removeDeadStructural input3255 value603 value1 value2 = (output3255, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3256 value605 value1 value2 = (output3256, value607, value1) := by
  rw [input3256_def, output3256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3242]
  try dsimp only
  rw [child3255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3242_skip, output3255_skip]
  kernel_rfl

theorem node3257_cond_eq
    (child3241 : Flapjack.WordAlloc.removeDeadStructural input3241 value603 value1 value2 = (output3241, value605, value1))
    (child3256 : Flapjack.WordAlloc.removeDeadStructural input3256 value605 value1 value2 = (output3256, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3257 value603 value1 value2 = (output3257, value607, value1) := by
  rw [input3257_def, output3257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3241]
  try dsimp only
  rw [child3256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3241_skip, output3256_skip]
  kernel_rfl

theorem node3258_cond_eq
    (child3238 : Flapjack.WordAlloc.removeDeadStructural input3238 value602 value1 value2 = (output3238, value603, value1))
    (child3257 : Flapjack.WordAlloc.removeDeadStructural input3257 value603 value1 value2 = (output3257, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3258 value602 value1 value2 = (output3258, value607, value1) := by
  rw [input3258_def, output3258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3238]
  try dsimp only
  rw [child3257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3238_skip, output3257_skip]
  kernel_rfl

theorem node3259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3259 value602 value1 value2 = (output3259, value602, value1) := by
  rw [input3259_def, output3259_def]
  kernel_rfl

theorem node3260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3260 value602 value1 value2 = (output3260, value602, value1) := by
  rw [input3260_def, output3260_def]
  kernel_rfl

theorem node3261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3261 value602 value1 value2 = (output3261, value602, value1) := by
  rw [input3261_def, output3261_def]
  kernel_rfl

theorem node3262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3262 value602 value1 value2 = (output3262, value608, value1) := by
  rw [input3262_def, output3262_def]
  kernel_rfl

theorem node3263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3263 value608 value1 value2 = (output3263, value608, value1) := by
  rw [input3263_def, output3263_def]
  kernel_rfl

theorem node3264_cond_eq
    (child3262 : Flapjack.WordAlloc.removeDeadStructural input3262 value602 value1 value2 = (output3262, value608, value1))
    (child3263 : Flapjack.WordAlloc.removeDeadStructural input3263 value608 value1 value2 = (output3263, value608, value1)) : Flapjack.WordAlloc.removeDeadStructural input3264 value602 value1 value2 = (output3264, value608, value1) := by
  rw [input3264_def, output3264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3262]
  try dsimp only
  rw [child3263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3262_skip, output3263_skip]
  kernel_rfl

theorem node3265_cond_eq
    (child3261 : Flapjack.WordAlloc.removeDeadStructural input3261 value602 value1 value2 = (output3261, value602, value1))
    (child3264 : Flapjack.WordAlloc.removeDeadStructural input3264 value602 value1 value2 = (output3264, value608, value1)) : Flapjack.WordAlloc.removeDeadStructural input3265 value602 value1 value2 = (output3265, value608, value1) := by
  rw [input3265_def, output3265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3261]
  try dsimp only
  rw [child3264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3261_skip, output3264_skip]
  kernel_rfl

theorem node3266_cond_eq
    (child3260 : Flapjack.WordAlloc.removeDeadStructural input3260 value602 value1 value2 = (output3260, value602, value1))
    (child3265 : Flapjack.WordAlloc.removeDeadStructural input3265 value602 value1 value2 = (output3265, value608, value1)) : Flapjack.WordAlloc.removeDeadStructural input3266 value602 value1 value2 = (output3266, value608, value1) := by
  rw [input3266_def, output3266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3260]
  try dsimp only
  rw [child3265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3260_skip, output3265_skip]
  kernel_rfl

theorem node3267_cond_eq
    (child3259 : Flapjack.WordAlloc.removeDeadStructural input3259 value602 value1 value2 = (output3259, value602, value1))
    (child3266 : Flapjack.WordAlloc.removeDeadStructural input3266 value602 value1 value2 = (output3266, value608, value1)) : Flapjack.WordAlloc.removeDeadStructural input3267 value602 value1 value2 = (output3267, value608, value1) := by
  rw [input3267_def, output3267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3259]
  try dsimp only
  rw [child3266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3259_skip, output3266_skip]
  kernel_rfl

theorem node3268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3268 value608 value1 value2 = (output3268, value609, value1) := by
  rw [input3268_def, output3268_def]
  kernel_rfl

theorem node3269_cond_eq
    (child3267 : Flapjack.WordAlloc.removeDeadStructural input3267 value602 value1 value2 = (output3267, value608, value1))
    (child3268 : Flapjack.WordAlloc.removeDeadStructural input3268 value608 value1 value2 = (output3268, value609, value1)) : Flapjack.WordAlloc.removeDeadStructural input3269 value602 value1 value2 = (output3269, value609, value1) := by
  rw [input3269_def, output3269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3267]
  try dsimp only
  rw [child3268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3267_skip, output3268_skip]
  kernel_rfl

theorem node3270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3270 value609 value1 value2 = (output3270, value609, value1) := by
  rw [input3270_def, output3270_def]
  kernel_rfl

theorem node3271_cond_eq
    (child3269 : Flapjack.WordAlloc.removeDeadStructural input3269 value602 value1 value2 = (output3269, value609, value1))
    (child3270 : Flapjack.WordAlloc.removeDeadStructural input3270 value609 value1 value2 = (output3270, value609, value1)) : Flapjack.WordAlloc.removeDeadStructural input3271 value602 value1 value2 = (output3271, value609, value1) := by
  rw [input3271_def, output3271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3269]
  try dsimp only
  rw [child3270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3269_skip, output3270_skip]
  kernel_rfl

theorem node3272_cond_eq
    (child3258 : Flapjack.WordAlloc.removeDeadStructural input3258 value602 value1 value2 = (output3258, value607, value1))
    (child3271 : Flapjack.WordAlloc.removeDeadStructural input3271 value602 value1 value2 = (output3271, value609, value1)) : Flapjack.WordAlloc.removeDeadStructural input3272 value602 value1 value2 = (output3272, value611, value1) := by
  rw [input3272_def, output3272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3258]
  try dsimp only
  rw [child3271]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3258_skip, output3271_skip]
  kernel_rfl

theorem node3273_cond_eq
    (child3227 : Flapjack.WordAlloc.removeDeadStructural input3227 value602 value1 value2 = (output3227, value602, value1))
    (child3272 : Flapjack.WordAlloc.removeDeadStructural input3272 value602 value1 value2 = (output3272, value611, value1)) : Flapjack.WordAlloc.removeDeadStructural input3273 value602 value1 value2 = (output3273, value611, value1) := by
  rw [input3273_def, output3273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3227]
  try dsimp only
  rw [child3272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3227_skip, output3272_skip]
  kernel_rfl

theorem node3274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3274 value611 value1 value2 = (output3274, value609, value1) := by
  rw [input3274_def, output3274_def]
  kernel_rfl

theorem node3275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3275 value609 value1 value2 = (output3275, value612, value1) := by
  rw [input3275_def, output3275_def]
  kernel_rfl

theorem node3276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3276 value612 value1 value2 = (output3276, value612, value1) := by
  rw [input3276_def, output3276_def]
  kernel_rfl

theorem node3277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3277 value612 value1 value2 = (output3277, value612, value1) := by
  rw [input3277_def, output3277_def]
  kernel_rfl

theorem node3278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3278 value612 value1 value2 = (output3278, value612, value1) := by
  rw [input3278_def, output3278_def]
  kernel_rfl

theorem node3279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3279 value612 value1 value2 = (output3279, value612, value1) := by
  rw [input3279_def, output3279_def]
  kernel_rfl

theorem node3280_cond_eq
    (child3278 : Flapjack.WordAlloc.removeDeadStructural input3278 value612 value1 value2 = (output3278, value612, value1))
    (child3279 : Flapjack.WordAlloc.removeDeadStructural input3279 value612 value1 value2 = (output3279, value612, value1)) : Flapjack.WordAlloc.removeDeadStructural input3280 value612 value1 value2 = (output3280, value612, value1) := by
  rw [input3280_def, output3280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3278]
  try dsimp only
  rw [child3279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3278_skip, output3279_skip]
  kernel_rfl

theorem node3281_cond_eq
    (child3277 : Flapjack.WordAlloc.removeDeadStructural input3277 value612 value1 value2 = (output3277, value612, value1))
    (child3280 : Flapjack.WordAlloc.removeDeadStructural input3280 value612 value1 value2 = (output3280, value612, value1)) : Flapjack.WordAlloc.removeDeadStructural input3281 value612 value1 value2 = (output3281, value612, value1) := by
  rw [input3281_def, output3281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3277]
  try dsimp only
  rw [child3280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3277_skip, output3280_skip]
  kernel_rfl

theorem node3282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3282 value612 value1 value2 = (output3282, value612, value1) := by
  rw [input3282_def, output3282_def]
  kernel_rfl

theorem node3283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3283 value612 value1 value2 = (output3283, value612, value1) := by
  rw [input3283_def, output3283_def]
  kernel_rfl

theorem node3284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3284 value612 value1 value2 = (output3284, value612, value1) := by
  rw [input3284_def, output3284_def]
  kernel_rfl

theorem node3285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3285 value612 value1 value2 = (output3285, value607, value1) := by
  rw [input3285_def, output3285_def]
  kernel_rfl

theorem node3286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3286 value607 value1 value2 = (output3286, value607, value1) := by
  rw [input3286_def, output3286_def]
  kernel_rfl

theorem node3287_cond_eq
    (child3285 : Flapjack.WordAlloc.removeDeadStructural input3285 value612 value1 value2 = (output3285, value607, value1))
    (child3286 : Flapjack.WordAlloc.removeDeadStructural input3286 value607 value1 value2 = (output3286, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3287 value612 value1 value2 = (output3287, value607, value1) := by
  rw [input3287_def, output3287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3285]
  try dsimp only
  rw [child3286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3285_skip, output3286_skip]
  kernel_rfl

theorem node3288_cond_eq
    (child3284 : Flapjack.WordAlloc.removeDeadStructural input3284 value612 value1 value2 = (output3284, value612, value1))
    (child3287 : Flapjack.WordAlloc.removeDeadStructural input3287 value612 value1 value2 = (output3287, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3288 value612 value1 value2 = (output3288, value607, value1) := by
  rw [input3288_def, output3288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3284]
  try dsimp only
  rw [child3287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3284_skip, output3287_skip]
  kernel_rfl

theorem node3289_cond_eq
    (child3283 : Flapjack.WordAlloc.removeDeadStructural input3283 value612 value1 value2 = (output3283, value612, value1))
    (child3288 : Flapjack.WordAlloc.removeDeadStructural input3288 value612 value1 value2 = (output3288, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3289 value612 value1 value2 = (output3289, value607, value1) := by
  rw [input3289_def, output3289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3283]
  try dsimp only
  rw [child3288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3283_skip, output3288_skip]
  kernel_rfl

theorem node3290_cond_eq
    (child3282 : Flapjack.WordAlloc.removeDeadStructural input3282 value612 value1 value2 = (output3282, value612, value1))
    (child3289 : Flapjack.WordAlloc.removeDeadStructural input3289 value612 value1 value2 = (output3289, value607, value1)) : Flapjack.WordAlloc.removeDeadStructural input3290 value612 value1 value2 = (output3290, value607, value1) := by
  rw [input3290_def, output3290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3282]
  try dsimp only
  rw [child3289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3282_skip, output3289_skip]
  kernel_rfl

theorem node3291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3291 value607 value1 value2 = (output3291, value613, value1) := by
  rw [input3291_def, output3291_def]
  kernel_rfl

theorem node3292_cond_eq
    (child3290 : Flapjack.WordAlloc.removeDeadStructural input3290 value612 value1 value2 = (output3290, value607, value1))
    (child3291 : Flapjack.WordAlloc.removeDeadStructural input3291 value607 value1 value2 = (output3291, value613, value1)) : Flapjack.WordAlloc.removeDeadStructural input3292 value612 value1 value2 = (output3292, value613, value1) := by
  rw [input3292_def, output3292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3290]
  try dsimp only
  rw [child3291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3290_skip, output3291_skip]
  kernel_rfl

theorem node3293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3293 value613 value1 value2 = (output3293, value614, value1) := by
  rw [input3293_def, output3293_def]
  kernel_rfl

theorem node3294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3294 value614 value1 value2 = (output3294, value615, value1) := by
  rw [input3294_def, output3294_def]
  kernel_rfl

theorem node3295_cond_eq
    (child3293 : Flapjack.WordAlloc.removeDeadStructural input3293 value613 value1 value2 = (output3293, value614, value1))
    (child3294 : Flapjack.WordAlloc.removeDeadStructural input3294 value614 value1 value2 = (output3294, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input3295 value613 value1 value2 = (output3295, value615, value1) := by
  rw [input3295_def, output3295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3293]
  try dsimp only
  rw [child3294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3293_skip, output3294_skip]
  kernel_rfl

theorem node3296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3296 value615 value1 value2 = (output3296, value613, value1) := by
  rw [input3296_def, output3296_def]
  kernel_rfl

theorem node3297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3297 value613 value1 value2 = (output3297, value613, value1) := by
  rw [input3297_def, output3297_def]
  kernel_rfl

theorem node3298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3298 value613 value1 value2 = (output3298, value616, value1) := by
  rw [input3298_def, output3298_def]
  kernel_rfl

theorem node3299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3299 value616 value1 value2 = (output3299, value616, value1) := by
  rw [input3299_def, output3299_def]
  kernel_rfl

theorem node3300_cond_eq
    (child3298 : Flapjack.WordAlloc.removeDeadStructural input3298 value613 value1 value2 = (output3298, value616, value1))
    (child3299 : Flapjack.WordAlloc.removeDeadStructural input3299 value616 value1 value2 = (output3299, value616, value1)) : Flapjack.WordAlloc.removeDeadStructural input3300 value613 value1 value2 = (output3300, value616, value1) := by
  rw [input3300_def, output3300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3298]
  try dsimp only
  rw [child3299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3298_skip, output3299_skip]
  kernel_rfl

theorem node3301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3301 value616 value1 value2 = (output3301, value617, value1) := by
  rw [input3301_def, output3301_def]
  kernel_rfl

theorem node3302_cond_eq
    (child3300 : Flapjack.WordAlloc.removeDeadStructural input3300 value613 value1 value2 = (output3300, value616, value1))
    (child3301 : Flapjack.WordAlloc.removeDeadStructural input3301 value616 value1 value2 = (output3301, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3302 value613 value1 value2 = (output3302, value617, value1) := by
  rw [input3302_def, output3302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3300]
  try dsimp only
  rw [child3301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3300_skip, output3301_skip]
  kernel_rfl

theorem node3303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3303 value617 value1 value2 = (output3303, value617, value1) := by
  rw [input3303_def, output3303_def]
  kernel_rfl

theorem node3304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3304 value617 value1 value2 = (output3304, value617, value1) := by
  rw [input3304_def, output3304_def]
  kernel_rfl

theorem node3305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3305 value617 value1 value2 = (output3305, value617, value1) := by
  rw [input3305_def, output3305_def]
  kernel_rfl

theorem node3306_cond_eq
    (child3304 : Flapjack.WordAlloc.removeDeadStructural input3304 value617 value1 value2 = (output3304, value617, value1))
    (child3305 : Flapjack.WordAlloc.removeDeadStructural input3305 value617 value1 value2 = (output3305, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3306 value617 value1 value2 = (output3306, value617, value1) := by
  rw [input3306_def, output3306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3304]
  try dsimp only
  rw [child3305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3304_skip, output3305_skip]
  kernel_rfl

theorem node3307_cond_eq
    (child3303 : Flapjack.WordAlloc.removeDeadStructural input3303 value617 value1 value2 = (output3303, value617, value1))
    (child3306 : Flapjack.WordAlloc.removeDeadStructural input3306 value617 value1 value2 = (output3306, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3307 value617 value1 value2 = (output3307, value617, value1) := by
  rw [input3307_def, output3307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3303]
  try dsimp only
  rw [child3306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3303_skip, output3306_skip]
  kernel_rfl

theorem node3308_cond_eq
    (child3302 : Flapjack.WordAlloc.removeDeadStructural input3302 value613 value1 value2 = (output3302, value617, value1))
    (child3307 : Flapjack.WordAlloc.removeDeadStructural input3307 value617 value1 value2 = (output3307, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3308 value613 value1 value2 = (output3308, value617, value1) := by
  rw [input3308_def, output3308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3302]
  try dsimp only
  rw [child3307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3302_skip, output3307_skip]
  kernel_rfl

theorem node3309_cond_eq
    (child3297 : Flapjack.WordAlloc.removeDeadStructural input3297 value613 value1 value2 = (output3297, value613, value1))
    (child3308 : Flapjack.WordAlloc.removeDeadStructural input3308 value613 value1 value2 = (output3308, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3309 value613 value1 value2 = (output3309, value617, value1) := by
  rw [input3309_def, output3309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3297]
  try dsimp only
  rw [child3308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3297_skip, output3308_skip]
  kernel_rfl

theorem node3310_cond_eq
    (child3296 : Flapjack.WordAlloc.removeDeadStructural input3296 value615 value1 value2 = (output3296, value613, value1))
    (child3309 : Flapjack.WordAlloc.removeDeadStructural input3309 value613 value1 value2 = (output3309, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3310 value615 value1 value2 = (output3310, value617, value1) := by
  rw [input3310_def, output3310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3296]
  try dsimp only
  rw [child3309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3296_skip, output3309_skip]
  kernel_rfl

theorem node3311_cond_eq
    (child3295 : Flapjack.WordAlloc.removeDeadStructural input3295 value613 value1 value2 = (output3295, value615, value1))
    (child3310 : Flapjack.WordAlloc.removeDeadStructural input3310 value615 value1 value2 = (output3310, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3311 value613 value1 value2 = (output3311, value617, value1) := by
  rw [input3311_def, output3311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3295]
  try dsimp only
  rw [child3310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3295_skip, output3310_skip]
  kernel_rfl

theorem node3312_cond_eq
    (child3292 : Flapjack.WordAlloc.removeDeadStructural input3292 value612 value1 value2 = (output3292, value613, value1))
    (child3311 : Flapjack.WordAlloc.removeDeadStructural input3311 value613 value1 value2 = (output3311, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3312 value612 value1 value2 = (output3312, value617, value1) := by
  rw [input3312_def, output3312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3292]
  try dsimp only
  rw [child3311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3292_skip, output3311_skip]
  kernel_rfl

theorem node3313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3313 value612 value1 value2 = (output3313, value612, value1) := by
  rw [input3313_def, output3313_def]
  kernel_rfl

theorem node3314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3314 value612 value1 value2 = (output3314, value612, value1) := by
  rw [input3314_def, output3314_def]
  kernel_rfl

theorem node3315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3315 value612 value1 value2 = (output3315, value612, value1) := by
  rw [input3315_def, output3315_def]
  kernel_rfl

theorem node3316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3316 value612 value1 value2 = (output3316, value618, value1) := by
  rw [input3316_def, output3316_def]
  kernel_rfl

theorem node3317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3317 value618 value1 value2 = (output3317, value618, value1) := by
  rw [input3317_def, output3317_def]
  kernel_rfl

theorem node3318_cond_eq
    (child3316 : Flapjack.WordAlloc.removeDeadStructural input3316 value612 value1 value2 = (output3316, value618, value1))
    (child3317 : Flapjack.WordAlloc.removeDeadStructural input3317 value618 value1 value2 = (output3317, value618, value1)) : Flapjack.WordAlloc.removeDeadStructural input3318 value612 value1 value2 = (output3318, value618, value1) := by
  rw [input3318_def, output3318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3316]
  try dsimp only
  rw [child3317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3316_skip, output3317_skip]
  kernel_rfl

theorem node3319_cond_eq
    (child3315 : Flapjack.WordAlloc.removeDeadStructural input3315 value612 value1 value2 = (output3315, value612, value1))
    (child3318 : Flapjack.WordAlloc.removeDeadStructural input3318 value612 value1 value2 = (output3318, value618, value1)) : Flapjack.WordAlloc.removeDeadStructural input3319 value612 value1 value2 = (output3319, value618, value1) := by
  rw [input3319_def, output3319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3315]
  try dsimp only
  rw [child3318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3315_skip, output3318_skip]
  kernel_rfl

theorem node3320_cond_eq
    (child3314 : Flapjack.WordAlloc.removeDeadStructural input3314 value612 value1 value2 = (output3314, value612, value1))
    (child3319 : Flapjack.WordAlloc.removeDeadStructural input3319 value612 value1 value2 = (output3319, value618, value1)) : Flapjack.WordAlloc.removeDeadStructural input3320 value612 value1 value2 = (output3320, value618, value1) := by
  rw [input3320_def, output3320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3314]
  try dsimp only
  rw [child3319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3314_skip, output3319_skip]
  kernel_rfl

theorem node3321_cond_eq
    (child3313 : Flapjack.WordAlloc.removeDeadStructural input3313 value612 value1 value2 = (output3313, value612, value1))
    (child3320 : Flapjack.WordAlloc.removeDeadStructural input3320 value612 value1 value2 = (output3320, value618, value1)) : Flapjack.WordAlloc.removeDeadStructural input3321 value612 value1 value2 = (output3321, value618, value1) := by
  rw [input3321_def, output3321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3313]
  try dsimp only
  rw [child3320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3313_skip, output3320_skip]
  kernel_rfl

theorem node3322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3322 value618 value1 value2 = (output3322, value619, value1) := by
  rw [input3322_def, output3322_def]
  kernel_rfl

theorem node3323_cond_eq
    (child3321 : Flapjack.WordAlloc.removeDeadStructural input3321 value612 value1 value2 = (output3321, value618, value1))
    (child3322 : Flapjack.WordAlloc.removeDeadStructural input3322 value618 value1 value2 = (output3322, value619, value1)) : Flapjack.WordAlloc.removeDeadStructural input3323 value612 value1 value2 = (output3323, value619, value1) := by
  rw [input3323_def, output3323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3321]
  try dsimp only
  rw [child3322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3321_skip, output3322_skip]
  kernel_rfl

theorem node3324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3324 value619 value1 value2 = (output3324, value619, value1) := by
  rw [input3324_def, output3324_def]
  kernel_rfl

theorem node3325_cond_eq
    (child3323 : Flapjack.WordAlloc.removeDeadStructural input3323 value612 value1 value2 = (output3323, value619, value1))
    (child3324 : Flapjack.WordAlloc.removeDeadStructural input3324 value619 value1 value2 = (output3324, value619, value1)) : Flapjack.WordAlloc.removeDeadStructural input3325 value612 value1 value2 = (output3325, value619, value1) := by
  rw [input3325_def, output3325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3323]
  try dsimp only
  rw [child3324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3323_skip, output3324_skip]
  kernel_rfl

theorem node3326_cond_eq
    (child3312 : Flapjack.WordAlloc.removeDeadStructural input3312 value612 value1 value2 = (output3312, value617, value1))
    (child3325 : Flapjack.WordAlloc.removeDeadStructural input3325 value612 value1 value2 = (output3325, value619, value1)) : Flapjack.WordAlloc.removeDeadStructural input3326 value612 value1 value2 = (output3326, value621, value1) := by
  rw [input3326_def, output3326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3312]
  try dsimp only
  rw [child3325]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3312_skip, output3325_skip]
  kernel_rfl

theorem node3327_cond_eq
    (child3281 : Flapjack.WordAlloc.removeDeadStructural input3281 value612 value1 value2 = (output3281, value612, value1))
    (child3326 : Flapjack.WordAlloc.removeDeadStructural input3326 value612 value1 value2 = (output3326, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input3327 value612 value1 value2 = (output3327, value621, value1) := by
  rw [input3327_def, output3327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3281]
  try dsimp only
  rw [child3326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3281_skip, output3326_skip]
  kernel_rfl

#print axioms node3327_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
