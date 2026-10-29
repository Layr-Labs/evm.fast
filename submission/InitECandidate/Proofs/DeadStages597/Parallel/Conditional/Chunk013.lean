import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk013
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node3328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3328 value621 value1 value2 = (output3328, value619, value1) := by
  rw [input3328_def, output3328_def]
  kernel_rfl

theorem node3329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3329 value619 value1 value2 = (output3329, value622, value1) := by
  rw [input3329_def, output3329_def]
  kernel_rfl

theorem node3330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3330 value622 value1 value2 = (output3330, value622, value1) := by
  rw [input3330_def, output3330_def]
  kernel_rfl

theorem node3331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3331 value622 value1 value2 = (output3331, value622, value1) := by
  rw [input3331_def, output3331_def]
  kernel_rfl

theorem node3332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3332 value622 value1 value2 = (output3332, value622, value1) := by
  rw [input3332_def, output3332_def]
  kernel_rfl

theorem node3333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3333 value622 value1 value2 = (output3333, value622, value1) := by
  rw [input3333_def, output3333_def]
  kernel_rfl

theorem node3334_cond_eq
    (child3332 : Flapjack.WordAlloc.removeDeadStructural input3332 value622 value1 value2 = (output3332, value622, value1))
    (child3333 : Flapjack.WordAlloc.removeDeadStructural input3333 value622 value1 value2 = (output3333, value622, value1)) : Flapjack.WordAlloc.removeDeadStructural input3334 value622 value1 value2 = (output3334, value622, value1) := by
  rw [input3334_def, output3334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3332]
  try dsimp only
  rw [child3333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3332_skip, output3333_skip]
  kernel_rfl

theorem node3335_cond_eq
    (child3331 : Flapjack.WordAlloc.removeDeadStructural input3331 value622 value1 value2 = (output3331, value622, value1))
    (child3334 : Flapjack.WordAlloc.removeDeadStructural input3334 value622 value1 value2 = (output3334, value622, value1)) : Flapjack.WordAlloc.removeDeadStructural input3335 value622 value1 value2 = (output3335, value622, value1) := by
  rw [input3335_def, output3335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3331]
  try dsimp only
  rw [child3334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3331_skip, output3334_skip]
  kernel_rfl

theorem node3336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3336 value622 value1 value2 = (output3336, value622, value1) := by
  rw [input3336_def, output3336_def]
  kernel_rfl

theorem node3337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3337 value622 value1 value2 = (output3337, value622, value1) := by
  rw [input3337_def, output3337_def]
  kernel_rfl

theorem node3338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3338 value622 value1 value2 = (output3338, value622, value1) := by
  rw [input3338_def, output3338_def]
  kernel_rfl

theorem node3339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3339 value622 value1 value2 = (output3339, value617, value1) := by
  rw [input3339_def, output3339_def]
  kernel_rfl

theorem node3340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3340 value617 value1 value2 = (output3340, value617, value1) := by
  rw [input3340_def, output3340_def]
  kernel_rfl

