import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk012
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages240.Parallel
theorem node3072_cond_eq
    (child3070 : Flapjack.WordAlloc.removeDeadStructural input3070 value5 value1 value2 = (output3070, value1539, value1))
    (child3071 : Flapjack.WordAlloc.removeDeadStructural input3071 value1539 value1 value2 = (output3071, value1540, value1)) : Flapjack.WordAlloc.removeDeadStructural input3072 value5 value1 value2 = (output3072, value1540, value1) := by
  rw [input3072_def, output3072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3070]
  try dsimp only
  rw [child3071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3070_skip, output3071_skip]
  kernel_rfl

theorem node3073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3073 value1540 value1 value2 = (output3073, value1541, value1) := by
  rw [input3073_def, output3073_def]
  kernel_rfl

theorem node3074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3074 value1541 value1 value2 = (output3074, value1541, value1) := by
  rw [input3074_def, output3074_def]
  kernel_rfl

theorem node3075_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3075 value1541 value1 value2 = (output3075, value1542, value1) := by
  rw [input3075_def, output3075_def]
  kernel_rfl

theorem node3076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3076 value1542 value1 value2 = (output3076, value1543, value1) := by
  rw [input3076_def, output3076_def]
  kernel_rfl

theorem node3077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3077 value1543 value1 value2 = (output3077, value1544, value1) := by
  rw [input3077_def, output3077_def]
  kernel_rfl

theorem node3078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3078 value1544 value1 value2 = (output3078, value1545, value1) := by
  rw [input3078_def, output3078_def]
  kernel_rfl

theorem node3079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3079 value1545 value1 value2 = (output3079, value5, value1) := by
  rw [input3079_def, output3079_def]
  kernel_rfl

