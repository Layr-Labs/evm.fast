import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk013
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages875.Parallel
theorem node3328_cond_eq
    (child2668 : Flapjack.WordAlloc.removeDeadStructural input2668 value901 value1 value2 = (output2668, value902, value1))
    (child3327 : Flapjack.WordAlloc.removeDeadStructural input3327 value902 value1 value2 = (output3327, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3328 value901 value1 value2 = (output3328, value1161, value1) := by
  rw [input3328_def, output3328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2668]
  try dsimp only
  rw [child3327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2668_skip, output3327_skip]
  kernel_rfl

theorem node3329_cond_eq
    (child2667 : Flapjack.WordAlloc.removeDeadStructural input2667 value900 value1 value2 = (output2667, value901, value1))
    (child3328 : Flapjack.WordAlloc.removeDeadStructural input3328 value901 value1 value2 = (output3328, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3329 value900 value1 value2 = (output3329, value1161, value1) := by
  rw [input3329_def, output3329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2667]
  try dsimp only
  rw [child3328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2667_skip, output3328_skip]
  kernel_rfl

theorem node3330_cond_eq
    (child2666 : Flapjack.WordAlloc.removeDeadStructural input2666 value897 value1 value2 = (output2666, value900, value1))
    (child3329 : Flapjack.WordAlloc.removeDeadStructural input3329 value900 value1 value2 = (output3329, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3330 value897 value1 value2 = (output3330, value1161, value1) := by
  rw [input3330_def, output3330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2666]
  try dsimp only
  rw [child3329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2666_skip, output3329_skip]
  kernel_rfl

theorem node3331_cond_eq
    (child2661 : Flapjack.WordAlloc.removeDeadStructural input2661 value897 value1 value2 = (output2661, value897, value1))
    (child3330 : Flapjack.WordAlloc.removeDeadStructural input3330 value897 value1 value2 = (output3330, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3331 value897 value1 value2 = (output3331, value1161, value1) := by
  rw [input3331_def, output3331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2661]
  try dsimp only
  rw [child3330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2661_skip, output3330_skip]
  kernel_rfl

theorem node3332_cond_eq
    (child2660 : Flapjack.WordAlloc.removeDeadStructural input2660 value894 value1 value2 = (output2660, value897, value1))
    (child3331 : Flapjack.WordAlloc.removeDeadStructural input3331 value897 value1 value2 = (output3331, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3332 value894 value1 value2 = (output3332, value1161, value1) := by
  rw [input3332_def, output3332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2660]
  try dsimp only
  rw [child3331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2660_skip, output3331_skip]
  kernel_rfl

theorem node3333_cond_eq
    (child2659 : Flapjack.WordAlloc.removeDeadStructural input2659 value896 value1 value2 = (output2659, value894, value1))
    (child3332 : Flapjack.WordAlloc.removeDeadStructural input3332 value894 value1 value2 = (output3332, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3333 value896 value1 value2 = (output3333, value1161, value1) := by
  rw [input3333_def, output3333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2659]
  try dsimp only
  rw [child3332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2659_skip, output3332_skip]
  kernel_rfl

theorem node3334_cond_eq
    (child2658 : Flapjack.WordAlloc.removeDeadStructural input2658 value890 value1 value2 = (output2658, value896, value1))
    (child3333 : Flapjack.WordAlloc.removeDeadStructural input3333 value896 value1 value2 = (output3333, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3334 value890 value1 value2 = (output3334, value1161, value1) := by
  rw [input3334_def, output3334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2658]
  try dsimp only
  rw [child3333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2658_skip, output3333_skip]
  kernel_rfl

theorem node3335_cond_eq
    (child2631 : Flapjack.WordAlloc.removeDeadStructural input2631 value890 value1 value2 = (output2631, value890, value1))
    (child3334 : Flapjack.WordAlloc.removeDeadStructural input3334 value890 value1 value2 = (output3334, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3335 value890 value1 value2 = (output3335, value1161, value1) := by
  rw [input3335_def, output3335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2631]
  try dsimp only
  rw [child3334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2631_skip, output3334_skip]
  kernel_rfl

theorem node3336_cond_eq
    (child2630 : Flapjack.WordAlloc.removeDeadStructural input2630 value887 value1 value2 = (output2630, value890, value1))
    (child3335 : Flapjack.WordAlloc.removeDeadStructural input3335 value890 value1 value2 = (output3335, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3336 value887 value1 value2 = (output3336, value1161, value1) := by
  rw [input3336_def, output3336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2630]
  try dsimp only
  rw [child3335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2630_skip, output3335_skip]
  kernel_rfl

theorem node3337_cond_eq
    (child2625 : Flapjack.WordAlloc.removeDeadStructural input2625 value884 value1 value2 = (output2625, value887, value1))
    (child3336 : Flapjack.WordAlloc.removeDeadStructural input3336 value887 value1 value2 = (output3336, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3337 value884 value1 value2 = (output3337, value1161, value1) := by
  rw [input3337_def, output3337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2625]
  try dsimp only
  rw [child3336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2625_skip, output3336_skip]
  kernel_rfl

theorem node3338_cond_eq
    (child2620 : Flapjack.WordAlloc.removeDeadStructural input2620 value884 value1 value2 = (output2620, value884, value1))
    (child3337 : Flapjack.WordAlloc.removeDeadStructural input3337 value884 value1 value2 = (output3337, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3338 value884 value1 value2 = (output3338, value1161, value1) := by
  rw [input3338_def, output3338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2620]
  try dsimp only
  rw [child3337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2620_skip, output3337_skip]
  kernel_rfl

theorem node3339_cond_eq
    (child2619 : Flapjack.WordAlloc.removeDeadStructural input2619 value876 value1 value2 = (output2619, value884, value1))
    (child3338 : Flapjack.WordAlloc.removeDeadStructural input3338 value884 value1 value2 = (output3338, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3339 value876 value1 value2 = (output3339, value1161, value1) := by
  rw [input3339_def, output3339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2619]
  try dsimp only
  rw [child3338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2619_skip, output3338_skip]
  kernel_rfl

theorem node3340_cond_eq
    (child2618 : Flapjack.WordAlloc.removeDeadStructural input2618 value879 value1 value2 = (output2618, value876, value1))
    (child3339 : Flapjack.WordAlloc.removeDeadStructural input3339 value876 value1 value2 = (output3339, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3340 value879 value1 value2 = (output3340, value1161, value1) := by
  rw [input3340_def, output3340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2618]
  try dsimp only
  rw [child3339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2618_skip, output3339_skip]
  kernel_rfl

theorem node3341_cond_eq
    (child2609 : Flapjack.WordAlloc.removeDeadStructural input2609 value878 value1 value2 = (output2609, value879, value1))
    (child3340 : Flapjack.WordAlloc.removeDeadStructural input3340 value879 value1 value2 = (output3340, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3341 value878 value1 value2 = (output3341, value1161, value1) := by
  rw [input3341_def, output3341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2609]
  try dsimp only
  rw [child3340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2609_skip, output3340_skip]
  kernel_rfl

theorem node3342_cond_eq
    (child2608 : Flapjack.WordAlloc.removeDeadStructural input2608 value876 value1 value2 = (output2608, value878, value1))
    (child3341 : Flapjack.WordAlloc.removeDeadStructural input3341 value878 value1 value2 = (output3341, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3342 value876 value1 value2 = (output3342, value1161, value1) := by
  rw [input3342_def, output3342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2608]
  try dsimp only
  rw [child3341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2608_skip, output3341_skip]
  kernel_rfl

theorem node3343_cond_eq
    (child2605 : Flapjack.WordAlloc.removeDeadStructural input2605 value875 value1 value2 = (output2605, value876, value1))
    (child3342 : Flapjack.WordAlloc.removeDeadStructural input3342 value876 value1 value2 = (output3342, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3343 value875 value1 value2 = (output3343, value1161, value1) := by
  rw [input3343_def, output3343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2605]
  try dsimp only
  rw [child3342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2605_skip, output3342_skip]
  kernel_rfl

theorem node3344_cond_eq
    (child2604 : Flapjack.WordAlloc.removeDeadStructural input2604 value874 value1 value2 = (output2604, value875, value1))
    (child3343 : Flapjack.WordAlloc.removeDeadStructural input3343 value875 value1 value2 = (output3343, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3344 value874 value1 value2 = (output3344, value1161, value1) := by
  rw [input3344_def, output3344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2604]
  try dsimp only
  rw [child3343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2604_skip, output3343_skip]
  kernel_rfl

theorem node3345_cond_eq
    (child2603 : Flapjack.WordAlloc.removeDeadStructural input2603 value874 value1 value2 = (output2603, value874, value1))
    (child3344 : Flapjack.WordAlloc.removeDeadStructural input3344 value874 value1 value2 = (output3344, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3345 value874 value1 value2 = (output3345, value1161, value1) := by
  rw [input3345_def, output3345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2603]
  try dsimp only
  rw [child3344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2603_skip, output3344_skip]
  kernel_rfl

theorem node3346_cond_eq
    (child2602 : Flapjack.WordAlloc.removeDeadStructural input2602 value839 value1 value2 = (output2602, value874, value1))
    (child3345 : Flapjack.WordAlloc.removeDeadStructural input3345 value874 value1 value2 = (output3345, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3346 value839 value1 value2 = (output3346, value1161, value1) := by
  rw [input3346_def, output3346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2602]
  try dsimp only
  rw [child3345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2602_skip, output3345_skip]
  kernel_rfl

theorem node3347_cond_eq
    (child2484 : Flapjack.WordAlloc.removeDeadStructural input2484 value839 value1 value2 = (output2484, value839, value1))
    (child3346 : Flapjack.WordAlloc.removeDeadStructural input3346 value839 value1 value2 = (output3346, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3347 value839 value1 value2 = (output3347, value1161, value1) := by
  rw [input3347_def, output3347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2484]
  try dsimp only
  rw [child3346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2484_skip, output3346_skip]
  kernel_rfl

theorem node3348_cond_eq
    (child2483 : Flapjack.WordAlloc.removeDeadStructural input2483 value838 value1 value2 = (output2483, value839, value1))
    (child3347 : Flapjack.WordAlloc.removeDeadStructural input3347 value839 value1 value2 = (output3347, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3348 value838 value1 value2 = (output3348, value1161, value1) := by
  rw [input3348_def, output3348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2483]
  try dsimp only
  rw [child3347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2483_skip, output3347_skip]
  kernel_rfl

theorem node3349_cond_eq
    (child2482 : Flapjack.WordAlloc.removeDeadStructural input2482 value837 value1 value2 = (output2482, value838, value1))
    (child3348 : Flapjack.WordAlloc.removeDeadStructural input3348 value838 value1 value2 = (output3348, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3349 value837 value1 value2 = (output3349, value1161, value1) := by
  rw [input3349_def, output3349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2482]
  try dsimp only
  rw [child3348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2482_skip, output3348_skip]
  kernel_rfl

theorem node3350_cond_eq
    (child2481 : Flapjack.WordAlloc.removeDeadStructural input2481 value834 value1 value2 = (output2481, value837, value1))
    (child3349 : Flapjack.WordAlloc.removeDeadStructural input3349 value837 value1 value2 = (output3349, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3350 value834 value1 value2 = (output3350, value1161, value1) := by
  rw [input3350_def, output3350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2481]
  try dsimp only
  rw [child3349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2481_skip, output3349_skip]
  kernel_rfl

theorem node3351_cond_eq
    (child2476 : Flapjack.WordAlloc.removeDeadStructural input2476 value832 value1 value2 = (output2476, value834, value1))
    (child3350 : Flapjack.WordAlloc.removeDeadStructural input3350 value834 value1 value2 = (output3350, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3351 value832 value1 value2 = (output3351, value1161, value1) := by
  rw [input3351_def, output3351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2476]
  try dsimp only
  rw [child3350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2476_skip, output3350_skip]
  kernel_rfl

theorem node3352_cond_eq
    (child2473 : Flapjack.WordAlloc.removeDeadStructural input2473 value829 value1 value2 = (output2473, value832, value1))
    (child3351 : Flapjack.WordAlloc.removeDeadStructural input3351 value832 value1 value2 = (output3351, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3352 value829 value1 value2 = (output3352, value1161, value1) := by
  rw [input3352_def, output3352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2473]
  try dsimp only
  rw [child3351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2473_skip, output3351_skip]
  kernel_rfl

theorem node3353_cond_eq
    (child2468 : Flapjack.WordAlloc.removeDeadStructural input2468 value829 value1 value2 = (output2468, value829, value1))
    (child3352 : Flapjack.WordAlloc.removeDeadStructural input3352 value829 value1 value2 = (output3352, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3353 value829 value1 value2 = (output3353, value1161, value1) := by
  rw [input3353_def, output3353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2468]
  try dsimp only
  rw [child3352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2468_skip, output3352_skip]
  kernel_rfl

theorem node3354_cond_eq
    (child2467 : Flapjack.WordAlloc.removeDeadStructural input2467 value828 value1 value2 = (output2467, value829, value1))
    (child3353 : Flapjack.WordAlloc.removeDeadStructural input3353 value829 value1 value2 = (output3353, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3354 value828 value1 value2 = (output3354, value1161, value1) := by
  rw [input3354_def, output3354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2467]
  try dsimp only
  rw [child3353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2467_skip, output3353_skip]
  kernel_rfl

theorem node3355_cond_eq
    (child2466 : Flapjack.WordAlloc.removeDeadStructural input2466 value827 value1 value2 = (output2466, value828, value1))
    (child3354 : Flapjack.WordAlloc.removeDeadStructural input3354 value828 value1 value2 = (output3354, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3355 value827 value1 value2 = (output3355, value1161, value1) := by
  rw [input3355_def, output3355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2466]
  try dsimp only
  rw [child3354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2466_skip, output3354_skip]
  kernel_rfl

theorem node3356_cond_eq
    (child2465 : Flapjack.WordAlloc.removeDeadStructural input2465 value827 value1 value2 = (output2465, value827, value1))
    (child3355 : Flapjack.WordAlloc.removeDeadStructural input3355 value827 value1 value2 = (output3355, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3356 value827 value1 value2 = (output3356, value1161, value1) := by
  rw [input3356_def, output3356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2465]
  try dsimp only
  rw [child3355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2465_skip, output3355_skip]
  kernel_rfl

theorem node3357_cond_eq
    (child2464 : Flapjack.WordAlloc.removeDeadStructural input2464 value759 value1 value2 = (output2464, value827, value1))
    (child3356 : Flapjack.WordAlloc.removeDeadStructural input3356 value827 value1 value2 = (output3356, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3357 value759 value1 value2 = (output3357, value1161, value1) := by
  rw [input3357_def, output3357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2464]
  try dsimp only
  rw [child3356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2464_skip, output3356_skip]
  kernel_rfl

theorem node3358_cond_eq
    (child2223 : Flapjack.WordAlloc.removeDeadStructural input2223 value759 value1 value2 = (output2223, value759, value1))
    (child3357 : Flapjack.WordAlloc.removeDeadStructural input3357 value759 value1 value2 = (output3357, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3358 value759 value1 value2 = (output3358, value1161, value1) := by
  rw [input3358_def, output3358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2223]
  try dsimp only
  rw [child3357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2223_skip, output3357_skip]
  kernel_rfl

theorem node3359_cond_eq
    (child2222 : Flapjack.WordAlloc.removeDeadStructural input2222 value757 value1 value2 = (output2222, value759, value1))
    (child3358 : Flapjack.WordAlloc.removeDeadStructural input3358 value759 value1 value2 = (output3358, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3359 value757 value1 value2 = (output3359, value1161, value1) := by
  rw [input3359_def, output3359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2222]
  try dsimp only
  rw [child3358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2222_skip, output3358_skip]
  kernel_rfl

theorem node3360_cond_eq
    (child2219 : Flapjack.WordAlloc.removeDeadStructural input2219 value756 value1 value2 = (output2219, value757, value1))
    (child3359 : Flapjack.WordAlloc.removeDeadStructural input3359 value757 value1 value2 = (output3359, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3360 value756 value1 value2 = (output3360, value1161, value1) := by
  rw [input3360_def, output3360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2219]
  try dsimp only
  rw [child3359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2219_skip, output3359_skip]
  kernel_rfl

theorem node3361_cond_eq
    (child2218 : Flapjack.WordAlloc.removeDeadStructural input2218 value755 value1 value2 = (output2218, value756, value1))
    (child3360 : Flapjack.WordAlloc.removeDeadStructural input3360 value756 value1 value2 = (output3360, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3361 value755 value1 value2 = (output3361, value1161, value1) := by
  rw [input3361_def, output3361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2218]
  try dsimp only
  rw [child3360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2218_skip, output3360_skip]
  kernel_rfl

theorem node3362_cond_eq
    (child2217 : Flapjack.WordAlloc.removeDeadStructural input2217 value753 value1 value2 = (output2217, value755, value1))
    (child3361 : Flapjack.WordAlloc.removeDeadStructural input3361 value755 value1 value2 = (output3361, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3362 value753 value1 value2 = (output3362, value1161, value1) := by
  rw [input3362_def, output3362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2217]
  try dsimp only
  rw [child3361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2217_skip, output3361_skip]
  kernel_rfl

theorem node3363_cond_eq
    (child2214 : Flapjack.WordAlloc.removeDeadStructural input2214 value751 value1 value2 = (output2214, value753, value1))
    (child3362 : Flapjack.WordAlloc.removeDeadStructural input3362 value753 value1 value2 = (output3362, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3363 value751 value1 value2 = (output3363, value1161, value1) := by
  rw [input3363_def, output3363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2214]
  try dsimp only
  rw [child3362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2214_skip, output3362_skip]
  kernel_rfl

theorem node3364_cond_eq
    (child2211 : Flapjack.WordAlloc.removeDeadStructural input2211 value749 value1 value2 = (output2211, value751, value1))
    (child3363 : Flapjack.WordAlloc.removeDeadStructural input3363 value751 value1 value2 = (output3363, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3364 value749 value1 value2 = (output3364, value1161, value1) := by
  rw [input3364_def, output3364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2211]
  try dsimp only
  rw [child3363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2211_skip, output3363_skip]
  kernel_rfl

theorem node3365_cond_eq
    (child2208 : Flapjack.WordAlloc.removeDeadStructural input2208 value748 value1 value2 = (output2208, value749, value1))
    (child3364 : Flapjack.WordAlloc.removeDeadStructural input3364 value749 value1 value2 = (output3364, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3365 value748 value1 value2 = (output3365, value1161, value1) := by
  rw [input3365_def, output3365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2208]
  try dsimp only
  rw [child3364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2208_skip, output3364_skip]
  kernel_rfl

theorem node3366_cond_eq
    (child2207 : Flapjack.WordAlloc.removeDeadStructural input2207 value746 value1 value2 = (output2207, value748, value1))
    (child3365 : Flapjack.WordAlloc.removeDeadStructural input3365 value748 value1 value2 = (output3365, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3366 value746 value1 value2 = (output3366, value1161, value1) := by
  rw [input3366_def, output3366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2207]
  try dsimp only
  rw [child3365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2207_skip, output3365_skip]
  kernel_rfl

theorem node3367_cond_eq
    (child2204 : Flapjack.WordAlloc.removeDeadStructural input2204 value744 value1 value2 = (output2204, value746, value1))
    (child3366 : Flapjack.WordAlloc.removeDeadStructural input3366 value746 value1 value2 = (output3366, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3367 value744 value1 value2 = (output3367, value1161, value1) := by
  rw [input3367_def, output3367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2204]
  try dsimp only
  rw [child3366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2204_skip, output3366_skip]
  kernel_rfl

theorem node3368_cond_eq
    (child2201 : Flapjack.WordAlloc.removeDeadStructural input2201 value743 value1 value2 = (output2201, value744, value1))
    (child3367 : Flapjack.WordAlloc.removeDeadStructural input3367 value744 value1 value2 = (output3367, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3368 value743 value1 value2 = (output3368, value1161, value1) := by
  rw [input3368_def, output3368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2201]
  try dsimp only
  rw [child3367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2201_skip, output3367_skip]
  kernel_rfl

theorem node3369_cond_eq
    (child2200 : Flapjack.WordAlloc.removeDeadStructural input2200 value742 value1 value2 = (output2200, value743, value1))
    (child3368 : Flapjack.WordAlloc.removeDeadStructural input3368 value743 value1 value2 = (output3368, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3369 value742 value1 value2 = (output3369, value1161, value1) := by
  rw [input3369_def, output3369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2200]
  try dsimp only
  rw [child3368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2200_skip, output3368_skip]
  kernel_rfl

theorem node3370_cond_eq
    (child2199 : Flapjack.WordAlloc.removeDeadStructural input2199 value740 value1 value2 = (output2199, value742, value1))
    (child3369 : Flapjack.WordAlloc.removeDeadStructural input3369 value742 value1 value2 = (output3369, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3370 value740 value1 value2 = (output3370, value1161, value1) := by
  rw [input3370_def, output3370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2199]
  try dsimp only
  rw [child3369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2199_skip, output3369_skip]
  kernel_rfl

theorem node3371_cond_eq
    (child2196 : Flapjack.WordAlloc.removeDeadStructural input2196 value738 value1 value2 = (output2196, value740, value1))
    (child3370 : Flapjack.WordAlloc.removeDeadStructural input3370 value740 value1 value2 = (output3370, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3371 value738 value1 value2 = (output3371, value1161, value1) := by
  rw [input3371_def, output3371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2196]
  try dsimp only
  rw [child3370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2196_skip, output3370_skip]
  kernel_rfl

theorem node3372_cond_eq
    (child2193 : Flapjack.WordAlloc.removeDeadStructural input2193 value737 value1 value2 = (output2193, value738, value1))
    (child3371 : Flapjack.WordAlloc.removeDeadStructural input3371 value738 value1 value2 = (output3371, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3372 value737 value1 value2 = (output3372, value1161, value1) := by
  rw [input3372_def, output3372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2193]
  try dsimp only
  rw [child3371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2193_skip, output3371_skip]
  kernel_rfl

theorem node3373_cond_eq
    (child2192 : Flapjack.WordAlloc.removeDeadStructural input2192 value736 value1 value2 = (output2192, value737, value1))
    (child3372 : Flapjack.WordAlloc.removeDeadStructural input3372 value737 value1 value2 = (output3372, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3373 value736 value1 value2 = (output3373, value1161, value1) := by
  rw [input3373_def, output3373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2192]
  try dsimp only
  rw [child3372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2192_skip, output3372_skip]
  kernel_rfl

theorem node3374_cond_eq
    (child2191 : Flapjack.WordAlloc.removeDeadStructural input2191 value734 value1 value2 = (output2191, value736, value1))
    (child3373 : Flapjack.WordAlloc.removeDeadStructural input3373 value736 value1 value2 = (output3373, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3374 value734 value1 value2 = (output3374, value1161, value1) := by
  rw [input3374_def, output3374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2191]
  try dsimp only
  rw [child3373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2191_skip, output3373_skip]
  kernel_rfl

theorem node3375_cond_eq
    (child2188 : Flapjack.WordAlloc.removeDeadStructural input2188 value733 value1 value2 = (output2188, value734, value1))
    (child3374 : Flapjack.WordAlloc.removeDeadStructural input3374 value734 value1 value2 = (output3374, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3375 value733 value1 value2 = (output3375, value1161, value1) := by
  rw [input3375_def, output3375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2188]
  try dsimp only
  rw [child3374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2188_skip, output3374_skip]
  kernel_rfl

theorem node3376_cond_eq
    (child2187 : Flapjack.WordAlloc.removeDeadStructural input2187 value730 value1 value2 = (output2187, value733, value1))
    (child3375 : Flapjack.WordAlloc.removeDeadStructural input3375 value733 value1 value2 = (output3375, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3376 value730 value1 value2 = (output3376, value1161, value1) := by
  rw [input3376_def, output3376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2187]
  try dsimp only
  rw [child3375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2187_skip, output3375_skip]
  kernel_rfl

theorem node3377_cond_eq
    (child2182 : Flapjack.WordAlloc.removeDeadStructural input2182 value730 value1 value2 = (output2182, value730, value1))
    (child3376 : Flapjack.WordAlloc.removeDeadStructural input3376 value730 value1 value2 = (output3376, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3377 value730 value1 value2 = (output3377, value1161, value1) := by
  rw [input3377_def, output3377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2182]
  try dsimp only
  rw [child3376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2182_skip, output3376_skip]
  kernel_rfl

theorem node3378_cond_eq
    (child2181 : Flapjack.WordAlloc.removeDeadStructural input2181 value727 value1 value2 = (output2181, value730, value1))
    (child3377 : Flapjack.WordAlloc.removeDeadStructural input3377 value730 value1 value2 = (output3377, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3378 value727 value1 value2 = (output3378, value1161, value1) := by
  rw [input3378_def, output3378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2181]
  try dsimp only
  rw [child3377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2181_skip, output3377_skip]
  kernel_rfl

theorem node3379_cond_eq
    (child2180 : Flapjack.WordAlloc.removeDeadStructural input2180 value729 value1 value2 = (output2180, value727, value1))
    (child3378 : Flapjack.WordAlloc.removeDeadStructural input3378 value727 value1 value2 = (output3378, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3379 value729 value1 value2 = (output3379, value1161, value1) := by
  rw [input3379_def, output3379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2180]
  try dsimp only
  rw [child3378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2180_skip, output3378_skip]
  kernel_rfl

theorem node3380_cond_eq
    (child2179 : Flapjack.WordAlloc.removeDeadStructural input2179 value712 value1 value2 = (output2179, value729, value1))
    (child3379 : Flapjack.WordAlloc.removeDeadStructural input3379 value729 value1 value2 = (output3379, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3380 value712 value1 value2 = (output3380, value1161, value1) := by
  rw [input3380_def, output3380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2179]
  try dsimp only
  rw [child3379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2179_skip, output3379_skip]
  kernel_rfl

theorem node3381_cond_eq
    (child2128 : Flapjack.WordAlloc.removeDeadStructural input2128 value712 value1 value2 = (output2128, value712, value1))
    (child3380 : Flapjack.WordAlloc.removeDeadStructural input3380 value712 value1 value2 = (output3380, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3381 value712 value1 value2 = (output3381, value1161, value1) := by
  rw [input3381_def, output3381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2128]
  try dsimp only
  rw [child3380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2128_skip, output3380_skip]
  kernel_rfl

theorem node3382_cond_eq
    (child2127 : Flapjack.WordAlloc.removeDeadStructural input2127 value711 value1 value2 = (output2127, value712, value1))
    (child3381 : Flapjack.WordAlloc.removeDeadStructural input3381 value712 value1 value2 = (output3381, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3382 value711 value1 value2 = (output3382, value1161, value1) := by
  rw [input3382_def, output3382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2127]
  try dsimp only
  rw [child3381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2127_skip, output3381_skip]
  kernel_rfl

theorem node3383_cond_eq
    (child2126 : Flapjack.WordAlloc.removeDeadStructural input2126 value708 value1 value2 = (output2126, value711, value1))
    (child3382 : Flapjack.WordAlloc.removeDeadStructural input3382 value711 value1 value2 = (output3382, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3383 value708 value1 value2 = (output3383, value1161, value1) := by
  rw [input3383_def, output3383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2126]
  try dsimp only
  rw [child3382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2126_skip, output3382_skip]
  kernel_rfl

theorem node3384_cond_eq
    (child2121 : Flapjack.WordAlloc.removeDeadStructural input2121 value708 value1 value2 = (output2121, value708, value1))
    (child3383 : Flapjack.WordAlloc.removeDeadStructural input3383 value708 value1 value2 = (output3383, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3384 value708 value1 value2 = (output3384, value1161, value1) := by
  rw [input3384_def, output3384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2121]
  try dsimp only
  rw [child3383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2121_skip, output3383_skip]
  kernel_rfl

theorem node3385_cond_eq
    (child2120 : Flapjack.WordAlloc.removeDeadStructural input2120 value705 value1 value2 = (output2120, value708, value1))
    (child3384 : Flapjack.WordAlloc.removeDeadStructural input3384 value708 value1 value2 = (output3384, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3385 value705 value1 value2 = (output3385, value1161, value1) := by
  rw [input3385_def, output3385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2120]
  try dsimp only
  rw [child3384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2120_skip, output3384_skip]
  kernel_rfl

theorem node3386_cond_eq
    (child2119 : Flapjack.WordAlloc.removeDeadStructural input2119 value707 value1 value2 = (output2119, value705, value1))
    (child3385 : Flapjack.WordAlloc.removeDeadStructural input3385 value705 value1 value2 = (output3385, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3386 value707 value1 value2 = (output3386, value1161, value1) := by
  rw [input3386_def, output3386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2119]
  try dsimp only
  rw [child3385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2119_skip, output3385_skip]
  kernel_rfl

theorem node3387_cond_eq
    (child2118 : Flapjack.WordAlloc.removeDeadStructural input2118 value690 value1 value2 = (output2118, value707, value1))
    (child3386 : Flapjack.WordAlloc.removeDeadStructural input3386 value707 value1 value2 = (output3386, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3387 value690 value1 value2 = (output3387, value1161, value1) := by
  rw [input3387_def, output3387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2118]
  try dsimp only
  rw [child3386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2118_skip, output3386_skip]
  kernel_rfl

theorem node3388_cond_eq
    (child2067 : Flapjack.WordAlloc.removeDeadStructural input2067 value690 value1 value2 = (output2067, value690, value1))
    (child3387 : Flapjack.WordAlloc.removeDeadStructural input3387 value690 value1 value2 = (output3387, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3388 value690 value1 value2 = (output3388, value1161, value1) := by
  rw [input3388_def, output3388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2067]
  try dsimp only
  rw [child3387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2067_skip, output3387_skip]
  kernel_rfl

theorem node3389_cond_eq
    (child2066 : Flapjack.WordAlloc.removeDeadStructural input2066 value689 value1 value2 = (output2066, value690, value1))
    (child3388 : Flapjack.WordAlloc.removeDeadStructural input3388 value690 value1 value2 = (output3388, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3389 value689 value1 value2 = (output3389, value1161, value1) := by
  rw [input3389_def, output3389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2066]
  try dsimp only
  rw [child3388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2066_skip, output3388_skip]
  kernel_rfl

theorem node3390_cond_eq
    (child2063 : Flapjack.WordAlloc.removeDeadStructural input2063 value689 value1 value2 = (output2063, value689, value1))
    (child3389 : Flapjack.WordAlloc.removeDeadStructural input3389 value689 value1 value2 = (output3389, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3390 value689 value1 value2 = (output3390, value1161, value1) := by
  rw [input3390_def, output3390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2063]
  try dsimp only
  rw [child3389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2063_skip, output3389_skip]
  kernel_rfl

theorem node3391_cond_eq
    (child2062 : Flapjack.WordAlloc.removeDeadStructural input2062 value688 value1 value2 = (output2062, value689, value1))
    (child3390 : Flapjack.WordAlloc.removeDeadStructural input3390 value689 value1 value2 = (output3390, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3391 value688 value1 value2 = (output3391, value1161, value1) := by
  rw [input3391_def, output3391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2062]
  try dsimp only
  rw [child3390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2062_skip, output3390_skip]
  kernel_rfl

theorem node3392_cond_eq
    (child2061 : Flapjack.WordAlloc.removeDeadStructural input2061 value686 value1 value2 = (output2061, value688, value1))
    (child3391 : Flapjack.WordAlloc.removeDeadStructural input3391 value688 value1 value2 = (output3391, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3392 value686 value1 value2 = (output3392, value1161, value1) := by
  rw [input3392_def, output3392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2061]
  try dsimp only
  rw [child3391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2061_skip, output3391_skip]
  kernel_rfl

theorem node3393_cond_eq
    (child2058 : Flapjack.WordAlloc.removeDeadStructural input2058 value684 value1 value2 = (output2058, value686, value1))
    (child3392 : Flapjack.WordAlloc.removeDeadStructural input3392 value686 value1 value2 = (output3392, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3393 value684 value1 value2 = (output3393, value1161, value1) := by
  rw [input3393_def, output3393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2058]
  try dsimp only
  rw [child3392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2058_skip, output3392_skip]
  kernel_rfl

theorem node3394_cond_eq
    (child2055 : Flapjack.WordAlloc.removeDeadStructural input2055 value683 value1 value2 = (output2055, value684, value1))
    (child3393 : Flapjack.WordAlloc.removeDeadStructural input3393 value684 value1 value2 = (output3393, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3394 value683 value1 value2 = (output3394, value1161, value1) := by
  rw [input3394_def, output3394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2055]
  try dsimp only
  rw [child3393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2055_skip, output3393_skip]
  kernel_rfl

theorem node3395_cond_eq
    (child2054 : Flapjack.WordAlloc.removeDeadStructural input2054 value682 value1 value2 = (output2054, value683, value1))
    (child3394 : Flapjack.WordAlloc.removeDeadStructural input3394 value683 value1 value2 = (output3394, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3395 value682 value1 value2 = (output3395, value1161, value1) := by
  rw [input3395_def, output3395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2054]
  try dsimp only
  rw [child3394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2054_skip, output3394_skip]
  kernel_rfl

theorem node3396_cond_eq
    (child2053 : Flapjack.WordAlloc.removeDeadStructural input2053 value680 value1 value2 = (output2053, value682, value1))
    (child3395 : Flapjack.WordAlloc.removeDeadStructural input3395 value682 value1 value2 = (output3395, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3396 value680 value1 value2 = (output3396, value1161, value1) := by
  rw [input3396_def, output3396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2053]
  try dsimp only
  rw [child3395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2053_skip, output3395_skip]
  kernel_rfl

theorem node3397_cond_eq
    (child2050 : Flapjack.WordAlloc.removeDeadStructural input2050 value680 value1 value2 = (output2050, value680, value1))
    (child3396 : Flapjack.WordAlloc.removeDeadStructural input3396 value680 value1 value2 = (output3396, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3397 value680 value1 value2 = (output3397, value1161, value1) := by
  rw [input3397_def, output3397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2050]
  try dsimp only
  rw [child3396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2050_skip, output3396_skip]
  kernel_rfl

theorem node3398_cond_eq
    (child2049 : Flapjack.WordAlloc.removeDeadStructural input2049 value679 value1 value2 = (output2049, value680, value1))
    (child3397 : Flapjack.WordAlloc.removeDeadStructural input3397 value680 value1 value2 = (output3397, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3398 value679 value1 value2 = (output3398, value1161, value1) := by
  rw [input3398_def, output3398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2049]
  try dsimp only
  rw [child3397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2049_skip, output3397_skip]
  kernel_rfl

theorem node3399_cond_eq
    (child2048 : Flapjack.WordAlloc.removeDeadStructural input2048 value676 value1 value2 = (output2048, value679, value1))
    (child3398 : Flapjack.WordAlloc.removeDeadStructural input3398 value679 value1 value2 = (output3398, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3399 value676 value1 value2 = (output3399, value1161, value1) := by
  rw [input3399_def, output3399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2048]
  try dsimp only
  rw [child3398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2048_skip, output3398_skip]
  kernel_rfl

theorem node3400_cond_eq
    (child2043 : Flapjack.WordAlloc.removeDeadStructural input2043 value676 value1 value2 = (output2043, value676, value1))
    (child3399 : Flapjack.WordAlloc.removeDeadStructural input3399 value676 value1 value2 = (output3399, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3400 value676 value1 value2 = (output3400, value1161, value1) := by
  rw [input3400_def, output3400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2043]
  try dsimp only
  rw [child3399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2043_skip, output3399_skip]
  kernel_rfl

theorem node3401_cond_eq
    (child2042 : Flapjack.WordAlloc.removeDeadStructural input2042 value675 value1 value2 = (output2042, value676, value1))
    (child3400 : Flapjack.WordAlloc.removeDeadStructural input3400 value676 value1 value2 = (output3400, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3401 value675 value1 value2 = (output3401, value1161, value1) := by
  rw [input3401_def, output3401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2042]
  try dsimp only
  rw [child3400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2042_skip, output3400_skip]
  kernel_rfl

theorem node3402_cond_eq
    (child2041 : Flapjack.WordAlloc.removeDeadStructural input2041 value674 value1 value2 = (output2041, value675, value1))
    (child3401 : Flapjack.WordAlloc.removeDeadStructural input3401 value675 value1 value2 = (output3401, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3402 value674 value1 value2 = (output3402, value1161, value1) := by
  rw [input3402_def, output3402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2041]
  try dsimp only
  rw [child3401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2041_skip, output3401_skip]
  kernel_rfl

theorem node3403_cond_eq
    (child2040 : Flapjack.WordAlloc.removeDeadStructural input2040 value673 value1 value2 = (output2040, value674, value1))
    (child3402 : Flapjack.WordAlloc.removeDeadStructural input3402 value674 value1 value2 = (output3402, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3403 value673 value1 value2 = (output3403, value1161, value1) := by
  rw [input3403_def, output3403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2040]
  try dsimp only
  rw [child3402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2040_skip, output3402_skip]
  kernel_rfl

theorem node3404_cond_eq
    (child2039 : Flapjack.WordAlloc.removeDeadStructural input2039 value670 value1 value2 = (output2039, value673, value1))
    (child3403 : Flapjack.WordAlloc.removeDeadStructural input3403 value673 value1 value2 = (output3403, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3404 value670 value1 value2 = (output3404, value1161, value1) := by
  rw [input3404_def, output3404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2039]
  try dsimp only
  rw [child3403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2039_skip, output3403_skip]
  kernel_rfl

theorem node3405_cond_eq
    (child2034 : Flapjack.WordAlloc.removeDeadStructural input2034 value670 value1 value2 = (output2034, value670, value1))
    (child3404 : Flapjack.WordAlloc.removeDeadStructural input3404 value670 value1 value2 = (output3404, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3405 value670 value1 value2 = (output3405, value1161, value1) := by
  rw [input3405_def, output3405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2034]
  try dsimp only
  rw [child3404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2034_skip, output3404_skip]
  kernel_rfl

theorem node3406_cond_eq
    (child2033 : Flapjack.WordAlloc.removeDeadStructural input2033 value668 value1 value2 = (output2033, value670, value1))
    (child3405 : Flapjack.WordAlloc.removeDeadStructural input3405 value670 value1 value2 = (output3405, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3406 value668 value1 value2 = (output3406, value1161, value1) := by
  rw [input3406_def, output3406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2033]
  try dsimp only
  rw [child3405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2033_skip, output3405_skip]
  kernel_rfl

theorem node3407_cond_eq
    (child2030 : Flapjack.WordAlloc.removeDeadStructural input2030 value667 value1 value2 = (output2030, value668, value1))
    (child3406 : Flapjack.WordAlloc.removeDeadStructural input3406 value668 value1 value2 = (output3406, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3407 value667 value1 value2 = (output3407, value1161, value1) := by
  rw [input3407_def, output3407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2030]
  try dsimp only
  rw [child3406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2030_skip, output3406_skip]
  kernel_rfl

theorem node3408_cond_eq
    (child2029 : Flapjack.WordAlloc.removeDeadStructural input2029 value666 value1 value2 = (output2029, value667, value1))
    (child3407 : Flapjack.WordAlloc.removeDeadStructural input3407 value667 value1 value2 = (output3407, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3408 value666 value1 value2 = (output3408, value1161, value1) := by
  rw [input3408_def, output3408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2029]
  try dsimp only
  rw [child3407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2029_skip, output3407_skip]
  kernel_rfl

theorem node3409_cond_eq
    (child2028 : Flapjack.WordAlloc.removeDeadStructural input2028 value664 value1 value2 = (output2028, value666, value1))
    (child3408 : Flapjack.WordAlloc.removeDeadStructural input3408 value666 value1 value2 = (output3408, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3409 value664 value1 value2 = (output3409, value1161, value1) := by
  rw [input3409_def, output3409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2028]
  try dsimp only
  rw [child3408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2028_skip, output3408_skip]
  kernel_rfl

theorem node3410_cond_eq
    (child2025 : Flapjack.WordAlloc.removeDeadStructural input2025 value662 value1 value2 = (output2025, value664, value1))
    (child3409 : Flapjack.WordAlloc.removeDeadStructural input3409 value664 value1 value2 = (output3409, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3410 value662 value1 value2 = (output3410, value1161, value1) := by
  rw [input3410_def, output3410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2025]
  try dsimp only
  rw [child3409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2025_skip, output3409_skip]
  kernel_rfl

theorem node3411_cond_eq
    (child2022 : Flapjack.WordAlloc.removeDeadStructural input2022 value661 value1 value2 = (output2022, value662, value1))
    (child3410 : Flapjack.WordAlloc.removeDeadStructural input3410 value662 value1 value2 = (output3410, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3411 value661 value1 value2 = (output3411, value1161, value1) := by
  rw [input3411_def, output3411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2022]
  try dsimp only
  rw [child3410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2022_skip, output3410_skip]
  kernel_rfl

theorem node3412_cond_eq
    (child2021 : Flapjack.WordAlloc.removeDeadStructural input2021 value660 value1 value2 = (output2021, value661, value1))
    (child3411 : Flapjack.WordAlloc.removeDeadStructural input3411 value661 value1 value2 = (output3411, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3412 value660 value1 value2 = (output3412, value1161, value1) := by
  rw [input3412_def, output3412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2021]
  try dsimp only
  rw [child3411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2021_skip, output3411_skip]
  kernel_rfl

theorem node3413_cond_eq
    (child2020 : Flapjack.WordAlloc.removeDeadStructural input2020 value658 value1 value2 = (output2020, value660, value1))
    (child3412 : Flapjack.WordAlloc.removeDeadStructural input3412 value660 value1 value2 = (output3412, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3413 value658 value1 value2 = (output3413, value1161, value1) := by
  rw [input3413_def, output3413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2020]
  try dsimp only
  rw [child3412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2020_skip, output3412_skip]
  kernel_rfl

theorem node3414_cond_eq
    (child2017 : Flapjack.WordAlloc.removeDeadStructural input2017 value656 value1 value2 = (output2017, value658, value1))
    (child3413 : Flapjack.WordAlloc.removeDeadStructural input3413 value658 value1 value2 = (output3413, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3414 value656 value1 value2 = (output3414, value1161, value1) := by
  rw [input3414_def, output3414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2017]
  try dsimp only
  rw [child3413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2017_skip, output3413_skip]
  kernel_rfl

theorem node3415_cond_eq
    (child2014 : Flapjack.WordAlloc.removeDeadStructural input2014 value655 value1 value2 = (output2014, value656, value1))
    (child3414 : Flapjack.WordAlloc.removeDeadStructural input3414 value656 value1 value2 = (output3414, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3415 value655 value1 value2 = (output3415, value1161, value1) := by
  rw [input3415_def, output3415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2014]
  try dsimp only
  rw [child3414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2014_skip, output3414_skip]
  kernel_rfl

theorem node3416_cond_eq
    (child2013 : Flapjack.WordAlloc.removeDeadStructural input2013 value654 value1 value2 = (output2013, value655, value1))
    (child3415 : Flapjack.WordAlloc.removeDeadStructural input3415 value655 value1 value2 = (output3415, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3416 value654 value1 value2 = (output3416, value1161, value1) := by
  rw [input3416_def, output3416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2013]
  try dsimp only
  rw [child3415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2013_skip, output3415_skip]
  kernel_rfl

theorem node3417_cond_eq
    (child2012 : Flapjack.WordAlloc.removeDeadStructural input2012 value652 value1 value2 = (output2012, value654, value1))
    (child3416 : Flapjack.WordAlloc.removeDeadStructural input3416 value654 value1 value2 = (output3416, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3417 value652 value1 value2 = (output3417, value1161, value1) := by
  rw [input3417_def, output3417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2012]
  try dsimp only
  rw [child3416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2012_skip, output3416_skip]
  kernel_rfl

theorem node3418_cond_eq
    (child2009 : Flapjack.WordAlloc.removeDeadStructural input2009 value650 value1 value2 = (output2009, value652, value1))
    (child3417 : Flapjack.WordAlloc.removeDeadStructural input3417 value652 value1 value2 = (output3417, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3418 value650 value1 value2 = (output3418, value1161, value1) := by
  rw [input3418_def, output3418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2009]
  try dsimp only
  rw [child3417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2009_skip, output3417_skip]
  kernel_rfl

theorem node3419_cond_eq
    (child2004 : Flapjack.WordAlloc.removeDeadStructural input2004 value650 value1 value2 = (output2004, value650, value1))
    (child3418 : Flapjack.WordAlloc.removeDeadStructural input3418 value650 value1 value2 = (output3418, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3419 value650 value1 value2 = (output3419, value1161, value1) := by
  rw [input3419_def, output3419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2004]
  try dsimp only
  rw [child3418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2004_skip, output3418_skip]
  kernel_rfl

theorem node3420_cond_eq
    (child2003 : Flapjack.WordAlloc.removeDeadStructural input2003 value643 value1 value2 = (output2003, value650, value1))
    (child3419 : Flapjack.WordAlloc.removeDeadStructural input3419 value650 value1 value2 = (output3419, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3420 value643 value1 value2 = (output3420, value1161, value1) := by
  rw [input3420_def, output3420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2003]
  try dsimp only
  rw [child3419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2003_skip, output3419_skip]
  kernel_rfl

theorem node3421_cond_eq
    (child2002 : Flapjack.WordAlloc.removeDeadStructural input2002 value646 value1 value2 = (output2002, value643, value1))
    (child3420 : Flapjack.WordAlloc.removeDeadStructural input3420 value643 value1 value2 = (output3420, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3421 value646 value1 value2 = (output3421, value1161, value1) := by
  rw [input3421_def, output3421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2002]
  try dsimp only
  rw [child3420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2002_skip, output3420_skip]
  kernel_rfl

theorem node3422_cond_eq
    (child1995 : Flapjack.WordAlloc.removeDeadStructural input1995 value645 value1 value2 = (output1995, value646, value1))
    (child3421 : Flapjack.WordAlloc.removeDeadStructural input3421 value646 value1 value2 = (output3421, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3422 value645 value1 value2 = (output3422, value1161, value1) := by
  rw [input3422_def, output3422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1995]
  try dsimp only
  rw [child3421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1995_skip, output3421_skip]
  kernel_rfl

theorem node3423_cond_eq
    (child1994 : Flapjack.WordAlloc.removeDeadStructural input1994 value643 value1 value2 = (output1994, value645, value1))
    (child3422 : Flapjack.WordAlloc.removeDeadStructural input3422 value645 value1 value2 = (output3422, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3423 value643 value1 value2 = (output3423, value1161, value1) := by
  rw [input3423_def, output3423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1994]
  try dsimp only
  rw [child3422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1994_skip, output3422_skip]
  kernel_rfl

theorem node3424_cond_eq
    (child1991 : Flapjack.WordAlloc.removeDeadStructural input1991 value641 value1 value2 = (output1991, value643, value1))
    (child3423 : Flapjack.WordAlloc.removeDeadStructural input3423 value643 value1 value2 = (output3423, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3424 value641 value1 value2 = (output3424, value1161, value1) := by
  rw [input3424_def, output3424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1991]
  try dsimp only
  rw [child3423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1991_skip, output3423_skip]
  kernel_rfl

theorem node3425_cond_eq
    (child1988 : Flapjack.WordAlloc.removeDeadStructural input1988 value640 value1 value2 = (output1988, value641, value1))
    (child3424 : Flapjack.WordAlloc.removeDeadStructural input3424 value641 value1 value2 = (output3424, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3425 value640 value1 value2 = (output3425, value1161, value1) := by
  rw [input3425_def, output3425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1988]
  try dsimp only
  rw [child3424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1988_skip, output3424_skip]
  kernel_rfl

theorem node3426_cond_eq
    (child1987 : Flapjack.WordAlloc.removeDeadStructural input1987 value639 value1 value2 = (output1987, value640, value1))
    (child3425 : Flapjack.WordAlloc.removeDeadStructural input3425 value640 value1 value2 = (output3425, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3426 value639 value1 value2 = (output3426, value1161, value1) := by
  rw [input3426_def, output3426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1987]
  try dsimp only
  rw [child3425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1987_skip, output3425_skip]
  kernel_rfl

theorem node3427_cond_eq
    (child1986 : Flapjack.WordAlloc.removeDeadStructural input1986 value637 value1 value2 = (output1986, value639, value1))
    (child3426 : Flapjack.WordAlloc.removeDeadStructural input3426 value639 value1 value2 = (output3426, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3427 value637 value1 value2 = (output3427, value1161, value1) := by
  rw [input3427_def, output3427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1986]
  try dsimp only
  rw [child3426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1986_skip, output3426_skip]
  kernel_rfl

theorem node3428_cond_eq
    (child1983 : Flapjack.WordAlloc.removeDeadStructural input1983 value635 value1 value2 = (output1983, value637, value1))
    (child3427 : Flapjack.WordAlloc.removeDeadStructural input3427 value637 value1 value2 = (output3427, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3428 value635 value1 value2 = (output3428, value1161, value1) := by
  rw [input3428_def, output3428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1983]
  try dsimp only
  rw [child3427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1983_skip, output3427_skip]
  kernel_rfl

theorem node3429_cond_eq
    (child1980 : Flapjack.WordAlloc.removeDeadStructural input1980 value634 value1 value2 = (output1980, value635, value1))
    (child3428 : Flapjack.WordAlloc.removeDeadStructural input3428 value635 value1 value2 = (output3428, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3429 value634 value1 value2 = (output3429, value1161, value1) := by
  rw [input3429_def, output3429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1980]
  try dsimp only
  rw [child3428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1980_skip, output3428_skip]
  kernel_rfl

theorem node3430_cond_eq
    (child1979 : Flapjack.WordAlloc.removeDeadStructural input1979 value633 value1 value2 = (output1979, value634, value1))
    (child3429 : Flapjack.WordAlloc.removeDeadStructural input3429 value634 value1 value2 = (output3429, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3430 value633 value1 value2 = (output3430, value1161, value1) := by
  rw [input3430_def, output3430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1979]
  try dsimp only
  rw [child3429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1979_skip, output3429_skip]
  kernel_rfl

theorem node3431_cond_eq
    (child1978 : Flapjack.WordAlloc.removeDeadStructural input1978 value631 value1 value2 = (output1978, value633, value1))
    (child3430 : Flapjack.WordAlloc.removeDeadStructural input3430 value633 value1 value2 = (output3430, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3431 value631 value1 value2 = (output3431, value1161, value1) := by
  rw [input3431_def, output3431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1978]
  try dsimp only
  rw [child3430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1978_skip, output3430_skip]
  kernel_rfl

theorem node3432_cond_eq
    (child1975 : Flapjack.WordAlloc.removeDeadStructural input1975 value629 value1 value2 = (output1975, value631, value1))
    (child3431 : Flapjack.WordAlloc.removeDeadStructural input3431 value631 value1 value2 = (output3431, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3432 value629 value1 value2 = (output3432, value1161, value1) := by
  rw [input3432_def, output3432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1975]
  try dsimp only
  rw [child3431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1975_skip, output3431_skip]
  kernel_rfl

theorem node3433_cond_eq
    (child1972 : Flapjack.WordAlloc.removeDeadStructural input1972 value627 value1 value2 = (output1972, value629, value1))
    (child3432 : Flapjack.WordAlloc.removeDeadStructural input3432 value629 value1 value2 = (output3432, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3433 value627 value1 value2 = (output3433, value1161, value1) := by
  rw [input3433_def, output3433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1972]
  try dsimp only
  rw [child3432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1972_skip, output3432_skip]
  kernel_rfl

theorem node3434_cond_eq
    (child1969 : Flapjack.WordAlloc.removeDeadStructural input1969 value626 value1 value2 = (output1969, value627, value1))
    (child3433 : Flapjack.WordAlloc.removeDeadStructural input3433 value627 value1 value2 = (output3433, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3434 value626 value1 value2 = (output3434, value1161, value1) := by
  rw [input3434_def, output3434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1969]
  try dsimp only
  rw [child3433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1969_skip, output3433_skip]
  kernel_rfl

theorem node3435_cond_eq
    (child1968 : Flapjack.WordAlloc.removeDeadStructural input1968 value624 value1 value2 = (output1968, value626, value1))
    (child3434 : Flapjack.WordAlloc.removeDeadStructural input3434 value626 value1 value2 = (output3434, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3435 value624 value1 value2 = (output3435, value1161, value1) := by
  rw [input3435_def, output3435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1968]
  try dsimp only
  rw [child3434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1968_skip, output3434_skip]
  kernel_rfl

theorem node3436_cond_eq
    (child1965 : Flapjack.WordAlloc.removeDeadStructural input1965 value622 value1 value2 = (output1965, value624, value1))
    (child3435 : Flapjack.WordAlloc.removeDeadStructural input3435 value624 value1 value2 = (output3435, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3436 value622 value1 value2 = (output3436, value1161, value1) := by
  rw [input3436_def, output3436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1965]
  try dsimp only
  rw [child3435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1965_skip, output3435_skip]
  kernel_rfl

theorem node3437_cond_eq
    (child1962 : Flapjack.WordAlloc.removeDeadStructural input1962 value621 value1 value2 = (output1962, value622, value1))
    (child3436 : Flapjack.WordAlloc.removeDeadStructural input3436 value622 value1 value2 = (output3436, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3437 value621 value1 value2 = (output3437, value1161, value1) := by
  rw [input3437_def, output3437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1962]
  try dsimp only
  rw [child3436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1962_skip, output3436_skip]
  kernel_rfl

theorem node3438_cond_eq
    (child1961 : Flapjack.WordAlloc.removeDeadStructural input1961 value620 value1 value2 = (output1961, value621, value1))
    (child3437 : Flapjack.WordAlloc.removeDeadStructural input3437 value621 value1 value2 = (output3437, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3438 value620 value1 value2 = (output3438, value1161, value1) := by
  rw [input3438_def, output3438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1961]
  try dsimp only
  rw [child3437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1961_skip, output3437_skip]
  kernel_rfl

theorem node3439_cond_eq
    (child1960 : Flapjack.WordAlloc.removeDeadStructural input1960 value618 value1 value2 = (output1960, value620, value1))
    (child3438 : Flapjack.WordAlloc.removeDeadStructural input3438 value620 value1 value2 = (output3438, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3439 value618 value1 value2 = (output3439, value1161, value1) := by
  rw [input3439_def, output3439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1960]
  try dsimp only
  rw [child3438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1960_skip, output3438_skip]
  kernel_rfl

theorem node3440_cond_eq
    (child1957 : Flapjack.WordAlloc.removeDeadStructural input1957 value616 value1 value2 = (output1957, value618, value1))
    (child3439 : Flapjack.WordAlloc.removeDeadStructural input3439 value618 value1 value2 = (output3439, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3440 value616 value1 value2 = (output3440, value1161, value1) := by
  rw [input3440_def, output3440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1957]
  try dsimp only
  rw [child3439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1957_skip, output3439_skip]
  kernel_rfl

theorem node3441_cond_eq
    (child1954 : Flapjack.WordAlloc.removeDeadStructural input1954 value615 value1 value2 = (output1954, value616, value1))
    (child3440 : Flapjack.WordAlloc.removeDeadStructural input3440 value616 value1 value2 = (output3440, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3441 value615 value1 value2 = (output3441, value1161, value1) := by
  rw [input3441_def, output3441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1954]
  try dsimp only
  rw [child3440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1954_skip, output3440_skip]
  kernel_rfl

theorem node3442_cond_eq
    (child1953 : Flapjack.WordAlloc.removeDeadStructural input1953 value614 value1 value2 = (output1953, value615, value1))
    (child3441 : Flapjack.WordAlloc.removeDeadStructural input3441 value615 value1 value2 = (output3441, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3442 value614 value1 value2 = (output3442, value1161, value1) := by
  rw [input3442_def, output3442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1953]
  try dsimp only
  rw [child3441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1953_skip, output3441_skip]
  kernel_rfl

theorem node3443_cond_eq
    (child1952 : Flapjack.WordAlloc.removeDeadStructural input1952 value612 value1 value2 = (output1952, value614, value1))
    (child3442 : Flapjack.WordAlloc.removeDeadStructural input3442 value614 value1 value2 = (output3442, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3443 value612 value1 value2 = (output3443, value1161, value1) := by
  rw [input3443_def, output3443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1952]
  try dsimp only
  rw [child3442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1952_skip, output3442_skip]
  kernel_rfl

theorem node3444_cond_eq
    (child1949 : Flapjack.WordAlloc.removeDeadStructural input1949 value610 value1 value2 = (output1949, value612, value1))
    (child3443 : Flapjack.WordAlloc.removeDeadStructural input3443 value612 value1 value2 = (output3443, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3444 value610 value1 value2 = (output3444, value1161, value1) := by
  rw [input3444_def, output3444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1949]
  try dsimp only
  rw [child3443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1949_skip, output3443_skip]
  kernel_rfl

theorem node3445_cond_eq
    (child1946 : Flapjack.WordAlloc.removeDeadStructural input1946 value608 value1 value2 = (output1946, value610, value1))
    (child3444 : Flapjack.WordAlloc.removeDeadStructural input3444 value610 value1 value2 = (output3444, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3445 value608 value1 value2 = (output3445, value1161, value1) := by
  rw [input3445_def, output3445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1946]
  try dsimp only
  rw [child3444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1946_skip, output3444_skip]
  kernel_rfl

theorem node3446_cond_eq
    (child1943 : Flapjack.WordAlloc.removeDeadStructural input1943 value606 value1 value2 = (output1943, value608, value1))
    (child3445 : Flapjack.WordAlloc.removeDeadStructural input3445 value608 value1 value2 = (output3445, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3446 value606 value1 value2 = (output3446, value1161, value1) := by
  rw [input3446_def, output3446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1943]
  try dsimp only
  rw [child3445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1943_skip, output3445_skip]
  kernel_rfl

theorem node3447_cond_eq
    (child1940 : Flapjack.WordAlloc.removeDeadStructural input1940 value604 value1 value2 = (output1940, value606, value1))
    (child3446 : Flapjack.WordAlloc.removeDeadStructural input3446 value606 value1 value2 = (output3446, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3447 value604 value1 value2 = (output3447, value1161, value1) := by
  rw [input3447_def, output3447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1940]
  try dsimp only
  rw [child3446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1940_skip, output3446_skip]
  kernel_rfl

theorem node3448_cond_eq
    (child1937 : Flapjack.WordAlloc.removeDeadStructural input1937 value602 value1 value2 = (output1937, value604, value1))
    (child3447 : Flapjack.WordAlloc.removeDeadStructural input3447 value604 value1 value2 = (output3447, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3448 value602 value1 value2 = (output3448, value1161, value1) := by
  rw [input3448_def, output3448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1937]
  try dsimp only
  rw [child3447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1937_skip, output3447_skip]
  kernel_rfl

theorem node3449_cond_eq
    (child1934 : Flapjack.WordAlloc.removeDeadStructural input1934 value601 value1 value2 = (output1934, value602, value1))
    (child3448 : Flapjack.WordAlloc.removeDeadStructural input3448 value602 value1 value2 = (output3448, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3449 value601 value1 value2 = (output3449, value1161, value1) := by
  rw [input3449_def, output3449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1934]
  try dsimp only
  rw [child3448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1934_skip, output3448_skip]
  kernel_rfl

theorem node3450_cond_eq
    (child1933 : Flapjack.WordAlloc.removeDeadStructural input1933 value599 value1 value2 = (output1933, value601, value1))
    (child3449 : Flapjack.WordAlloc.removeDeadStructural input3449 value601 value1 value2 = (output3449, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3450 value599 value1 value2 = (output3450, value1161, value1) := by
  rw [input3450_def, output3450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1933]
  try dsimp only
  rw [child3449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1933_skip, output3449_skip]
  kernel_rfl

theorem node3451_cond_eq
    (child1930 : Flapjack.WordAlloc.removeDeadStructural input1930 value598 value1 value2 = (output1930, value599, value1))
    (child3450 : Flapjack.WordAlloc.removeDeadStructural input3450 value599 value1 value2 = (output3450, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3451 value598 value1 value2 = (output3451, value1161, value1) := by
  rw [input3451_def, output3451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1930]
  try dsimp only
  rw [child3450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1930_skip, output3450_skip]
  kernel_rfl

theorem node3452_cond_eq
    (child1929 : Flapjack.WordAlloc.removeDeadStructural input1929 value596 value1 value2 = (output1929, value598, value1))
    (child3451 : Flapjack.WordAlloc.removeDeadStructural input3451 value598 value1 value2 = (output3451, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3452 value596 value1 value2 = (output3452, value1161, value1) := by
  rw [input3452_def, output3452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1929]
  try dsimp only
  rw [child3451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1929_skip, output3451_skip]
  kernel_rfl

theorem node3453_cond_eq
    (child1926 : Flapjack.WordAlloc.removeDeadStructural input1926 value595 value1 value2 = (output1926, value596, value1))
    (child3452 : Flapjack.WordAlloc.removeDeadStructural input3452 value596 value1 value2 = (output3452, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3453 value595 value1 value2 = (output3453, value1161, value1) := by
  rw [input3453_def, output3453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1926]
  try dsimp only
  rw [child3452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1926_skip, output3452_skip]
  kernel_rfl

theorem node3454_cond_eq
    (child1925 : Flapjack.WordAlloc.removeDeadStructural input1925 value593 value1 value2 = (output1925, value595, value1))
    (child3453 : Flapjack.WordAlloc.removeDeadStructural input3453 value595 value1 value2 = (output3453, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3454 value593 value1 value2 = (output3454, value1161, value1) := by
  rw [input3454_def, output3454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1925]
  try dsimp only
  rw [child3453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1925_skip, output3453_skip]
  kernel_rfl

theorem node3455_cond_eq
    (child1922 : Flapjack.WordAlloc.removeDeadStructural input1922 value592 value1 value2 = (output1922, value593, value1))
    (child3454 : Flapjack.WordAlloc.removeDeadStructural input3454 value593 value1 value2 = (output3454, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3455 value592 value1 value2 = (output3455, value1161, value1) := by
  rw [input3455_def, output3455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1922]
  try dsimp only
  rw [child3454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1922_skip, output3454_skip]
  kernel_rfl

theorem node3456_cond_eq
    (child1921 : Flapjack.WordAlloc.removeDeadStructural input1921 value590 value1 value2 = (output1921, value592, value1))
    (child3455 : Flapjack.WordAlloc.removeDeadStructural input3455 value592 value1 value2 = (output3455, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3456 value590 value1 value2 = (output3456, value1161, value1) := by
  rw [input3456_def, output3456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1921]
  try dsimp only
  rw [child3455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1921_skip, output3455_skip]
  kernel_rfl

theorem node3457_cond_eq
    (child1918 : Flapjack.WordAlloc.removeDeadStructural input1918 value590 value1 value2 = (output1918, value590, value1))
    (child3456 : Flapjack.WordAlloc.removeDeadStructural input3456 value590 value1 value2 = (output3456, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3457 value590 value1 value2 = (output3457, value1161, value1) := by
  rw [input3457_def, output3457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1918]
  try dsimp only
  rw [child3456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1918_skip, output3456_skip]
  kernel_rfl

theorem node3458_cond_eq
    (child1917 : Flapjack.WordAlloc.removeDeadStructural input1917 value590 value1 value2 = (output1917, value590, value1))
    (child3457 : Flapjack.WordAlloc.removeDeadStructural input3457 value590 value1 value2 = (output3457, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3458 value590 value1 value2 = (output3458, value1161, value1) := by
  rw [input3458_def, output3458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1917]
  try dsimp only
  rw [child3457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1917_skip, output3457_skip]
  kernel_rfl

theorem node3459_cond_eq
    (child1916 : Flapjack.WordAlloc.removeDeadStructural input1916 value589 value1 value2 = (output1916, value590, value1))
    (child3458 : Flapjack.WordAlloc.removeDeadStructural input3458 value590 value1 value2 = (output3458, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3459 value589 value1 value2 = (output3459, value1161, value1) := by
  rw [input3459_def, output3459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1916]
  try dsimp only
  rw [child3458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1916_skip, output3458_skip]
  kernel_rfl

theorem node3460_cond_eq
    (child1915 : Flapjack.WordAlloc.removeDeadStructural input1915 value588 value1 value2 = (output1915, value589, value1))
    (child3459 : Flapjack.WordAlloc.removeDeadStructural input3459 value589 value1 value2 = (output3459, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3460 value588 value1 value2 = (output3460, value1161, value1) := by
  rw [input3460_def, output3460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1915]
  try dsimp only
  rw [child3459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1915_skip, output3459_skip]
  kernel_rfl

theorem node3461_cond_eq
    (child1914 : Flapjack.WordAlloc.removeDeadStructural input1914 value585 value1 value2 = (output1914, value588, value1))
    (child3460 : Flapjack.WordAlloc.removeDeadStructural input3460 value588 value1 value2 = (output3460, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3461 value585 value1 value2 = (output3461, value1161, value1) := by
  rw [input3461_def, output3461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1914]
  try dsimp only
  rw [child3460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1914_skip, output3460_skip]
  kernel_rfl

theorem node3462_cond_eq
    (child1909 : Flapjack.WordAlloc.removeDeadStructural input1909 value585 value1 value2 = (output1909, value585, value1))
    (child3461 : Flapjack.WordAlloc.removeDeadStructural input3461 value585 value1 value2 = (output3461, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3462 value585 value1 value2 = (output3462, value1161, value1) := by
  rw [input3462_def, output3462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1909]
  try dsimp only
  rw [child3461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1909_skip, output3461_skip]
  kernel_rfl

theorem node3463_cond_eq
    (child1908 : Flapjack.WordAlloc.removeDeadStructural input1908 value584 value1 value2 = (output1908, value585, value1))
    (child3462 : Flapjack.WordAlloc.removeDeadStructural input3462 value585 value1 value2 = (output3462, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3463 value584 value1 value2 = (output3463, value1161, value1) := by
  rw [input3463_def, output3463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1908]
  try dsimp only
  rw [child3462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1908_skip, output3462_skip]
  kernel_rfl

theorem node3464_cond_eq
    (child1907 : Flapjack.WordAlloc.removeDeadStructural input1907 value583 value1 value2 = (output1907, value584, value1))
    (child3463 : Flapjack.WordAlloc.removeDeadStructural input3463 value584 value1 value2 = (output3463, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3464 value583 value1 value2 = (output3464, value1161, value1) := by
  rw [input3464_def, output3464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1907]
  try dsimp only
  rw [child3463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1907_skip, output3463_skip]
  kernel_rfl

theorem node3465_cond_eq
    (child1906 : Flapjack.WordAlloc.removeDeadStructural input1906 value583 value1 value2 = (output1906, value583, value1))
    (child3464 : Flapjack.WordAlloc.removeDeadStructural input3464 value583 value1 value2 = (output3464, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3465 value583 value1 value2 = (output3465, value1161, value1) := by
  rw [input3465_def, output3465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1906]
  try dsimp only
  rw [child3464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1906_skip, output3464_skip]
  kernel_rfl

theorem node3466_cond_eq
    (child1905 : Flapjack.WordAlloc.removeDeadStructural input1905 value582 value1 value2 = (output1905, value583, value1))
    (child3465 : Flapjack.WordAlloc.removeDeadStructural input3465 value583 value1 value2 = (output3465, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3466 value582 value1 value2 = (output3466, value1161, value1) := by
  rw [input3466_def, output3466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1905]
  try dsimp only
  rw [child3465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1905_skip, output3465_skip]
  kernel_rfl

theorem node3467_cond_eq
    (child1904 : Flapjack.WordAlloc.removeDeadStructural input1904 value579 value1 value2 = (output1904, value582, value1))
    (child3466 : Flapjack.WordAlloc.removeDeadStructural input3466 value582 value1 value2 = (output3466, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3467 value579 value1 value2 = (output3467, value1161, value1) := by
  rw [input3467_def, output3467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1904]
  try dsimp only
  rw [child3466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1904_skip, output3466_skip]
  kernel_rfl

theorem node3468_cond_eq
    (child1899 : Flapjack.WordAlloc.removeDeadStructural input1899 value579 value1 value2 = (output1899, value579, value1))
    (child3467 : Flapjack.WordAlloc.removeDeadStructural input3467 value579 value1 value2 = (output3467, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3468 value579 value1 value2 = (output3468, value1161, value1) := by
  rw [input3468_def, output3468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1899]
  try dsimp only
  rw [child3467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1899_skip, output3467_skip]
  kernel_rfl

theorem node3469_cond_eq
    (child1898 : Flapjack.WordAlloc.removeDeadStructural input1898 value578 value1 value2 = (output1898, value579, value1))
    (child3468 : Flapjack.WordAlloc.removeDeadStructural input3468 value579 value1 value2 = (output3468, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3469 value578 value1 value2 = (output3469, value1161, value1) := by
  rw [input3469_def, output3469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1898]
  try dsimp only
  rw [child3468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1898_skip, output3468_skip]
  kernel_rfl

theorem node3470_cond_eq
    (child1897 : Flapjack.WordAlloc.removeDeadStructural input1897 value578 value1 value2 = (output1897, value578, value1))
    (child3469 : Flapjack.WordAlloc.removeDeadStructural input3469 value578 value1 value2 = (output3469, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3470 value578 value1 value2 = (output3470, value1161, value1) := by
  rw [input3470_def, output3470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1897]
  try dsimp only
  rw [child3469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1897_skip, output3469_skip]
  kernel_rfl

theorem node3471_cond_eq
    (child1896 : Flapjack.WordAlloc.removeDeadStructural input1896 value552 value1 value2 = (output1896, value578, value1))
    (child3470 : Flapjack.WordAlloc.removeDeadStructural input3470 value578 value1 value2 = (output3470, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3471 value552 value1 value2 = (output3471, value1161, value1) := by
  rw [input3471_def, output3471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1896]
  try dsimp only
  rw [child3470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1896_skip, output3470_skip]
  kernel_rfl

theorem node3472_cond_eq
    (child1798 : Flapjack.WordAlloc.removeDeadStructural input1798 value552 value1 value2 = (output1798, value552, value1))
    (child3471 : Flapjack.WordAlloc.removeDeadStructural input3471 value552 value1 value2 = (output3471, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3472 value552 value1 value2 = (output3472, value1161, value1) := by
  rw [input3472_def, output3472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1798]
  try dsimp only
  rw [child3471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1798_skip, output3471_skip]
  kernel_rfl

theorem node3473_cond_eq
    (child1797 : Flapjack.WordAlloc.removeDeadStructural input1797 value551 value1 value2 = (output1797, value552, value1))
    (child3472 : Flapjack.WordAlloc.removeDeadStructural input3472 value552 value1 value2 = (output3472, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3473 value551 value1 value2 = (output3473, value1161, value1) := by
  rw [input3473_def, output3473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1797]
  try dsimp only
  rw [child3472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1797_skip, output3472_skip]
  kernel_rfl

theorem node3474_cond_eq
    (child1796 : Flapjack.WordAlloc.removeDeadStructural input1796 value551 value1 value2 = (output1796, value551, value1))
    (child3473 : Flapjack.WordAlloc.removeDeadStructural input3473 value551 value1 value2 = (output3473, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3474 value551 value1 value2 = (output3474, value1161, value1) := by
  rw [input3474_def, output3474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1796]
  try dsimp only
  rw [child3473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1796_skip, output3473_skip]
  kernel_rfl

theorem node3475_cond_eq
    (child1795 : Flapjack.WordAlloc.removeDeadStructural input1795 value529 value1 value2 = (output1795, value551, value1))
    (child3474 : Flapjack.WordAlloc.removeDeadStructural input3474 value551 value1 value2 = (output3474, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3475 value529 value1 value2 = (output3475, value1161, value1) := by
  rw [input3475_def, output3475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1795]
  try dsimp only
  rw [child3474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1795_skip, output3474_skip]
  kernel_rfl

theorem node3476_cond_eq
    (child1709 : Flapjack.WordAlloc.removeDeadStructural input1709 value529 value1 value2 = (output1709, value529, value1))
    (child3475 : Flapjack.WordAlloc.removeDeadStructural input3475 value529 value1 value2 = (output3475, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3476 value529 value1 value2 = (output3476, value1161, value1) := by
  rw [input3476_def, output3476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1709]
  try dsimp only
  rw [child3475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1709_skip, output3475_skip]
  kernel_rfl

theorem node3477_cond_eq
    (child1708 : Flapjack.WordAlloc.removeDeadStructural input1708 value529 value1 value2 = (output1708, value529, value1))
    (child3476 : Flapjack.WordAlloc.removeDeadStructural input3476 value529 value1 value2 = (output3476, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3477 value529 value1 value2 = (output3477, value1161, value1) := by
  rw [input3477_def, output3477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1708]
  try dsimp only
  rw [child3476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1708_skip, output3476_skip]
  kernel_rfl

theorem node3478_cond_eq
    (child1707 : Flapjack.WordAlloc.removeDeadStructural input1707 value529 value1 value2 = (output1707, value529, value1))
    (child3477 : Flapjack.WordAlloc.removeDeadStructural input3477 value529 value1 value2 = (output3477, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3478 value529 value1 value2 = (output3478, value1161, value1) := by
  rw [input3478_def, output3478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1707]
  try dsimp only
  rw [child3477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1707_skip, output3477_skip]
  kernel_rfl

theorem node3479_cond_eq
    (child1706 : Flapjack.WordAlloc.removeDeadStructural input1706 value528 value1 value2 = (output1706, value529, value1))
    (child3478 : Flapjack.WordAlloc.removeDeadStructural input3478 value529 value1 value2 = (output3478, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3479 value528 value1 value2 = (output3479, value1161, value1) := by
  rw [input3479_def, output3479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1706]
  try dsimp only
  rw [child3478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1706_skip, output3478_skip]
  kernel_rfl

theorem node3480_cond_eq
    (child1705 : Flapjack.WordAlloc.removeDeadStructural input1705 value527 value1 value2 = (output1705, value528, value1))
    (child3479 : Flapjack.WordAlloc.removeDeadStructural input3479 value528 value1 value2 = (output3479, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3480 value527 value1 value2 = (output3480, value1161, value1) := by
  rw [input3480_def, output3480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1705]
  try dsimp only
  rw [child3479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1705_skip, output3479_skip]
  kernel_rfl

theorem node3481_cond_eq
    (child1704 : Flapjack.WordAlloc.removeDeadStructural input1704 value524 value1 value2 = (output1704, value527, value1))
    (child3480 : Flapjack.WordAlloc.removeDeadStructural input3480 value527 value1 value2 = (output3480, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3481 value524 value1 value2 = (output3481, value1161, value1) := by
  rw [input3481_def, output3481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1704]
  try dsimp only
  rw [child3480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1704_skip, output3480_skip]
  kernel_rfl

theorem node3482_cond_eq
    (child1699 : Flapjack.WordAlloc.removeDeadStructural input1699 value524 value1 value2 = (output1699, value524, value1))
    (child3481 : Flapjack.WordAlloc.removeDeadStructural input3481 value524 value1 value2 = (output3481, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3482 value524 value1 value2 = (output3482, value1161, value1) := by
  rw [input3482_def, output3482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1699]
  try dsimp only
  rw [child3481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1699_skip, output3481_skip]
  kernel_rfl

theorem node3483_cond_eq
    (child1698 : Flapjack.WordAlloc.removeDeadStructural input1698 value523 value1 value2 = (output1698, value524, value1))
    (child3482 : Flapjack.WordAlloc.removeDeadStructural input3482 value524 value1 value2 = (output3482, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3483 value523 value1 value2 = (output3483, value1161, value1) := by
  rw [input3483_def, output3483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1698]
  try dsimp only
  rw [child3482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1698_skip, output3482_skip]
  kernel_rfl

theorem node3484_cond_eq
    (child1697 : Flapjack.WordAlloc.removeDeadStructural input1697 value523 value1 value2 = (output1697, value523, value1))
    (child3483 : Flapjack.WordAlloc.removeDeadStructural input3483 value523 value1 value2 = (output3483, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3484 value523 value1 value2 = (output3484, value1161, value1) := by
  rw [input3484_def, output3484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1697]
  try dsimp only
  rw [child3483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1697_skip, output3483_skip]
  kernel_rfl

theorem node3485_cond_eq
    (child1696 : Flapjack.WordAlloc.removeDeadStructural input1696 value499 value1 value2 = (output1696, value523, value1))
    (child3484 : Flapjack.WordAlloc.removeDeadStructural input3484 value523 value1 value2 = (output3484, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3485 value499 value1 value2 = (output3485, value1161, value1) := by
  rw [input3485_def, output3485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1696]
  try dsimp only
  rw [child3484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1696_skip, output3484_skip]
  kernel_rfl

theorem node3486_cond_eq
    (child1602 : Flapjack.WordAlloc.removeDeadStructural input1602 value499 value1 value2 = (output1602, value499, value1))
    (child3485 : Flapjack.WordAlloc.removeDeadStructural input3485 value499 value1 value2 = (output3485, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3486 value499 value1 value2 = (output3486, value1161, value1) := by
  rw [input3486_def, output3486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1602]
  try dsimp only
  rw [child3485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1602_skip, output3485_skip]
  kernel_rfl

theorem node3487_cond_eq
    (child1601 : Flapjack.WordAlloc.removeDeadStructural input1601 value499 value1 value2 = (output1601, value499, value1))
    (child3486 : Flapjack.WordAlloc.removeDeadStructural input3486 value499 value1 value2 = (output3486, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3487 value499 value1 value2 = (output3487, value1161, value1) := by
  rw [input3487_def, output3487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1601]
  try dsimp only
  rw [child3486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1601_skip, output3486_skip]
  kernel_rfl

theorem node3488_cond_eq
    (child1600 : Flapjack.WordAlloc.removeDeadStructural input1600 value498 value1 value2 = (output1600, value499, value1))
    (child3487 : Flapjack.WordAlloc.removeDeadStructural input3487 value499 value1 value2 = (output3487, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3488 value498 value1 value2 = (output3488, value1161, value1) := by
  rw [input3488_def, output3488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1600]
  try dsimp only
  rw [child3487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1600_skip, output3487_skip]
  kernel_rfl

theorem node3489_cond_eq
    (child1599 : Flapjack.WordAlloc.removeDeadStructural input1599 value495 value1 value2 = (output1599, value498, value1))
    (child3488 : Flapjack.WordAlloc.removeDeadStructural input3488 value498 value1 value2 = (output3488, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3489 value495 value1 value2 = (output3489, value1161, value1) := by
  rw [input3489_def, output3489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1599]
  try dsimp only
  rw [child3488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1599_skip, output3488_skip]
  kernel_rfl

theorem node3490_cond_eq
    (child1594 : Flapjack.WordAlloc.removeDeadStructural input1594 value495 value1 value2 = (output1594, value495, value1))
    (child3489 : Flapjack.WordAlloc.removeDeadStructural input3489 value495 value1 value2 = (output3489, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3490 value495 value1 value2 = (output3490, value1161, value1) := by
  rw [input3490_def, output3490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1594]
  try dsimp only
  rw [child3489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1594_skip, output3489_skip]
  kernel_rfl

theorem node3491_cond_eq
    (child1593 : Flapjack.WordAlloc.removeDeadStructural input1593 value494 value1 value2 = (output1593, value495, value1))
    (child3490 : Flapjack.WordAlloc.removeDeadStructural input3490 value495 value1 value2 = (output3490, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3491 value494 value1 value2 = (output3491, value1161, value1) := by
  rw [input3491_def, output3491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1593]
  try dsimp only
  rw [child3490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1593_skip, output3490_skip]
  kernel_rfl

theorem node3492_cond_eq
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value493 value1 value2 = (output1590, value494, value1))
    (child3491 : Flapjack.WordAlloc.removeDeadStructural input3491 value494 value1 value2 = (output3491, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3492 value493 value1 value2 = (output3492, value1161, value1) := by
  rw [input3492_def, output3492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1590]
  try dsimp only
  rw [child3491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1590_skip, output3491_skip]
  kernel_rfl

theorem node3493_cond_eq
    (child1589 : Flapjack.WordAlloc.removeDeadStructural input1589 value402 value1 value2 = (output1589, value493, value1))
    (child3492 : Flapjack.WordAlloc.removeDeadStructural input3492 value493 value1 value2 = (output3492, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3493 value402 value1 value2 = (output3493, value1161, value1) := by
  rw [input3493_def, output3493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1589]
  try dsimp only
  rw [child3492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1589_skip, output3492_skip]
  kernel_rfl

theorem node3494_cond_eq
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value402 value1 value2 = (output1364, value402, value1))
    (child3493 : Flapjack.WordAlloc.removeDeadStructural input3493 value402 value1 value2 = (output3493, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3494 value402 value1 value2 = (output3494, value1161, value1) := by
  rw [input3494_def, output3494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1364]
  try dsimp only
  rw [child3493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1364_skip, output3493_skip]
  kernel_rfl

theorem node3495_cond_eq
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value401 value1 value2 = (output1363, value402, value1))
    (child3494 : Flapjack.WordAlloc.removeDeadStructural input3494 value402 value1 value2 = (output3494, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3495 value401 value1 value2 = (output3495, value1161, value1) := by
  rw [input3495_def, output3495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1363]
  try dsimp only
  rw [child3494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1363_skip, output3494_skip]
  kernel_rfl

theorem node3496_cond_eq
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value401 value1 value2 = (output1360, value401, value1))
    (child3495 : Flapjack.WordAlloc.removeDeadStructural input3495 value401 value1 value2 = (output3495, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3496 value401 value1 value2 = (output3496, value1161, value1) := by
  rw [input3496_def, output3496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1360]
  try dsimp only
  rw [child3495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1360_skip, output3495_skip]
  kernel_rfl

theorem node3497_cond_eq
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value400 value1 value2 = (output1359, value401, value1))
    (child3496 : Flapjack.WordAlloc.removeDeadStructural input3496 value401 value1 value2 = (output3496, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3497 value400 value1 value2 = (output3497, value1161, value1) := by
  rw [input3497_def, output3497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1359]
  try dsimp only
  rw [child3496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1359_skip, output3496_skip]
  kernel_rfl

theorem node3498_cond_eq
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value398 value1 value2 = (output1358, value400, value1))
    (child3497 : Flapjack.WordAlloc.removeDeadStructural input3497 value400 value1 value2 = (output3497, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3498 value398 value1 value2 = (output3498, value1161, value1) := by
  rw [input3498_def, output3498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1358]
  try dsimp only
  rw [child3497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1358_skip, output3497_skip]
  kernel_rfl

theorem node3499_cond_eq
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value397 value1 value2 = (output1355, value398, value1))
    (child3498 : Flapjack.WordAlloc.removeDeadStructural input3498 value398 value1 value2 = (output3498, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3499 value397 value1 value2 = (output3499, value1161, value1) := by
  rw [input3499_def, output3499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1355]
  try dsimp only
  rw [child3498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1355_skip, output3498_skip]
  kernel_rfl

theorem node3500_cond_eq
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value395 value1 value2 = (output1354, value397, value1))
    (child3499 : Flapjack.WordAlloc.removeDeadStructural input3499 value397 value1 value2 = (output3499, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3500 value395 value1 value2 = (output3500, value1161, value1) := by
  rw [input3500_def, output3500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1354]
  try dsimp only
  rw [child3499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1354_skip, output3499_skip]
  kernel_rfl

theorem node3501_cond_eq
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value395 value1 value2 = (output1351, value395, value1))
    (child3500 : Flapjack.WordAlloc.removeDeadStructural input3500 value395 value1 value2 = (output3500, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3501 value395 value1 value2 = (output3501, value1161, value1) := by
  rw [input3501_def, output3501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1351]
  try dsimp only
  rw [child3500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1351_skip, output3500_skip]
  kernel_rfl

theorem node3502_cond_eq
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value394 value1 value2 = (output1350, value395, value1))
    (child3501 : Flapjack.WordAlloc.removeDeadStructural input3501 value395 value1 value2 = (output3501, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3502 value394 value1 value2 = (output3502, value1161, value1) := by
  rw [input3502_def, output3502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1350]
  try dsimp only
  rw [child3501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1350_skip, output3501_skip]
  kernel_rfl

theorem node3503_cond_eq
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value391 value1 value2 = (output1349, value394, value1))
    (child3502 : Flapjack.WordAlloc.removeDeadStructural input3502 value394 value1 value2 = (output3502, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3503 value391 value1 value2 = (output3503, value1161, value1) := by
  rw [input3503_def, output3503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1349]
  try dsimp only
  rw [child3502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1349_skip, output3502_skip]
  kernel_rfl

theorem node3504_cond_eq
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value391 value1 value2 = (output1344, value391, value1))
    (child3503 : Flapjack.WordAlloc.removeDeadStructural input3503 value391 value1 value2 = (output3503, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3504 value391 value1 value2 = (output3504, value1161, value1) := by
  rw [input3504_def, output3504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1344]
  try dsimp only
  rw [child3503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1344_skip, output3503_skip]
  kernel_rfl

theorem node3505_cond_eq
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value389 value1 value2 = (output1343, value391, value1))
    (child3504 : Flapjack.WordAlloc.removeDeadStructural input3504 value391 value1 value2 = (output3504, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3505 value389 value1 value2 = (output3505, value1161, value1) := by
  rw [input3505_def, output3505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1343]
  try dsimp only
  rw [child3504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1343_skip, output3504_skip]
  kernel_rfl

theorem node3506_cond_eq
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value388 value1 value2 = (output1340, value389, value1))
    (child3505 : Flapjack.WordAlloc.removeDeadStructural input3505 value389 value1 value2 = (output3505, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3506 value388 value1 value2 = (output3506, value1161, value1) := by
  rw [input3506_def, output3506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1340]
  try dsimp only
  rw [child3505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1340_skip, output3505_skip]
  kernel_rfl

theorem node3507_cond_eq
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value387 value1 value2 = (output1339, value388, value1))
    (child3506 : Flapjack.WordAlloc.removeDeadStructural input3506 value388 value1 value2 = (output3506, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3507 value387 value1 value2 = (output3507, value1161, value1) := by
  rw [input3507_def, output3507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1339]
  try dsimp only
  rw [child3506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1339_skip, output3506_skip]
  kernel_rfl

theorem node3508_cond_eq
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value385 value1 value2 = (output1338, value387, value1))
    (child3507 : Flapjack.WordAlloc.removeDeadStructural input3507 value387 value1 value2 = (output3507, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3508 value385 value1 value2 = (output3508, value1161, value1) := by
  rw [input3508_def, output3508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1338]
  try dsimp only
  rw [child3507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1338_skip, output3507_skip]
  kernel_rfl

theorem node3509_cond_eq
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value383 value1 value2 = (output1335, value385, value1))
    (child3508 : Flapjack.WordAlloc.removeDeadStructural input3508 value385 value1 value2 = (output3508, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3509 value383 value1 value2 = (output3509, value1161, value1) := by
  rw [input3509_def, output3509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1335]
  try dsimp only
  rw [child3508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1335_skip, output3508_skip]
  kernel_rfl

theorem node3510_cond_eq
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value382 value1 value2 = (output1332, value383, value1))
    (child3509 : Flapjack.WordAlloc.removeDeadStructural input3509 value383 value1 value2 = (output3509, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3510 value382 value1 value2 = (output3510, value1161, value1) := by
  rw [input3510_def, output3510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1332]
  try dsimp only
  rw [child3509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1332_skip, output3509_skip]
  kernel_rfl

theorem node3511_cond_eq
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value381 value1 value2 = (output1331, value382, value1))
    (child3510 : Flapjack.WordAlloc.removeDeadStructural input3510 value382 value1 value2 = (output3510, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3511 value381 value1 value2 = (output3511, value1161, value1) := by
  rw [input3511_def, output3511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1331]
  try dsimp only
  rw [child3510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1331_skip, output3510_skip]
  kernel_rfl

theorem node3512_cond_eq
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value379 value1 value2 = (output1330, value381, value1))
    (child3511 : Flapjack.WordAlloc.removeDeadStructural input3511 value381 value1 value2 = (output3511, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3512 value379 value1 value2 = (output3512, value1161, value1) := by
  rw [input3512_def, output3512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1330]
  try dsimp only
  rw [child3511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1330_skip, output3511_skip]
  kernel_rfl

theorem node3513_cond_eq
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value378 value1 value2 = (output1327, value379, value1))
    (child3512 : Flapjack.WordAlloc.removeDeadStructural input3512 value379 value1 value2 = (output3512, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3513 value378 value1 value2 = (output3513, value1161, value1) := by
  rw [input3513_def, output3513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1327]
  try dsimp only
  rw [child3512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1327_skip, output3512_skip]
  kernel_rfl

theorem node3514_cond_eq
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value375 value1 value2 = (output1326, value378, value1))
    (child3513 : Flapjack.WordAlloc.removeDeadStructural input3513 value378 value1 value2 = (output3513, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3514 value375 value1 value2 = (output3514, value1161, value1) := by
  rw [input3514_def, output3514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1326]
  try dsimp only
  rw [child3513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1326_skip, output3513_skip]
  kernel_rfl

theorem node3515_cond_eq
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value375 value1 value2 = (output1321, value375, value1))
    (child3514 : Flapjack.WordAlloc.removeDeadStructural input3514 value375 value1 value2 = (output3514, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3515 value375 value1 value2 = (output3515, value1161, value1) := by
  rw [input3515_def, output3515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1321]
  try dsimp only
  rw [child3514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1321_skip, output3514_skip]
  kernel_rfl

theorem node3516_cond_eq
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value368 value1 value2 = (output1320, value375, value1))
    (child3515 : Flapjack.WordAlloc.removeDeadStructural input3515 value375 value1 value2 = (output3515, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3516 value368 value1 value2 = (output3516, value1161, value1) := by
  rw [input3516_def, output3516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1320]
  try dsimp only
  rw [child3515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1320_skip, output3515_skip]
  kernel_rfl

theorem node3517_cond_eq
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value367 value1 value2 = (output1307, value368, value1))
    (child3516 : Flapjack.WordAlloc.removeDeadStructural input3516 value368 value1 value2 = (output3516, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3517 value367 value1 value2 = (output3517, value1161, value1) := by
  rw [input3517_def, output3517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1307]
  try dsimp only
  rw [child3516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1307_skip, output3516_skip]
  kernel_rfl

theorem node3518_cond_eq
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value364 value1 value2 = (output1306, value367, value1))
    (child3517 : Flapjack.WordAlloc.removeDeadStructural input3517 value367 value1 value2 = (output3517, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3518 value364 value1 value2 = (output3518, value1161, value1) := by
  rw [input3518_def, output3518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1306]
  try dsimp only
  rw [child3517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1306_skip, output3517_skip]
  kernel_rfl

theorem node3519_cond_eq
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value364 value1 value2 = (output1301, value364, value1))
    (child3518 : Flapjack.WordAlloc.removeDeadStructural input3518 value364 value1 value2 = (output3518, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3519 value364 value1 value2 = (output3519, value1161, value1) := by
  rw [input3519_def, output3519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1301]
  try dsimp only
  rw [child3518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1301_skip, output3518_skip]
  kernel_rfl

theorem node3520_cond_eq
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value363 value1 value2 = (output1300, value364, value1))
    (child3519 : Flapjack.WordAlloc.removeDeadStructural input3519 value364 value1 value2 = (output3519, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3520 value363 value1 value2 = (output3520, value1161, value1) := by
  rw [input3520_def, output3520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1300]
  try dsimp only
  rw [child3519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1300_skip, output3519_skip]
  kernel_rfl

theorem node3521_cond_eq
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value361 value1 value2 = (output1299, value363, value1))
    (child3520 : Flapjack.WordAlloc.removeDeadStructural input3520 value363 value1 value2 = (output3520, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3521 value361 value1 value2 = (output3521, value1161, value1) := by
  rw [input3521_def, output3521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1299]
  try dsimp only
  rw [child3520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1299_skip, output3520_skip]
  kernel_rfl

theorem node3522_cond_eq
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value358 value1 value2 = (output1296, value361, value1))
    (child3521 : Flapjack.WordAlloc.removeDeadStructural input3521 value361 value1 value2 = (output3521, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3522 value358 value1 value2 = (output3522, value1161, value1) := by
  rw [input3522_def, output3522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1296]
  try dsimp only
  rw [child3521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1296_skip, output3521_skip]
  kernel_rfl

theorem node3523_cond_eq
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value358 value1 value2 = (output1291, value358, value1))
    (child3522 : Flapjack.WordAlloc.removeDeadStructural input3522 value358 value1 value2 = (output3522, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3523 value358 value1 value2 = (output3523, value1161, value1) := by
  rw [input3523_def, output3523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1291]
  try dsimp only
  rw [child3522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1291_skip, output3522_skip]
  kernel_rfl

theorem node3524_cond_eq
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value355 value1 value2 = (output1290, value358, value1))
    (child3523 : Flapjack.WordAlloc.removeDeadStructural input3523 value358 value1 value2 = (output3523, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3524 value355 value1 value2 = (output3524, value1161, value1) := by
  rw [input3524_def, output3524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1290]
  try dsimp only
  rw [child3523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1290_skip, output3523_skip]
  kernel_rfl

theorem node3525_cond_eq
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value354 value1 value2 = (output1285, value355, value1))
    (child3524 : Flapjack.WordAlloc.removeDeadStructural input3524 value355 value1 value2 = (output3524, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3525 value354 value1 value2 = (output3525, value1161, value1) := by
  rw [input3525_def, output3525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1285]
  try dsimp only
  rw [child3524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1285_skip, output3524_skip]
  kernel_rfl

theorem node3526_cond_eq
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value353 value1 value2 = (output1284, value354, value1))
    (child3525 : Flapjack.WordAlloc.removeDeadStructural input3525 value354 value1 value2 = (output3525, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3526 value353 value1 value2 = (output3526, value1161, value1) := by
  rw [input3526_def, output3526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1284]
  try dsimp only
  rw [child3525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1284_skip, output3525_skip]
  kernel_rfl

theorem node3527_cond_eq
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value350 value1 value2 = (output1283, value353, value1))
    (child3526 : Flapjack.WordAlloc.removeDeadStructural input3526 value353 value1 value2 = (output3526, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3527 value350 value1 value2 = (output3527, value1161, value1) := by
  rw [input3527_def, output3527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1283]
  try dsimp only
  rw [child3526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1283_skip, output3526_skip]
  kernel_rfl

theorem node3528_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value350 value1 value2 = (output1278, value350, value1))
    (child3527 : Flapjack.WordAlloc.removeDeadStructural input3527 value350 value1 value2 = (output3527, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3528 value350 value1 value2 = (output3528, value1161, value1) := by
  rw [input3528_def, output3528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  try dsimp only
  rw [child3527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output3527_skip]
  kernel_rfl

theorem node3529_cond_eq
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value347 value1 value2 = (output1277, value350, value1))
    (child3528 : Flapjack.WordAlloc.removeDeadStructural input3528 value350 value1 value2 = (output3528, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3529 value347 value1 value2 = (output3529, value1161, value1) := by
  rw [input3529_def, output3529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1277]
  try dsimp only
  rw [child3528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1277_skip, output3528_skip]
  kernel_rfl

theorem node3530_cond_eq
    (child1272 : Flapjack.WordAlloc.removeDeadStructural input1272 value346 value1 value2 = (output1272, value347, value1))
    (child3529 : Flapjack.WordAlloc.removeDeadStructural input3529 value347 value1 value2 = (output3529, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3530 value346 value1 value2 = (output3530, value1161, value1) := by
  rw [input3530_def, output3530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1272]
  try dsimp only
  rw [child3529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1272_skip, output3529_skip]
  kernel_rfl

theorem node3531_cond_eq
    (child1271 : Flapjack.WordAlloc.removeDeadStructural input1271 value345 value1 value2 = (output1271, value346, value1))
    (child3530 : Flapjack.WordAlloc.removeDeadStructural input3530 value346 value1 value2 = (output3530, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3531 value345 value1 value2 = (output3531, value1161, value1) := by
  rw [input3531_def, output3531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1271]
  try dsimp only
  rw [child3530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1271_skip, output3530_skip]
  kernel_rfl

theorem node3532_cond_eq
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value344 value1 value2 = (output1270, value345, value1))
    (child3531 : Flapjack.WordAlloc.removeDeadStructural input3531 value345 value1 value2 = (output3531, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3532 value344 value1 value2 = (output3532, value1161, value1) := by
  rw [input3532_def, output3532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1270]
  try dsimp only
  rw [child3531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1270_skip, output3531_skip]
  kernel_rfl

theorem node3533_cond_eq
    (child1269 : Flapjack.WordAlloc.removeDeadStructural input1269 value343 value1 value2 = (output1269, value344, value1))
    (child3532 : Flapjack.WordAlloc.removeDeadStructural input3532 value344 value1 value2 = (output3532, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3533 value343 value1 value2 = (output3533, value1161, value1) := by
  rw [input3533_def, output3533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1269]
  try dsimp only
  rw [child3532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1269_skip, output3532_skip]
  kernel_rfl

theorem node3534_cond_eq
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value342 value1 value2 = (output1268, value343, value1))
    (child3533 : Flapjack.WordAlloc.removeDeadStructural input3533 value343 value1 value2 = (output3533, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3534 value342 value1 value2 = (output3534, value1161, value1) := by
  rw [input3534_def, output3534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1268]
  try dsimp only
  rw [child3533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1268_skip, output3533_skip]
  kernel_rfl

theorem node3535_cond_eq
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value339 value1 value2 = (output1267, value342, value1))
    (child3534 : Flapjack.WordAlloc.removeDeadStructural input3534 value342 value1 value2 = (output3534, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3535 value339 value1 value2 = (output3535, value1161, value1) := by
  rw [input3535_def, output3535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1267]
  try dsimp only
  rw [child3534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1267_skip, output3534_skip]
  kernel_rfl

theorem node3536_cond_eq
    (child1262 : Flapjack.WordAlloc.removeDeadStructural input1262 value339 value1 value2 = (output1262, value339, value1))
    (child3535 : Flapjack.WordAlloc.removeDeadStructural input3535 value339 value1 value2 = (output3535, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3536 value339 value1 value2 = (output3536, value1161, value1) := by
  rw [input3536_def, output3536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1262]
  try dsimp only
  rw [child3535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1262_skip, output3535_skip]
  kernel_rfl

theorem node3537_cond_eq
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value338 value1 value2 = (output1261, value339, value1))
    (child3536 : Flapjack.WordAlloc.removeDeadStructural input3536 value339 value1 value2 = (output3536, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3537 value338 value1 value2 = (output3537, value1161, value1) := by
  rw [input3537_def, output3537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1261]
  try dsimp only
  rw [child3536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1261_skip, output3536_skip]
  kernel_rfl

theorem node3538_cond_eq
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value337 value1 value2 = (output1260, value338, value1))
    (child3537 : Flapjack.WordAlloc.removeDeadStructural input3537 value338 value1 value2 = (output3537, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3538 value337 value1 value2 = (output3538, value1161, value1) := by
  rw [input3538_def, output3538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1260]
  try dsimp only
  rw [child3537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1260_skip, output3537_skip]
  kernel_rfl

theorem node3539_cond_eq
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value336 value1 value2 = (output1259, value337, value1))
    (child3538 : Flapjack.WordAlloc.removeDeadStructural input3538 value337 value1 value2 = (output3538, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3539 value336 value1 value2 = (output3539, value1161, value1) := by
  rw [input3539_def, output3539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1259]
  try dsimp only
  rw [child3538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1259_skip, output3538_skip]
  kernel_rfl

theorem node3540_cond_eq
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value335 value1 value2 = (output1258, value336, value1))
    (child3539 : Flapjack.WordAlloc.removeDeadStructural input3539 value336 value1 value2 = (output3539, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3540 value335 value1 value2 = (output3540, value1161, value1) := by
  rw [input3540_def, output3540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1258]
  try dsimp only
  rw [child3539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1258_skip, output3539_skip]
  kernel_rfl

theorem node3541_cond_eq
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value330 value1 value2 = (output1257, value335, value1))
    (child3540 : Flapjack.WordAlloc.removeDeadStructural input3540 value335 value1 value2 = (output3540, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3541 value330 value1 value2 = (output3541, value1161, value1) := by
  rw [input3541_def, output3541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1257]
  try dsimp only
  rw [child3540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1257_skip, output3540_skip]
  kernel_rfl

theorem node3542_cond_eq
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value325 value1 value2 = (output1248, value330, value1))
    (child3541 : Flapjack.WordAlloc.removeDeadStructural input3541 value330 value1 value2 = (output3541, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3542 value325 value1 value2 = (output3542, value1161, value1) := by
  rw [input3542_def, output3542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1248]
  try dsimp only
  rw [child3541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1248_skip, output3541_skip]
  kernel_rfl

theorem node3543_cond_eq
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value320 value1 value2 = (output1239, value325, value1))
    (child3542 : Flapjack.WordAlloc.removeDeadStructural input3542 value325 value1 value2 = (output3542, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3543 value320 value1 value2 = (output3543, value1161, value1) := by
  rw [input3543_def, output3543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1239]
  try dsimp only
  rw [child3542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1239_skip, output3542_skip]
  kernel_rfl

theorem node3544_cond_eq
    (child1230 : Flapjack.WordAlloc.removeDeadStructural input1230 value315 value1 value2 = (output1230, value320, value1))
    (child3543 : Flapjack.WordAlloc.removeDeadStructural input3543 value320 value1 value2 = (output3543, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3544 value315 value1 value2 = (output3544, value1161, value1) := by
  rw [input3544_def, output3544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1230]
  try dsimp only
  rw [child3543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1230_skip, output3543_skip]
  kernel_rfl

theorem node3545_cond_eq
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value312 value1 value2 = (output1221, value315, value1))
    (child3544 : Flapjack.WordAlloc.removeDeadStructural input3544 value315 value1 value2 = (output3544, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3545 value312 value1 value2 = (output3545, value1161, value1) := by
  rw [input3545_def, output3545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1221]
  try dsimp only
  rw [child3544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1221_skip, output3544_skip]
  kernel_rfl

theorem node3546_cond_eq
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value312 value1 value2 = (output1216, value312, value1))
    (child3545 : Flapjack.WordAlloc.removeDeadStructural input3545 value312 value1 value2 = (output3545, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3546 value312 value1 value2 = (output3546, value1161, value1) := by
  rw [input3546_def, output3546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1216]
  try dsimp only
  rw [child3545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1216_skip, output3545_skip]
  kernel_rfl

theorem node3547_cond_eq
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value311 value1 value2 = (output1215, value312, value1))
    (child3546 : Flapjack.WordAlloc.removeDeadStructural input3546 value312 value1 value2 = (output3546, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3547 value311 value1 value2 = (output3547, value1161, value1) := by
  rw [input3547_def, output3547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1215]
  try dsimp only
  rw [child3546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1215_skip, output3546_skip]
  kernel_rfl

theorem node3548_cond_eq
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value310 value1 value2 = (output1214, value311, value1))
    (child3547 : Flapjack.WordAlloc.removeDeadStructural input3547 value311 value1 value2 = (output3547, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3548 value310 value1 value2 = (output3548, value1161, value1) := by
  rw [input3548_def, output3548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1214]
  try dsimp only
  rw [child3547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1214_skip, output3547_skip]
  kernel_rfl

theorem node3549_cond_eq
    (child1213 : Flapjack.WordAlloc.removeDeadStructural input1213 value309 value1 value2 = (output1213, value310, value1))
    (child3548 : Flapjack.WordAlloc.removeDeadStructural input3548 value310 value1 value2 = (output3548, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3549 value309 value1 value2 = (output3549, value1161, value1) := by
  rw [input3549_def, output3549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1213]
  try dsimp only
  rw [child3548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1213_skip, output3548_skip]
  kernel_rfl

theorem node3550_cond_eq
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value308 value1 value2 = (output1212, value309, value1))
    (child3549 : Flapjack.WordAlloc.removeDeadStructural input3549 value309 value1 value2 = (output3549, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3550 value308 value1 value2 = (output3550, value1161, value1) := by
  rw [input3550_def, output3550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1212]
  try dsimp only
  rw [child3549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1212_skip, output3549_skip]
  kernel_rfl

theorem node3551_cond_eq
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value307 value1 value2 = (output1211, value308, value1))
    (child3550 : Flapjack.WordAlloc.removeDeadStructural input3550 value308 value1 value2 = (output3550, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3551 value307 value1 value2 = (output3551, value1161, value1) := by
  rw [input3551_def, output3551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1211]
  try dsimp only
  rw [child3550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1211_skip, output3550_skip]
  kernel_rfl

theorem node3552_cond_eq
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value304 value1 value2 = (output1210, value307, value1))
    (child3551 : Flapjack.WordAlloc.removeDeadStructural input3551 value307 value1 value2 = (output3551, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3552 value304 value1 value2 = (output3552, value1161, value1) := by
  rw [input3552_def, output3552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1210]
  try dsimp only
  rw [child3551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1210_skip, output3551_skip]
  kernel_rfl

theorem node3553_cond_eq
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value304 value1 value2 = (output1205, value304, value1))
    (child3552 : Flapjack.WordAlloc.removeDeadStructural input3552 value304 value1 value2 = (output3552, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3553 value304 value1 value2 = (output3553, value1161, value1) := by
  rw [input3553_def, output3553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1205]
  try dsimp only
  rw [child3552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1205_skip, output3552_skip]
  kernel_rfl

theorem node3554_cond_eq
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value303 value1 value2 = (output1204, value304, value1))
    (child3553 : Flapjack.WordAlloc.removeDeadStructural input3553 value304 value1 value2 = (output3553, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3554 value303 value1 value2 = (output3554, value1161, value1) := by
  rw [input3554_def, output3554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1204]
  try dsimp only
  rw [child3553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1204_skip, output3553_skip]
  kernel_rfl

theorem node3555_cond_eq
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value302 value1 value2 = (output1203, value303, value1))
    (child3554 : Flapjack.WordAlloc.removeDeadStructural input3554 value303 value1 value2 = (output3554, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3555 value302 value1 value2 = (output3555, value1161, value1) := by
  rw [input3555_def, output3555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1203]
  try dsimp only
  rw [child3554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1203_skip, output3554_skip]
  kernel_rfl

theorem node3556_cond_eq
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value301 value1 value2 = (output1202, value302, value1))
    (child3555 : Flapjack.WordAlloc.removeDeadStructural input3555 value302 value1 value2 = (output3555, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3556 value301 value1 value2 = (output3556, value1161, value1) := by
  rw [input3556_def, output3556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1202]
  try dsimp only
  rw [child3555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1202_skip, output3555_skip]
  kernel_rfl

theorem node3557_cond_eq
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value300 value1 value2 = (output1201, value301, value1))
    (child3556 : Flapjack.WordAlloc.removeDeadStructural input3556 value301 value1 value2 = (output3556, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3557 value300 value1 value2 = (output3557, value1161, value1) := by
  rw [input3557_def, output3557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1201]
  try dsimp only
  rw [child3556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1201_skip, output3556_skip]
  kernel_rfl

theorem node3558_cond_eq
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value299 value1 value2 = (output1200, value300, value1))
    (child3557 : Flapjack.WordAlloc.removeDeadStructural input3557 value300 value1 value2 = (output3557, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3558 value299 value1 value2 = (output3558, value1161, value1) := by
  rw [input3558_def, output3558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1200]
  try dsimp only
  rw [child3557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1200_skip, output3557_skip]
  kernel_rfl

theorem node3559_cond_eq
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value296 value1 value2 = (output1199, value299, value1))
    (child3558 : Flapjack.WordAlloc.removeDeadStructural input3558 value299 value1 value2 = (output3558, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3559 value296 value1 value2 = (output3559, value1161, value1) := by
  rw [input3559_def, output3559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1199]
  try dsimp only
  rw [child3558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1199_skip, output3558_skip]
  kernel_rfl

theorem node3560_cond_eq
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value296 value1 value2 = (output1194, value296, value1))
    (child3559 : Flapjack.WordAlloc.removeDeadStructural input3559 value296 value1 value2 = (output3559, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3560 value296 value1 value2 = (output3560, value1161, value1) := by
  rw [input3560_def, output3560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1194]
  try dsimp only
  rw [child3559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1194_skip, output3559_skip]
  kernel_rfl

theorem node3561_cond_eq
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value291 value1 value2 = (output1193, value296, value1))
    (child3560 : Flapjack.WordAlloc.removeDeadStructural input3560 value296 value1 value2 = (output3560, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3561 value291 value1 value2 = (output3561, value1161, value1) := by
  rw [input3561_def, output3561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1193]
  try dsimp only
  rw [child3560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1193_skip, output3560_skip]
  kernel_rfl

theorem node3562_cond_eq
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value290 value1 value2 = (output1184, value291, value1))
    (child3561 : Flapjack.WordAlloc.removeDeadStructural input3561 value291 value1 value2 = (output3561, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3562 value290 value1 value2 = (output3562, value1161, value1) := by
  rw [input3562_def, output3562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1184]
  try dsimp only
  rw [child3561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1184_skip, output3561_skip]
  kernel_rfl

theorem node3563_cond_eq
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value289 value1 value2 = (output1183, value290, value1))
    (child3562 : Flapjack.WordAlloc.removeDeadStructural input3562 value290 value1 value2 = (output3562, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3563 value289 value1 value2 = (output3563, value1161, value1) := by
  rw [input3563_def, output3563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1183]
  try dsimp only
  rw [child3562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1183_skip, output3562_skip]
  kernel_rfl

theorem node3564_cond_eq
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value288 value1 value2 = (output1182, value289, value1))
    (child3563 : Flapjack.WordAlloc.removeDeadStructural input3563 value289 value1 value2 = (output3563, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3564 value288 value1 value2 = (output3564, value1161, value1) := by
  rw [input3564_def, output3564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1182]
  try dsimp only
  rw [child3563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1182_skip, output3563_skip]
  kernel_rfl

theorem node3565_cond_eq
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value287 value1 value2 = (output1181, value288, value1))
    (child3564 : Flapjack.WordAlloc.removeDeadStructural input3564 value288 value1 value2 = (output3564, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3565 value287 value1 value2 = (output3565, value1161, value1) := by
  rw [input3565_def, output3565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1181]
  try dsimp only
  rw [child3564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1181_skip, output3564_skip]
  kernel_rfl

theorem node3566_cond_eq
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value284 value1 value2 = (output1180, value287, value1))
    (child3565 : Flapjack.WordAlloc.removeDeadStructural input3565 value287 value1 value2 = (output3565, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3566 value284 value1 value2 = (output3566, value1161, value1) := by
  rw [input3566_def, output3566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1180]
  try dsimp only
  rw [child3565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1180_skip, output3565_skip]
  kernel_rfl

theorem node3567_cond_eq
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value284 value1 value2 = (output1175, value284, value1))
    (child3566 : Flapjack.WordAlloc.removeDeadStructural input3566 value284 value1 value2 = (output3566, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3567 value284 value1 value2 = (output3567, value1161, value1) := by
  rw [input3567_def, output3567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1175]
  try dsimp only
  rw [child3566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1175_skip, output3566_skip]
  kernel_rfl

theorem node3568_cond_eq
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value280 value1 value2 = (output1174, value284, value1))
    (child3567 : Flapjack.WordAlloc.removeDeadStructural input3567 value284 value1 value2 = (output3567, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3568 value280 value1 value2 = (output3568, value1161, value1) := by
  rw [input3568_def, output3568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1174]
  try dsimp only
  rw [child3567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1174_skip, output3567_skip]
  kernel_rfl

theorem node3569_cond_eq
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value279 value1 value2 = (output1167, value280, value1))
    (child3568 : Flapjack.WordAlloc.removeDeadStructural input3568 value280 value1 value2 = (output3568, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3569 value279 value1 value2 = (output3569, value1161, value1) := by
  rw [input3569_def, output3569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1167]
  try dsimp only
  rw [child3568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1167_skip, output3568_skip]
  kernel_rfl

theorem node3570_cond_eq
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value276 value1 value2 = (output1166, value279, value1))
    (child3569 : Flapjack.WordAlloc.removeDeadStructural input3569 value279 value1 value2 = (output3569, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3570 value276 value1 value2 = (output3570, value1161, value1) := by
  rw [input3570_def, output3570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1166]
  try dsimp only
  rw [child3569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1166_skip, output3569_skip]
  kernel_rfl

theorem node3571_cond_eq
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value278 value1 value2 = (output1165, value276, value1))
    (child3570 : Flapjack.WordAlloc.removeDeadStructural input3570 value276 value1 value2 = (output3570, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3571 value278 value1 value2 = (output3571, value1161, value1) := by
  rw [input3571_def, output3571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1165]
  try dsimp only
  rw [child3570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1165_skip, output3570_skip]
  kernel_rfl

theorem node3572_cond_eq
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value273 value1 value2 = (output1164, value278, value1))
    (child3571 : Flapjack.WordAlloc.removeDeadStructural input3571 value278 value1 value2 = (output3571, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3572 value273 value1 value2 = (output3572, value1161, value1) := by
  rw [input3572_def, output3572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1164]
  try dsimp only
  rw [child3571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1164_skip, output3571_skip]
  kernel_rfl

theorem node3573_cond_eq
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value273 value1 value2 = (output1143, value273, value1))
    (child3572 : Flapjack.WordAlloc.removeDeadStructural input3572 value273 value1 value2 = (output3572, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3573 value273 value1 value2 = (output3573, value1161, value1) := by
  rw [input3573_def, output3573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1143]
  try dsimp only
  rw [child3572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1143_skip, output3572_skip]
  kernel_rfl

theorem node3574_cond_eq
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value270 value1 value2 = (output1142, value273, value1))
    (child3573 : Flapjack.WordAlloc.removeDeadStructural input3573 value273 value1 value2 = (output3573, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3574 value270 value1 value2 = (output3574, value1161, value1) := by
  rw [input3574_def, output3574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1142]
  try dsimp only
  rw [child3573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1142_skip, output3573_skip]
  kernel_rfl

theorem node3575_cond_eq
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value269 value1 value2 = (output1137, value270, value1))
    (child3574 : Flapjack.WordAlloc.removeDeadStructural input3574 value270 value1 value2 = (output3574, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3575 value269 value1 value2 = (output3575, value1161, value1) := by
  rw [input3575_def, output3575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1137]
  try dsimp only
  rw [child3574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1137_skip, output3574_skip]
  kernel_rfl

theorem node3576_cond_eq
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value266 value1 value2 = (output1136, value269, value1))
    (child3575 : Flapjack.WordAlloc.removeDeadStructural input3575 value269 value1 value2 = (output3575, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3576 value266 value1 value2 = (output3576, value1161, value1) := by
  rw [input3576_def, output3576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1136]
  try dsimp only
  rw [child3575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1136_skip, output3575_skip]
  kernel_rfl

theorem node3577_cond_eq
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value266 value1 value2 = (output1131, value266, value1))
    (child3576 : Flapjack.WordAlloc.removeDeadStructural input3576 value266 value1 value2 = (output3576, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3577 value266 value1 value2 = (output3577, value1161, value1) := by
  rw [input3577_def, output3577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1131]
  try dsimp only
  rw [child3576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1131_skip, output3576_skip]
  kernel_rfl

theorem node3578_cond_eq
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value262 value1 value2 = (output1130, value266, value1))
    (child3577 : Flapjack.WordAlloc.removeDeadStructural input3577 value266 value1 value2 = (output3577, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3578 value262 value1 value2 = (output3578, value1161, value1) := by
  rw [input3578_def, output3578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1130]
  try dsimp only
  rw [child3577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1130_skip, output3577_skip]
  kernel_rfl

theorem node3579_cond_eq
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value255 value1 value2 = (output1123, value262, value1))
    (child3578 : Flapjack.WordAlloc.removeDeadStructural input3578 value262 value1 value2 = (output3578, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3579 value255 value1 value2 = (output3579, value1161, value1) := by
  rw [input3579_def, output3579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1123]
  try dsimp only
  rw [child3578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1123_skip, output3578_skip]
  kernel_rfl

theorem node3580_cond_eq
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value254 value1 value2 = (output1110, value255, value1))
    (child3579 : Flapjack.WordAlloc.removeDeadStructural input3579 value255 value1 value2 = (output3579, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3580 value254 value1 value2 = (output3580, value1161, value1) := by
  rw [input3580_def, output3580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1110]
  try dsimp only
  rw [child3579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1110_skip, output3579_skip]
  kernel_rfl

theorem node3581_cond_eq
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value252 value1 value2 = (output1109, value254, value1))
    (child3580 : Flapjack.WordAlloc.removeDeadStructural input3580 value254 value1 value2 = (output3580, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3581 value252 value1 value2 = (output3581, value1161, value1) := by
  rw [input3581_def, output3581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1109]
  try dsimp only
  rw [child3580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1109_skip, output3580_skip]
  kernel_rfl

theorem node3582_cond_eq
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value247 value1 value2 = (output1106, value252, value1))
    (child3581 : Flapjack.WordAlloc.removeDeadStructural input3581 value252 value1 value2 = (output3581, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3582 value247 value1 value2 = (output3582, value1161, value1) := by
  rw [input3582_def, output3582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1106]
  try dsimp only
  rw [child3581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1106_skip, output3581_skip]
  kernel_rfl

theorem node3583_cond_eq
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value240 value1 value2 = (output1097, value247, value1))
    (child3582 : Flapjack.WordAlloc.removeDeadStructural input3582 value247 value1 value2 = (output3582, value1161, value1)) : Flapjack.WordAlloc.removeDeadStructural input3583 value240 value1 value2 = (output3583, value1161, value1) := by
  rw [input3583_def, output3583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1097]
  try dsimp only
  rw [child3582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1097_skip, output3582_skip]
  kernel_rfl

#print axioms node3583_cond_eq
end InitECandidate.Proofs.DeadStages875.Parallel