theorem node3341_cond_eq
    (child3339 : Flapjack.WordAlloc.removeDeadStructural input3339 value622 value1 value2 = (output3339, value617, value1))
    (child3340 : Flapjack.WordAlloc.removeDeadStructural input3340 value617 value1 value2 = (output3340, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3341 value622 value1 value2 = (output3341, value617, value1) := by
  rw [input3341_def, output3341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3339]
  try dsimp only
  rw [child3340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3339_skip, output3340_skip]
  kernel_rfl

theorem node3342_cond_eq
    (child3338 : Flapjack.WordAlloc.removeDeadStructural input3338 value622 value1 value2 = (output3338, value622, value1))
    (child3341 : Flapjack.WordAlloc.removeDeadStructural input3341 value622 value1 value2 = (output3341, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3342 value622 value1 value2 = (output3342, value617, value1) := by
  rw [input3342_def, output3342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3338]
  try dsimp only
  rw [child3341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3338_skip, output3341_skip]
  kernel_rfl

theorem node3343_cond_eq
    (child3337 : Flapjack.WordAlloc.removeDeadStructural input3337 value622 value1 value2 = (output3337, value622, value1))
    (child3342 : Flapjack.WordAlloc.removeDeadStructural input3342 value622 value1 value2 = (output3342, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3343 value622 value1 value2 = (output3343, value617, value1) := by
  rw [input3343_def, output3343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3337]
  try dsimp only
  rw [child3342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3337_skip, output3342_skip]
  kernel_rfl

theorem node3344_cond_eq
    (child3336 : Flapjack.WordAlloc.removeDeadStructural input3336 value622 value1 value2 = (output3336, value622, value1))
    (child3343 : Flapjack.WordAlloc.removeDeadStructural input3343 value622 value1 value2 = (output3343, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input3344 value622 value1 value2 = (output3344, value617, value1) := by
  rw [input3344_def, output3344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3336]
  try dsimp only
  rw [child3343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3336_skip, output3343_skip]
  kernel_rfl

theorem node3345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3345 value617 value1 value2 = (output3345, value623, value1) := by
  rw [input3345_def, output3345_def]
  kernel_rfl

theorem node3346_cond_eq
    (child3344 : Flapjack.WordAlloc.removeDeadStructural input3344 value622 value1 value2 = (output3344, value617, value1))
    (child3345 : Flapjack.WordAlloc.removeDeadStructural input3345 value617 value1 value2 = (output3345, value623, value1)) : Flapjack.WordAlloc.removeDeadStructural input3346 value622 value1 value2 = (output3346, value623, value1) := by
  rw [input3346_def, output3346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3344]
  try dsimp only
  rw [child3345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3344_skip, output3345_skip]
  kernel_rfl

theorem node3347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3347 value623 value1 value2 = (output3347, value624, value1) := by
  rw [input3347_def, output3347_def]
  kernel_rfl

theorem node3348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3348 value624 value1 value2 = (output3348, value625, value1) := by
  rw [input3348_def, output3348_def]
  kernel_rfl

theorem node3349_cond_eq
    (child3347 : Flapjack.WordAlloc.removeDeadStructural input3347 value623 value1 value2 = (output3347, value624, value1))
    (child3348 : Flapjack.WordAlloc.removeDeadStructural input3348 value624 value1 value2 = (output3348, value625, value1)) : Flapjack.WordAlloc.removeDeadStructural input3349 value623 value1 value2 = (output3349, value625, value1) := by
  rw [input3349_def, output3349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3347]
  try dsimp only
  rw [child3348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3347_skip, output3348_skip]
  kernel_rfl

theorem node3350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3350 value625 value1 value2 = (output3350, value623, value1) := by
  rw [input3350_def, output3350_def]
  kernel_rfl

theorem node3351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3351 value623 value1 value2 = (output3351, value623, value1) := by
  rw [input3351_def, output3351_def]
  kernel_rfl

theorem node3352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3352 value623 value1 value2 = (output3352, value626, value1) := by
  rw [input3352_def, output3352_def]
  kernel_rfl

theorem node3353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3353 value626 value1 value2 = (output3353, value626, value1) := by
  rw [input3353_def, output3353_def]
  kernel_rfl

theorem node3354_cond_eq
    (child3352 : Flapjack.WordAlloc.removeDeadStructural input3352 value623 value1 value2 = (output3352, value626, value1))
    (child3353 : Flapjack.WordAlloc.removeDeadStructural input3353 value626 value1 value2 = (output3353, value626, value1)) : Flapjack.WordAlloc.removeDeadStructural input3354 value623 value1 value2 = (output3354, value626, value1) := by
  rw [input3354_def, output3354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3352]
  try dsimp only
  rw [child3353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3352_skip, output3353_skip]
  kernel_rfl

theorem node3355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3355 value626 value1 value2 = (output3355, value627, value1) := by
  rw [input3355_def, output3355_def]
  kernel_rfl

theorem node3356_cond_eq
    (child3354 : Flapjack.WordAlloc.removeDeadStructural input3354 value623 value1 value2 = (output3354, value626, value1))
    (child3355 : Flapjack.WordAlloc.removeDeadStructural input3355 value626 value1 value2 = (output3355, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3356 value623 value1 value2 = (output3356, value627, value1) := by
  rw [input3356_def, output3356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3354]
  try dsimp only
  rw [child3355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3354_skip, output3355_skip]
  kernel_rfl

theorem node3357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3357 value627 value1 value2 = (output3357, value627, value1) := by
  rw [input3357_def, output3357_def]
  kernel_rfl

theorem node3358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3358 value627 value1 value2 = (output3358, value627, value1) := by
  rw [input3358_def, output3358_def]
  kernel_rfl

theorem node3359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3359 value627 value1 value2 = (output3359, value627, value1) := by
  rw [input3359_def, output3359_def]
  kernel_rfl

theorem node3360_cond_eq
    (child3358 : Flapjack.WordAlloc.removeDeadStructural input3358 value627 value1 value2 = (output3358, value627, value1))
    (child3359 : Flapjack.WordAlloc.removeDeadStructural input3359 value627 value1 value2 = (output3359, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3360 value627 value1 value2 = (output3360, value627, value1) := by
  rw [input3360_def, output3360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3358]
  try dsimp only
  rw [child3359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3358_skip, output3359_skip]
  kernel_rfl

theorem node3361_cond_eq
    (child3357 : Flapjack.WordAlloc.removeDeadStructural input3357 value627 value1 value2 = (output3357, value627, value1))
    (child3360 : Flapjack.WordAlloc.removeDeadStructural input3360 value627 value1 value2 = (output3360, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3361 value627 value1 value2 = (output3361, value627, value1) := by
  rw [input3361_def, output3361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3357]
  try dsimp only
  rw [child3360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3357_skip, output3360_skip]
  kernel_rfl

theorem node3362_cond_eq
    (child3356 : Flapjack.WordAlloc.removeDeadStructural input3356 value623 value1 value2 = (output3356, value627, value1))
    (child3361 : Flapjack.WordAlloc.removeDeadStructural input3361 value627 value1 value2 = (output3361, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3362 value623 value1 value2 = (output3362, value627, value1) := by
  rw [input3362_def, output3362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3356]
  try dsimp only
  rw [child3361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3356_skip, output3361_skip]
  kernel_rfl

theorem node3363_cond_eq
    (child3351 : Flapjack.WordAlloc.removeDeadStructural input3351 value623 value1 value2 = (output3351, value623, value1))
    (child3362 : Flapjack.WordAlloc.removeDeadStructural input3362 value623 value1 value2 = (output3362, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3363 value623 value1 value2 = (output3363, value627, value1) := by
  rw [input3363_def, output3363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3351]
  try dsimp only
  rw [child3362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3351_skip, output3362_skip]
  kernel_rfl

theorem node3364_cond_eq
    (child3350 : Flapjack.WordAlloc.removeDeadStructural input3350 value625 value1 value2 = (output3350, value623, value1))
    (child3363 : Flapjack.WordAlloc.removeDeadStructural input3363 value623 value1 value2 = (output3363, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3364 value625 value1 value2 = (output3364, value627, value1) := by
  rw [input3364_def, output3364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3350]
  try dsimp only
  rw [child3363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3350_skip, output3363_skip]
  kernel_rfl

theorem node3365_cond_eq
    (child3349 : Flapjack.WordAlloc.removeDeadStructural input3349 value623 value1 value2 = (output3349, value625, value1))
    (child3364 : Flapjack.WordAlloc.removeDeadStructural input3364 value625 value1 value2 = (output3364, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3365 value623 value1 value2 = (output3365, value627, value1) := by
  rw [input3365_def, output3365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3349]
  try dsimp only
  rw [child3364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3349_skip, output3364_skip]
  kernel_rfl

theorem node3366_cond_eq
    (child3346 : Flapjack.WordAlloc.removeDeadStructural input3346 value622 value1 value2 = (output3346, value623, value1))
    (child3365 : Flapjack.WordAlloc.removeDeadStructural input3365 value623 value1 value2 = (output3365, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3366 value622 value1 value2 = (output3366, value627, value1) := by
  rw [input3366_def, output3366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3346]
  try dsimp only
  rw [child3365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3346_skip, output3365_skip]
  kernel_rfl

theorem node3367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3367 value622 value1 value2 = (output3367, value622, value1) := by
  rw [input3367_def, output3367_def]
  kernel_rfl

theorem node3368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3368 value622 value1 value2 = (output3368, value622, value1) := by
  rw [input3368_def, output3368_def]
  kernel_rfl

theorem node3369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3369 value622 value1 value2 = (output3369, value622, value1) := by
  rw [input3369_def, output3369_def]
  kernel_rfl

theorem node3370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3370 value622 value1 value2 = (output3370, value628, value1) := by
  rw [input3370_def, output3370_def]
  kernel_rfl

theorem node3371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3371 value628 value1 value2 = (output3371, value628, value1) := by
  rw [input3371_def, output3371_def]
  kernel_rfl

theorem node3372_cond_eq
    (child3370 : Flapjack.WordAlloc.removeDeadStructural input3370 value622 value1 value2 = (output3370, value628, value1))
    (child3371 : Flapjack.WordAlloc.removeDeadStructural input3371 value628 value1 value2 = (output3371, value628, value1)) : Flapjack.WordAlloc.removeDeadStructural input3372 value622 value1 value2 = (output3372, value628, value1) := by
  rw [input3372_def, output3372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3370]
  try dsimp only
  rw [child3371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3370_skip, output3371_skip]
  kernel_rfl

theorem node3373_cond_eq
    (child3369 : Flapjack.WordAlloc.removeDeadStructural input3369 value622 value1 value2 = (output3369, value622, value1))
    (child3372 : Flapjack.WordAlloc.removeDeadStructural input3372 value622 value1 value2 = (output3372, value628, value1)) : Flapjack.WordAlloc.removeDeadStructural input3373 value622 value1 value2 = (output3373, value628, value1) := by
  rw [input3373_def, output3373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3369]
  try dsimp only
  rw [child3372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3369_skip, output3372_skip]
  kernel_rfl

theorem node3374_cond_eq
    (child3368 : Flapjack.WordAlloc.removeDeadStructural input3368 value622 value1 value2 = (output3368, value622, value1))
    (child3373 : Flapjack.WordAlloc.removeDeadStructural input3373 value622 value1 value2 = (output3373, value628, value1)) : Flapjack.WordAlloc.removeDeadStructural input3374 value622 value1 value2 = (output3374, value628, value1) := by
  rw [input3374_def, output3374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3368]
  try dsimp only
  rw [child3373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3368_skip, output3373_skip]
  kernel_rfl

theorem node3375_cond_eq
    (child3367 : Flapjack.WordAlloc.removeDeadStructural input3367 value622 value1 value2 = (output3367, value622, value1))
    (child3374 : Flapjack.WordAlloc.removeDeadStructural input3374 value622 value1 value2 = (output3374, value628, value1)) : Flapjack.WordAlloc.removeDeadStructural input3375 value622 value1 value2 = (output3375, value628, value1) := by
  rw [input3375_def, output3375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3367]
  try dsimp only
  rw [child3374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3367_skip, output3374_skip]
  kernel_rfl

theorem node3376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3376 value628 value1 value2 = (output3376, value629, value1) := by
  rw [input3376_def, output3376_def]
  kernel_rfl

theorem node3377_cond_eq
    (child3375 : Flapjack.WordAlloc.removeDeadStructural input3375 value622 value1 value2 = (output3375, value628, value1))
    (child3376 : Flapjack.WordAlloc.removeDeadStructural input3376 value628 value1 value2 = (output3376, value629, value1)) : Flapjack.WordAlloc.removeDeadStructural input3377 value622 value1 value2 = (output3377, value629, value1) := by
  rw [input3377_def, output3377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3375]
  try dsimp only
  rw [child3376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3375_skip, output3376_skip]
  kernel_rfl

theorem node3378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3378 value629 value1 value2 = (output3378, value629, value1) := by
  rw [input3378_def, output3378_def]
  kernel_rfl

theorem node3379_cond_eq
    (child3377 : Flapjack.WordAlloc.removeDeadStructural input3377 value622 value1 value2 = (output3377, value629, value1))
    (child3378 : Flapjack.WordAlloc.removeDeadStructural input3378 value629 value1 value2 = (output3378, value629, value1)) : Flapjack.WordAlloc.removeDeadStructural input3379 value622 value1 value2 = (output3379, value629, value1) := by
  rw [input3379_def, output3379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3377]
  try dsimp only
  rw [child3378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3377_skip, output3378_skip]
  kernel_rfl

theorem node3380_cond_eq
    (child3366 : Flapjack.WordAlloc.removeDeadStructural input3366 value622 value1 value2 = (output3366, value627, value1))
    (child3379 : Flapjack.WordAlloc.removeDeadStructural input3379 value622 value1 value2 = (output3379, value629, value1)) : Flapjack.WordAlloc.removeDeadStructural input3380 value622 value1 value2 = (output3380, value631, value1) := by
  rw [input3380_def, output3380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3366]
  try dsimp only
  rw [child3379]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3366_skip, output3379_skip]
  kernel_rfl

theorem node3381_cond_eq
    (child3335 : Flapjack.WordAlloc.removeDeadStructural input3335 value622 value1 value2 = (output3335, value622, value1))
    (child3380 : Flapjack.WordAlloc.removeDeadStructural input3380 value622 value1 value2 = (output3380, value631, value1)) : Flapjack.WordAlloc.removeDeadStructural input3381 value622 value1 value2 = (output3381, value631, value1) := by
  rw [input3381_def, output3381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3335]
  try dsimp only
  rw [child3380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3335_skip, output3380_skip]
  kernel_rfl

theorem node3382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3382 value631 value1 value2 = (output3382, value629, value1) := by
  rw [input3382_def, output3382_def]
  kernel_rfl

theorem node3383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3383 value629 value1 value2 = (output3383, value632, value1) := by
  rw [input3383_def, output3383_def]
  kernel_rfl

theorem node3384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3384 value632 value1 value2 = (output3384, value632, value1) := by
  rw [input3384_def, output3384_def]
  kernel_rfl

theorem node3385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3385 value632 value1 value2 = (output3385, value632, value1) := by
  rw [input3385_def, output3385_def]
  kernel_rfl

theorem node3386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3386 value632 value1 value2 = (output3386, value632, value1) := by
  rw [input3386_def, output3386_def]
  kernel_rfl

theorem node3387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3387 value632 value1 value2 = (output3387, value632, value1) := by
  rw [input3387_def, output3387_def]
  kernel_rfl

theorem node3388_cond_eq
    (child3386 : Flapjack.WordAlloc.removeDeadStructural input3386 value632 value1 value2 = (output3386, value632, value1))
    (child3387 : Flapjack.WordAlloc.removeDeadStructural input3387 value632 value1 value2 = (output3387, value632, value1)) : Flapjack.WordAlloc.removeDeadStructural input3388 value632 value1 value2 = (output3388, value632, value1) := by
  rw [input3388_def, output3388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3386]
  try dsimp only
  rw [child3387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3386_skip, output3387_skip]
  kernel_rfl

theorem node3389_cond_eq
    (child3385 : Flapjack.WordAlloc.removeDeadStructural input3385 value632 value1 value2 = (output3385, value632, value1))
    (child3388 : Flapjack.WordAlloc.removeDeadStructural input3388 value632 value1 value2 = (output3388, value632, value1)) : Flapjack.WordAlloc.removeDeadStructural input3389 value632 value1 value2 = (output3389, value632, value1) := by
  rw [input3389_def, output3389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3385]
  try dsimp only
  rw [child3388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3385_skip, output3388_skip]
  kernel_rfl

theorem node3390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3390 value632 value1 value2 = (output3390, value632, value1) := by
  rw [input3390_def, output3390_def]
  kernel_rfl

theorem node3391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3391 value632 value1 value2 = (output3391, value632, value1) := by
  rw [input3391_def, output3391_def]
  kernel_rfl

theorem node3392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3392 value632 value1 value2 = (output3392, value632, value1) := by
  rw [input3392_def, output3392_def]
  kernel_rfl

theorem node3393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3393 value632 value1 value2 = (output3393, value627, value1) := by
  rw [input3393_def, output3393_def]
  kernel_rfl

theorem node3394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3394 value627 value1 value2 = (output3394, value627, value1) := by
  rw [input3394_def, output3394_def]
  kernel_rfl

theorem node3395_cond_eq
    (child3393 : Flapjack.WordAlloc.removeDeadStructural input3393 value632 value1 value2 = (output3393, value627, value1))
    (child3394 : Flapjack.WordAlloc.removeDeadStructural input3394 value627 value1 value2 = (output3394, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3395 value632 value1 value2 = (output3395, value627, value1) := by
  rw [input3395_def, output3395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3393]
  try dsimp only
  rw [child3394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3393_skip, output3394_skip]
  kernel_rfl

theorem node3396_cond_eq
    (child3392 : Flapjack.WordAlloc.removeDeadStructural input3392 value632 value1 value2 = (output3392, value632, value1))
    (child3395 : Flapjack.WordAlloc.removeDeadStructural input3395 value632 value1 value2 = (output3395, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3396 value632 value1 value2 = (output3396, value627, value1) := by
  rw [input3396_def, output3396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3392]
  try dsimp only
  rw [child3395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3392_skip, output3395_skip]
  kernel_rfl

theorem node3397_cond_eq
    (child3391 : Flapjack.WordAlloc.removeDeadStructural input3391 value632 value1 value2 = (output3391, value632, value1))
    (child3396 : Flapjack.WordAlloc.removeDeadStructural input3396 value632 value1 value2 = (output3396, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3397 value632 value1 value2 = (output3397, value627, value1) := by
  rw [input3397_def, output3397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3391]
  try dsimp only
  rw [child3396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3391_skip, output3396_skip]
  kernel_rfl

theorem node3398_cond_eq
    (child3390 : Flapjack.WordAlloc.removeDeadStructural input3390 value632 value1 value2 = (output3390, value632, value1))
    (child3397 : Flapjack.WordAlloc.removeDeadStructural input3397 value632 value1 value2 = (output3397, value627, value1)) : Flapjack.WordAlloc.removeDeadStructural input3398 value632 value1 value2 = (output3398, value627, value1) := by
  rw [input3398_def, output3398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3390]
  try dsimp only
  rw [child3397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3390_skip, output3397_skip]
  kernel_rfl

theorem node3399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3399 value627 value1 value2 = (output3399, value633, value1) := by
  rw [input3399_def, output3399_def]
  kernel_rfl

theorem node3400_cond_eq
    (child3398 : Flapjack.WordAlloc.removeDeadStructural input3398 value632 value1 value2 = (output3398, value627, value1))
    (child3399 : Flapjack.WordAlloc.removeDeadStructural input3399 value627 value1 value2 = (output3399, value633, value1)) : Flapjack.WordAlloc.removeDeadStructural input3400 value632 value1 value2 = (output3400, value633, value1) := by
  rw [input3400_def, output3400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3398]
  try dsimp only
  rw [child3399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3398_skip, output3399_skip]
  kernel_rfl

theorem node3401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3401 value633 value1 value2 = (output3401, value634, value1) := by
  rw [input3401_def, output3401_def]
  kernel_rfl

theorem node3402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3402 value634 value1 value2 = (output3402, value635, value1) := by
  rw [input3402_def, output3402_def]
  kernel_rfl

theorem node3403_cond_eq
    (child3401 : Flapjack.WordAlloc.removeDeadStructural input3401 value633 value1 value2 = (output3401, value634, value1))
    (child3402 : Flapjack.WordAlloc.removeDeadStructural input3402 value634 value1 value2 = (output3402, value635, value1)) : Flapjack.WordAlloc.removeDeadStructural input3403 value633 value1 value2 = (output3403, value635, value1) := by
  rw [input3403_def, output3403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3401]
  try dsimp only
  rw [child3402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3401_skip, output3402_skip]
  kernel_rfl

theorem node3404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3404 value635 value1 value2 = (output3404, value633, value1) := by
  rw [input3404_def, output3404_def]
  kernel_rfl

theorem node3405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3405 value633 value1 value2 = (output3405, value633, value1) := by
  rw [input3405_def, output3405_def]
  kernel_rfl

theorem node3406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3406 value633 value1 value2 = (output3406, value636, value1) := by
  rw [input3406_def, output3406_def]
  kernel_rfl

theorem node3407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3407 value636 value1 value2 = (output3407, value636, value1) := by
  rw [input3407_def, output3407_def]
  kernel_rfl

theorem node3408_cond_eq
    (child3406 : Flapjack.WordAlloc.removeDeadStructural input3406 value633 value1 value2 = (output3406, value636, value1))
    (child3407 : Flapjack.WordAlloc.removeDeadStructural input3407 value636 value1 value2 = (output3407, value636, value1)) : Flapjack.WordAlloc.removeDeadStructural input3408 value633 value1 value2 = (output3408, value636, value1) := by
  rw [input3408_def, output3408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3406]
  try dsimp only
  rw [child3407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3406_skip, output3407_skip]
  kernel_rfl

theorem node3409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3409 value636 value1 value2 = (output3409, value353, value1) := by
  rw [input3409_def, output3409_def]
  kernel_rfl

theorem node3410_cond_eq
    (child3408 : Flapjack.WordAlloc.removeDeadStructural input3408 value633 value1 value2 = (output3408, value636, value1))
    (child3409 : Flapjack.WordAlloc.removeDeadStructural input3409 value636 value1 value2 = (output3409, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input3410 value633 value1 value2 = (output3410, value353, value1) := by
  rw [input3410_def, output3410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3408]
  try dsimp only
  rw [child3409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3408_skip, output3409_skip]
  kernel_rfl

theorem node3411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3411 value353 value1 value2 = (output3411, value353, value1) := by
  rw [input3411_def, output3411_def]
  kernel_rfl

theorem node3412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3412 value353 value1 value2 = (output3412, value353, value1) := by
  rw [input3412_def, output3412_def]
  kernel_rfl

theorem node3413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3413 value353 value1 value2 = (output3413, value353, value1) := by
  rw [input3413_def, output3413_def]
  kernel_rfl

theorem node3414_cond_eq
    (child3412 : Flapjack.WordAlloc.removeDeadStructural input3412 value353 value1 value2 = (output3412, value353, value1))
    (child3413 : Flapjack.WordAlloc.removeDeadStructural input3413 value353 value1 value2 = (output3413, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input3414 value353 value1 value2 = (output3414, value353, value1) := by
  rw [input3414_def, output3414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3412]
  try dsimp only
  rw [child3413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3412_skip, output3413_skip]
  kernel_rfl

theorem node3415_cond_eq
    (child3411 : Flapjack.WordAlloc.removeDeadStructural input3411 value353 value1 value2 = (output3411, value353, value1))
    (child3414 : Flapjack.WordAlloc.removeDeadStructural input3414 value353 value1 value2 = (output3414, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input3415 value353 value1 value2 = (output3415, value353, value1) := by
  rw [input3415_def, output3415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3411]
  try dsimp only
  rw [child3414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3411_skip, output3414_skip]
  kernel_rfl

theorem node3416_cond_eq
    (child3410 : Flapjack.WordAlloc.removeDeadStructural input3410 value633 value1 value2 = (output3410, value353, value1))
    (child3415 : Flapjack.WordAlloc.removeDeadStructural input3415 value353 value1 value2 = (output3415, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input3416 value633 value1 value2 = (output3416, value353, value1) := by
  rw [input3416_def, output3416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3410]
  try dsimp only
  rw [child3415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3410_skip, output3415_skip]
  kernel_rfl

theorem node3417_cond_eq
    (child3405 : Flapjack.WordAlloc.removeDeadStructural input3405 value633 value1 value2 = (output3405, value633, value1))
    (child3416 : Flapjack.WordAlloc.removeDeadStructural input3416 value633 value1 value2 = (output3416, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input3417 value633 value1 value2 = (output3417, value353, value1) := by
  rw [input3417_def, output3417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3405]
  try dsimp only
  rw [child3416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3405_skip, output3416_skip]
  kernel_rfl

theorem node3418_cond_eq
    (child3404 : Flapjack.WordAlloc.removeDeadStructural input3404 value635 value1 value2 = (output3404, value633, value1))
    (child3417 : Flapjack.WordAlloc.removeDeadStructural input3417 value633 value1 value2 = (output3417, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input3418 value635 value1 value2 = (output3418, value353, value1) := by
  rw [input3418_def, output3418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3404]
  try dsimp only
  rw [child3417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3404_skip, output3417_skip]
  kernel_rfl

theorem node3419_cond_eq
    (child3403 : Flapjack.WordAlloc.removeDeadStructural input3403 value633 value1 value2 = (output3403, value635, value1))
    (child3418 : Flapjack.WordAlloc.removeDeadStructural input3418 value635 value1 value2 = (output3418, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input3419 value633 value1 value2 = (output3419, value353, value1) := by
  rw [input3419_def, output3419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3403]
  try dsimp only
  rw [child3418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3403_skip, output3418_skip]
  kernel_rfl

theorem node3420_cond_eq
    (child3400 : Flapjack.WordAlloc.removeDeadStructural input3400 value632 value1 value2 = (output3400, value633, value1))
    (child3419 : Flapjack.WordAlloc.removeDeadStructural input3419 value633 value1 value2 = (output3419, value353, value1)) : Flapjack.WordAlloc.removeDeadStructural input3420 value632 value1 value2 = (output3420, value353, value1) := by
  rw [input3420_def, output3420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3400]
  try dsimp only
  rw [child3419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3400_skip, output3419_skip]
  kernel_rfl

theorem node3421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3421 value632 value1 value2 = (output3421, value632, value1) := by
  rw [input3421_def, output3421_def]
  kernel_rfl

theorem node3422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3422 value632 value1 value2 = (output3422, value632, value1) := by
  rw [input3422_def, output3422_def]
  kernel_rfl

theorem node3423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3423 value632 value1 value2 = (output3423, value632, value1) := by
  rw [input3423_def, output3423_def]
  kernel_rfl

theorem node3424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3424 value632 value1 value2 = (output3424, value637, value1) := by
  rw [input3424_def, output3424_def]
  kernel_rfl

theorem node3425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3425 value637 value1 value2 = (output3425, value637, value1) := by
  rw [input3425_def, output3425_def]
  kernel_rfl

theorem node3426_cond_eq
    (child3424 : Flapjack.WordAlloc.removeDeadStructural input3424 value632 value1 value2 = (output3424, value637, value1))
    (child3425 : Flapjack.WordAlloc.removeDeadStructural input3425 value637 value1 value2 = (output3425, value637, value1)) : Flapjack.WordAlloc.removeDeadStructural input3426 value632 value1 value2 = (output3426, value637, value1) := by
  rw [input3426_def, output3426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3424]
  try dsimp only
  rw [child3425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3424_skip, output3425_skip]
  kernel_rfl

theorem node3427_cond_eq
    (child3423 : Flapjack.WordAlloc.removeDeadStructural input3423 value632 value1 value2 = (output3423, value632, value1))
    (child3426 : Flapjack.WordAlloc.removeDeadStructural input3426 value632 value1 value2 = (output3426, value637, value1)) : Flapjack.WordAlloc.removeDeadStructural input3427 value632 value1 value2 = (output3427, value637, value1) := by
  rw [input3427_def, output3427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3423]
  try dsimp only
  rw [child3426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3423_skip, output3426_skip]
  kernel_rfl

theorem node3428_cond_eq
    (child3422 : Flapjack.WordAlloc.removeDeadStructural input3422 value632 value1 value2 = (output3422, value632, value1))
    (child3427 : Flapjack.WordAlloc.removeDeadStructural input3427 value632 value1 value2 = (output3427, value637, value1)) : Flapjack.WordAlloc.removeDeadStructural input3428 value632 value1 value2 = (output3428, value637, value1) := by
  rw [input3428_def, output3428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3422]
  try dsimp only
  rw [child3427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3422_skip, output3427_skip]
  kernel_rfl

theorem node3429_cond_eq
    (child3421 : Flapjack.WordAlloc.removeDeadStructural input3421 value632 value1 value2 = (output3421, value632, value1))
    (child3428 : Flapjack.WordAlloc.removeDeadStructural input3428 value632 value1 value2 = (output3428, value637, value1)) : Flapjack.WordAlloc.removeDeadStructural input3429 value632 value1 value2 = (output3429, value637, value1) := by
  rw [input3429_def, output3429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3421]
  try dsimp only
  rw [child3428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3421_skip, output3428_skip]
  kernel_rfl

theorem node3430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3430 value637 value1 value2 = (output3430, value638, value1) := by
  rw [input3430_def, output3430_def]
  kernel_rfl

theorem node3431_cond_eq
    (child3429 : Flapjack.WordAlloc.removeDeadStructural input3429 value632 value1 value2 = (output3429, value637, value1))
    (child3430 : Flapjack.WordAlloc.removeDeadStructural input3430 value637 value1 value2 = (output3430, value638, value1)) : Flapjack.WordAlloc.removeDeadStructural input3431 value632 value1 value2 = (output3431, value638, value1) := by
  rw [input3431_def, output3431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3429]
  try dsimp only
  rw [child3430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3429_skip, output3430_skip]
  kernel_rfl

theorem node3432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3432 value638 value1 value2 = (output3432, value638, value1) := by
  rw [input3432_def, output3432_def]
  kernel_rfl

theorem node3433_cond_eq
    (child3431 : Flapjack.WordAlloc.removeDeadStructural input3431 value632 value1 value2 = (output3431, value638, value1))
    (child3432 : Flapjack.WordAlloc.removeDeadStructural input3432 value638 value1 value2 = (output3432, value638, value1)) : Flapjack.WordAlloc.removeDeadStructural input3433 value632 value1 value2 = (output3433, value638, value1) := by
  rw [input3433_def, output3433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3431]
  try dsimp only
  rw [child3432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3431_skip, output3432_skip]
  kernel_rfl

theorem node3434_cond_eq
    (child3420 : Flapjack.WordAlloc.removeDeadStructural input3420 value632 value1 value2 = (output3420, value353, value1))
    (child3433 : Flapjack.WordAlloc.removeDeadStructural input3433 value632 value1 value2 = (output3433, value638, value1)) : Flapjack.WordAlloc.removeDeadStructural input3434 value632 value1 value2 = (output3434, value640, value1) := by
  rw [input3434_def, output3434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3420]
  try dsimp only
  rw [child3433]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3420_skip, output3433_skip]
  kernel_rfl

theorem node3435_cond_eq
    (child3389 : Flapjack.WordAlloc.removeDeadStructural input3389 value632 value1 value2 = (output3389, value632, value1))
    (child3434 : Flapjack.WordAlloc.removeDeadStructural input3434 value632 value1 value2 = (output3434, value640, value1)) : Flapjack.WordAlloc.removeDeadStructural input3435 value632 value1 value2 = (output3435, value640, value1) := by
  rw [input3435_def, output3435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3389]
  try dsimp only
  rw [child3434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3389_skip, output3434_skip]
  kernel_rfl

theorem node3436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3436 value640 value1 value2 = (output3436, value638, value1) := by
  rw [input3436_def, output3436_def]
  kernel_rfl

theorem node3437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3437 value638 value1 value2 = (output3437, value358, value1) := by
  rw [input3437_def, output3437_def]
  kernel_rfl

theorem node3438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3438 value358 value1 value2 = (output3438, value358, value1) := by
  rw [input3438_def, output3438_def]
  kernel_rfl

theorem node3439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3439 value358 value1 value2 = (output3439, value358, value1) := by
  rw [input3439_def, output3439_def]
  kernel_rfl

theorem node3440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3440 value358 value1 value2 = (output3440, value358, value1) := by
  rw [input3440_def, output3440_def]
  kernel_rfl

theorem node3441_cond_eq
    (child3439 : Flapjack.WordAlloc.removeDeadStructural input3439 value358 value1 value2 = (output3439, value358, value1))
    (child3440 : Flapjack.WordAlloc.removeDeadStructural input3440 value358 value1 value2 = (output3440, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3441 value358 value1 value2 = (output3441, value358, value1) := by
  rw [input3441_def, output3441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3439]
  try dsimp only
  rw [child3440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3439_skip, output3440_skip]
  kernel_rfl

theorem node3442_cond_eq
    (child3438 : Flapjack.WordAlloc.removeDeadStructural input3438 value358 value1 value2 = (output3438, value358, value1))
    (child3441 : Flapjack.WordAlloc.removeDeadStructural input3441 value358 value1 value2 = (output3441, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3442 value358 value1 value2 = (output3442, value358, value1) := by
  rw [input3442_def, output3442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3438]
  try dsimp only
  rw [child3441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3438_skip, output3441_skip]
  kernel_rfl

theorem node3443_cond_eq
    (child3437 : Flapjack.WordAlloc.removeDeadStructural input3437 value638 value1 value2 = (output3437, value358, value1))
    (child3442 : Flapjack.WordAlloc.removeDeadStructural input3442 value358 value1 value2 = (output3442, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3443 value638 value1 value2 = (output3443, value358, value1) := by
  rw [input3443_def, output3443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3437]
  try dsimp only
  rw [child3442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3437_skip, output3442_skip]
  kernel_rfl

theorem node3444_cond_eq
    (child3436 : Flapjack.WordAlloc.removeDeadStructural input3436 value640 value1 value2 = (output3436, value638, value1))
    (child3443 : Flapjack.WordAlloc.removeDeadStructural input3443 value638 value1 value2 = (output3443, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3444 value640 value1 value2 = (output3444, value358, value1) := by
  rw [input3444_def, output3444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3436]
  try dsimp only
  rw [child3443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3436_skip, output3443_skip]
  kernel_rfl

theorem node3445_cond_eq
    (child3435 : Flapjack.WordAlloc.removeDeadStructural input3435 value632 value1 value2 = (output3435, value640, value1))
    (child3444 : Flapjack.WordAlloc.removeDeadStructural input3444 value640 value1 value2 = (output3444, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3445 value632 value1 value2 = (output3445, value358, value1) := by
  rw [input3445_def, output3445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3435]
  try dsimp only
  rw [child3444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3435_skip, output3444_skip]
  kernel_rfl

theorem node3446_cond_eq
    (child3384 : Flapjack.WordAlloc.removeDeadStructural input3384 value632 value1 value2 = (output3384, value632, value1))
    (child3445 : Flapjack.WordAlloc.removeDeadStructural input3445 value632 value1 value2 = (output3445, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3446 value632 value1 value2 = (output3446, value358, value1) := by
  rw [input3446_def, output3446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3384]
  try dsimp only
  rw [child3445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3384_skip, output3445_skip]
  kernel_rfl

theorem node3447_cond_eq
    (child3383 : Flapjack.WordAlloc.removeDeadStructural input3383 value629 value1 value2 = (output3383, value632, value1))
    (child3446 : Flapjack.WordAlloc.removeDeadStructural input3446 value632 value1 value2 = (output3446, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3447 value629 value1 value2 = (output3447, value358, value1) := by
  rw [input3447_def, output3447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3383]
  try dsimp only
  rw [child3446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3383_skip, output3446_skip]
  kernel_rfl

theorem node3448_cond_eq
    (child3382 : Flapjack.WordAlloc.removeDeadStructural input3382 value631 value1 value2 = (output3382, value629, value1))
    (child3447 : Flapjack.WordAlloc.removeDeadStructural input3447 value629 value1 value2 = (output3447, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3448 value631 value1 value2 = (output3448, value358, value1) := by
  rw [input3448_def, output3448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3382]
  try dsimp only
  rw [child3447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3382_skip, output3447_skip]
  kernel_rfl

theorem node3449_cond_eq
    (child3381 : Flapjack.WordAlloc.removeDeadStructural input3381 value622 value1 value2 = (output3381, value631, value1))
    (child3448 : Flapjack.WordAlloc.removeDeadStructural input3448 value631 value1 value2 = (output3448, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3449 value622 value1 value2 = (output3449, value358, value1) := by
  rw [input3449_def, output3449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3381]
  try dsimp only
  rw [child3448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3381_skip, output3448_skip]
  kernel_rfl

theorem node3450_cond_eq
    (child3330 : Flapjack.WordAlloc.removeDeadStructural input3330 value622 value1 value2 = (output3330, value622, value1))
    (child3449 : Flapjack.WordAlloc.removeDeadStructural input3449 value622 value1 value2 = (output3449, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3450 value622 value1 value2 = (output3450, value358, value1) := by
  rw [input3450_def, output3450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3330]
  try dsimp only
  rw [child3449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3330_skip, output3449_skip]
  kernel_rfl

theorem node3451_cond_eq
    (child3329 : Flapjack.WordAlloc.removeDeadStructural input3329 value619 value1 value2 = (output3329, value622, value1))
    (child3450 : Flapjack.WordAlloc.removeDeadStructural input3450 value622 value1 value2 = (output3450, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3451 value619 value1 value2 = (output3451, value358, value1) := by
  rw [input3451_def, output3451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3329]
  try dsimp only
  rw [child3450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3329_skip, output3450_skip]
  kernel_rfl

theorem node3452_cond_eq
    (child3328 : Flapjack.WordAlloc.removeDeadStructural input3328 value621 value1 value2 = (output3328, value619, value1))
    (child3451 : Flapjack.WordAlloc.removeDeadStructural input3451 value619 value1 value2 = (output3451, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3452 value621 value1 value2 = (output3452, value358, value1) := by
  rw [input3452_def, output3452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3328]
  try dsimp only
  rw [child3451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3328_skip, output3451_skip]
  kernel_rfl

theorem node3453_cond_eq
    (child3327 : Flapjack.WordAlloc.removeDeadStructural input3327 value612 value1 value2 = (output3327, value621, value1))
    (child3452 : Flapjack.WordAlloc.removeDeadStructural input3452 value621 value1 value2 = (output3452, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3453 value612 value1 value2 = (output3453, value358, value1) := by
  rw [input3453_def, output3453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3327]
  try dsimp only
  rw [child3452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3327_skip, output3452_skip]
  kernel_rfl

theorem node3454_cond_eq
    (child3276 : Flapjack.WordAlloc.removeDeadStructural input3276 value612 value1 value2 = (output3276, value612, value1))
    (child3453 : Flapjack.WordAlloc.removeDeadStructural input3453 value612 value1 value2 = (output3453, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3454 value612 value1 value2 = (output3454, value358, value1) := by
  rw [input3454_def, output3454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3276]
  try dsimp only
  rw [child3453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3276_skip, output3453_skip]
  kernel_rfl

theorem node3455_cond_eq
    (child3275 : Flapjack.WordAlloc.removeDeadStructural input3275 value609 value1 value2 = (output3275, value612, value1))
    (child3454 : Flapjack.WordAlloc.removeDeadStructural input3454 value612 value1 value2 = (output3454, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3455 value609 value1 value2 = (output3455, value358, value1) := by
  rw [input3455_def, output3455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3275]
  try dsimp only
  rw [child3454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3275_skip, output3454_skip]
  kernel_rfl

theorem node3456_cond_eq
    (child3274 : Flapjack.WordAlloc.removeDeadStructural input3274 value611 value1 value2 = (output3274, value609, value1))
    (child3455 : Flapjack.WordAlloc.removeDeadStructural input3455 value609 value1 value2 = (output3455, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3456 value611 value1 value2 = (output3456, value358, value1) := by
  rw [input3456_def, output3456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3274]
  try dsimp only
  rw [child3455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3274_skip, output3455_skip]
  kernel_rfl

theorem node3457_cond_eq
    (child3273 : Flapjack.WordAlloc.removeDeadStructural input3273 value602 value1 value2 = (output3273, value611, value1))
    (child3456 : Flapjack.WordAlloc.removeDeadStructural input3456 value611 value1 value2 = (output3456, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3457 value602 value1 value2 = (output3457, value358, value1) := by
  rw [input3457_def, output3457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3273]
  try dsimp only
  rw [child3456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3273_skip, output3456_skip]
  kernel_rfl

theorem node3458_cond_eq
    (child3222 : Flapjack.WordAlloc.removeDeadStructural input3222 value602 value1 value2 = (output3222, value602, value1))
    (child3457 : Flapjack.WordAlloc.removeDeadStructural input3457 value602 value1 value2 = (output3457, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3458 value602 value1 value2 = (output3458, value358, value1) := by
  rw [input3458_def, output3458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3222]
  try dsimp only
  rw [child3457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3222_skip, output3457_skip]
  kernel_rfl

theorem node3459_cond_eq
    (child3221 : Flapjack.WordAlloc.removeDeadStructural input3221 value599 value1 value2 = (output3221, value602, value1))
    (child3458 : Flapjack.WordAlloc.removeDeadStructural input3458 value602 value1 value2 = (output3458, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3459 value599 value1 value2 = (output3459, value358, value1) := by
  rw [input3459_def, output3459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3221]
  try dsimp only
  rw [child3458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3221_skip, output3458_skip]
  kernel_rfl

theorem node3460_cond_eq
    (child3220 : Flapjack.WordAlloc.removeDeadStructural input3220 value601 value1 value2 = (output3220, value599, value1))
    (child3459 : Flapjack.WordAlloc.removeDeadStructural input3459 value599 value1 value2 = (output3459, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3460 value601 value1 value2 = (output3460, value358, value1) := by
  rw [input3460_def, output3460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3220]
  try dsimp only
  rw [child3459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3220_skip, output3459_skip]
  kernel_rfl

theorem node3461_cond_eq
    (child3219 : Flapjack.WordAlloc.removeDeadStructural input3219 value592 value1 value2 = (output3219, value601, value1))
    (child3460 : Flapjack.WordAlloc.removeDeadStructural input3460 value601 value1 value2 = (output3460, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3461 value592 value1 value2 = (output3461, value358, value1) := by
  rw [input3461_def, output3461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3219]
  try dsimp only
  rw [child3460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3219_skip, output3460_skip]
  kernel_rfl

theorem node3462_cond_eq
    (child3168 : Flapjack.WordAlloc.removeDeadStructural input3168 value592 value1 value2 = (output3168, value592, value1))
    (child3461 : Flapjack.WordAlloc.removeDeadStructural input3461 value592 value1 value2 = (output3461, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3462 value592 value1 value2 = (output3462, value358, value1) := by
  rw [input3462_def, output3462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3168]
  try dsimp only
  rw [child3461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3168_skip, output3461_skip]
  kernel_rfl

theorem node3463_cond_eq
    (child3167 : Flapjack.WordAlloc.removeDeadStructural input3167 value589 value1 value2 = (output3167, value592, value1))
    (child3462 : Flapjack.WordAlloc.removeDeadStructural input3462 value592 value1 value2 = (output3462, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3463 value589 value1 value2 = (output3463, value358, value1) := by
  rw [input3463_def, output3463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3167]
  try dsimp only
  rw [child3462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3167_skip, output3462_skip]
  kernel_rfl

theorem node3464_cond_eq
    (child3166 : Flapjack.WordAlloc.removeDeadStructural input3166 value591 value1 value2 = (output3166, value589, value1))
    (child3463 : Flapjack.WordAlloc.removeDeadStructural input3463 value589 value1 value2 = (output3463, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3464 value591 value1 value2 = (output3464, value358, value1) := by
  rw [input3464_def, output3464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3166]
  try dsimp only
  rw [child3463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3166_skip, output3463_skip]
  kernel_rfl

theorem node3465_cond_eq
    (child3165 : Flapjack.WordAlloc.removeDeadStructural input3165 value582 value1 value2 = (output3165, value591, value1))
    (child3464 : Flapjack.WordAlloc.removeDeadStructural input3464 value591 value1 value2 = (output3464, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3465 value582 value1 value2 = (output3465, value358, value1) := by
  rw [input3465_def, output3465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3165]
  try dsimp only
  rw [child3464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3165_skip, output3464_skip]
  kernel_rfl

theorem node3466_cond_eq
    (child3114 : Flapjack.WordAlloc.removeDeadStructural input3114 value582 value1 value2 = (output3114, value582, value1))
    (child3465 : Flapjack.WordAlloc.removeDeadStructural input3465 value582 value1 value2 = (output3465, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3466 value582 value1 value2 = (output3466, value358, value1) := by
  rw [input3466_def, output3466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3114]
  try dsimp only
  rw [child3465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3114_skip, output3465_skip]
  kernel_rfl

theorem node3467_cond_eq
    (child3113 : Flapjack.WordAlloc.removeDeadStructural input3113 value579 value1 value2 = (output3113, value582, value1))
    (child3466 : Flapjack.WordAlloc.removeDeadStructural input3466 value582 value1 value2 = (output3466, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3467 value579 value1 value2 = (output3467, value358, value1) := by
  rw [input3467_def, output3467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3113]
  try dsimp only
  rw [child3466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3113_skip, output3466_skip]
  kernel_rfl

theorem node3468_cond_eq
    (child3112 : Flapjack.WordAlloc.removeDeadStructural input3112 value581 value1 value2 = (output3112, value579, value1))
    (child3467 : Flapjack.WordAlloc.removeDeadStructural input3467 value579 value1 value2 = (output3467, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3468 value581 value1 value2 = (output3468, value358, value1) := by
  rw [input3468_def, output3468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3112]
  try dsimp only
  rw [child3467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3112_skip, output3467_skip]
  kernel_rfl

theorem node3469_cond_eq
    (child3111 : Flapjack.WordAlloc.removeDeadStructural input3111 value572 value1 value2 = (output3111, value581, value1))
    (child3468 : Flapjack.WordAlloc.removeDeadStructural input3468 value581 value1 value2 = (output3468, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3469 value572 value1 value2 = (output3469, value358, value1) := by
  rw [input3469_def, output3469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3111]
  try dsimp only
  rw [child3468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3111_skip, output3468_skip]
  kernel_rfl

theorem node3470_cond_eq
    (child3060 : Flapjack.WordAlloc.removeDeadStructural input3060 value572 value1 value2 = (output3060, value572, value1))
    (child3469 : Flapjack.WordAlloc.removeDeadStructural input3469 value572 value1 value2 = (output3469, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3470 value572 value1 value2 = (output3470, value358, value1) := by
  rw [input3470_def, output3470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3060]
  try dsimp only
  rw [child3469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3060_skip, output3469_skip]
  kernel_rfl

theorem node3471_cond_eq
    (child3059 : Flapjack.WordAlloc.removeDeadStructural input3059 value569 value1 value2 = (output3059, value572, value1))
    (child3470 : Flapjack.WordAlloc.removeDeadStructural input3470 value572 value1 value2 = (output3470, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3471 value569 value1 value2 = (output3471, value358, value1) := by
  rw [input3471_def, output3471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3059]
  try dsimp only
  rw [child3470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3059_skip, output3470_skip]
  kernel_rfl

theorem node3472_cond_eq
    (child3058 : Flapjack.WordAlloc.removeDeadStructural input3058 value571 value1 value2 = (output3058, value569, value1))
    (child3471 : Flapjack.WordAlloc.removeDeadStructural input3471 value569 value1 value2 = (output3471, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3472 value571 value1 value2 = (output3472, value358, value1) := by
  rw [input3472_def, output3472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3058]
  try dsimp only
  rw [child3471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3058_skip, output3471_skip]
  kernel_rfl

theorem node3473_cond_eq
    (child3057 : Flapjack.WordAlloc.removeDeadStructural input3057 value562 value1 value2 = (output3057, value571, value1))
    (child3472 : Flapjack.WordAlloc.removeDeadStructural input3472 value571 value1 value2 = (output3472, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3473 value562 value1 value2 = (output3473, value358, value1) := by
  rw [input3473_def, output3473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3057]
  try dsimp only
  rw [child3472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3057_skip, output3472_skip]
  kernel_rfl

theorem node3474_cond_eq
    (child3006 : Flapjack.WordAlloc.removeDeadStructural input3006 value562 value1 value2 = (output3006, value562, value1))
    (child3473 : Flapjack.WordAlloc.removeDeadStructural input3473 value562 value1 value2 = (output3473, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3474 value562 value1 value2 = (output3474, value358, value1) := by
  rw [input3474_def, output3474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3006]
  try dsimp only
  rw [child3473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3006_skip, output3473_skip]
  kernel_rfl

theorem node3475_cond_eq
    (child3005 : Flapjack.WordAlloc.removeDeadStructural input3005 value559 value1 value2 = (output3005, value562, value1))
    (child3474 : Flapjack.WordAlloc.removeDeadStructural input3474 value562 value1 value2 = (output3474, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3475 value559 value1 value2 = (output3475, value358, value1) := by
  rw [input3475_def, output3475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3005]
  try dsimp only
  rw [child3474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3005_skip, output3474_skip]
  kernel_rfl

theorem node3476_cond_eq
    (child3004 : Flapjack.WordAlloc.removeDeadStructural input3004 value561 value1 value2 = (output3004, value559, value1))
    (child3475 : Flapjack.WordAlloc.removeDeadStructural input3475 value559 value1 value2 = (output3475, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3476 value561 value1 value2 = (output3476, value358, value1) := by
  rw [input3476_def, output3476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3004]
  try dsimp only
  rw [child3475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3004_skip, output3475_skip]
  kernel_rfl

theorem node3477_cond_eq
    (child3003 : Flapjack.WordAlloc.removeDeadStructural input3003 value552 value1 value2 = (output3003, value561, value1))
    (child3476 : Flapjack.WordAlloc.removeDeadStructural input3476 value561 value1 value2 = (output3476, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3477 value552 value1 value2 = (output3477, value358, value1) := by
  rw [input3477_def, output3477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3003]
  try dsimp only
  rw [child3476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3003_skip, output3476_skip]
  kernel_rfl

theorem node3478_cond_eq
    (child2952 : Flapjack.WordAlloc.removeDeadStructural input2952 value552 value1 value2 = (output2952, value552, value1))
    (child3477 : Flapjack.WordAlloc.removeDeadStructural input3477 value552 value1 value2 = (output3477, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3478 value552 value1 value2 = (output3478, value358, value1) := by
  rw [input3478_def, output3478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2952]
  try dsimp only
  rw [child3477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2952_skip, output3477_skip]
  kernel_rfl

theorem node3479_cond_eq
    (child2951 : Flapjack.WordAlloc.removeDeadStructural input2951 value549 value1 value2 = (output2951, value552, value1))
    (child3478 : Flapjack.WordAlloc.removeDeadStructural input3478 value552 value1 value2 = (output3478, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3479 value549 value1 value2 = (output3479, value358, value1) := by
  rw [input3479_def, output3479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2951]
  try dsimp only
  rw [child3478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2951_skip, output3478_skip]
  kernel_rfl

theorem node3480_cond_eq
    (child2950 : Flapjack.WordAlloc.removeDeadStructural input2950 value551 value1 value2 = (output2950, value549, value1))
    (child3479 : Flapjack.WordAlloc.removeDeadStructural input3479 value549 value1 value2 = (output3479, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3480 value551 value1 value2 = (output3480, value358, value1) := by
  rw [input3480_def, output3480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2950]
  try dsimp only
  rw [child3479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2950_skip, output3479_skip]
  kernel_rfl

theorem node3481_cond_eq
    (child2949 : Flapjack.WordAlloc.removeDeadStructural input2949 value542 value1 value2 = (output2949, value551, value1))
    (child3480 : Flapjack.WordAlloc.removeDeadStructural input3480 value551 value1 value2 = (output3480, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3481 value542 value1 value2 = (output3481, value358, value1) := by
  rw [input3481_def, output3481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2949]
  try dsimp only
  rw [child3480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2949_skip, output3480_skip]
  kernel_rfl

theorem node3482_cond_eq
    (child2898 : Flapjack.WordAlloc.removeDeadStructural input2898 value542 value1 value2 = (output2898, value542, value1))
    (child3481 : Flapjack.WordAlloc.removeDeadStructural input3481 value542 value1 value2 = (output3481, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3482 value542 value1 value2 = (output3482, value358, value1) := by
  rw [input3482_def, output3482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2898]
  try dsimp only
  rw [child3481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2898_skip, output3481_skip]
  kernel_rfl

theorem node3483_cond_eq
    (child2897 : Flapjack.WordAlloc.removeDeadStructural input2897 value539 value1 value2 = (output2897, value542, value1))
    (child3482 : Flapjack.WordAlloc.removeDeadStructural input3482 value542 value1 value2 = (output3482, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3483 value539 value1 value2 = (output3483, value358, value1) := by
  rw [input3483_def, output3483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2897]
  try dsimp only
  rw [child3482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2897_skip, output3482_skip]
  kernel_rfl

theorem node3484_cond_eq
    (child2896 : Flapjack.WordAlloc.removeDeadStructural input2896 value541 value1 value2 = (output2896, value539, value1))
    (child3483 : Flapjack.WordAlloc.removeDeadStructural input3483 value539 value1 value2 = (output3483, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3484 value541 value1 value2 = (output3484, value358, value1) := by
  rw [input3484_def, output3484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2896]
  try dsimp only
  rw [child3483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2896_skip, output3483_skip]
  kernel_rfl

theorem node3485_cond_eq
    (child2895 : Flapjack.WordAlloc.removeDeadStructural input2895 value532 value1 value2 = (output2895, value541, value1))
    (child3484 : Flapjack.WordAlloc.removeDeadStructural input3484 value541 value1 value2 = (output3484, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3485 value532 value1 value2 = (output3485, value358, value1) := by
  rw [input3485_def, output3485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2895]
  try dsimp only
  rw [child3484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2895_skip, output3484_skip]
  kernel_rfl

theorem node3486_cond_eq
    (child2844 : Flapjack.WordAlloc.removeDeadStructural input2844 value532 value1 value2 = (output2844, value532, value1))
    (child3485 : Flapjack.WordAlloc.removeDeadStructural input3485 value532 value1 value2 = (output3485, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3486 value532 value1 value2 = (output3486, value358, value1) := by
  rw [input3486_def, output3486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2844]
  try dsimp only
  rw [child3485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2844_skip, output3485_skip]
  kernel_rfl

theorem node3487_cond_eq
    (child2843 : Flapjack.WordAlloc.removeDeadStructural input2843 value529 value1 value2 = (output2843, value532, value1))
    (child3486 : Flapjack.WordAlloc.removeDeadStructural input3486 value532 value1 value2 = (output3486, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3487 value529 value1 value2 = (output3487, value358, value1) := by
  rw [input3487_def, output3487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2843]
  try dsimp only
  rw [child3486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2843_skip, output3486_skip]
  kernel_rfl

theorem node3488_cond_eq
    (child2842 : Flapjack.WordAlloc.removeDeadStructural input2842 value531 value1 value2 = (output2842, value529, value1))
    (child3487 : Flapjack.WordAlloc.removeDeadStructural input3487 value529 value1 value2 = (output3487, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3488 value531 value1 value2 = (output3488, value358, value1) := by
  rw [input3488_def, output3488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2842]
  try dsimp only
  rw [child3487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2842_skip, output3487_skip]
  kernel_rfl

theorem node3489_cond_eq
    (child2841 : Flapjack.WordAlloc.removeDeadStructural input2841 value522 value1 value2 = (output2841, value531, value1))
    (child3488 : Flapjack.WordAlloc.removeDeadStructural input3488 value531 value1 value2 = (output3488, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3489 value522 value1 value2 = (output3489, value358, value1) := by
  rw [input3489_def, output3489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2841]
  try dsimp only
  rw [child3488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2841_skip, output3488_skip]
  kernel_rfl

theorem node3490_cond_eq
    (child2790 : Flapjack.WordAlloc.removeDeadStructural input2790 value522 value1 value2 = (output2790, value522, value1))
    (child3489 : Flapjack.WordAlloc.removeDeadStructural input3489 value522 value1 value2 = (output3489, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3490 value522 value1 value2 = (output3490, value358, value1) := by
  rw [input3490_def, output3490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2790]
  try dsimp only
  rw [child3489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2790_skip, output3489_skip]
  kernel_rfl

theorem node3491_cond_eq
    (child2789 : Flapjack.WordAlloc.removeDeadStructural input2789 value519 value1 value2 = (output2789, value522, value1))
    (child3490 : Flapjack.WordAlloc.removeDeadStructural input3490 value522 value1 value2 = (output3490, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3491 value519 value1 value2 = (output3491, value358, value1) := by
  rw [input3491_def, output3491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2789]
  try dsimp only
  rw [child3490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2789_skip, output3490_skip]
  kernel_rfl

theorem node3492_cond_eq
    (child2788 : Flapjack.WordAlloc.removeDeadStructural input2788 value521 value1 value2 = (output2788, value519, value1))
    (child3491 : Flapjack.WordAlloc.removeDeadStructural input3491 value519 value1 value2 = (output3491, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3492 value521 value1 value2 = (output3492, value358, value1) := by
  rw [input3492_def, output3492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2788]
  try dsimp only
  rw [child3491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2788_skip, output3491_skip]
  kernel_rfl

theorem node3493_cond_eq
    (child2787 : Flapjack.WordAlloc.removeDeadStructural input2787 value512 value1 value2 = (output2787, value521, value1))
    (child3492 : Flapjack.WordAlloc.removeDeadStructural input3492 value521 value1 value2 = (output3492, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3493 value512 value1 value2 = (output3493, value358, value1) := by
  rw [input3493_def, output3493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2787]
  try dsimp only
  rw [child3492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2787_skip, output3492_skip]
  kernel_rfl

theorem node3494_cond_eq
    (child2736 : Flapjack.WordAlloc.removeDeadStructural input2736 value512 value1 value2 = (output2736, value512, value1))
    (child3493 : Flapjack.WordAlloc.removeDeadStructural input3493 value512 value1 value2 = (output3493, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3494 value512 value1 value2 = (output3494, value358, value1) := by
  rw [input3494_def, output3494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2736]
  try dsimp only
  rw [child3493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2736_skip, output3493_skip]
  kernel_rfl

theorem node3495_cond_eq
    (child2735 : Flapjack.WordAlloc.removeDeadStructural input2735 value509 value1 value2 = (output2735, value512, value1))
    (child3494 : Flapjack.WordAlloc.removeDeadStructural input3494 value512 value1 value2 = (output3494, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3495 value509 value1 value2 = (output3495, value358, value1) := by
  rw [input3495_def, output3495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2735]
  try dsimp only
  rw [child3494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2735_skip, output3494_skip]
  kernel_rfl

theorem node3496_cond_eq
    (child2734 : Flapjack.WordAlloc.removeDeadStructural input2734 value511 value1 value2 = (output2734, value509, value1))
    (child3495 : Flapjack.WordAlloc.removeDeadStructural input3495 value509 value1 value2 = (output3495, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3496 value511 value1 value2 = (output3496, value358, value1) := by
  rw [input3496_def, output3496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2734]
  try dsimp only
  rw [child3495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2734_skip, output3495_skip]
  kernel_rfl

theorem node3497_cond_eq
    (child2733 : Flapjack.WordAlloc.removeDeadStructural input2733 value502 value1 value2 = (output2733, value511, value1))
    (child3496 : Flapjack.WordAlloc.removeDeadStructural input3496 value511 value1 value2 = (output3496, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3497 value502 value1 value2 = (output3497, value358, value1) := by
  rw [input3497_def, output3497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2733]
  try dsimp only
  rw [child3496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2733_skip, output3496_skip]
  kernel_rfl

theorem node3498_cond_eq
    (child2682 : Flapjack.WordAlloc.removeDeadStructural input2682 value502 value1 value2 = (output2682, value502, value1))
    (child3497 : Flapjack.WordAlloc.removeDeadStructural input3497 value502 value1 value2 = (output3497, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3498 value502 value1 value2 = (output3498, value358, value1) := by
  rw [input3498_def, output3498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2682]
  try dsimp only
  rw [child3497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2682_skip, output3497_skip]
  kernel_rfl

theorem node3499_cond_eq
    (child2681 : Flapjack.WordAlloc.removeDeadStructural input2681 value499 value1 value2 = (output2681, value502, value1))
    (child3498 : Flapjack.WordAlloc.removeDeadStructural input3498 value502 value1 value2 = (output3498, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3499 value499 value1 value2 = (output3499, value358, value1) := by
  rw [input3499_def, output3499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2681]
  try dsimp only
  rw [child3498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2681_skip, output3498_skip]
  kernel_rfl

theorem node3500_cond_eq
    (child2680 : Flapjack.WordAlloc.removeDeadStructural input2680 value501 value1 value2 = (output2680, value499, value1))
    (child3499 : Flapjack.WordAlloc.removeDeadStructural input3499 value499 value1 value2 = (output3499, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3500 value501 value1 value2 = (output3500, value358, value1) := by
  rw [input3500_def, output3500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2680]
  try dsimp only
  rw [child3499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2680_skip, output3499_skip]
  kernel_rfl

theorem node3501_cond_eq
    (child2679 : Flapjack.WordAlloc.removeDeadStructural input2679 value492 value1 value2 = (output2679, value501, value1))
    (child3500 : Flapjack.WordAlloc.removeDeadStructural input3500 value501 value1 value2 = (output3500, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3501 value492 value1 value2 = (output3501, value358, value1) := by
  rw [input3501_def, output3501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2679]
  try dsimp only
  rw [child3500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2679_skip, output3500_skip]
  kernel_rfl

theorem node3502_cond_eq
    (child2628 : Flapjack.WordAlloc.removeDeadStructural input2628 value492 value1 value2 = (output2628, value492, value1))
    (child3501 : Flapjack.WordAlloc.removeDeadStructural input3501 value492 value1 value2 = (output3501, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3502 value492 value1 value2 = (output3502, value358, value1) := by
  rw [input3502_def, output3502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2628]
  try dsimp only
  rw [child3501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2628_skip, output3501_skip]
  kernel_rfl

theorem node3503_cond_eq
    (child2627 : Flapjack.WordAlloc.removeDeadStructural input2627 value489 value1 value2 = (output2627, value492, value1))
    (child3502 : Flapjack.WordAlloc.removeDeadStructural input3502 value492 value1 value2 = (output3502, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3503 value489 value1 value2 = (output3503, value358, value1) := by
  rw [input3503_def, output3503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2627]
  try dsimp only
  rw [child3502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2627_skip, output3502_skip]
  kernel_rfl

theorem node3504_cond_eq
    (child2626 : Flapjack.WordAlloc.removeDeadStructural input2626 value491 value1 value2 = (output2626, value489, value1))
    (child3503 : Flapjack.WordAlloc.removeDeadStructural input3503 value489 value1 value2 = (output3503, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3504 value491 value1 value2 = (output3504, value358, value1) := by
  rw [input3504_def, output3504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2626]
  try dsimp only
  rw [child3503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2626_skip, output3503_skip]
  kernel_rfl

theorem node3505_cond_eq
    (child2625 : Flapjack.WordAlloc.removeDeadStructural input2625 value482 value1 value2 = (output2625, value491, value1))
    (child3504 : Flapjack.WordAlloc.removeDeadStructural input3504 value491 value1 value2 = (output3504, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3505 value482 value1 value2 = (output3505, value358, value1) := by
  rw [input3505_def, output3505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2625]
  try dsimp only
  rw [child3504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2625_skip, output3504_skip]
  kernel_rfl

theorem node3506_cond_eq
    (child2574 : Flapjack.WordAlloc.removeDeadStructural input2574 value482 value1 value2 = (output2574, value482, value1))
    (child3505 : Flapjack.WordAlloc.removeDeadStructural input3505 value482 value1 value2 = (output3505, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3506 value482 value1 value2 = (output3506, value358, value1) := by
  rw [input3506_def, output3506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2574]
  try dsimp only
  rw [child3505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2574_skip, output3505_skip]
  kernel_rfl

theorem node3507_cond_eq
    (child2573 : Flapjack.WordAlloc.removeDeadStructural input2573 value479 value1 value2 = (output2573, value482, value1))
    (child3506 : Flapjack.WordAlloc.removeDeadStructural input3506 value482 value1 value2 = (output3506, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3507 value479 value1 value2 = (output3507, value358, value1) := by
  rw [input3507_def, output3507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2573]
  try dsimp only
  rw [child3506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2573_skip, output3506_skip]
  kernel_rfl

theorem node3508_cond_eq
    (child2572 : Flapjack.WordAlloc.removeDeadStructural input2572 value481 value1 value2 = (output2572, value479, value1))
    (child3507 : Flapjack.WordAlloc.removeDeadStructural input3507 value479 value1 value2 = (output3507, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3508 value481 value1 value2 = (output3508, value358, value1) := by
  rw [input3508_def, output3508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2572]
  try dsimp only
  rw [child3507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2572_skip, output3507_skip]
  kernel_rfl

theorem node3509_cond_eq
    (child2571 : Flapjack.WordAlloc.removeDeadStructural input2571 value472 value1 value2 = (output2571, value481, value1))
    (child3508 : Flapjack.WordAlloc.removeDeadStructural input3508 value481 value1 value2 = (output3508, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3509 value472 value1 value2 = (output3509, value358, value1) := by
  rw [input3509_def, output3509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2571]
  try dsimp only
  rw [child3508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2571_skip, output3508_skip]
  kernel_rfl

theorem node3510_cond_eq
    (child2520 : Flapjack.WordAlloc.removeDeadStructural input2520 value472 value1 value2 = (output2520, value472, value1))
    (child3509 : Flapjack.WordAlloc.removeDeadStructural input3509 value472 value1 value2 = (output3509, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3510 value472 value1 value2 = (output3510, value358, value1) := by
  rw [input3510_def, output3510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2520]
  try dsimp only
  rw [child3509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2520_skip, output3509_skip]
  kernel_rfl

theorem node3511_cond_eq
    (child2519 : Flapjack.WordAlloc.removeDeadStructural input2519 value469 value1 value2 = (output2519, value472, value1))
    (child3510 : Flapjack.WordAlloc.removeDeadStructural input3510 value472 value1 value2 = (output3510, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3511 value469 value1 value2 = (output3511, value358, value1) := by
  rw [input3511_def, output3511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2519]
  try dsimp only
  rw [child3510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2519_skip, output3510_skip]
  kernel_rfl

theorem node3512_cond_eq
    (child2518 : Flapjack.WordAlloc.removeDeadStructural input2518 value471 value1 value2 = (output2518, value469, value1))
    (child3511 : Flapjack.WordAlloc.removeDeadStructural input3511 value469 value1 value2 = (output3511, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3512 value471 value1 value2 = (output3512, value358, value1) := by
  rw [input3512_def, output3512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2518]
  try dsimp only
  rw [child3511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2518_skip, output3511_skip]
  kernel_rfl

theorem node3513_cond_eq
    (child2517 : Flapjack.WordAlloc.removeDeadStructural input2517 value462 value1 value2 = (output2517, value471, value1))
    (child3512 : Flapjack.WordAlloc.removeDeadStructural input3512 value471 value1 value2 = (output3512, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3513 value462 value1 value2 = (output3513, value358, value1) := by
  rw [input3513_def, output3513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2517]
  try dsimp only
  rw [child3512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2517_skip, output3512_skip]
  kernel_rfl

theorem node3514_cond_eq
    (child2466 : Flapjack.WordAlloc.removeDeadStructural input2466 value462 value1 value2 = (output2466, value462, value1))
    (child3513 : Flapjack.WordAlloc.removeDeadStructural input3513 value462 value1 value2 = (output3513, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3514 value462 value1 value2 = (output3514, value358, value1) := by
  rw [input3514_def, output3514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2466]
  try dsimp only
  rw [child3513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2466_skip, output3513_skip]
  kernel_rfl

theorem node3515_cond_eq
    (child2465 : Flapjack.WordAlloc.removeDeadStructural input2465 value459 value1 value2 = (output2465, value462, value1))
    (child3514 : Flapjack.WordAlloc.removeDeadStructural input3514 value462 value1 value2 = (output3514, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3515 value459 value1 value2 = (output3515, value358, value1) := by
  rw [input3515_def, output3515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2465]
  try dsimp only
  rw [child3514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2465_skip, output3514_skip]
  kernel_rfl

theorem node3516_cond_eq
    (child2464 : Flapjack.WordAlloc.removeDeadStructural input2464 value461 value1 value2 = (output2464, value459, value1))
    (child3515 : Flapjack.WordAlloc.removeDeadStructural input3515 value459 value1 value2 = (output3515, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3516 value461 value1 value2 = (output3516, value358, value1) := by
  rw [input3516_def, output3516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2464]
  try dsimp only
  rw [child3515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2464_skip, output3515_skip]
  kernel_rfl

theorem node3517_cond_eq
    (child2463 : Flapjack.WordAlloc.removeDeadStructural input2463 value452 value1 value2 = (output2463, value461, value1))
    (child3516 : Flapjack.WordAlloc.removeDeadStructural input3516 value461 value1 value2 = (output3516, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3517 value452 value1 value2 = (output3517, value358, value1) := by
  rw [input3517_def, output3517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2463]
  try dsimp only
  rw [child3516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2463_skip, output3516_skip]
  kernel_rfl

theorem node3518_cond_eq
    (child2412 : Flapjack.WordAlloc.removeDeadStructural input2412 value452 value1 value2 = (output2412, value452, value1))
    (child3517 : Flapjack.WordAlloc.removeDeadStructural input3517 value452 value1 value2 = (output3517, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3518 value452 value1 value2 = (output3518, value358, value1) := by
  rw [input3518_def, output3518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2412]
  try dsimp only
  rw [child3517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2412_skip, output3517_skip]
  kernel_rfl

theorem node3519_cond_eq
    (child2411 : Flapjack.WordAlloc.removeDeadStructural input2411 value449 value1 value2 = (output2411, value452, value1))
    (child3518 : Flapjack.WordAlloc.removeDeadStructural input3518 value452 value1 value2 = (output3518, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3519 value449 value1 value2 = (output3519, value358, value1) := by
  rw [input3519_def, output3519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2411]
  try dsimp only
  rw [child3518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2411_skip, output3518_skip]
  kernel_rfl

theorem node3520_cond_eq
    (child2410 : Flapjack.WordAlloc.removeDeadStructural input2410 value451 value1 value2 = (output2410, value449, value1))
    (child3519 : Flapjack.WordAlloc.removeDeadStructural input3519 value449 value1 value2 = (output3519, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3520 value451 value1 value2 = (output3520, value358, value1) := by
  rw [input3520_def, output3520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2410]
  try dsimp only
  rw [child3519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2410_skip, output3519_skip]
  kernel_rfl

theorem node3521_cond_eq
    (child2409 : Flapjack.WordAlloc.removeDeadStructural input2409 value442 value1 value2 = (output2409, value451, value1))
    (child3520 : Flapjack.WordAlloc.removeDeadStructural input3520 value451 value1 value2 = (output3520, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3521 value442 value1 value2 = (output3521, value358, value1) := by
  rw [input3521_def, output3521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2409]
  try dsimp only
  rw [child3520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2409_skip, output3520_skip]
  kernel_rfl

theorem node3522_cond_eq
    (child2358 : Flapjack.WordAlloc.removeDeadStructural input2358 value442 value1 value2 = (output2358, value442, value1))
    (child3521 : Flapjack.WordAlloc.removeDeadStructural input3521 value442 value1 value2 = (output3521, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3522 value442 value1 value2 = (output3522, value358, value1) := by
  rw [input3522_def, output3522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2358]
  try dsimp only
  rw [child3521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2358_skip, output3521_skip]
  kernel_rfl

theorem node3523_cond_eq
    (child2357 : Flapjack.WordAlloc.removeDeadStructural input2357 value439 value1 value2 = (output2357, value442, value1))
    (child3522 : Flapjack.WordAlloc.removeDeadStructural input3522 value442 value1 value2 = (output3522, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3523 value439 value1 value2 = (output3523, value358, value1) := by
  rw [input3523_def, output3523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2357]
  try dsimp only
  rw [child3522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2357_skip, output3522_skip]
  kernel_rfl

theorem node3524_cond_eq
    (child2356 : Flapjack.WordAlloc.removeDeadStructural input2356 value441 value1 value2 = (output2356, value439, value1))
    (child3523 : Flapjack.WordAlloc.removeDeadStructural input3523 value439 value1 value2 = (output3523, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3524 value441 value1 value2 = (output3524, value358, value1) := by
  rw [input3524_def, output3524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2356]
  try dsimp only
  rw [child3523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2356_skip, output3523_skip]
  kernel_rfl

theorem node3525_cond_eq
    (child2355 : Flapjack.WordAlloc.removeDeadStructural input2355 value432 value1 value2 = (output2355, value441, value1))
    (child3524 : Flapjack.WordAlloc.removeDeadStructural input3524 value441 value1 value2 = (output3524, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3525 value432 value1 value2 = (output3525, value358, value1) := by
  rw [input3525_def, output3525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2355]
  try dsimp only
  rw [child3524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2355_skip, output3524_skip]
  kernel_rfl

theorem node3526_cond_eq
    (child2304 : Flapjack.WordAlloc.removeDeadStructural input2304 value432 value1 value2 = (output2304, value432, value1))
    (child3525 : Flapjack.WordAlloc.removeDeadStructural input3525 value432 value1 value2 = (output3525, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3526 value432 value1 value2 = (output3526, value358, value1) := by
  rw [input3526_def, output3526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2304]
  try dsimp only
  rw [child3525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2304_skip, output3525_skip]
  kernel_rfl

theorem node3527_cond_eq
    (child2303 : Flapjack.WordAlloc.removeDeadStructural input2303 value429 value1 value2 = (output2303, value432, value1))
    (child3526 : Flapjack.WordAlloc.removeDeadStructural input3526 value432 value1 value2 = (output3526, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3527 value429 value1 value2 = (output3527, value358, value1) := by
  rw [input3527_def, output3527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2303]
  try dsimp only
  rw [child3526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2303_skip, output3526_skip]
  kernel_rfl

theorem node3528_cond_eq
    (child2302 : Flapjack.WordAlloc.removeDeadStructural input2302 value431 value1 value2 = (output2302, value429, value1))
    (child3527 : Flapjack.WordAlloc.removeDeadStructural input3527 value429 value1 value2 = (output3527, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3528 value431 value1 value2 = (output3528, value358, value1) := by
  rw [input3528_def, output3528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2302]
  try dsimp only
  rw [child3527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2302_skip, output3527_skip]
  kernel_rfl

theorem node3529_cond_eq
    (child2301 : Flapjack.WordAlloc.removeDeadStructural input2301 value422 value1 value2 = (output2301, value431, value1))
    (child3528 : Flapjack.WordAlloc.removeDeadStructural input3528 value431 value1 value2 = (output3528, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3529 value422 value1 value2 = (output3529, value358, value1) := by
  rw [input3529_def, output3529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2301]
  try dsimp only
  rw [child3528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2301_skip, output3528_skip]
  kernel_rfl

theorem node3530_cond_eq
    (child2250 : Flapjack.WordAlloc.removeDeadStructural input2250 value422 value1 value2 = (output2250, value422, value1))
    (child3529 : Flapjack.WordAlloc.removeDeadStructural input3529 value422 value1 value2 = (output3529, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3530 value422 value1 value2 = (output3530, value358, value1) := by
  rw [input3530_def, output3530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2250]
  try dsimp only
  rw [child3529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2250_skip, output3529_skip]
  kernel_rfl

theorem node3531_cond_eq
    (child2249 : Flapjack.WordAlloc.removeDeadStructural input2249 value419 value1 value2 = (output2249, value422, value1))
    (child3530 : Flapjack.WordAlloc.removeDeadStructural input3530 value422 value1 value2 = (output3530, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3531 value419 value1 value2 = (output3531, value358, value1) := by
  rw [input3531_def, output3531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2249]
  try dsimp only
  rw [child3530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2249_skip, output3530_skip]
  kernel_rfl

theorem node3532_cond_eq
    (child2248 : Flapjack.WordAlloc.removeDeadStructural input2248 value421 value1 value2 = (output2248, value419, value1))
    (child3531 : Flapjack.WordAlloc.removeDeadStructural input3531 value419 value1 value2 = (output3531, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3532 value421 value1 value2 = (output3532, value358, value1) := by
  rw [input3532_def, output3532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2248]
  try dsimp only
  rw [child3531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2248_skip, output3531_skip]
  kernel_rfl

theorem node3533_cond_eq
    (child2247 : Flapjack.WordAlloc.removeDeadStructural input2247 value412 value1 value2 = (output2247, value421, value1))
    (child3532 : Flapjack.WordAlloc.removeDeadStructural input3532 value421 value1 value2 = (output3532, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3533 value412 value1 value2 = (output3533, value358, value1) := by
  rw [input3533_def, output3533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2247]
  try dsimp only
  rw [child3532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2247_skip, output3532_skip]
  kernel_rfl

theorem node3534_cond_eq
    (child2196 : Flapjack.WordAlloc.removeDeadStructural input2196 value412 value1 value2 = (output2196, value412, value1))
    (child3533 : Flapjack.WordAlloc.removeDeadStructural input3533 value412 value1 value2 = (output3533, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3534 value412 value1 value2 = (output3534, value358, value1) := by
  rw [input3534_def, output3534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2196]
  try dsimp only
  rw [child3533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2196_skip, output3533_skip]
  kernel_rfl

theorem node3535_cond_eq
    (child2195 : Flapjack.WordAlloc.removeDeadStructural input2195 value409 value1 value2 = (output2195, value412, value1))
    (child3534 : Flapjack.WordAlloc.removeDeadStructural input3534 value412 value1 value2 = (output3534, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3535 value409 value1 value2 = (output3535, value358, value1) := by
  rw [input3535_def, output3535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2195]
  try dsimp only
  rw [child3534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2195_skip, output3534_skip]
  kernel_rfl

theorem node3536_cond_eq
    (child2194 : Flapjack.WordAlloc.removeDeadStructural input2194 value411 value1 value2 = (output2194, value409, value1))
    (child3535 : Flapjack.WordAlloc.removeDeadStructural input3535 value409 value1 value2 = (output3535, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3536 value411 value1 value2 = (output3536, value358, value1) := by
  rw [input3536_def, output3536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2194]
  try dsimp only
  rw [child3535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2194_skip, output3535_skip]
  kernel_rfl

theorem node3537_cond_eq
    (child2193 : Flapjack.WordAlloc.removeDeadStructural input2193 value402 value1 value2 = (output2193, value411, value1))
    (child3536 : Flapjack.WordAlloc.removeDeadStructural input3536 value411 value1 value2 = (output3536, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3537 value402 value1 value2 = (output3537, value358, value1) := by
  rw [input3537_def, output3537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2193]
  try dsimp only
  rw [child3536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2193_skip, output3536_skip]
  kernel_rfl

theorem node3538_cond_eq
    (child2142 : Flapjack.WordAlloc.removeDeadStructural input2142 value402 value1 value2 = (output2142, value402, value1))
    (child3537 : Flapjack.WordAlloc.removeDeadStructural input3537 value402 value1 value2 = (output3537, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3538 value402 value1 value2 = (output3538, value358, value1) := by
  rw [input3538_def, output3538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2142]
  try dsimp only
  rw [child3537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2142_skip, output3537_skip]
  kernel_rfl

theorem node3539_cond_eq
    (child2141 : Flapjack.WordAlloc.removeDeadStructural input2141 value399 value1 value2 = (output2141, value402, value1))
    (child3538 : Flapjack.WordAlloc.removeDeadStructural input3538 value402 value1 value2 = (output3538, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3539 value399 value1 value2 = (output3539, value358, value1) := by
  rw [input3539_def, output3539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2141]
  try dsimp only
  rw [child3538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2141_skip, output3538_skip]
  kernel_rfl

theorem node3540_cond_eq
    (child2140 : Flapjack.WordAlloc.removeDeadStructural input2140 value401 value1 value2 = (output2140, value399, value1))
    (child3539 : Flapjack.WordAlloc.removeDeadStructural input3539 value399 value1 value2 = (output3539, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3540 value401 value1 value2 = (output3540, value358, value1) := by
  rw [input3540_def, output3540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2140]
  try dsimp only
  rw [child3539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2140_skip, output3539_skip]
  kernel_rfl

theorem node3541_cond_eq
    (child2139 : Flapjack.WordAlloc.removeDeadStructural input2139 value392 value1 value2 = (output2139, value401, value1))
    (child3540 : Flapjack.WordAlloc.removeDeadStructural input3540 value401 value1 value2 = (output3540, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3541 value392 value1 value2 = (output3541, value358, value1) := by
  rw [input3541_def, output3541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2139]
  try dsimp only
  rw [child3540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2139_skip, output3540_skip]
  kernel_rfl

theorem node3542_cond_eq
    (child2088 : Flapjack.WordAlloc.removeDeadStructural input2088 value392 value1 value2 = (output2088, value392, value1))
    (child3541 : Flapjack.WordAlloc.removeDeadStructural input3541 value392 value1 value2 = (output3541, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3542 value392 value1 value2 = (output3542, value358, value1) := by
  rw [input3542_def, output3542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2088]
  try dsimp only
  rw [child3541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2088_skip, output3541_skip]
  kernel_rfl

theorem node3543_cond_eq
    (child2087 : Flapjack.WordAlloc.removeDeadStructural input2087 value389 value1 value2 = (output2087, value392, value1))
    (child3542 : Flapjack.WordAlloc.removeDeadStructural input3542 value392 value1 value2 = (output3542, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3543 value389 value1 value2 = (output3543, value358, value1) := by
  rw [input3543_def, output3543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2087]
  try dsimp only
  rw [child3542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2087_skip, output3542_skip]
  kernel_rfl

theorem node3544_cond_eq
    (child2086 : Flapjack.WordAlloc.removeDeadStructural input2086 value391 value1 value2 = (output2086, value389, value1))
    (child3543 : Flapjack.WordAlloc.removeDeadStructural input3543 value389 value1 value2 = (output3543, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3544 value391 value1 value2 = (output3544, value358, value1) := by
  rw [input3544_def, output3544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2086]
  try dsimp only
  rw [child3543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2086_skip, output3543_skip]
  kernel_rfl

theorem node3545_cond_eq
    (child2085 : Flapjack.WordAlloc.removeDeadStructural input2085 value382 value1 value2 = (output2085, value391, value1))
    (child3544 : Flapjack.WordAlloc.removeDeadStructural input3544 value391 value1 value2 = (output3544, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3545 value382 value1 value2 = (output3545, value358, value1) := by
  rw [input3545_def, output3545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2085]
  try dsimp only
  rw [child3544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2085_skip, output3544_skip]
  kernel_rfl

theorem node3546_cond_eq
    (child2034 : Flapjack.WordAlloc.removeDeadStructural input2034 value382 value1 value2 = (output2034, value382, value1))
    (child3545 : Flapjack.WordAlloc.removeDeadStructural input3545 value382 value1 value2 = (output3545, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3546 value382 value1 value2 = (output3546, value358, value1) := by
  rw [input3546_def, output3546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2034]
  try dsimp only
  rw [child3545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2034_skip, output3545_skip]
  kernel_rfl

theorem node3547_cond_eq
    (child2033 : Flapjack.WordAlloc.removeDeadStructural input2033 value379 value1 value2 = (output2033, value382, value1))
    (child3546 : Flapjack.WordAlloc.removeDeadStructural input3546 value382 value1 value2 = (output3546, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3547 value379 value1 value2 = (output3547, value358, value1) := by
  rw [input3547_def, output3547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2033]
  try dsimp only
  rw [child3546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2033_skip, output3546_skip]
  kernel_rfl

theorem node3548_cond_eq
    (child2032 : Flapjack.WordAlloc.removeDeadStructural input2032 value381 value1 value2 = (output2032, value379, value1))
    (child3547 : Flapjack.WordAlloc.removeDeadStructural input3547 value379 value1 value2 = (output3547, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3548 value381 value1 value2 = (output3548, value358, value1) := by
  rw [input3548_def, output3548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2032]
  try dsimp only
  rw [child3547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2032_skip, output3547_skip]
  kernel_rfl

theorem node3549_cond_eq
    (child2031 : Flapjack.WordAlloc.removeDeadStructural input2031 value372 value1 value2 = (output2031, value381, value1))
    (child3548 : Flapjack.WordAlloc.removeDeadStructural input3548 value381 value1 value2 = (output3548, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3549 value372 value1 value2 = (output3549, value358, value1) := by
  rw [input3549_def, output3549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2031]
  try dsimp only
  rw [child3548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2031_skip, output3548_skip]
  kernel_rfl

theorem node3550_cond_eq
    (child1980 : Flapjack.WordAlloc.removeDeadStructural input1980 value372 value1 value2 = (output1980, value372, value1))
    (child3549 : Flapjack.WordAlloc.removeDeadStructural input3549 value372 value1 value2 = (output3549, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3550 value372 value1 value2 = (output3550, value358, value1) := by
  rw [input3550_def, output3550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1980]
  try dsimp only
  rw [child3549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1980_skip, output3549_skip]
  kernel_rfl

theorem node3551_cond_eq
    (child1979 : Flapjack.WordAlloc.removeDeadStructural input1979 value369 value1 value2 = (output1979, value372, value1))
    (child3550 : Flapjack.WordAlloc.removeDeadStructural input3550 value372 value1 value2 = (output3550, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3551 value369 value1 value2 = (output3551, value358, value1) := by
  rw [input3551_def, output3551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1979]
  try dsimp only
  rw [child3550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1979_skip, output3550_skip]
  kernel_rfl

theorem node3552_cond_eq
    (child1978 : Flapjack.WordAlloc.removeDeadStructural input1978 value371 value1 value2 = (output1978, value369, value1))
    (child3551 : Flapjack.WordAlloc.removeDeadStructural input3551 value369 value1 value2 = (output3551, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3552 value371 value1 value2 = (output3552, value358, value1) := by
  rw [input3552_def, output3552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1978]
  try dsimp only
  rw [child3551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1978_skip, output3551_skip]
  kernel_rfl

theorem node3553_cond_eq
    (child1977 : Flapjack.WordAlloc.removeDeadStructural input1977 value359 value8 value2 = (output1977, value371, value1))
    (child3552 : Flapjack.WordAlloc.removeDeadStructural input3552 value371 value1 value2 = (output3552, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3553 value359 value8 value2 = (output3553, value358, value1) := by
  rw [input3553_def, output3553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1977]
  try dsimp only
  rw [child3552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1977_skip, output3552_skip]
  kernel_rfl

theorem node3554_cond_eq
    (child1916 : Flapjack.WordAlloc.removeDeadStructural input1916 value359 value8 value2 = (output1916, value359, value8))
    (child3553 : Flapjack.WordAlloc.removeDeadStructural input3553 value359 value8 value2 = (output3553, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3554 value359 value8 value2 = (output3554, value358, value1) := by
  rw [input3554_def, output3554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1916]
  try dsimp only
  rw [child3553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1916_skip, output3553_skip]
  kernel_rfl

theorem node3555_cond_eq
    (child1915 : Flapjack.WordAlloc.removeDeadStructural input1915 value182 value8 value2 = (output1915, value359, value8))
    (child3554 : Flapjack.WordAlloc.removeDeadStructural input3554 value359 value8 value2 = (output3554, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3555 value182 value8 value2 = (output3555, value358, value1) := by
  rw [input3555_def, output3555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1915]
  try dsimp only
  rw [child3554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1915_skip, output3554_skip]
  kernel_rfl

theorem node3556_cond_eq
    (child1912 : Flapjack.WordAlloc.removeDeadStructural input1912 value182 value8 value2 = (output1912, value358, value1))
    (child3555 : Flapjack.WordAlloc.removeDeadStructural input3555 value182 value8 value2 = (output3555, value358, value1)) : Flapjack.WordAlloc.removeDeadStructural input3556 value182 value8 value2 = (output3556, value642, value1) := by
  rw [input3556_def, output3556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1912]
  try dsimp only
  rw [child3555]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1912_skip, output3555_skip]
  kernel_rfl

theorem node3557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3557 value642 value1 value2 = (output3557, value358, value1) := by
  rw [input3557_def, output3557_def]
  kernel_rfl

theorem node3558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3558 value358 value1 value2 = (output3558, value643, value1) := by
  rw [input3558_def, output3558_def]
  kernel_rfl

theorem node3559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3559 value643 value1 value2 = (output3559, value643, value1) := by
  rw [input3559_def, output3559_def]
  kernel_rfl

theorem node3560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3560 value643 value1 value2 = (output3560, value643, value1) := by
  rw [input3560_def, output3560_def]
  kernel_rfl

theorem node3561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3561 value643 value1 value2 = (output3561, value643, value1) := by
  rw [input3561_def, output3561_def]
  kernel_rfl

theorem node3562_cond_eq
    (child3560 : Flapjack.WordAlloc.removeDeadStructural input3560 value643 value1 value2 = (output3560, value643, value1))
    (child3561 : Flapjack.WordAlloc.removeDeadStructural input3561 value643 value1 value2 = (output3561, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3562 value643 value1 value2 = (output3562, value643, value1) := by
  rw [input3562_def, output3562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3560]
  try dsimp only
  rw [child3561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3560_skip, output3561_skip]
  kernel_rfl

theorem node3563_cond_eq
    (child3559 : Flapjack.WordAlloc.removeDeadStructural input3559 value643 value1 value2 = (output3559, value643, value1))
    (child3562 : Flapjack.WordAlloc.removeDeadStructural input3562 value643 value1 value2 = (output3562, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3563 value643 value1 value2 = (output3563, value643, value1) := by
  rw [input3563_def, output3563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3559]
  try dsimp only
  rw [child3562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3559_skip, output3562_skip]
  kernel_rfl

theorem node3564_cond_eq
    (child3558 : Flapjack.WordAlloc.removeDeadStructural input3558 value358 value1 value2 = (output3558, value643, value1))
    (child3563 : Flapjack.WordAlloc.removeDeadStructural input3563 value643 value1 value2 = (output3563, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3564 value358 value1 value2 = (output3564, value643, value1) := by
  rw [input3564_def, output3564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3558]
  try dsimp only
  rw [child3563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3558_skip, output3563_skip]
  kernel_rfl

theorem node3565_cond_eq
    (child3557 : Flapjack.WordAlloc.removeDeadStructural input3557 value642 value1 value2 = (output3557, value358, value1))
    (child3564 : Flapjack.WordAlloc.removeDeadStructural input3564 value358 value1 value2 = (output3564, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3565 value642 value1 value2 = (output3565, value643, value1) := by
  rw [input3565_def, output3565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3557]
  try dsimp only
  rw [child3564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3557_skip, output3564_skip]
  kernel_rfl

theorem node3566_cond_eq
    (child3556 : Flapjack.WordAlloc.removeDeadStructural input3556 value182 value8 value2 = (output3556, value642, value1))
    (child3565 : Flapjack.WordAlloc.removeDeadStructural input3565 value642 value1 value2 = (output3565, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3566 value182 value8 value2 = (output3566, value643, value1) := by
  rw [input3566_def, output3566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3556]
  try dsimp only
  rw [child3565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3556_skip, output3565_skip]
  kernel_rfl

theorem node3567_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value182 value8 value2 = (output917, value182, value8))
    (child3566 : Flapjack.WordAlloc.removeDeadStructural input3566 value182 value8 value2 = (output3566, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3567 value182 value8 value2 = (output3567, value643, value1) := by
  rw [input3567_def, output3567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child3566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output3566_skip]
  kernel_rfl

theorem node3568_cond_eq
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value186 value8 value2 = (output916, value182, value8))
    (child3567 : Flapjack.WordAlloc.removeDeadStructural input3567 value182 value8 value2 = (output3567, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3568 value186 value8 value2 = (output3568, value643, value1) := by
  rw [input3568_def, output3568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child916]
  try dsimp only
  rw [child3567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output916_skip, output3567_skip]
  kernel_rfl

theorem node3569_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value182 value1 value2 = (output915, value186, value8))
    (child3568 : Flapjack.WordAlloc.removeDeadStructural input3568 value186 value8 value2 = (output3568, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3569 value182 value1 value2 = (output3569, value643, value1) := by
  rw [input3569_def, output3569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  try dsimp only
  rw [child3568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output3568_skip]
  kernel_rfl

theorem node3570_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value184 value1 value2 = (output912, value182, value1))
    (child3569 : Flapjack.WordAlloc.removeDeadStructural input3569 value182 value1 value2 = (output3569, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3570 value184 value1 value2 = (output3570, value643, value1) := by
  rw [input3570_def, output3570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child3569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output3569_skip]
  kernel_rfl

theorem node3571_cond_eq
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value182 value1 value2 = (output911, value184, value1))
    (child3570 : Flapjack.WordAlloc.removeDeadStructural input3570 value184 value1 value2 = (output3570, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3571 value182 value1 value2 = (output3571, value643, value1) := by
  rw [input3571_def, output3571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child911]
  try dsimp only
  rw [child3570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output911_skip, output3570_skip]
  kernel_rfl

theorem node3572_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value181 value1 value2 = (output908, value182, value1))
    (child3571 : Flapjack.WordAlloc.removeDeadStructural input3571 value182 value1 value2 = (output3571, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3572 value181 value1 value2 = (output3572, value643, value1) := by
  rw [input3572_def, output3572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child3571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output3571_skip]
  kernel_rfl

theorem node3573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3573 value181 value1 value2 = (output3573, value181, value1) := by
  rw [input3573_def, output3573_def]
  kernel_rfl

theorem node3574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3574 value181 value1 value2 = (output3574, value643, value1) := by
  rw [input3574_def, output3574_def]
  kernel_rfl

theorem node3575_cond_eq
    (child3573 : Flapjack.WordAlloc.removeDeadStructural input3573 value181 value1 value2 = (output3573, value181, value1))
    (child3574 : Flapjack.WordAlloc.removeDeadStructural input3574 value181 value1 value2 = (output3574, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3575 value181 value1 value2 = (output3575, value643, value1) := by
  rw [input3575_def, output3575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3573]
  try dsimp only
  rw [child3574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3573_skip, output3574_skip]
  kernel_rfl

theorem node3576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3576 value643 value1 value2 = (output3576, value643, value1) := by
  rw [input3576_def, output3576_def]
  kernel_rfl

theorem node3577_cond_eq
    (child3575 : Flapjack.WordAlloc.removeDeadStructural input3575 value181 value1 value2 = (output3575, value643, value1))
    (child3576 : Flapjack.WordAlloc.removeDeadStructural input3576 value643 value1 value2 = (output3576, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3577 value181 value1 value2 = (output3577, value643, value1) := by
  rw [input3577_def, output3577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3575]
  try dsimp only
  rw [child3576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3575_skip, output3576_skip]
  kernel_rfl

theorem node3578_cond_eq
    (child3572 : Flapjack.WordAlloc.removeDeadStructural input3572 value181 value1 value2 = (output3572, value643, value1))
    (child3577 : Flapjack.WordAlloc.removeDeadStructural input3577 value181 value1 value2 = (output3577, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input3578 value181 value1 value2 = (output3578, value645, value1) := by
  rw [input3578_def, output3578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child3572]
  try dsimp only
  rw [child3577]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3572_skip, output3577_skip]
  kernel_rfl

theorem node3579_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value181 value1 value2 = (output905, value181, value1))
    (child3578 : Flapjack.WordAlloc.removeDeadStructural input3578 value181 value1 value2 = (output3578, value645, value1)) : Flapjack.WordAlloc.removeDeadStructural input3579 value181 value1 value2 = (output3579, value645, value1) := by
  rw [input3579_def, output3579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child3578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output3578_skip]
  kernel_rfl

theorem node3580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3580 value645 value1 value2 = (output3580, value643, value1) := by
  rw [input3580_def, output3580_def]
  kernel_rfl

theorem node3581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3581 value643 value1 value2 = (output3581, value646, value1) := by
  rw [input3581_def, output3581_def]
  kernel_rfl

theorem node3582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3582 value646 value1 value2 = (output3582, value646, value1) := by
  rw [input3582_def, output3582_def]
  kernel_rfl

theorem node3583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3583 value646 value1 value2 = (output3583, value646, value1) := by
  rw [input3583_def, output3583_def]
  kernel_rfl

#print axioms node3583_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