theorem node3080_cond_eq
    (child3078 : Flapjack.WordAlloc.removeDeadStructural input3078 value1544 value1 value2 = (output3078, value1545, value1))
    (child3079 : Flapjack.WordAlloc.removeDeadStructural input3079 value1545 value1 value2 = (output3079, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3080 value1544 value1 value2 = (output3080, value5, value1) := by
  rw [input3080_def, output3080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3078]
  try dsimp only
  rw [child3079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3078_skip, output3079_skip]
  kernel_rfl

theorem node3081_cond_eq
    (child3077 : Flapjack.WordAlloc.removeDeadStructural input3077 value1543 value1 value2 = (output3077, value1544, value1))
    (child3080 : Flapjack.WordAlloc.removeDeadStructural input3080 value1544 value1 value2 = (output3080, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3081 value1543 value1 value2 = (output3081, value5, value1) := by
  rw [input3081_def, output3081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3077]
  try dsimp only
  rw [child3080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3077_skip, output3080_skip]
  kernel_rfl

theorem node3082_cond_eq
    (child3076 : Flapjack.WordAlloc.removeDeadStructural input3076 value1542 value1 value2 = (output3076, value1543, value1))
    (child3081 : Flapjack.WordAlloc.removeDeadStructural input3081 value1543 value1 value2 = (output3081, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3082 value1542 value1 value2 = (output3082, value5, value1) := by
  rw [input3082_def, output3082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3076]
  try dsimp only
  rw [child3081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3076_skip, output3081_skip]
  kernel_rfl

theorem node3083_cond_eq
    (child3075 : Flapjack.WordAlloc.removeDeadStructural input3075 value1541 value1 value2 = (output3075, value1542, value1))
    (child3082 : Flapjack.WordAlloc.removeDeadStructural input3082 value1542 value1 value2 = (output3082, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3083 value1541 value1 value2 = (output3083, value5, value1) := by
  rw [input3083_def, output3083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3075]
  try dsimp only
  rw [child3082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3075_skip, output3082_skip]
  kernel_rfl

theorem node3084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3084 value5 value1 value2 = (output3084, value1546, value1) := by
  rw [input3084_def, output3084_def]
  kernel_rfl

theorem node3085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3085 value1546 value1 value2 = (output3085, value1547, value1) := by
  rw [input3085_def, output3085_def]
  kernel_rfl

theorem node3086_cond_eq
    (child3084 : Flapjack.WordAlloc.removeDeadStructural input3084 value5 value1 value2 = (output3084, value1546, value1))
    (child3085 : Flapjack.WordAlloc.removeDeadStructural input3085 value1546 value1 value2 = (output3085, value1547, value1)) : Flapjack.WordAlloc.removeDeadStructural input3086 value5 value1 value2 = (output3086, value1547, value1) := by
  rw [input3086_def, output3086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3084]
  try dsimp only
  rw [child3085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3084_skip, output3085_skip]
  kernel_rfl

theorem node3087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3087 value1547 value1 value2 = (output3087, value1548, value1) := by
  rw [input3087_def, output3087_def]
  kernel_rfl

theorem node3088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3088 value1548 value1 value2 = (output3088, value1548, value1) := by
  rw [input3088_def, output3088_def]
  kernel_rfl

theorem node3089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3089 value1548 value1 value2 = (output3089, value1549, value1) := by
  rw [input3089_def, output3089_def]
  kernel_rfl

theorem node3090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3090 value1549 value1 value2 = (output3090, value1550, value1) := by
  rw [input3090_def, output3090_def]
  kernel_rfl

theorem node3091_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3091 value1550 value1 value2 = (output3091, value1551, value1) := by
  rw [input3091_def, output3091_def]
  kernel_rfl

theorem node3092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3092 value1551 value1 value2 = (output3092, value1552, value1) := by
  rw [input3092_def, output3092_def]
  kernel_rfl

theorem node3093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3093 value1552 value1 value2 = (output3093, value5, value1) := by
  rw [input3093_def, output3093_def]
  kernel_rfl

theorem node3094_cond_eq
    (child3092 : Flapjack.WordAlloc.removeDeadStructural input3092 value1551 value1 value2 = (output3092, value1552, value1))
    (child3093 : Flapjack.WordAlloc.removeDeadStructural input3093 value1552 value1 value2 = (output3093, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3094 value1551 value1 value2 = (output3094, value5, value1) := by
  rw [input3094_def, output3094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3092]
  try dsimp only
  rw [child3093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3092_skip, output3093_skip]
  kernel_rfl

theorem node3095_cond_eq
    (child3091 : Flapjack.WordAlloc.removeDeadStructural input3091 value1550 value1 value2 = (output3091, value1551, value1))
    (child3094 : Flapjack.WordAlloc.removeDeadStructural input3094 value1551 value1 value2 = (output3094, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3095 value1550 value1 value2 = (output3095, value5, value1) := by
  rw [input3095_def, output3095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3091]
  try dsimp only
  rw [child3094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3091_skip, output3094_skip]
  kernel_rfl

theorem node3096_cond_eq
    (child3090 : Flapjack.WordAlloc.removeDeadStructural input3090 value1549 value1 value2 = (output3090, value1550, value1))
    (child3095 : Flapjack.WordAlloc.removeDeadStructural input3095 value1550 value1 value2 = (output3095, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3096 value1549 value1 value2 = (output3096, value5, value1) := by
  rw [input3096_def, output3096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3090]
  try dsimp only
  rw [child3095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3090_skip, output3095_skip]
  kernel_rfl

theorem node3097_cond_eq
    (child3089 : Flapjack.WordAlloc.removeDeadStructural input3089 value1548 value1 value2 = (output3089, value1549, value1))
    (child3096 : Flapjack.WordAlloc.removeDeadStructural input3096 value1549 value1 value2 = (output3096, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3097 value1548 value1 value2 = (output3097, value5, value1) := by
  rw [input3097_def, output3097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3089]
  try dsimp only
  rw [child3096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3089_skip, output3096_skip]
  kernel_rfl

theorem node3098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3098 value5 value1 value2 = (output3098, value1553, value1) := by
  rw [input3098_def, output3098_def]
  kernel_rfl

theorem node3099_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3099 value1553 value1 value2 = (output3099, value1554, value1) := by
  rw [input3099_def, output3099_def]
  kernel_rfl

theorem node3100_cond_eq
    (child3098 : Flapjack.WordAlloc.removeDeadStructural input3098 value5 value1 value2 = (output3098, value1553, value1))
    (child3099 : Flapjack.WordAlloc.removeDeadStructural input3099 value1553 value1 value2 = (output3099, value1554, value1)) : Flapjack.WordAlloc.removeDeadStructural input3100 value5 value1 value2 = (output3100, value1554, value1) := by
  rw [input3100_def, output3100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3098]
  try dsimp only
  rw [child3099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3098_skip, output3099_skip]
  kernel_rfl

theorem node3101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3101 value1554 value1 value2 = (output3101, value1555, value1) := by
  rw [input3101_def, output3101_def]
  kernel_rfl

theorem node3102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3102 value1555 value1 value2 = (output3102, value1555, value1) := by
  rw [input3102_def, output3102_def]
  kernel_rfl

theorem node3103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3103 value1555 value1 value2 = (output3103, value1556, value1) := by
  rw [input3103_def, output3103_def]
  kernel_rfl

theorem node3104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3104 value1556 value1 value2 = (output3104, value1557, value1) := by
  rw [input3104_def, output3104_def]
  kernel_rfl

theorem node3105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3105 value1557 value1 value2 = (output3105, value1558, value1) := by
  rw [input3105_def, output3105_def]
  kernel_rfl

theorem node3106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3106 value1558 value1 value2 = (output3106, value1559, value1) := by
  rw [input3106_def, output3106_def]
  kernel_rfl

theorem node3107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3107 value1559 value1 value2 = (output3107, value5, value1) := by
  rw [input3107_def, output3107_def]
  kernel_rfl

theorem node3108_cond_eq
    (child3106 : Flapjack.WordAlloc.removeDeadStructural input3106 value1558 value1 value2 = (output3106, value1559, value1))
    (child3107 : Flapjack.WordAlloc.removeDeadStructural input3107 value1559 value1 value2 = (output3107, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3108 value1558 value1 value2 = (output3108, value5, value1) := by
  rw [input3108_def, output3108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3106]
  try dsimp only
  rw [child3107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3106_skip, output3107_skip]
  kernel_rfl

theorem node3109_cond_eq
    (child3105 : Flapjack.WordAlloc.removeDeadStructural input3105 value1557 value1 value2 = (output3105, value1558, value1))
    (child3108 : Flapjack.WordAlloc.removeDeadStructural input3108 value1558 value1 value2 = (output3108, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3109 value1557 value1 value2 = (output3109, value5, value1) := by
  rw [input3109_def, output3109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3105]
  try dsimp only
  rw [child3108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3105_skip, output3108_skip]
  kernel_rfl

theorem node3110_cond_eq
    (child3104 : Flapjack.WordAlloc.removeDeadStructural input3104 value1556 value1 value2 = (output3104, value1557, value1))
    (child3109 : Flapjack.WordAlloc.removeDeadStructural input3109 value1557 value1 value2 = (output3109, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3110 value1556 value1 value2 = (output3110, value5, value1) := by
  rw [input3110_def, output3110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3104]
  try dsimp only
  rw [child3109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3104_skip, output3109_skip]
  kernel_rfl

theorem node3111_cond_eq
    (child3103 : Flapjack.WordAlloc.removeDeadStructural input3103 value1555 value1 value2 = (output3103, value1556, value1))
    (child3110 : Flapjack.WordAlloc.removeDeadStructural input3110 value1556 value1 value2 = (output3110, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3111 value1555 value1 value2 = (output3111, value5, value1) := by
  rw [input3111_def, output3111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3103]
  try dsimp only
  rw [child3110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3103_skip, output3110_skip]
  kernel_rfl

theorem node3112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3112 value5 value1 value2 = (output3112, value1560, value1) := by
  rw [input3112_def, output3112_def]
  kernel_rfl

theorem node3113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3113 value1560 value1 value2 = (output3113, value1561, value1) := by
  rw [input3113_def, output3113_def]
  kernel_rfl

theorem node3114_cond_eq
    (child3112 : Flapjack.WordAlloc.removeDeadStructural input3112 value5 value1 value2 = (output3112, value1560, value1))
    (child3113 : Flapjack.WordAlloc.removeDeadStructural input3113 value1560 value1 value2 = (output3113, value1561, value1)) : Flapjack.WordAlloc.removeDeadStructural input3114 value5 value1 value2 = (output3114, value1561, value1) := by
  rw [input3114_def, output3114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3112]
  try dsimp only
  rw [child3113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3112_skip, output3113_skip]
  kernel_rfl

theorem node3115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3115 value1561 value1 value2 = (output3115, value1562, value1) := by
  rw [input3115_def, output3115_def]
  kernel_rfl

theorem node3116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3116 value1562 value1 value2 = (output3116, value1562, value1) := by
  rw [input3116_def, output3116_def]
  kernel_rfl

theorem node3117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3117 value1562 value1 value2 = (output3117, value1563, value1) := by
  rw [input3117_def, output3117_def]
  kernel_rfl

theorem node3118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3118 value1563 value1 value2 = (output3118, value1564, value1) := by
  rw [input3118_def, output3118_def]
  kernel_rfl

theorem node3119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3119 value1564 value1 value2 = (output3119, value1565, value1) := by
  rw [input3119_def, output3119_def]
  kernel_rfl

theorem node3120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3120 value1565 value1 value2 = (output3120, value1566, value1) := by
  rw [input3120_def, output3120_def]
  kernel_rfl

theorem node3121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3121 value1566 value1 value2 = (output3121, value5, value1) := by
  rw [input3121_def, output3121_def]
  kernel_rfl

theorem node3122_cond_eq
    (child3120 : Flapjack.WordAlloc.removeDeadStructural input3120 value1565 value1 value2 = (output3120, value1566, value1))
    (child3121 : Flapjack.WordAlloc.removeDeadStructural input3121 value1566 value1 value2 = (output3121, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3122 value1565 value1 value2 = (output3122, value5, value1) := by
  rw [input3122_def, output3122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3120]
  try dsimp only
  rw [child3121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3120_skip, output3121_skip]
  kernel_rfl

theorem node3123_cond_eq
    (child3119 : Flapjack.WordAlloc.removeDeadStructural input3119 value1564 value1 value2 = (output3119, value1565, value1))
    (child3122 : Flapjack.WordAlloc.removeDeadStructural input3122 value1565 value1 value2 = (output3122, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3123 value1564 value1 value2 = (output3123, value5, value1) := by
  rw [input3123_def, output3123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3119]
  try dsimp only
  rw [child3122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3119_skip, output3122_skip]
  kernel_rfl

theorem node3124_cond_eq
    (child3118 : Flapjack.WordAlloc.removeDeadStructural input3118 value1563 value1 value2 = (output3118, value1564, value1))
    (child3123 : Flapjack.WordAlloc.removeDeadStructural input3123 value1564 value1 value2 = (output3123, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3124 value1563 value1 value2 = (output3124, value5, value1) := by
  rw [input3124_def, output3124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3118]
  try dsimp only
  rw [child3123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3118_skip, output3123_skip]
  kernel_rfl

theorem node3125_cond_eq
    (child3117 : Flapjack.WordAlloc.removeDeadStructural input3117 value1562 value1 value2 = (output3117, value1563, value1))
    (child3124 : Flapjack.WordAlloc.removeDeadStructural input3124 value1563 value1 value2 = (output3124, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3125 value1562 value1 value2 = (output3125, value5, value1) := by
  rw [input3125_def, output3125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3117]
  try dsimp only
  rw [child3124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3117_skip, output3124_skip]
  kernel_rfl

theorem node3126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3126 value5 value1 value2 = (output3126, value1567, value1) := by
  rw [input3126_def, output3126_def]
  kernel_rfl

theorem node3127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3127 value1567 value1 value2 = (output3127, value1568, value1) := by
  rw [input3127_def, output3127_def]
  kernel_rfl

theorem node3128_cond_eq
    (child3126 : Flapjack.WordAlloc.removeDeadStructural input3126 value5 value1 value2 = (output3126, value1567, value1))
    (child3127 : Flapjack.WordAlloc.removeDeadStructural input3127 value1567 value1 value2 = (output3127, value1568, value1)) : Flapjack.WordAlloc.removeDeadStructural input3128 value5 value1 value2 = (output3128, value1568, value1) := by
  rw [input3128_def, output3128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3126]
  try dsimp only
  rw [child3127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3126_skip, output3127_skip]
  kernel_rfl

theorem node3129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3129 value1568 value1 value2 = (output3129, value1569, value1) := by
  rw [input3129_def, output3129_def]
  kernel_rfl

theorem node3130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3130 value1569 value1 value2 = (output3130, value1569, value1) := by
  rw [input3130_def, output3130_def]
  kernel_rfl

theorem node3131_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3131 value1569 value1 value2 = (output3131, value1570, value1) := by
  rw [input3131_def, output3131_def]
  kernel_rfl

theorem node3132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3132 value1570 value1 value2 = (output3132, value1571, value1) := by
  rw [input3132_def, output3132_def]
  kernel_rfl

theorem node3133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3133 value1571 value1 value2 = (output3133, value1572, value1) := by
  rw [input3133_def, output3133_def]
  kernel_rfl

theorem node3134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3134 value1572 value1 value2 = (output3134, value1573, value1) := by
  rw [input3134_def, output3134_def]
  kernel_rfl

theorem node3135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3135 value1573 value1 value2 = (output3135, value5, value1) := by
  rw [input3135_def, output3135_def]
  kernel_rfl

theorem node3136_cond_eq
    (child3134 : Flapjack.WordAlloc.removeDeadStructural input3134 value1572 value1 value2 = (output3134, value1573, value1))
    (child3135 : Flapjack.WordAlloc.removeDeadStructural input3135 value1573 value1 value2 = (output3135, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3136 value1572 value1 value2 = (output3136, value5, value1) := by
  rw [input3136_def, output3136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3134]
  try dsimp only
  rw [child3135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3134_skip, output3135_skip]
  kernel_rfl

theorem node3137_cond_eq
    (child3133 : Flapjack.WordAlloc.removeDeadStructural input3133 value1571 value1 value2 = (output3133, value1572, value1))
    (child3136 : Flapjack.WordAlloc.removeDeadStructural input3136 value1572 value1 value2 = (output3136, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3137 value1571 value1 value2 = (output3137, value5, value1) := by
  rw [input3137_def, output3137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3133]
  try dsimp only
  rw [child3136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3133_skip, output3136_skip]
  kernel_rfl

theorem node3138_cond_eq
    (child3132 : Flapjack.WordAlloc.removeDeadStructural input3132 value1570 value1 value2 = (output3132, value1571, value1))
    (child3137 : Flapjack.WordAlloc.removeDeadStructural input3137 value1571 value1 value2 = (output3137, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3138 value1570 value1 value2 = (output3138, value5, value1) := by
  rw [input3138_def, output3138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3132]
  try dsimp only
  rw [child3137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3132_skip, output3137_skip]
  kernel_rfl

theorem node3139_cond_eq
    (child3131 : Flapjack.WordAlloc.removeDeadStructural input3131 value1569 value1 value2 = (output3131, value1570, value1))
    (child3138 : Flapjack.WordAlloc.removeDeadStructural input3138 value1570 value1 value2 = (output3138, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3139 value1569 value1 value2 = (output3139, value5, value1) := by
  rw [input3139_def, output3139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3131]
  try dsimp only
  rw [child3138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3131_skip, output3138_skip]
  kernel_rfl

theorem node3140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3140 value5 value1 value2 = (output3140, value1574, value1) := by
  rw [input3140_def, output3140_def]
  kernel_rfl

theorem node3141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3141 value1574 value1 value2 = (output3141, value1575, value1) := by
  rw [input3141_def, output3141_def]
  kernel_rfl

theorem node3142_cond_eq
    (child3140 : Flapjack.WordAlloc.removeDeadStructural input3140 value5 value1 value2 = (output3140, value1574, value1))
    (child3141 : Flapjack.WordAlloc.removeDeadStructural input3141 value1574 value1 value2 = (output3141, value1575, value1)) : Flapjack.WordAlloc.removeDeadStructural input3142 value5 value1 value2 = (output3142, value1575, value1) := by
  rw [input3142_def, output3142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3140]
  try dsimp only
  rw [child3141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3140_skip, output3141_skip]
  kernel_rfl

theorem node3143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3143 value1575 value1 value2 = (output3143, value1576, value1) := by
  rw [input3143_def, output3143_def]
  kernel_rfl

theorem node3144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3144 value1576 value1 value2 = (output3144, value1576, value1) := by
  rw [input3144_def, output3144_def]
  kernel_rfl

theorem node3145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3145 value1576 value1 value2 = (output3145, value1577, value1) := by
  rw [input3145_def, output3145_def]
  kernel_rfl

theorem node3146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3146 value1577 value1 value2 = (output3146, value1578, value1) := by
  rw [input3146_def, output3146_def]
  kernel_rfl

theorem node3147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3147 value1578 value1 value2 = (output3147, value1579, value1) := by
  rw [input3147_def, output3147_def]
  kernel_rfl

theorem node3148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3148 value1579 value1 value2 = (output3148, value1580, value1) := by
  rw [input3148_def, output3148_def]
  kernel_rfl

theorem node3149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3149 value1580 value1 value2 = (output3149, value5, value1) := by
  rw [input3149_def, output3149_def]
  kernel_rfl

theorem node3150_cond_eq
    (child3148 : Flapjack.WordAlloc.removeDeadStructural input3148 value1579 value1 value2 = (output3148, value1580, value1))
    (child3149 : Flapjack.WordAlloc.removeDeadStructural input3149 value1580 value1 value2 = (output3149, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3150 value1579 value1 value2 = (output3150, value5, value1) := by
  rw [input3150_def, output3150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3148]
  try dsimp only
  rw [child3149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3148_skip, output3149_skip]
  kernel_rfl

theorem node3151_cond_eq
    (child3147 : Flapjack.WordAlloc.removeDeadStructural input3147 value1578 value1 value2 = (output3147, value1579, value1))
    (child3150 : Flapjack.WordAlloc.removeDeadStructural input3150 value1579 value1 value2 = (output3150, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3151 value1578 value1 value2 = (output3151, value5, value1) := by
  rw [input3151_def, output3151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3147]
  try dsimp only
  rw [child3150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3147_skip, output3150_skip]
  kernel_rfl

theorem node3152_cond_eq
    (child3146 : Flapjack.WordAlloc.removeDeadStructural input3146 value1577 value1 value2 = (output3146, value1578, value1))
    (child3151 : Flapjack.WordAlloc.removeDeadStructural input3151 value1578 value1 value2 = (output3151, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3152 value1577 value1 value2 = (output3152, value5, value1) := by
  rw [input3152_def, output3152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3146]
  try dsimp only
  rw [child3151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3146_skip, output3151_skip]
  kernel_rfl

theorem node3153_cond_eq
    (child3145 : Flapjack.WordAlloc.removeDeadStructural input3145 value1576 value1 value2 = (output3145, value1577, value1))
    (child3152 : Flapjack.WordAlloc.removeDeadStructural input3152 value1577 value1 value2 = (output3152, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3153 value1576 value1 value2 = (output3153, value5, value1) := by
  rw [input3153_def, output3153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3145]
  try dsimp only
  rw [child3152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3145_skip, output3152_skip]
  kernel_rfl

theorem node3154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3154 value5 value1 value2 = (output3154, value1581, value1) := by
  rw [input3154_def, output3154_def]
  kernel_rfl

theorem node3155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3155 value1581 value1 value2 = (output3155, value1582, value1) := by
  rw [input3155_def, output3155_def]
  kernel_rfl

theorem node3156_cond_eq
    (child3154 : Flapjack.WordAlloc.removeDeadStructural input3154 value5 value1 value2 = (output3154, value1581, value1))
    (child3155 : Flapjack.WordAlloc.removeDeadStructural input3155 value1581 value1 value2 = (output3155, value1582, value1)) : Flapjack.WordAlloc.removeDeadStructural input3156 value5 value1 value2 = (output3156, value1582, value1) := by
  rw [input3156_def, output3156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3154]
  try dsimp only
  rw [child3155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3154_skip, output3155_skip]
  kernel_rfl

theorem node3157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3157 value1582 value1 value2 = (output3157, value1583, value1) := by
  rw [input3157_def, output3157_def]
  kernel_rfl

theorem node3158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3158 value1583 value1 value2 = (output3158, value1583, value1) := by
  rw [input3158_def, output3158_def]
  kernel_rfl

theorem node3159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3159 value1583 value1 value2 = (output3159, value1584, value1) := by
  rw [input3159_def, output3159_def]
  kernel_rfl

theorem node3160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3160 value1584 value1 value2 = (output3160, value1585, value1) := by
  rw [input3160_def, output3160_def]
  kernel_rfl

theorem node3161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3161 value1585 value1 value2 = (output3161, value1586, value1) := by
  rw [input3161_def, output3161_def]
  kernel_rfl

theorem node3162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3162 value1586 value1 value2 = (output3162, value1587, value1) := by
  rw [input3162_def, output3162_def]
  kernel_rfl

theorem node3163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3163 value1587 value1 value2 = (output3163, value5, value1) := by
  rw [input3163_def, output3163_def]
  kernel_rfl

theorem node3164_cond_eq
    (child3162 : Flapjack.WordAlloc.removeDeadStructural input3162 value1586 value1 value2 = (output3162, value1587, value1))
    (child3163 : Flapjack.WordAlloc.removeDeadStructural input3163 value1587 value1 value2 = (output3163, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3164 value1586 value1 value2 = (output3164, value5, value1) := by
  rw [input3164_def, output3164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3162]
  try dsimp only
  rw [child3163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3162_skip, output3163_skip]
  kernel_rfl

theorem node3165_cond_eq
    (child3161 : Flapjack.WordAlloc.removeDeadStructural input3161 value1585 value1 value2 = (output3161, value1586, value1))
    (child3164 : Flapjack.WordAlloc.removeDeadStructural input3164 value1586 value1 value2 = (output3164, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3165 value1585 value1 value2 = (output3165, value5, value1) := by
  rw [input3165_def, output3165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3161]
  try dsimp only
  rw [child3164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3161_skip, output3164_skip]
  kernel_rfl

theorem node3166_cond_eq
    (child3160 : Flapjack.WordAlloc.removeDeadStructural input3160 value1584 value1 value2 = (output3160, value1585, value1))
    (child3165 : Flapjack.WordAlloc.removeDeadStructural input3165 value1585 value1 value2 = (output3165, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3166 value1584 value1 value2 = (output3166, value5, value1) := by
  rw [input3166_def, output3166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3160]
  try dsimp only
  rw [child3165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3160_skip, output3165_skip]
  kernel_rfl

theorem node3167_cond_eq
    (child3159 : Flapjack.WordAlloc.removeDeadStructural input3159 value1583 value1 value2 = (output3159, value1584, value1))
    (child3166 : Flapjack.WordAlloc.removeDeadStructural input3166 value1584 value1 value2 = (output3166, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3167 value1583 value1 value2 = (output3167, value5, value1) := by
  rw [input3167_def, output3167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3159]
  try dsimp only
  rw [child3166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3159_skip, output3166_skip]
  kernel_rfl

theorem node3168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3168 value5 value1 value2 = (output3168, value1588, value1) := by
  rw [input3168_def, output3168_def]
  kernel_rfl

theorem node3169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3169 value1588 value1 value2 = (output3169, value1589, value1) := by
  rw [input3169_def, output3169_def]
  kernel_rfl

theorem node3170_cond_eq
    (child3168 : Flapjack.WordAlloc.removeDeadStructural input3168 value5 value1 value2 = (output3168, value1588, value1))
    (child3169 : Flapjack.WordAlloc.removeDeadStructural input3169 value1588 value1 value2 = (output3169, value1589, value1)) : Flapjack.WordAlloc.removeDeadStructural input3170 value5 value1 value2 = (output3170, value1589, value1) := by
  rw [input3170_def, output3170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3168]
  try dsimp only
  rw [child3169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3168_skip, output3169_skip]
  kernel_rfl

theorem node3171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3171 value1589 value1 value2 = (output3171, value1590, value1) := by
  rw [input3171_def, output3171_def]
  kernel_rfl

theorem node3172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3172 value1590 value1 value2 = (output3172, value1590, value1) := by
  rw [input3172_def, output3172_def]
  kernel_rfl

theorem node3173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3173 value1590 value1 value2 = (output3173, value1591, value1) := by
  rw [input3173_def, output3173_def]
  kernel_rfl

theorem node3174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3174 value1591 value1 value2 = (output3174, value1592, value1) := by
  rw [input3174_def, output3174_def]
  kernel_rfl

theorem node3175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3175 value1592 value1 value2 = (output3175, value1593, value1) := by
  rw [input3175_def, output3175_def]
  kernel_rfl

theorem node3176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3176 value1593 value1 value2 = (output3176, value1594, value1) := by
  rw [input3176_def, output3176_def]
  kernel_rfl

theorem node3177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3177 value1594 value1 value2 = (output3177, value5, value1) := by
  rw [input3177_def, output3177_def]
  kernel_rfl

theorem node3178_cond_eq
    (child3176 : Flapjack.WordAlloc.removeDeadStructural input3176 value1593 value1 value2 = (output3176, value1594, value1))
    (child3177 : Flapjack.WordAlloc.removeDeadStructural input3177 value1594 value1 value2 = (output3177, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3178 value1593 value1 value2 = (output3178, value5, value1) := by
  rw [input3178_def, output3178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3176]
  try dsimp only
  rw [child3177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3176_skip, output3177_skip]
  kernel_rfl

theorem node3179_cond_eq
    (child3175 : Flapjack.WordAlloc.removeDeadStructural input3175 value1592 value1 value2 = (output3175, value1593, value1))
    (child3178 : Flapjack.WordAlloc.removeDeadStructural input3178 value1593 value1 value2 = (output3178, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3179 value1592 value1 value2 = (output3179, value5, value1) := by
  rw [input3179_def, output3179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3175]
  try dsimp only
  rw [child3178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3175_skip, output3178_skip]
  kernel_rfl

theorem node3180_cond_eq
    (child3174 : Flapjack.WordAlloc.removeDeadStructural input3174 value1591 value1 value2 = (output3174, value1592, value1))
    (child3179 : Flapjack.WordAlloc.removeDeadStructural input3179 value1592 value1 value2 = (output3179, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3180 value1591 value1 value2 = (output3180, value5, value1) := by
  rw [input3180_def, output3180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3174]
  try dsimp only
  rw [child3179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3174_skip, output3179_skip]
  kernel_rfl

theorem node3181_cond_eq
    (child3173 : Flapjack.WordAlloc.removeDeadStructural input3173 value1590 value1 value2 = (output3173, value1591, value1))
    (child3180 : Flapjack.WordAlloc.removeDeadStructural input3180 value1591 value1 value2 = (output3180, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3181 value1590 value1 value2 = (output3181, value5, value1) := by
  rw [input3181_def, output3181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3173]
  try dsimp only
  rw [child3180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3173_skip, output3180_skip]
  kernel_rfl

theorem node3182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3182 value5 value1 value2 = (output3182, value1595, value1) := by
  rw [input3182_def, output3182_def]
  kernel_rfl

theorem node3183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3183 value1595 value1 value2 = (output3183, value1596, value1) := by
  rw [input3183_def, output3183_def]
  kernel_rfl

theorem node3184_cond_eq
    (child3182 : Flapjack.WordAlloc.removeDeadStructural input3182 value5 value1 value2 = (output3182, value1595, value1))
    (child3183 : Flapjack.WordAlloc.removeDeadStructural input3183 value1595 value1 value2 = (output3183, value1596, value1)) : Flapjack.WordAlloc.removeDeadStructural input3184 value5 value1 value2 = (output3184, value1596, value1) := by
  rw [input3184_def, output3184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3182]
  try dsimp only
  rw [child3183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3182_skip, output3183_skip]
  kernel_rfl

theorem node3185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3185 value1596 value1 value2 = (output3185, value1597, value1) := by
  rw [input3185_def, output3185_def]
  kernel_rfl

theorem node3186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3186 value1597 value1 value2 = (output3186, value1597, value1) := by
  rw [input3186_def, output3186_def]
  kernel_rfl

theorem node3187_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3187 value1597 value1 value2 = (output3187, value1598, value1) := by
  rw [input3187_def, output3187_def]
  kernel_rfl

theorem node3188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3188 value1598 value1 value2 = (output3188, value1599, value1) := by
  rw [input3188_def, output3188_def]
  kernel_rfl

theorem node3189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3189 value1599 value1 value2 = (output3189, value1600, value1) := by
  rw [input3189_def, output3189_def]
  kernel_rfl

theorem node3190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3190 value1600 value1 value2 = (output3190, value1601, value1) := by
  rw [input3190_def, output3190_def]
  kernel_rfl

theorem node3191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3191 value1601 value1 value2 = (output3191, value5, value1) := by
  rw [input3191_def, output3191_def]
  kernel_rfl

theorem node3192_cond_eq
    (child3190 : Flapjack.WordAlloc.removeDeadStructural input3190 value1600 value1 value2 = (output3190, value1601, value1))
    (child3191 : Flapjack.WordAlloc.removeDeadStructural input3191 value1601 value1 value2 = (output3191, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3192 value1600 value1 value2 = (output3192, value5, value1) := by
  rw [input3192_def, output3192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3190]
  try dsimp only
  rw [child3191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3190_skip, output3191_skip]
  kernel_rfl

theorem node3193_cond_eq
    (child3189 : Flapjack.WordAlloc.removeDeadStructural input3189 value1599 value1 value2 = (output3189, value1600, value1))
    (child3192 : Flapjack.WordAlloc.removeDeadStructural input3192 value1600 value1 value2 = (output3192, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3193 value1599 value1 value2 = (output3193, value5, value1) := by
  rw [input3193_def, output3193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3189]
  try dsimp only
  rw [child3192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3189_skip, output3192_skip]
  kernel_rfl

theorem node3194_cond_eq
    (child3188 : Flapjack.WordAlloc.removeDeadStructural input3188 value1598 value1 value2 = (output3188, value1599, value1))
    (child3193 : Flapjack.WordAlloc.removeDeadStructural input3193 value1599 value1 value2 = (output3193, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3194 value1598 value1 value2 = (output3194, value5, value1) := by
  rw [input3194_def, output3194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3188]
  try dsimp only
  rw [child3193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3188_skip, output3193_skip]
  kernel_rfl

theorem node3195_cond_eq
    (child3187 : Flapjack.WordAlloc.removeDeadStructural input3187 value1597 value1 value2 = (output3187, value1598, value1))
    (child3194 : Flapjack.WordAlloc.removeDeadStructural input3194 value1598 value1 value2 = (output3194, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3195 value1597 value1 value2 = (output3195, value5, value1) := by
  rw [input3195_def, output3195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3187]
  try dsimp only
  rw [child3194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3187_skip, output3194_skip]
  kernel_rfl

theorem node3196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3196 value5 value1 value2 = (output3196, value1602, value1) := by
  rw [input3196_def, output3196_def]
  kernel_rfl

theorem node3197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3197 value1602 value1 value2 = (output3197, value1603, value1) := by
  rw [input3197_def, output3197_def]
  kernel_rfl

theorem node3198_cond_eq
    (child3196 : Flapjack.WordAlloc.removeDeadStructural input3196 value5 value1 value2 = (output3196, value1602, value1))
    (child3197 : Flapjack.WordAlloc.removeDeadStructural input3197 value1602 value1 value2 = (output3197, value1603, value1)) : Flapjack.WordAlloc.removeDeadStructural input3198 value5 value1 value2 = (output3198, value1603, value1) := by
  rw [input3198_def, output3198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3196]
  try dsimp only
  rw [child3197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3196_skip, output3197_skip]
  kernel_rfl

theorem node3199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3199 value1603 value1 value2 = (output3199, value1604, value1) := by
  rw [input3199_def, output3199_def]
  kernel_rfl

theorem node3200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3200 value1604 value1 value2 = (output3200, value1604, value1) := by
  rw [input3200_def, output3200_def]
  kernel_rfl

theorem node3201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3201 value1604 value1 value2 = (output3201, value1605, value1) := by
  rw [input3201_def, output3201_def]
  kernel_rfl

theorem node3202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3202 value1605 value1 value2 = (output3202, value1606, value1) := by
  rw [input3202_def, output3202_def]
  kernel_rfl

theorem node3203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3203 value1606 value1 value2 = (output3203, value1607, value1) := by
  rw [input3203_def, output3203_def]
  kernel_rfl

theorem node3204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3204 value1607 value1 value2 = (output3204, value1608, value1) := by
  rw [input3204_def, output3204_def]
  kernel_rfl

theorem node3205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3205 value1608 value1 value2 = (output3205, value5, value1) := by
  rw [input3205_def, output3205_def]
  kernel_rfl

theorem node3206_cond_eq
    (child3204 : Flapjack.WordAlloc.removeDeadStructural input3204 value1607 value1 value2 = (output3204, value1608, value1))
    (child3205 : Flapjack.WordAlloc.removeDeadStructural input3205 value1608 value1 value2 = (output3205, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3206 value1607 value1 value2 = (output3206, value5, value1) := by
  rw [input3206_def, output3206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3204]
  try dsimp only
  rw [child3205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3204_skip, output3205_skip]
  kernel_rfl

theorem node3207_cond_eq
    (child3203 : Flapjack.WordAlloc.removeDeadStructural input3203 value1606 value1 value2 = (output3203, value1607, value1))
    (child3206 : Flapjack.WordAlloc.removeDeadStructural input3206 value1607 value1 value2 = (output3206, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3207 value1606 value1 value2 = (output3207, value5, value1) := by
  rw [input3207_def, output3207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3203]
  try dsimp only
  rw [child3206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3203_skip, output3206_skip]
  kernel_rfl

theorem node3208_cond_eq
    (child3202 : Flapjack.WordAlloc.removeDeadStructural input3202 value1605 value1 value2 = (output3202, value1606, value1))
    (child3207 : Flapjack.WordAlloc.removeDeadStructural input3207 value1606 value1 value2 = (output3207, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3208 value1605 value1 value2 = (output3208, value5, value1) := by
  rw [input3208_def, output3208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3202]
  try dsimp only
  rw [child3207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3202_skip, output3207_skip]
  kernel_rfl

theorem node3209_cond_eq
    (child3201 : Flapjack.WordAlloc.removeDeadStructural input3201 value1604 value1 value2 = (output3201, value1605, value1))
    (child3208 : Flapjack.WordAlloc.removeDeadStructural input3208 value1605 value1 value2 = (output3208, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3209 value1604 value1 value2 = (output3209, value5, value1) := by
  rw [input3209_def, output3209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3201]
  try dsimp only
  rw [child3208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3201_skip, output3208_skip]
  kernel_rfl

theorem node3210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3210 value5 value1 value2 = (output3210, value1609, value1) := by
  rw [input3210_def, output3210_def]
  kernel_rfl

theorem node3211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3211 value1609 value1 value2 = (output3211, value1610, value1) := by
  rw [input3211_def, output3211_def]
  kernel_rfl

theorem node3212_cond_eq
    (child3210 : Flapjack.WordAlloc.removeDeadStructural input3210 value5 value1 value2 = (output3210, value1609, value1))
    (child3211 : Flapjack.WordAlloc.removeDeadStructural input3211 value1609 value1 value2 = (output3211, value1610, value1)) : Flapjack.WordAlloc.removeDeadStructural input3212 value5 value1 value2 = (output3212, value1610, value1) := by
  rw [input3212_def, output3212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3210]
  try dsimp only
  rw [child3211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3210_skip, output3211_skip]
  kernel_rfl

theorem node3213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3213 value1610 value1 value2 = (output3213, value1611, value1) := by
  rw [input3213_def, output3213_def]
  kernel_rfl

theorem node3214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3214 value1611 value1 value2 = (output3214, value1611, value1) := by
  rw [input3214_def, output3214_def]
  kernel_rfl

theorem node3215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3215 value1611 value1 value2 = (output3215, value1612, value1) := by
  rw [input3215_def, output3215_def]
  kernel_rfl

theorem node3216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3216 value1612 value1 value2 = (output3216, value1613, value1) := by
  rw [input3216_def, output3216_def]
  kernel_rfl

theorem node3217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3217 value1613 value1 value2 = (output3217, value1614, value1) := by
  rw [input3217_def, output3217_def]
  kernel_rfl

theorem node3218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3218 value1614 value1 value2 = (output3218, value1615, value1) := by
  rw [input3218_def, output3218_def]
  kernel_rfl

theorem node3219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3219 value1615 value1 value2 = (output3219, value5, value1) := by
  rw [input3219_def, output3219_def]
  kernel_rfl

theorem node3220_cond_eq
    (child3218 : Flapjack.WordAlloc.removeDeadStructural input3218 value1614 value1 value2 = (output3218, value1615, value1))
    (child3219 : Flapjack.WordAlloc.removeDeadStructural input3219 value1615 value1 value2 = (output3219, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3220 value1614 value1 value2 = (output3220, value5, value1) := by
  rw [input3220_def, output3220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3218]
  try dsimp only
  rw [child3219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3218_skip, output3219_skip]
  kernel_rfl

theorem node3221_cond_eq
    (child3217 : Flapjack.WordAlloc.removeDeadStructural input3217 value1613 value1 value2 = (output3217, value1614, value1))
    (child3220 : Flapjack.WordAlloc.removeDeadStructural input3220 value1614 value1 value2 = (output3220, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3221 value1613 value1 value2 = (output3221, value5, value1) := by
  rw [input3221_def, output3221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3217]
  try dsimp only
  rw [child3220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3217_skip, output3220_skip]
  kernel_rfl

theorem node3222_cond_eq
    (child3216 : Flapjack.WordAlloc.removeDeadStructural input3216 value1612 value1 value2 = (output3216, value1613, value1))
    (child3221 : Flapjack.WordAlloc.removeDeadStructural input3221 value1613 value1 value2 = (output3221, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3222 value1612 value1 value2 = (output3222, value5, value1) := by
  rw [input3222_def, output3222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3216]
  try dsimp only
  rw [child3221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3216_skip, output3221_skip]
  kernel_rfl

theorem node3223_cond_eq
    (child3215 : Flapjack.WordAlloc.removeDeadStructural input3215 value1611 value1 value2 = (output3215, value1612, value1))
    (child3222 : Flapjack.WordAlloc.removeDeadStructural input3222 value1612 value1 value2 = (output3222, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3223 value1611 value1 value2 = (output3223, value5, value1) := by
  rw [input3223_def, output3223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3215]
  try dsimp only
  rw [child3222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3215_skip, output3222_skip]
  kernel_rfl

theorem node3224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3224 value5 value1 value2 = (output3224, value1616, value1) := by
  rw [input3224_def, output3224_def]
  kernel_rfl

theorem node3225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3225 value1616 value1 value2 = (output3225, value1617, value1) := by
  rw [input3225_def, output3225_def]
  kernel_rfl

theorem node3226_cond_eq
    (child3224 : Flapjack.WordAlloc.removeDeadStructural input3224 value5 value1 value2 = (output3224, value1616, value1))
    (child3225 : Flapjack.WordAlloc.removeDeadStructural input3225 value1616 value1 value2 = (output3225, value1617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3226 value5 value1 value2 = (output3226, value1617, value1) := by
  rw [input3226_def, output3226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3224]
  try dsimp only
  rw [child3225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3224_skip, output3225_skip]
  kernel_rfl

theorem node3227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3227 value1617 value1 value2 = (output3227, value1618, value1) := by
  rw [input3227_def, output3227_def]
  kernel_rfl

theorem node3228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3228 value1618 value1 value2 = (output3228, value1618, value1) := by
  rw [input3228_def, output3228_def]
  kernel_rfl

theorem node3229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3229 value1618 value1 value2 = (output3229, value1619, value1) := by
  rw [input3229_def, output3229_def]
  kernel_rfl

theorem node3230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3230 value1619 value1 value2 = (output3230, value1620, value1) := by
  rw [input3230_def, output3230_def]
  kernel_rfl

theorem node3231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3231 value1620 value1 value2 = (output3231, value1621, value1) := by
  rw [input3231_def, output3231_def]
  kernel_rfl

theorem node3232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3232 value1621 value1 value2 = (output3232, value1622, value1) := by
  rw [input3232_def, output3232_def]
  kernel_rfl

theorem node3233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3233 value1622 value1 value2 = (output3233, value5, value1) := by
  rw [input3233_def, output3233_def]
  kernel_rfl

theorem node3234_cond_eq
    (child3232 : Flapjack.WordAlloc.removeDeadStructural input3232 value1621 value1 value2 = (output3232, value1622, value1))
    (child3233 : Flapjack.WordAlloc.removeDeadStructural input3233 value1622 value1 value2 = (output3233, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3234 value1621 value1 value2 = (output3234, value5, value1) := by
  rw [input3234_def, output3234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3232]
  try dsimp only
  rw [child3233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3232_skip, output3233_skip]
  kernel_rfl

theorem node3235_cond_eq
    (child3231 : Flapjack.WordAlloc.removeDeadStructural input3231 value1620 value1 value2 = (output3231, value1621, value1))
    (child3234 : Flapjack.WordAlloc.removeDeadStructural input3234 value1621 value1 value2 = (output3234, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3235 value1620 value1 value2 = (output3235, value5, value1) := by
  rw [input3235_def, output3235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3231]
  try dsimp only
  rw [child3234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3231_skip, output3234_skip]
  kernel_rfl

theorem node3236_cond_eq
    (child3230 : Flapjack.WordAlloc.removeDeadStructural input3230 value1619 value1 value2 = (output3230, value1620, value1))
    (child3235 : Flapjack.WordAlloc.removeDeadStructural input3235 value1620 value1 value2 = (output3235, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3236 value1619 value1 value2 = (output3236, value5, value1) := by
  rw [input3236_def, output3236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3230]
  try dsimp only
  rw [child3235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3230_skip, output3235_skip]
  kernel_rfl

theorem node3237_cond_eq
    (child3229 : Flapjack.WordAlloc.removeDeadStructural input3229 value1618 value1 value2 = (output3229, value1619, value1))
    (child3236 : Flapjack.WordAlloc.removeDeadStructural input3236 value1619 value1 value2 = (output3236, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3237 value1618 value1 value2 = (output3237, value5, value1) := by
  rw [input3237_def, output3237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3229]
  try dsimp only
  rw [child3236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3229_skip, output3236_skip]
  kernel_rfl

theorem node3238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3238 value5 value1 value2 = (output3238, value1623, value1) := by
  rw [input3238_def, output3238_def]
  kernel_rfl

theorem node3239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3239 value1623 value1 value2 = (output3239, value1624, value1) := by
  rw [input3239_def, output3239_def]
  kernel_rfl

theorem node3240_cond_eq
    (child3238 : Flapjack.WordAlloc.removeDeadStructural input3238 value5 value1 value2 = (output3238, value1623, value1))
    (child3239 : Flapjack.WordAlloc.removeDeadStructural input3239 value1623 value1 value2 = (output3239, value1624, value1)) : Flapjack.WordAlloc.removeDeadStructural input3240 value5 value1 value2 = (output3240, value1624, value1) := by
  rw [input3240_def, output3240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3238]
  try dsimp only
  rw [child3239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3238_skip, output3239_skip]
  kernel_rfl

theorem node3241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3241 value1624 value1 value2 = (output3241, value1625, value1) := by
  rw [input3241_def, output3241_def]
  kernel_rfl

theorem node3242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3242 value1625 value1 value2 = (output3242, value1625, value1) := by
  rw [input3242_def, output3242_def]
  kernel_rfl

theorem node3243_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3243 value1625 value1 value2 = (output3243, value1626, value1) := by
  rw [input3243_def, output3243_def]
  kernel_rfl

theorem node3244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3244 value1626 value1 value2 = (output3244, value1627, value1) := by
  rw [input3244_def, output3244_def]
  kernel_rfl

theorem node3245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3245 value1627 value1 value2 = (output3245, value1628, value1) := by
  rw [input3245_def, output3245_def]
  kernel_rfl

theorem node3246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3246 value1628 value1 value2 = (output3246, value1629, value1) := by
  rw [input3246_def, output3246_def]
  kernel_rfl

theorem node3247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3247 value1629 value1 value2 = (output3247, value5, value1) := by
  rw [input3247_def, output3247_def]
  kernel_rfl

theorem node3248_cond_eq
    (child3246 : Flapjack.WordAlloc.removeDeadStructural input3246 value1628 value1 value2 = (output3246, value1629, value1))
    (child3247 : Flapjack.WordAlloc.removeDeadStructural input3247 value1629 value1 value2 = (output3247, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3248 value1628 value1 value2 = (output3248, value5, value1) := by
  rw [input3248_def, output3248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3246]
  try dsimp only
  rw [child3247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3246_skip, output3247_skip]
  kernel_rfl

theorem node3249_cond_eq
    (child3245 : Flapjack.WordAlloc.removeDeadStructural input3245 value1627 value1 value2 = (output3245, value1628, value1))
    (child3248 : Flapjack.WordAlloc.removeDeadStructural input3248 value1628 value1 value2 = (output3248, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3249 value1627 value1 value2 = (output3249, value5, value1) := by
  rw [input3249_def, output3249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3245]
  try dsimp only
  rw [child3248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3245_skip, output3248_skip]
  kernel_rfl

theorem node3250_cond_eq
    (child3244 : Flapjack.WordAlloc.removeDeadStructural input3244 value1626 value1 value2 = (output3244, value1627, value1))
    (child3249 : Flapjack.WordAlloc.removeDeadStructural input3249 value1627 value1 value2 = (output3249, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3250 value1626 value1 value2 = (output3250, value5, value1) := by
  rw [input3250_def, output3250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3244]
  try dsimp only
  rw [child3249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3244_skip, output3249_skip]
  kernel_rfl

theorem node3251_cond_eq
    (child3243 : Flapjack.WordAlloc.removeDeadStructural input3243 value1625 value1 value2 = (output3243, value1626, value1))
    (child3250 : Flapjack.WordAlloc.removeDeadStructural input3250 value1626 value1 value2 = (output3250, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3251 value1625 value1 value2 = (output3251, value5, value1) := by
  rw [input3251_def, output3251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3243]
  try dsimp only
  rw [child3250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3243_skip, output3250_skip]
  kernel_rfl

theorem node3252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3252 value5 value1 value2 = (output3252, value1630, value1) := by
  rw [input3252_def, output3252_def]
  kernel_rfl

theorem node3253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3253 value1630 value1 value2 = (output3253, value1631, value1) := by
  rw [input3253_def, output3253_def]
  kernel_rfl

theorem node3254_cond_eq
    (child3252 : Flapjack.WordAlloc.removeDeadStructural input3252 value5 value1 value2 = (output3252, value1630, value1))
    (child3253 : Flapjack.WordAlloc.removeDeadStructural input3253 value1630 value1 value2 = (output3253, value1631, value1)) : Flapjack.WordAlloc.removeDeadStructural input3254 value5 value1 value2 = (output3254, value1631, value1) := by
  rw [input3254_def, output3254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3252]
  try dsimp only
  rw [child3253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3252_skip, output3253_skip]
  kernel_rfl

theorem node3255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3255 value1631 value1 value2 = (output3255, value1632, value1) := by
  rw [input3255_def, output3255_def]
  kernel_rfl

theorem node3256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3256 value1632 value1 value2 = (output3256, value1632, value1) := by
  rw [input3256_def, output3256_def]
  kernel_rfl

theorem node3257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3257 value1632 value1 value2 = (output3257, value1633, value1) := by
  rw [input3257_def, output3257_def]
  kernel_rfl

theorem node3258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3258 value1633 value1 value2 = (output3258, value1634, value1) := by
  rw [input3258_def, output3258_def]
  kernel_rfl

theorem node3259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3259 value1634 value1 value2 = (output3259, value1635, value1) := by
  rw [input3259_def, output3259_def]
  kernel_rfl

theorem node3260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3260 value1635 value1 value2 = (output3260, value1636, value1) := by
  rw [input3260_def, output3260_def]
  kernel_rfl

theorem node3261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3261 value1636 value1 value2 = (output3261, value5, value1) := by
  rw [input3261_def, output3261_def]
  kernel_rfl

theorem node3262_cond_eq
    (child3260 : Flapjack.WordAlloc.removeDeadStructural input3260 value1635 value1 value2 = (output3260, value1636, value1))
    (child3261 : Flapjack.WordAlloc.removeDeadStructural input3261 value1636 value1 value2 = (output3261, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3262 value1635 value1 value2 = (output3262, value5, value1) := by
  rw [input3262_def, output3262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3260]
  try dsimp only
  rw [child3261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3260_skip, output3261_skip]
  kernel_rfl

theorem node3263_cond_eq
    (child3259 : Flapjack.WordAlloc.removeDeadStructural input3259 value1634 value1 value2 = (output3259, value1635, value1))
    (child3262 : Flapjack.WordAlloc.removeDeadStructural input3262 value1635 value1 value2 = (output3262, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3263 value1634 value1 value2 = (output3263, value5, value1) := by
  rw [input3263_def, output3263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3259]
  try dsimp only
  rw [child3262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3259_skip, output3262_skip]
  kernel_rfl

theorem node3264_cond_eq
    (child3258 : Flapjack.WordAlloc.removeDeadStructural input3258 value1633 value1 value2 = (output3258, value1634, value1))
    (child3263 : Flapjack.WordAlloc.removeDeadStructural input3263 value1634 value1 value2 = (output3263, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3264 value1633 value1 value2 = (output3264, value5, value1) := by
  rw [input3264_def, output3264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3258]
  try dsimp only
  rw [child3263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3258_skip, output3263_skip]
  kernel_rfl

theorem node3265_cond_eq
    (child3257 : Flapjack.WordAlloc.removeDeadStructural input3257 value1632 value1 value2 = (output3257, value1633, value1))
    (child3264 : Flapjack.WordAlloc.removeDeadStructural input3264 value1633 value1 value2 = (output3264, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3265 value1632 value1 value2 = (output3265, value5, value1) := by
  rw [input3265_def, output3265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3257]
  try dsimp only
  rw [child3264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3257_skip, output3264_skip]
  kernel_rfl

theorem node3266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3266 value5 value1 value2 = (output3266, value1637, value1) := by
  rw [input3266_def, output3266_def]
  kernel_rfl

theorem node3267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3267 value1637 value1 value2 = (output3267, value1638, value1) := by
  rw [input3267_def, output3267_def]
  kernel_rfl

theorem node3268_cond_eq
    (child3266 : Flapjack.WordAlloc.removeDeadStructural input3266 value5 value1 value2 = (output3266, value1637, value1))
    (child3267 : Flapjack.WordAlloc.removeDeadStructural input3267 value1637 value1 value2 = (output3267, value1638, value1)) : Flapjack.WordAlloc.removeDeadStructural input3268 value5 value1 value2 = (output3268, value1638, value1) := by
  rw [input3268_def, output3268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3266]
  try dsimp only
  rw [child3267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3266_skip, output3267_skip]
  kernel_rfl

theorem node3269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3269 value1638 value1 value2 = (output3269, value1639, value1) := by
  rw [input3269_def, output3269_def]
  kernel_rfl

theorem node3270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3270 value1639 value1 value2 = (output3270, value1639, value1) := by
  rw [input3270_def, output3270_def]
  kernel_rfl

theorem node3271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3271 value1639 value1 value2 = (output3271, value1640, value1) := by
  rw [input3271_def, output3271_def]
  kernel_rfl

theorem node3272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3272 value1640 value1 value2 = (output3272, value1641, value1) := by
  rw [input3272_def, output3272_def]
  kernel_rfl

theorem node3273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3273 value1641 value1 value2 = (output3273, value1642, value1) := by
  rw [input3273_def, output3273_def]
  kernel_rfl

theorem node3274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3274 value1642 value1 value2 = (output3274, value1643, value1) := by
  rw [input3274_def, output3274_def]
  kernel_rfl

theorem node3275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3275 value1643 value1 value2 = (output3275, value5, value1) := by
  rw [input3275_def, output3275_def]
  kernel_rfl

theorem node3276_cond_eq
    (child3274 : Flapjack.WordAlloc.removeDeadStructural input3274 value1642 value1 value2 = (output3274, value1643, value1))
    (child3275 : Flapjack.WordAlloc.removeDeadStructural input3275 value1643 value1 value2 = (output3275, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3276 value1642 value1 value2 = (output3276, value5, value1) := by
  rw [input3276_def, output3276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3274]
  try dsimp only
  rw [child3275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3274_skip, output3275_skip]
  kernel_rfl

theorem node3277_cond_eq
    (child3273 : Flapjack.WordAlloc.removeDeadStructural input3273 value1641 value1 value2 = (output3273, value1642, value1))
    (child3276 : Flapjack.WordAlloc.removeDeadStructural input3276 value1642 value1 value2 = (output3276, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3277 value1641 value1 value2 = (output3277, value5, value1) := by
  rw [input3277_def, output3277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3273]
  try dsimp only
  rw [child3276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3273_skip, output3276_skip]
  kernel_rfl

theorem node3278_cond_eq
    (child3272 : Flapjack.WordAlloc.removeDeadStructural input3272 value1640 value1 value2 = (output3272, value1641, value1))
    (child3277 : Flapjack.WordAlloc.removeDeadStructural input3277 value1641 value1 value2 = (output3277, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3278 value1640 value1 value2 = (output3278, value5, value1) := by
  rw [input3278_def, output3278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3272]
  try dsimp only
  rw [child3277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3272_skip, output3277_skip]
  kernel_rfl

theorem node3279_cond_eq
    (child3271 : Flapjack.WordAlloc.removeDeadStructural input3271 value1639 value1 value2 = (output3271, value1640, value1))
    (child3278 : Flapjack.WordAlloc.removeDeadStructural input3278 value1640 value1 value2 = (output3278, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3279 value1639 value1 value2 = (output3279, value5, value1) := by
  rw [input3279_def, output3279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3271]
  try dsimp only
  rw [child3278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3271_skip, output3278_skip]
  kernel_rfl

theorem node3280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3280 value5 value1 value2 = (output3280, value1644, value1) := by
  rw [input3280_def, output3280_def]
  kernel_rfl

theorem node3281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3281 value1644 value1 value2 = (output3281, value1645, value1) := by
  rw [input3281_def, output3281_def]
  kernel_rfl

theorem node3282_cond_eq
    (child3280 : Flapjack.WordAlloc.removeDeadStructural input3280 value5 value1 value2 = (output3280, value1644, value1))
    (child3281 : Flapjack.WordAlloc.removeDeadStructural input3281 value1644 value1 value2 = (output3281, value1645, value1)) : Flapjack.WordAlloc.removeDeadStructural input3282 value5 value1 value2 = (output3282, value1645, value1) := by
  rw [input3282_def, output3282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3280]
  try dsimp only
  rw [child3281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3280_skip, output3281_skip]
  kernel_rfl

theorem node3283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3283 value1645 value1 value2 = (output3283, value1646, value1) := by
  rw [input3283_def, output3283_def]
  kernel_rfl

theorem node3284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3284 value1646 value1 value2 = (output3284, value1646, value1) := by
  rw [input3284_def, output3284_def]
  kernel_rfl

theorem node3285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3285 value1646 value1 value2 = (output3285, value1647, value1) := by
  rw [input3285_def, output3285_def]
  kernel_rfl

theorem node3286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3286 value1647 value1 value2 = (output3286, value1648, value1) := by
  rw [input3286_def, output3286_def]
  kernel_rfl

theorem node3287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3287 value1648 value1 value2 = (output3287, value1649, value1) := by
  rw [input3287_def, output3287_def]
  kernel_rfl

theorem node3288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3288 value1649 value1 value2 = (output3288, value1650, value1) := by
  rw [input3288_def, output3288_def]
  kernel_rfl

theorem node3289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3289 value1650 value1 value2 = (output3289, value5, value1) := by
  rw [input3289_def, output3289_def]
  kernel_rfl

theorem node3290_cond_eq
    (child3288 : Flapjack.WordAlloc.removeDeadStructural input3288 value1649 value1 value2 = (output3288, value1650, value1))
    (child3289 : Flapjack.WordAlloc.removeDeadStructural input3289 value1650 value1 value2 = (output3289, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3290 value1649 value1 value2 = (output3290, value5, value1) := by
  rw [input3290_def, output3290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3288]
  try dsimp only
  rw [child3289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3288_skip, output3289_skip]
  kernel_rfl

theorem node3291_cond_eq
    (child3287 : Flapjack.WordAlloc.removeDeadStructural input3287 value1648 value1 value2 = (output3287, value1649, value1))
    (child3290 : Flapjack.WordAlloc.removeDeadStructural input3290 value1649 value1 value2 = (output3290, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3291 value1648 value1 value2 = (output3291, value5, value1) := by
  rw [input3291_def, output3291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3287]
  try dsimp only
  rw [child3290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3287_skip, output3290_skip]
  kernel_rfl

theorem node3292_cond_eq
    (child3286 : Flapjack.WordAlloc.removeDeadStructural input3286 value1647 value1 value2 = (output3286, value1648, value1))
    (child3291 : Flapjack.WordAlloc.removeDeadStructural input3291 value1648 value1 value2 = (output3291, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3292 value1647 value1 value2 = (output3292, value5, value1) := by
  rw [input3292_def, output3292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3286]
  try dsimp only
  rw [child3291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3286_skip, output3291_skip]
  kernel_rfl

theorem node3293_cond_eq
    (child3285 : Flapjack.WordAlloc.removeDeadStructural input3285 value1646 value1 value2 = (output3285, value1647, value1))
    (child3292 : Flapjack.WordAlloc.removeDeadStructural input3292 value1647 value1 value2 = (output3292, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3293 value1646 value1 value2 = (output3293, value5, value1) := by
  rw [input3293_def, output3293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3285]
  try dsimp only
  rw [child3292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3285_skip, output3292_skip]
  kernel_rfl

theorem node3294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3294 value5 value1 value2 = (output3294, value1651, value1) := by
  rw [input3294_def, output3294_def]
  kernel_rfl

theorem node3295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3295 value1651 value1 value2 = (output3295, value1652, value1) := by
  rw [input3295_def, output3295_def]
  kernel_rfl

theorem node3296_cond_eq
    (child3294 : Flapjack.WordAlloc.removeDeadStructural input3294 value5 value1 value2 = (output3294, value1651, value1))
    (child3295 : Flapjack.WordAlloc.removeDeadStructural input3295 value1651 value1 value2 = (output3295, value1652, value1)) : Flapjack.WordAlloc.removeDeadStructural input3296 value5 value1 value2 = (output3296, value1652, value1) := by
  rw [input3296_def, output3296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3294]
  try dsimp only
  rw [child3295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3294_skip, output3295_skip]
  kernel_rfl

theorem node3297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3297 value1652 value1 value2 = (output3297, value1653, value1) := by
  rw [input3297_def, output3297_def]
  kernel_rfl

theorem node3298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3298 value1653 value1 value2 = (output3298, value1653, value1) := by
  rw [input3298_def, output3298_def]
  kernel_rfl

theorem node3299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3299 value1653 value1 value2 = (output3299, value1654, value1) := by
  rw [input3299_def, output3299_def]
  kernel_rfl

theorem node3300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3300 value1654 value1 value2 = (output3300, value1655, value1) := by
  rw [input3300_def, output3300_def]
  kernel_rfl

theorem node3301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3301 value1655 value1 value2 = (output3301, value1656, value1) := by
  rw [input3301_def, output3301_def]
  kernel_rfl

theorem node3302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3302 value1656 value1 value2 = (output3302, value1657, value1) := by
  rw [input3302_def, output3302_def]
  kernel_rfl

theorem node3303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3303 value1657 value1 value2 = (output3303, value5, value1) := by
  rw [input3303_def, output3303_def]
  kernel_rfl

theorem node3304_cond_eq
    (child3302 : Flapjack.WordAlloc.removeDeadStructural input3302 value1656 value1 value2 = (output3302, value1657, value1))
    (child3303 : Flapjack.WordAlloc.removeDeadStructural input3303 value1657 value1 value2 = (output3303, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3304 value1656 value1 value2 = (output3304, value5, value1) := by
  rw [input3304_def, output3304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3302]
  try dsimp only
  rw [child3303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3302_skip, output3303_skip]
  kernel_rfl

theorem node3305_cond_eq
    (child3301 : Flapjack.WordAlloc.removeDeadStructural input3301 value1655 value1 value2 = (output3301, value1656, value1))
    (child3304 : Flapjack.WordAlloc.removeDeadStructural input3304 value1656 value1 value2 = (output3304, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3305 value1655 value1 value2 = (output3305, value5, value1) := by
  rw [input3305_def, output3305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3301]
  try dsimp only
  rw [child3304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3301_skip, output3304_skip]
  kernel_rfl

theorem node3306_cond_eq
    (child3300 : Flapjack.WordAlloc.removeDeadStructural input3300 value1654 value1 value2 = (output3300, value1655, value1))
    (child3305 : Flapjack.WordAlloc.removeDeadStructural input3305 value1655 value1 value2 = (output3305, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3306 value1654 value1 value2 = (output3306, value5, value1) := by
  rw [input3306_def, output3306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3300]
  try dsimp only
  rw [child3305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3300_skip, output3305_skip]
  kernel_rfl

theorem node3307_cond_eq
    (child3299 : Flapjack.WordAlloc.removeDeadStructural input3299 value1653 value1 value2 = (output3299, value1654, value1))
    (child3306 : Flapjack.WordAlloc.removeDeadStructural input3306 value1654 value1 value2 = (output3306, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3307 value1653 value1 value2 = (output3307, value5, value1) := by
  rw [input3307_def, output3307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3299]
  try dsimp only
  rw [child3306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3299_skip, output3306_skip]
  kernel_rfl

theorem node3308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3308 value5 value1 value2 = (output3308, value1658, value1) := by
  rw [input3308_def, output3308_def]
  kernel_rfl

theorem node3309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3309 value1658 value1 value2 = (output3309, value1659, value1) := by
  rw [input3309_def, output3309_def]
  kernel_rfl

theorem node3310_cond_eq
    (child3308 : Flapjack.WordAlloc.removeDeadStructural input3308 value5 value1 value2 = (output3308, value1658, value1))
    (child3309 : Flapjack.WordAlloc.removeDeadStructural input3309 value1658 value1 value2 = (output3309, value1659, value1)) : Flapjack.WordAlloc.removeDeadStructural input3310 value5 value1 value2 = (output3310, value1659, value1) := by
  rw [input3310_def, output3310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3308]
  try dsimp only
  rw [child3309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3308_skip, output3309_skip]
  kernel_rfl

theorem node3311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3311 value1659 value1 value2 = (output3311, value1660, value1) := by
  rw [input3311_def, output3311_def]
  kernel_rfl

theorem node3312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3312 value1660 value1 value2 = (output3312, value1660, value1) := by
  rw [input3312_def, output3312_def]
  kernel_rfl

theorem node3313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3313 value1660 value1 value2 = (output3313, value1661, value1) := by
  rw [input3313_def, output3313_def]
  kernel_rfl

theorem node3314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3314 value1661 value1 value2 = (output3314, value1662, value1) := by
  rw [input3314_def, output3314_def]
  kernel_rfl

theorem node3315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3315 value1662 value1 value2 = (output3315, value1663, value1) := by
  rw [input3315_def, output3315_def]
  kernel_rfl

theorem node3316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3316 value1663 value1 value2 = (output3316, value1664, value1) := by
  rw [input3316_def, output3316_def]
  kernel_rfl

theorem node3317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3317 value1664 value1 value2 = (output3317, value5, value1) := by
  rw [input3317_def, output3317_def]
  kernel_rfl

theorem node3318_cond_eq
    (child3316 : Flapjack.WordAlloc.removeDeadStructural input3316 value1663 value1 value2 = (output3316, value1664, value1))
    (child3317 : Flapjack.WordAlloc.removeDeadStructural input3317 value1664 value1 value2 = (output3317, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3318 value1663 value1 value2 = (output3318, value5, value1) := by
  rw [input3318_def, output3318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3316]
  try dsimp only
  rw [child3317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3316_skip, output3317_skip]
  kernel_rfl

theorem node3319_cond_eq
    (child3315 : Flapjack.WordAlloc.removeDeadStructural input3315 value1662 value1 value2 = (output3315, value1663, value1))
    (child3318 : Flapjack.WordAlloc.removeDeadStructural input3318 value1663 value1 value2 = (output3318, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3319 value1662 value1 value2 = (output3319, value5, value1) := by
  rw [input3319_def, output3319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3315]
  try dsimp only
  rw [child3318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3315_skip, output3318_skip]
  kernel_rfl

theorem node3320_cond_eq
    (child3314 : Flapjack.WordAlloc.removeDeadStructural input3314 value1661 value1 value2 = (output3314, value1662, value1))
    (child3319 : Flapjack.WordAlloc.removeDeadStructural input3319 value1662 value1 value2 = (output3319, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3320 value1661 value1 value2 = (output3320, value5, value1) := by
  rw [input3320_def, output3320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3314]
  try dsimp only
  rw [child3319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3314_skip, output3319_skip]
  kernel_rfl

theorem node3321_cond_eq
    (child3313 : Flapjack.WordAlloc.removeDeadStructural input3313 value1660 value1 value2 = (output3313, value1661, value1))
    (child3320 : Flapjack.WordAlloc.removeDeadStructural input3320 value1661 value1 value2 = (output3320, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3321 value1660 value1 value2 = (output3321, value5, value1) := by
  rw [input3321_def, output3321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3313]
  try dsimp only
  rw [child3320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3313_skip, output3320_skip]
  kernel_rfl

theorem node3322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3322 value5 value1 value2 = (output3322, value1665, value1) := by
  rw [input3322_def, output3322_def]
  kernel_rfl

theorem node3323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3323 value1665 value1 value2 = (output3323, value1666, value1) := by
  rw [input3323_def, output3323_def]
  kernel_rfl

theorem node3324_cond_eq
    (child3322 : Flapjack.WordAlloc.removeDeadStructural input3322 value5 value1 value2 = (output3322, value1665, value1))
    (child3323 : Flapjack.WordAlloc.removeDeadStructural input3323 value1665 value1 value2 = (output3323, value1666, value1)) : Flapjack.WordAlloc.removeDeadStructural input3324 value5 value1 value2 = (output3324, value1666, value1) := by
  rw [input3324_def, output3324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3322]
  try dsimp only
  rw [child3323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3322_skip, output3323_skip]
  kernel_rfl

theorem node3325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3325 value1666 value1 value2 = (output3325, value1667, value1) := by
  rw [input3325_def, output3325_def]
  kernel_rfl

theorem node3326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3326 value1667 value1 value2 = (output3326, value1667, value1) := by
  rw [input3326_def, output3326_def]
  kernel_rfl

theorem node3327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3327 value1667 value1 value2 = (output3327, value1668, value1) := by
  rw [input3327_def, output3327_def]
  kernel_rfl

#print axioms node3327_cond_eq
end InitECandidate.Proofs.DeadStages240.Parallel
