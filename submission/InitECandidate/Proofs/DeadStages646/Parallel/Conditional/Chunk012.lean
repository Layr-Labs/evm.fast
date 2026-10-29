import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages646.Parallel.Data.Chunk012
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages646.Parallel
theorem node3072_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value371 value1 value2 = (output798, value372, value1))
    (child3071 : Flapjack.WordAlloc.removeDeadStructural input3071 value372 value1 value2 = (output3071, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3072 value371 value1 value2 = (output3072, value1482, value1) := by
  rw [input3072_def, output3072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child3071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output3071_skip]
  kernel_rfl

theorem node3073_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value368 value1 value2 = (output797, value371, value1))
    (child3072 : Flapjack.WordAlloc.removeDeadStructural input3072 value371 value1 value2 = (output3072, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3073 value368 value1 value2 = (output3073, value1482, value1) := by
  rw [input3073_def, output3073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  try dsimp only
  rw [child3072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output3072_skip]
  kernel_rfl

theorem node3074_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value367 value1 value2 = (output792, value368, value1))
    (child3073 : Flapjack.WordAlloc.removeDeadStructural input3073 value368 value1 value2 = (output3073, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3074 value367 value1 value2 = (output3074, value1482, value1) := by
  rw [input3074_def, output3074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child3073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output3073_skip]
  kernel_rfl

theorem node3075_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value362 value1 value2 = (output791, value367, value1))
    (child3074 : Flapjack.WordAlloc.removeDeadStructural input3074 value367 value1 value2 = (output3074, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3075 value362 value1 value2 = (output3075, value1482, value1) := by
  rw [input3075_def, output3075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child3074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output3074_skip]
  kernel_rfl

theorem node3076_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value361 value1 value2 = (output782, value362, value1))
    (child3075 : Flapjack.WordAlloc.removeDeadStructural input3075 value362 value1 value2 = (output3075, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3076 value361 value1 value2 = (output3076, value1482, value1) := by
  rw [input3076_def, output3076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child3075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output3075_skip]
  kernel_rfl

theorem node3077_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value357 value1 value2 = (output781, value361, value1))
    (child3076 : Flapjack.WordAlloc.removeDeadStructural input3076 value361 value1 value2 = (output3076, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3077 value357 value1 value2 = (output3077, value1482, value1) := by
  rw [input3077_def, output3077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child3076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output3076_skip]
  kernel_rfl

theorem node3078_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value356 value1 value2 = (output774, value357, value1))
    (child3077 : Flapjack.WordAlloc.removeDeadStructural input3077 value357 value1 value2 = (output3077, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3078 value356 value1 value2 = (output3078, value1482, value1) := by
  rw [input3078_def, output3078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child3077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output3077_skip]
  kernel_rfl

theorem node3079_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value355 value1 value2 = (output773, value356, value1))
    (child3078 : Flapjack.WordAlloc.removeDeadStructural input3078 value356 value1 value2 = (output3078, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3079 value355 value1 value2 = (output3079, value1482, value1) := by
  rw [input3079_def, output3079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child3078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output3078_skip]
  kernel_rfl

theorem node3080_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value354 value1 value2 = (output772, value355, value1))
    (child3079 : Flapjack.WordAlloc.removeDeadStructural input3079 value355 value1 value2 = (output3079, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3080 value354 value1 value2 = (output3080, value1482, value1) := by
  rw [input3080_def, output3080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child772]
  try dsimp only
  rw [child3079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output3079_skip]
  kernel_rfl

theorem node3081_cond_eq
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value351 value1 value2 = (output771, value354, value1))
    (child3080 : Flapjack.WordAlloc.removeDeadStructural input3080 value354 value1 value2 = (output3080, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3081 value351 value1 value2 = (output3081, value1482, value1) := by
  rw [input3081_def, output3081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child771]
  try dsimp only
  rw [child3080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output771_skip, output3080_skip]
  kernel_rfl

theorem node3082_cond_eq
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value350 value1 value2 = (output766, value351, value1))
    (child3081 : Flapjack.WordAlloc.removeDeadStructural input3081 value351 value1 value2 = (output3081, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3082 value350 value1 value2 = (output3082, value1482, value1) := by
  rw [input3082_def, output3082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child766]
  try dsimp only
  rw [child3081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output766_skip, output3081_skip]
  kernel_rfl

theorem node3083_cond_eq
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value345 value1 value2 = (output765, value350, value1))
    (child3082 : Flapjack.WordAlloc.removeDeadStructural input3082 value350 value1 value2 = (output3082, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3083 value345 value1 value2 = (output3083, value1482, value1) := by
  rw [input3083_def, output3083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child765]
  try dsimp only
  rw [child3082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output765_skip, output3082_skip]
  kernel_rfl

theorem node3084_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value344 value1 value2 = (output756, value345, value1))
    (child3083 : Flapjack.WordAlloc.removeDeadStructural input3083 value345 value1 value2 = (output3083, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3084 value344 value1 value2 = (output3084, value1482, value1) := by
  rw [input3084_def, output3084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child3083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output3083_skip]
  kernel_rfl

theorem node3085_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value340 value1 value2 = (output755, value344, value1))
    (child3084 : Flapjack.WordAlloc.removeDeadStructural input3084 value344 value1 value2 = (output3084, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3085 value340 value1 value2 = (output3085, value1482, value1) := by
  rw [input3085_def, output3085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child3084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output3084_skip]
  kernel_rfl

theorem node3086_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value339 value1 value2 = (output748, value340, value1))
    (child3085 : Flapjack.WordAlloc.removeDeadStructural input3085 value340 value1 value2 = (output3085, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3086 value339 value1 value2 = (output3086, value1482, value1) := by
  rw [input3086_def, output3086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  try dsimp only
  rw [child3085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output3085_skip]
  kernel_rfl

theorem node3087_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value336 value1 value2 = (output747, value339, value1))
    (child3086 : Flapjack.WordAlloc.removeDeadStructural input3086 value339 value1 value2 = (output3086, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3087 value336 value1 value2 = (output3087, value1482, value1) := by
  rw [input3087_def, output3087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  try dsimp only
  rw [child3086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output3086_skip]
  kernel_rfl

theorem node3088_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value333 value1 value2 = (output742, value336, value1))
    (child3087 : Flapjack.WordAlloc.removeDeadStructural input3087 value336 value1 value2 = (output3087, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3088 value333 value1 value2 = (output3088, value1482, value1) := by
  rw [input3088_def, output3088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child3087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output742_skip, output3087_skip]
  kernel_rfl

theorem node3089_cond_eq
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value329 value1 value2 = (output737, value333, value1))
    (child3088 : Flapjack.WordAlloc.removeDeadStructural input3088 value333 value1 value2 = (output3088, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3089 value329 value1 value2 = (output3089, value1482, value1) := by
  rw [input3089_def, output3089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child737]
  try dsimp only
  rw [child3088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output737_skip, output3088_skip]
  kernel_rfl

theorem node3090_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value329 value1 value2 = (output730, value329, value1))
    (child3089 : Flapjack.WordAlloc.removeDeadStructural input3089 value329 value1 value2 = (output3089, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3090 value329 value1 value2 = (output3090, value1482, value1) := by
  rw [input3090_def, output3090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child3089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output730_skip, output3089_skip]
  kernel_rfl

theorem node3091_cond_eq
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value329 value1 value2 = (output729, value329, value1))
    (child3090 : Flapjack.WordAlloc.removeDeadStructural input3090 value329 value1 value2 = (output3090, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3091 value329 value1 value2 = (output3091, value1482, value1) := by
  rw [input3091_def, output3091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child729]
  try dsimp only
  rw [child3090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output729_skip, output3090_skip]
  kernel_rfl

theorem node3092_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value328 value1 value2 = (output728, value329, value1))
    (child3091 : Flapjack.WordAlloc.removeDeadStructural input3091 value329 value1 value2 = (output3091, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3092 value328 value1 value2 = (output3092, value1482, value1) := by
  rw [input3092_def, output3092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child3091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output3091_skip]
  kernel_rfl

theorem node3093_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value327 value1 value2 = (output727, value328, value1))
    (child3092 : Flapjack.WordAlloc.removeDeadStructural input3092 value328 value1 value2 = (output3092, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3093 value327 value1 value2 = (output3093, value1482, value1) := by
  rw [input3093_def, output3093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  try dsimp only
  rw [child3092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output727_skip, output3092_skip]
  kernel_rfl

theorem node3094_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value324 value1 value2 = (output726, value327, value1))
    (child3093 : Flapjack.WordAlloc.removeDeadStructural input3093 value327 value1 value2 = (output3093, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3094 value324 value1 value2 = (output3094, value1482, value1) := by
  rw [input3094_def, output3094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child3093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output3093_skip]
  kernel_rfl

theorem node3095_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value323 value1 value2 = (output721, value324, value1))
    (child3094 : Flapjack.WordAlloc.removeDeadStructural input3094 value324 value1 value2 = (output3094, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3095 value323 value1 value2 = (output3095, value1482, value1) := by
  rw [input3095_def, output3095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child3094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output3094_skip]
  kernel_rfl

theorem node3096_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value320 value1 value2 = (output720, value323, value1))
    (child3095 : Flapjack.WordAlloc.removeDeadStructural input3095 value323 value1 value2 = (output3095, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3096 value320 value1 value2 = (output3096, value1482, value1) := by
  rw [input3096_def, output3096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child3095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output3095_skip]
  kernel_rfl

theorem node3097_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value319 value1 value2 = (output715, value320, value1))
    (child3096 : Flapjack.WordAlloc.removeDeadStructural input3096 value320 value1 value2 = (output3096, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3097 value319 value1 value2 = (output3097, value1482, value1) := by
  rw [input3097_def, output3097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child3096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output3096_skip]
  kernel_rfl

theorem node3098_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value317 value1 value2 = (output714, value319, value1))
    (child3097 : Flapjack.WordAlloc.removeDeadStructural input3097 value319 value1 value2 = (output3097, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3098 value317 value1 value2 = (output3098, value1482, value1) := by
  rw [input3098_def, output3098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child3097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output714_skip, output3097_skip]
  kernel_rfl

theorem node3099_cond_eq
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value316 value1 value2 = (output711, value317, value1))
    (child3098 : Flapjack.WordAlloc.removeDeadStructural input3098 value317 value1 value2 = (output3098, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3099 value316 value1 value2 = (output3099, value1482, value1) := by
  rw [input3099_def, output3099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child711]
  try dsimp only
  rw [child3098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output711_skip, output3098_skip]
  kernel_rfl

theorem node3100_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value315 value1 value2 = (output710, value316, value1))
    (child3099 : Flapjack.WordAlloc.removeDeadStructural input3099 value316 value1 value2 = (output3099, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3100 value315 value1 value2 = (output3100, value1482, value1) := by
  rw [input3100_def, output3100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  try dsimp only
  rw [child3099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output710_skip, output3099_skip]
  kernel_rfl

theorem node3101_cond_eq
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value314 value1 value2 = (output709, value315, value1))
    (child3100 : Flapjack.WordAlloc.removeDeadStructural input3100 value315 value1 value2 = (output3100, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3101 value314 value1 value2 = (output3101, value1482, value1) := by
  rw [input3101_def, output3101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child709]
  try dsimp only
  rw [child3100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output709_skip, output3100_skip]
  kernel_rfl

theorem node3102_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value311 value1 value2 = (output708, value314, value1))
    (child3101 : Flapjack.WordAlloc.removeDeadStructural input3101 value314 value1 value2 = (output3101, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3102 value311 value1 value2 = (output3102, value1482, value1) := by
  rw [input3102_def, output3102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child3101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output3101_skip]
  kernel_rfl

theorem node3103_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value310 value1 value2 = (output703, value311, value1))
    (child3102 : Flapjack.WordAlloc.removeDeadStructural input3102 value311 value1 value2 = (output3102, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3103 value310 value1 value2 = (output3103, value1482, value1) := by
  rw [input3103_def, output3103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child3102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output3102_skip]
  kernel_rfl

theorem node3104_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value305 value1 value2 = (output702, value310, value1))
    (child3103 : Flapjack.WordAlloc.removeDeadStructural input3103 value310 value1 value2 = (output3103, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3104 value305 value1 value2 = (output3104, value1482, value1) := by
  rw [input3104_def, output3104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  try dsimp only
  rw [child3103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output702_skip, output3103_skip]
  kernel_rfl

theorem node3105_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value304 value1 value2 = (output693, value305, value1))
    (child3104 : Flapjack.WordAlloc.removeDeadStructural input3104 value305 value1 value2 = (output3104, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3105 value304 value1 value2 = (output3105, value1482, value1) := by
  rw [input3105_def, output3105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  try dsimp only
  rw [child3104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output693_skip, output3104_skip]
  kernel_rfl

theorem node3106_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value300 value1 value2 = (output692, value304, value1))
    (child3105 : Flapjack.WordAlloc.removeDeadStructural input3105 value304 value1 value2 = (output3105, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3106 value300 value1 value2 = (output3106, value1482, value1) := by
  rw [input3106_def, output3106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child3105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output3105_skip]
  kernel_rfl

theorem node3107_cond_eq
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value299 value1 value2 = (output685, value300, value1))
    (child3106 : Flapjack.WordAlloc.removeDeadStructural input3106 value300 value1 value2 = (output3106, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3107 value299 value1 value2 = (output3107, value1482, value1) := by
  rw [input3107_def, output3107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child685]
  try dsimp only
  rw [child3106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output685_skip, output3106_skip]
  kernel_rfl

theorem node3108_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value296 value1 value2 = (output684, value299, value1))
    (child3107 : Flapjack.WordAlloc.removeDeadStructural input3107 value299 value1 value2 = (output3107, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3108 value296 value1 value2 = (output3108, value1482, value1) := by
  rw [input3108_def, output3108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child3107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output3107_skip]
  kernel_rfl

theorem node3109_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value293 value1 value2 = (output679, value296, value1))
    (child3108 : Flapjack.WordAlloc.removeDeadStructural input3108 value296 value1 value2 = (output3108, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3109 value293 value1 value2 = (output3109, value1482, value1) := by
  rw [input3109_def, output3109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child3108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output679_skip, output3108_skip]
  kernel_rfl

theorem node3110_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value289 value1 value2 = (output674, value293, value1))
    (child3109 : Flapjack.WordAlloc.removeDeadStructural input3109 value293 value1 value2 = (output3109, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3110 value289 value1 value2 = (output3110, value1482, value1) := by
  rw [input3110_def, output3110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child3109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output3109_skip]
  kernel_rfl

theorem node3111_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value289 value1 value2 = (output667, value289, value1))
    (child3110 : Flapjack.WordAlloc.removeDeadStructural input3110 value289 value1 value2 = (output3110, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3111 value289 value1 value2 = (output3111, value1482, value1) := by
  rw [input3111_def, output3111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child3110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output3110_skip]
  kernel_rfl

theorem node3112_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value289 value1 value2 = (output666, value289, value1))
    (child3111 : Flapjack.WordAlloc.removeDeadStructural input3111 value289 value1 value2 = (output3111, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3112 value289 value1 value2 = (output3112, value1482, value1) := by
  rw [input3112_def, output3112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child3111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output3111_skip]
  kernel_rfl

theorem node3113_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value288 value1 value2 = (output665, value289, value1))
    (child3112 : Flapjack.WordAlloc.removeDeadStructural input3112 value289 value1 value2 = (output3112, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3113 value288 value1 value2 = (output3113, value1482, value1) := by
  rw [input3113_def, output3113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child3112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output3112_skip]
  kernel_rfl

theorem node3114_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value287 value1 value2 = (output664, value288, value1))
    (child3113 : Flapjack.WordAlloc.removeDeadStructural input3113 value288 value1 value2 = (output3113, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3114 value287 value1 value2 = (output3114, value1482, value1) := by
  rw [input3114_def, output3114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child3113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output3113_skip]
  kernel_rfl

theorem node3115_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value284 value1 value2 = (output663, value287, value1))
    (child3114 : Flapjack.WordAlloc.removeDeadStructural input3114 value287 value1 value2 = (output3114, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3115 value284 value1 value2 = (output3115, value1482, value1) := by
  rw [input3115_def, output3115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child3114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output3114_skip]
  kernel_rfl

theorem node3116_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value283 value1 value2 = (output658, value284, value1))
    (child3115 : Flapjack.WordAlloc.removeDeadStructural input3115 value284 value1 value2 = (output3115, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3116 value283 value1 value2 = (output3116, value1482, value1) := by
  rw [input3116_def, output3116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child3115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output3115_skip]
  kernel_rfl

theorem node3117_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value280 value1 value2 = (output657, value283, value1))
    (child3116 : Flapjack.WordAlloc.removeDeadStructural input3116 value283 value1 value2 = (output3116, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3117 value280 value1 value2 = (output3117, value1482, value1) := by
  rw [input3117_def, output3117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child3116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output3116_skip]
  kernel_rfl

theorem node3118_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value279 value1 value2 = (output652, value280, value1))
    (child3117 : Flapjack.WordAlloc.removeDeadStructural input3117 value280 value1 value2 = (output3117, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3118 value279 value1 value2 = (output3118, value1482, value1) := by
  rw [input3118_def, output3118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child3117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output3117_skip]
  kernel_rfl

theorem node3119_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value277 value1 value2 = (output651, value279, value1))
    (child3118 : Flapjack.WordAlloc.removeDeadStructural input3118 value279 value1 value2 = (output3118, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3119 value277 value1 value2 = (output3119, value1482, value1) := by
  rw [input3119_def, output3119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child3118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output3118_skip]
  kernel_rfl

theorem node3120_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value276 value1 value2 = (output648, value277, value1))
    (child3119 : Flapjack.WordAlloc.removeDeadStructural input3119 value277 value1 value2 = (output3119, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3120 value276 value1 value2 = (output3120, value1482, value1) := by
  rw [input3120_def, output3120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child3119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output3119_skip]
  kernel_rfl

theorem node3121_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value273 value1 value2 = (output647, value276, value1))
    (child3120 : Flapjack.WordAlloc.removeDeadStructural input3120 value276 value1 value2 = (output3120, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3121 value273 value1 value2 = (output3121, value1482, value1) := by
  rw [input3121_def, output3121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child3120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output3120_skip]
  kernel_rfl

theorem node3122_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value270 value1 value2 = (output642, value273, value1))
    (child3121 : Flapjack.WordAlloc.removeDeadStructural input3121 value273 value1 value2 = (output3121, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3122 value270 value1 value2 = (output3122, value1482, value1) := by
  rw [input3122_def, output3122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  try dsimp only
  rw [child3121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output642_skip, output3121_skip]
  kernel_rfl

theorem node3123_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value266 value1 value2 = (output637, value270, value1))
    (child3122 : Flapjack.WordAlloc.removeDeadStructural input3122 value270 value1 value2 = (output3122, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3123 value266 value1 value2 = (output3123, value1482, value1) := by
  rw [input3123_def, output3123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child3122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output3122_skip]
  kernel_rfl

theorem node3124_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value265 value1 value2 = (output630, value266, value1))
    (child3123 : Flapjack.WordAlloc.removeDeadStructural input3123 value266 value1 value2 = (output3123, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3124 value265 value1 value2 = (output3124, value1482, value1) := by
  rw [input3124_def, output3124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child3123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output3123_skip]
  kernel_rfl

theorem node3125_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value264 value1 value2 = (output629, value265, value1))
    (child3124 : Flapjack.WordAlloc.removeDeadStructural input3124 value265 value1 value2 = (output3124, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3125 value264 value1 value2 = (output3125, value1482, value1) := by
  rw [input3125_def, output3125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child3124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output3124_skip]
  kernel_rfl

theorem node3126_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value263 value1 value2 = (output628, value264, value1))
    (child3125 : Flapjack.WordAlloc.removeDeadStructural input3125 value264 value1 value2 = (output3125, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3126 value263 value1 value2 = (output3126, value1482, value1) := by
  rw [input3126_def, output3126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child3125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output3125_skip]
  kernel_rfl

theorem node3127_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value250 value1 value2 = (output627, value263, value1))
    (child3126 : Flapjack.WordAlloc.removeDeadStructural input3126 value263 value1 value2 = (output3126, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3127 value250 value1 value2 = (output3127, value1482, value1) := by
  rw [input3127_def, output3127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child3126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output3126_skip]
  kernel_rfl

theorem node3128_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value237 value1 value2 = (output602, value250, value1))
    (child3127 : Flapjack.WordAlloc.removeDeadStructural input3127 value250 value1 value2 = (output3127, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3128 value237 value1 value2 = (output3128, value1482, value1) := by
  rw [input3128_def, output3128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child3127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output3127_skip]
  kernel_rfl

theorem node3129_cond_eq
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value226 value1 value2 = (output577, value237, value1))
    (child3128 : Flapjack.WordAlloc.removeDeadStructural input3128 value237 value1 value2 = (output3128, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3129 value226 value1 value2 = (output3129, value1482, value1) := by
  rw [input3129_def, output3129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child577]
  try dsimp only
  rw [child3128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output577_skip, output3128_skip]
  kernel_rfl

theorem node3130_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value209 value1 value2 = (output556, value226, value1))
    (child3129 : Flapjack.WordAlloc.removeDeadStructural input3129 value226 value1 value2 = (output3129, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3130 value209 value1 value2 = (output3130, value1482, value1) := by
  rw [input3130_def, output3130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child3129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output3129_skip]
  kernel_rfl

theorem node3131_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value194 value1 value2 = (output523, value209, value1))
    (child3130 : Flapjack.WordAlloc.removeDeadStructural input3130 value209 value1 value2 = (output3130, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3131 value194 value1 value2 = (output3131, value1482, value1) := by
  rw [input3131_def, output3131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child3130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output3130_skip]
  kernel_rfl

theorem node3132_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value179 value1 value2 = (output494, value194, value1))
    (child3131 : Flapjack.WordAlloc.removeDeadStructural input3131 value194 value1 value2 = (output3131, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3132 value179 value1 value2 = (output3132, value1482, value1) := by
  rw [input3132_def, output3132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child3131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output3131_skip]
  kernel_rfl

theorem node3133_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value162 value1 value2 = (output465, value179, value1))
    (child3132 : Flapjack.WordAlloc.removeDeadStructural input3132 value179 value1 value2 = (output3132, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3133 value162 value1 value2 = (output3133, value1482, value1) := by
  rw [input3133_def, output3133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child3132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output3132_skip]
  kernel_rfl

theorem node3134_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value145 value1 value2 = (output432, value162, value1))
    (child3133 : Flapjack.WordAlloc.removeDeadStructural input3133 value162 value1 value2 = (output3133, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3134 value145 value1 value2 = (output3134, value1482, value1) := by
  rw [input3134_def, output3134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child3133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output3133_skip]
  kernel_rfl

theorem node3135_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value142 value1 value2 = (output399, value145, value1))
    (child3134 : Flapjack.WordAlloc.removeDeadStructural input3134 value145 value1 value2 = (output3134, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3135 value142 value1 value2 = (output3135, value1482, value1) := by
  rw [input3135_def, output3135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child3134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output3134_skip]
  kernel_rfl

theorem node3136_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value140 value1 value2 = (output394, value142, value1))
    (child3135 : Flapjack.WordAlloc.removeDeadStructural input3135 value142 value1 value2 = (output3135, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3136 value140 value1 value2 = (output3136, value1482, value1) := by
  rw [input3136_def, output3136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child3135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output3135_skip]
  kernel_rfl

theorem node3137_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value137 value1 value2 = (output391, value140, value1))
    (child3136 : Flapjack.WordAlloc.removeDeadStructural input3136 value140 value1 value2 = (output3136, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3137 value137 value1 value2 = (output3137, value1482, value1) := by
  rw [input3137_def, output3137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child3136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output3136_skip]
  kernel_rfl

theorem node3138_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value134 value1 value2 = (output386, value137, value1))
    (child3137 : Flapjack.WordAlloc.removeDeadStructural input3137 value137 value1 value2 = (output3137, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3138 value134 value1 value2 = (output3138, value1482, value1) := by
  rw [input3138_def, output3138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child3137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output3137_skip]
  kernel_rfl

theorem node3139_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value132 value1 value2 = (output381, value134, value1))
    (child3138 : Flapjack.WordAlloc.removeDeadStructural input3138 value134 value1 value2 = (output3138, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3139 value132 value1 value2 = (output3139, value1482, value1) := by
  rw [input3139_def, output3139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child3138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output3138_skip]
  kernel_rfl

theorem node3140_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value129 value1 value2 = (output378, value132, value1))
    (child3139 : Flapjack.WordAlloc.removeDeadStructural input3139 value132 value1 value2 = (output3139, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3140 value129 value1 value2 = (output3140, value1482, value1) := by
  rw [input3140_def, output3140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child3139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output3139_skip]
  kernel_rfl

theorem node3141_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value126 value1 value2 = (output373, value129, value1))
    (child3140 : Flapjack.WordAlloc.removeDeadStructural input3140 value129 value1 value2 = (output3140, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3141 value126 value1 value2 = (output3141, value1482, value1) := by
  rw [input3141_def, output3141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child3140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output3140_skip]
  kernel_rfl

theorem node3142_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value124 value1 value2 = (output368, value126, value1))
    (child3141 : Flapjack.WordAlloc.removeDeadStructural input3141 value126 value1 value2 = (output3141, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3142 value124 value1 value2 = (output3142, value1482, value1) := by
  rw [input3142_def, output3142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child3141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output3141_skip]
  kernel_rfl

theorem node3143_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value121 value1 value2 = (output365, value124, value1))
    (child3142 : Flapjack.WordAlloc.removeDeadStructural input3142 value124 value1 value2 = (output3142, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3143 value121 value1 value2 = (output3143, value1482, value1) := by
  rw [input3143_def, output3143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child3142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output3142_skip]
  kernel_rfl

theorem node3144_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value118 value1 value2 = (output360, value121, value1))
    (child3143 : Flapjack.WordAlloc.removeDeadStructural input3143 value121 value1 value2 = (output3143, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3144 value118 value1 value2 = (output3144, value1482, value1) := by
  rw [input3144_def, output3144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child3143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output3143_skip]
  kernel_rfl

theorem node3145_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value116 value1 value2 = (output355, value118, value1))
    (child3144 : Flapjack.WordAlloc.removeDeadStructural input3144 value118 value1 value2 = (output3144, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3145 value116 value1 value2 = (output3145, value1482, value1) := by
  rw [input3145_def, output3145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child3144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output3144_skip]
  kernel_rfl

theorem node3146_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value113 value1 value2 = (output352, value116, value1))
    (child3145 : Flapjack.WordAlloc.removeDeadStructural input3145 value116 value1 value2 = (output3145, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3146 value113 value1 value2 = (output3146, value1482, value1) := by
  rw [input3146_def, output3146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child3145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output3145_skip]
  kernel_rfl

theorem node3147_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value110 value1 value2 = (output347, value113, value1))
    (child3146 : Flapjack.WordAlloc.removeDeadStructural input3146 value113 value1 value2 = (output3146, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3147 value110 value1 value2 = (output3147, value1482, value1) := by
  rw [input3147_def, output3147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child3146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output3146_skip]
  kernel_rfl

theorem node3148_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value108 value1 value2 = (output342, value110, value1))
    (child3147 : Flapjack.WordAlloc.removeDeadStructural input3147 value110 value1 value2 = (output3147, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3148 value108 value1 value2 = (output3148, value1482, value1) := by
  rw [input3148_def, output3148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child3147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output3147_skip]
  kernel_rfl

theorem node3149_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value105 value1 value2 = (output339, value108, value1))
    (child3148 : Flapjack.WordAlloc.removeDeadStructural input3148 value108 value1 value2 = (output3148, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3149 value105 value1 value2 = (output3149, value1482, value1) := by
  rw [input3149_def, output3149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child3148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output3148_skip]
  kernel_rfl

theorem node3150_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value102 value1 value2 = (output334, value105, value1))
    (child3149 : Flapjack.WordAlloc.removeDeadStructural input3149 value105 value1 value2 = (output3149, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3150 value102 value1 value2 = (output3150, value1482, value1) := by
  rw [input3150_def, output3150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child3149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output3149_skip]
  kernel_rfl

theorem node3151_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value100 value1 value2 = (output329, value102, value1))
    (child3150 : Flapjack.WordAlloc.removeDeadStructural input3150 value102 value1 value2 = (output3150, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3151 value100 value1 value2 = (output3151, value1482, value1) := by
  rw [input3151_def, output3151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child3150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output3150_skip]
  kernel_rfl

theorem node3152_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value97 value1 value2 = (output326, value100, value1))
    (child3151 : Flapjack.WordAlloc.removeDeadStructural input3151 value100 value1 value2 = (output3151, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3152 value97 value1 value2 = (output3152, value1482, value1) := by
  rw [input3152_def, output3152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child3151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output3151_skip]
  kernel_rfl

theorem node3153_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value94 value1 value2 = (output321, value97, value1))
    (child3152 : Flapjack.WordAlloc.removeDeadStructural input3152 value97 value1 value2 = (output3152, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3153 value94 value1 value2 = (output3153, value1482, value1) := by
  rw [input3153_def, output3153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child3152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output3152_skip]
  kernel_rfl

theorem node3154_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value92 value1 value2 = (output316, value94, value1))
    (child3153 : Flapjack.WordAlloc.removeDeadStructural input3153 value94 value1 value2 = (output3153, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3154 value92 value1 value2 = (output3154, value1482, value1) := by
  rw [input3154_def, output3154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child3153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output3153_skip]
  kernel_rfl

theorem node3155_cond_eq
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value89 value1 value2 = (output313, value92, value1))
    (child3154 : Flapjack.WordAlloc.removeDeadStructural input3154 value92 value1 value2 = (output3154, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3155 value89 value1 value2 = (output3155, value1482, value1) := by
  rw [input3155_def, output3155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child313]
  try dsimp only
  rw [child3154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output313_skip, output3154_skip]
  kernel_rfl

theorem node3156_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value86 value1 value2 = (output308, value89, value1))
    (child3155 : Flapjack.WordAlloc.removeDeadStructural input3155 value89 value1 value2 = (output3155, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3156 value86 value1 value2 = (output3156, value1482, value1) := by
  rw [input3156_def, output3156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child3155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output3155_skip]
  kernel_rfl

theorem node3157_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value84 value1 value2 = (output303, value86, value1))
    (child3156 : Flapjack.WordAlloc.removeDeadStructural input3156 value86 value1 value2 = (output3156, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3157 value84 value1 value2 = (output3157, value1482, value1) := by
  rw [input3157_def, output3157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child3156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output3156_skip]
  kernel_rfl

theorem node3158_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value80 value1 value2 = (output300, value84, value1))
    (child3157 : Flapjack.WordAlloc.removeDeadStructural input3157 value84 value1 value2 = (output3157, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3158 value80 value1 value2 = (output3158, value1482, value1) := by
  rw [input3158_def, output3158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child3157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output3157_skip]
  kernel_rfl

theorem node3159_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value76 value1 value2 = (output293, value80, value1))
    (child3158 : Flapjack.WordAlloc.removeDeadStructural input3158 value80 value1 value2 = (output3158, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3159 value76 value1 value2 = (output3159, value1482, value1) := by
  rw [input3159_def, output3159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child3158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output3158_skip]
  kernel_rfl

theorem node3160_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value72 value1 value2 = (output286, value76, value1))
    (child3159 : Flapjack.WordAlloc.removeDeadStructural input3159 value76 value1 value2 = (output3159, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3160 value72 value1 value2 = (output3160, value1482, value1) := by
  rw [input3160_def, output3160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child3159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output3159_skip]
  kernel_rfl

theorem node3161_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value68 value1 value2 = (output279, value72, value1))
    (child3160 : Flapjack.WordAlloc.removeDeadStructural input3160 value72 value1 value2 = (output3160, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3161 value68 value1 value2 = (output3161, value1482, value1) := by
  rw [input3161_def, output3161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child3160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output3160_skip]
  kernel_rfl

theorem node3162_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value68 value1 value2 = (output272, value68, value1))
    (child3161 : Flapjack.WordAlloc.removeDeadStructural input3161 value68 value1 value2 = (output3161, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3162 value68 value1 value2 = (output3162, value1482, value1) := by
  rw [input3162_def, output3162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child3161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output3161_skip]
  kernel_rfl

theorem node3163_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value43 value1 value2 = (output271, value68, value1))
    (child3162 : Flapjack.WordAlloc.removeDeadStructural input3162 value68 value1 value2 = (output3162, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3163 value43 value1 value2 = (output3163, value1482, value1) := by
  rw [input3163_def, output3163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child3162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output3162_skip]
  kernel_rfl

theorem node3164_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value43 value1 value2 = (output155, value43, value1))
    (child3163 : Flapjack.WordAlloc.removeDeadStructural input3163 value43 value1 value2 = (output3163, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3164 value43 value1 value2 = (output3164, value1482, value1) := by
  rw [input3164_def, output3164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child3163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output3163_skip]
  kernel_rfl

theorem node3165_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value43 value1 value2 = (output154, value43, value1))
    (child3164 : Flapjack.WordAlloc.removeDeadStructural input3164 value43 value1 value2 = (output3164, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3165 value43 value1 value2 = (output3165, value1482, value1) := by
  rw [input3165_def, output3165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child3164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output3164_skip]
  kernel_rfl

theorem node3166_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value8 value1 value2 = (output153, value43, value1))
    (child3165 : Flapjack.WordAlloc.removeDeadStructural input3165 value43 value1 value2 = (output3165, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3166 value8 value1 value2 = (output3166, value1482, value1) := by
  rw [input3166_def, output3166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child3165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output3165_skip]
  kernel_rfl

theorem node3167_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value8 value1 value2 = (output7, value8, value1))
    (child3166 : Flapjack.WordAlloc.removeDeadStructural input3166 value8 value1 value2 = (output3166, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3167 value8 value1 value2 = (output3167, value1482, value1) := by
  rw [input3167_def, output3167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child3166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output3166_skip]
  kernel_rfl

theorem node3168_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value7 value1 value2 = (output6, value8, value1))
    (child3167 : Flapjack.WordAlloc.removeDeadStructural input3167 value8 value1 value2 = (output3167, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3168 value7 value1 value2 = (output3168, value1482, value1) := by
  rw [input3168_def, output3168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child3167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output3167_skip]
  kernel_rfl

theorem node3169_cond_eq
    (child5 : Flapjack.WordAlloc.removeDeadStructural input5 value6 value1 value2 = (output5, value7, value1))
    (child3168 : Flapjack.WordAlloc.removeDeadStructural input3168 value7 value1 value2 = (output3168, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3169 value6 value1 value2 = (output3169, value1482, value1) := by
  rw [input3169_def, output3169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5]
  try dsimp only
  rw [child3168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5_skip, output3168_skip]
  kernel_rfl

theorem node3170_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value6, value1))
    (child3169 : Flapjack.WordAlloc.removeDeadStructural input3169 value6 value1 value2 = (output3169, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3170 value5 value1 value2 = (output3170, value1482, value1) := by
  rw [input3170_def, output3170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child3169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output3169_skip]
  kernel_rfl

theorem node3171_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child3170 : Flapjack.WordAlloc.removeDeadStructural input3170 value5 value1 value2 = (output3170, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3171 value4 value1 value2 = (output3171, value1482, value1) := by
  rw [input3171_def, output3171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child3170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output3170_skip]
  kernel_rfl

theorem node3172_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child3171 : Flapjack.WordAlloc.removeDeadStructural input3171 value4 value1 value2 = (output3171, value1482, value1)) : Flapjack.WordAlloc.removeDeadStructural input3172 value0 value1 value2 = (output3172, value1482, value1) := by
  rw [input3172_def, output3172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child3171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output3171_skip]
  kernel_rfl

theorem node3173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3173 value1482 value1 value2 = (output3173, value1483, value1) := by
  rw [input3173_def, output3173_def]
  kernel_rfl

theorem node3174_cond_eq
    (child3172 : Flapjack.WordAlloc.removeDeadStructural input3172 value0 value1 value2 = (output3172, value1482, value1))
    (child3173 : Flapjack.WordAlloc.removeDeadStructural input3173 value1482 value1 value2 = (output3173, value1483, value1)) : Flapjack.WordAlloc.removeDeadStructural input3174 value0 value1 value2 = (output3174, value1483, value1) := by
  rw [input3174_def, output3174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3172]
  try dsimp only
  rw [child3173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3172_skip, output3173_skip]
  kernel_rfl

#print axioms node3174_cond_eq
end InitECandidate.Proofs.DeadStages646.Parallel
