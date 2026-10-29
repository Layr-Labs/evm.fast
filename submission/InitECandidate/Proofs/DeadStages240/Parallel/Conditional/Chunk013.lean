import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk013
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages240.Parallel
theorem node3328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3328 value1668 value1 value2 = (output3328, value1669, value1) := by
  rw [input3328_def, output3328_def]
  kernel_rfl

theorem node3329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3329 value1669 value1 value2 = (output3329, value1670, value1) := by
  rw [input3329_def, output3329_def]
  kernel_rfl

theorem node3330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3330 value1670 value1 value2 = (output3330, value1671, value1) := by
  rw [input3330_def, output3330_def]
  kernel_rfl

theorem node3331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3331 value1671 value1 value2 = (output3331, value5, value1) := by
  rw [input3331_def, output3331_def]
  kernel_rfl

theorem node3332_cond_eq
    (child3330 : Flapjack.WordAlloc.removeDeadStructural input3330 value1670 value1 value2 = (output3330, value1671, value1))
    (child3331 : Flapjack.WordAlloc.removeDeadStructural input3331 value1671 value1 value2 = (output3331, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3332 value1670 value1 value2 = (output3332, value5, value1) := by
  rw [input3332_def, output3332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3330]
  try dsimp only
  rw [child3331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3330_skip, output3331_skip]
  kernel_rfl

theorem node3333_cond_eq
    (child3329 : Flapjack.WordAlloc.removeDeadStructural input3329 value1669 value1 value2 = (output3329, value1670, value1))
    (child3332 : Flapjack.WordAlloc.removeDeadStructural input3332 value1670 value1 value2 = (output3332, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3333 value1669 value1 value2 = (output3333, value5, value1) := by
  rw [input3333_def, output3333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3329]
  try dsimp only
  rw [child3332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3329_skip, output3332_skip]
  kernel_rfl

theorem node3334_cond_eq
    (child3328 : Flapjack.WordAlloc.removeDeadStructural input3328 value1668 value1 value2 = (output3328, value1669, value1))
    (child3333 : Flapjack.WordAlloc.removeDeadStructural input3333 value1669 value1 value2 = (output3333, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3334 value1668 value1 value2 = (output3334, value5, value1) := by
  rw [input3334_def, output3334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3328]
  try dsimp only
  rw [child3333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3328_skip, output3333_skip]
  kernel_rfl

theorem node3335_cond_eq
    (child3327 : Flapjack.WordAlloc.removeDeadStructural input3327 value1667 value1 value2 = (output3327, value1668, value1))
    (child3334 : Flapjack.WordAlloc.removeDeadStructural input3334 value1668 value1 value2 = (output3334, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3335 value1667 value1 value2 = (output3335, value5, value1) := by
  rw [input3335_def, output3335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3327]
  try dsimp only
  rw [child3334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3327_skip, output3334_skip]
  kernel_rfl

theorem node3336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3336 value5 value1 value2 = (output3336, value1672, value1) := by
  rw [input3336_def, output3336_def]
  kernel_rfl

theorem node3337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3337 value1672 value1 value2 = (output3337, value1673, value1) := by
  rw [input3337_def, output3337_def]
  kernel_rfl

theorem node3338_cond_eq
    (child3336 : Flapjack.WordAlloc.removeDeadStructural input3336 value5 value1 value2 = (output3336, value1672, value1))
    (child3337 : Flapjack.WordAlloc.removeDeadStructural input3337 value1672 value1 value2 = (output3337, value1673, value1)) : Flapjack.WordAlloc.removeDeadStructural input3338 value5 value1 value2 = (output3338, value1673, value1) := by
  rw [input3338_def, output3338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3336]
  try dsimp only
  rw [child3337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3336_skip, output3337_skip]
  kernel_rfl

theorem node3339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3339 value1673 value1 value2 = (output3339, value1674, value1) := by
  rw [input3339_def, output3339_def]
  kernel_rfl

theorem node3340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3340 value1674 value1 value2 = (output3340, value1674, value1) := by
  rw [input3340_def, output3340_def]
  kernel_rfl

theorem node3341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3341 value1674 value1 value2 = (output3341, value1675, value1) := by
  rw [input3341_def, output3341_def]
  kernel_rfl

theorem node3342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3342 value1675 value1 value2 = (output3342, value1676, value1) := by
  rw [input3342_def, output3342_def]
  kernel_rfl

theorem node3343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3343 value1676 value1 value2 = (output3343, value1677, value1) := by
  rw [input3343_def, output3343_def]
  kernel_rfl

theorem node3344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3344 value1677 value1 value2 = (output3344, value1678, value1) := by
  rw [input3344_def, output3344_def]
  kernel_rfl

theorem node3345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3345 value1678 value1 value2 = (output3345, value5, value1) := by
  rw [input3345_def, output3345_def]
  kernel_rfl

theorem node3346_cond_eq
    (child3344 : Flapjack.WordAlloc.removeDeadStructural input3344 value1677 value1 value2 = (output3344, value1678, value1))
    (child3345 : Flapjack.WordAlloc.removeDeadStructural input3345 value1678 value1 value2 = (output3345, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3346 value1677 value1 value2 = (output3346, value5, value1) := by
  rw [input3346_def, output3346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3344]
  try dsimp only
  rw [child3345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3344_skip, output3345_skip]
  kernel_rfl

theorem node3347_cond_eq
    (child3343 : Flapjack.WordAlloc.removeDeadStructural input3343 value1676 value1 value2 = (output3343, value1677, value1))
    (child3346 : Flapjack.WordAlloc.removeDeadStructural input3346 value1677 value1 value2 = (output3346, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3347 value1676 value1 value2 = (output3347, value5, value1) := by
  rw [input3347_def, output3347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3343]
  try dsimp only
  rw [child3346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3343_skip, output3346_skip]
  kernel_rfl

theorem node3348_cond_eq
    (child3342 : Flapjack.WordAlloc.removeDeadStructural input3342 value1675 value1 value2 = (output3342, value1676, value1))
    (child3347 : Flapjack.WordAlloc.removeDeadStructural input3347 value1676 value1 value2 = (output3347, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3348 value1675 value1 value2 = (output3348, value5, value1) := by
  rw [input3348_def, output3348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3342]
  try dsimp only
  rw [child3347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3342_skip, output3347_skip]
  kernel_rfl

theorem node3349_cond_eq
    (child3341 : Flapjack.WordAlloc.removeDeadStructural input3341 value1674 value1 value2 = (output3341, value1675, value1))
    (child3348 : Flapjack.WordAlloc.removeDeadStructural input3348 value1675 value1 value2 = (output3348, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3349 value1674 value1 value2 = (output3349, value5, value1) := by
  rw [input3349_def, output3349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3341]
  try dsimp only
  rw [child3348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3341_skip, output3348_skip]
  kernel_rfl

theorem node3350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3350 value5 value1 value2 = (output3350, value1679, value1) := by
  rw [input3350_def, output3350_def]
  kernel_rfl

theorem node3351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3351 value1679 value1 value2 = (output3351, value1680, value1) := by
  rw [input3351_def, output3351_def]
  kernel_rfl

theorem node3352_cond_eq
    (child3350 : Flapjack.WordAlloc.removeDeadStructural input3350 value5 value1 value2 = (output3350, value1679, value1))
    (child3351 : Flapjack.WordAlloc.removeDeadStructural input3351 value1679 value1 value2 = (output3351, value1680, value1)) : Flapjack.WordAlloc.removeDeadStructural input3352 value5 value1 value2 = (output3352, value1680, value1) := by
  rw [input3352_def, output3352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3350]
  try dsimp only
  rw [child3351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3350_skip, output3351_skip]
  kernel_rfl

theorem node3353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3353 value1680 value1 value2 = (output3353, value1681, value1) := by
  rw [input3353_def, output3353_def]
  kernel_rfl

theorem node3354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3354 value1681 value1 value2 = (output3354, value1681, value1) := by
  rw [input3354_def, output3354_def]
  kernel_rfl

theorem node3355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3355 value1681 value1 value2 = (output3355, value1682, value1) := by
  rw [input3355_def, output3355_def]
  kernel_rfl

theorem node3356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3356 value1682 value1 value2 = (output3356, value1683, value1) := by
  rw [input3356_def, output3356_def]
  kernel_rfl

theorem node3357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3357 value1683 value1 value2 = (output3357, value1684, value1) := by
  rw [input3357_def, output3357_def]
  kernel_rfl

theorem node3358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3358 value1684 value1 value2 = (output3358, value1685, value1) := by
  rw [input3358_def, output3358_def]
  kernel_rfl

theorem node3359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3359 value1685 value1 value2 = (output3359, value5, value1) := by
  rw [input3359_def, output3359_def]
  kernel_rfl

theorem node3360_cond_eq
    (child3358 : Flapjack.WordAlloc.removeDeadStructural input3358 value1684 value1 value2 = (output3358, value1685, value1))
    (child3359 : Flapjack.WordAlloc.removeDeadStructural input3359 value1685 value1 value2 = (output3359, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3360 value1684 value1 value2 = (output3360, value5, value1) := by
  rw [input3360_def, output3360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3358]
  try dsimp only
  rw [child3359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3358_skip, output3359_skip]
  kernel_rfl

theorem node3361_cond_eq
    (child3357 : Flapjack.WordAlloc.removeDeadStructural input3357 value1683 value1 value2 = (output3357, value1684, value1))
    (child3360 : Flapjack.WordAlloc.removeDeadStructural input3360 value1684 value1 value2 = (output3360, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3361 value1683 value1 value2 = (output3361, value5, value1) := by
  rw [input3361_def, output3361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3357]
  try dsimp only
  rw [child3360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3357_skip, output3360_skip]
  kernel_rfl

theorem node3362_cond_eq
    (child3356 : Flapjack.WordAlloc.removeDeadStructural input3356 value1682 value1 value2 = (output3356, value1683, value1))
    (child3361 : Flapjack.WordAlloc.removeDeadStructural input3361 value1683 value1 value2 = (output3361, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3362 value1682 value1 value2 = (output3362, value5, value1) := by
  rw [input3362_def, output3362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3356]
  try dsimp only
  rw [child3361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3356_skip, output3361_skip]
  kernel_rfl

theorem node3363_cond_eq
    (child3355 : Flapjack.WordAlloc.removeDeadStructural input3355 value1681 value1 value2 = (output3355, value1682, value1))
    (child3362 : Flapjack.WordAlloc.removeDeadStructural input3362 value1682 value1 value2 = (output3362, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3363 value1681 value1 value2 = (output3363, value5, value1) := by
  rw [input3363_def, output3363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3355]
  try dsimp only
  rw [child3362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3355_skip, output3362_skip]
  kernel_rfl

theorem node3364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3364 value5 value1 value2 = (output3364, value1686, value1) := by
  rw [input3364_def, output3364_def]
  kernel_rfl

theorem node3365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3365 value1686 value1 value2 = (output3365, value1687, value1) := by
  rw [input3365_def, output3365_def]
  kernel_rfl

theorem node3366_cond_eq
    (child3364 : Flapjack.WordAlloc.removeDeadStructural input3364 value5 value1 value2 = (output3364, value1686, value1))
    (child3365 : Flapjack.WordAlloc.removeDeadStructural input3365 value1686 value1 value2 = (output3365, value1687, value1)) : Flapjack.WordAlloc.removeDeadStructural input3366 value5 value1 value2 = (output3366, value1687, value1) := by
  rw [input3366_def, output3366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3364]
  try dsimp only
  rw [child3365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3364_skip, output3365_skip]
  kernel_rfl

theorem node3367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3367 value1687 value1 value2 = (output3367, value1688, value1) := by
  rw [input3367_def, output3367_def]
  kernel_rfl

theorem node3368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3368 value1688 value1 value2 = (output3368, value1688, value1) := by
  rw [input3368_def, output3368_def]
  kernel_rfl

theorem node3369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3369 value1688 value1 value2 = (output3369, value1689, value1) := by
  rw [input3369_def, output3369_def]
  kernel_rfl

theorem node3370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3370 value1689 value1 value2 = (output3370, value1690, value1) := by
  rw [input3370_def, output3370_def]
  kernel_rfl

theorem node3371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3371 value1690 value1 value2 = (output3371, value1691, value1) := by
  rw [input3371_def, output3371_def]
  kernel_rfl

theorem node3372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3372 value1691 value1 value2 = (output3372, value1692, value1) := by
  rw [input3372_def, output3372_def]
  kernel_rfl

theorem node3373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3373 value1692 value1 value2 = (output3373, value5, value1) := by
  rw [input3373_def, output3373_def]
  kernel_rfl

theorem node3374_cond_eq
    (child3372 : Flapjack.WordAlloc.removeDeadStructural input3372 value1691 value1 value2 = (output3372, value1692, value1))
    (child3373 : Flapjack.WordAlloc.removeDeadStructural input3373 value1692 value1 value2 = (output3373, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3374 value1691 value1 value2 = (output3374, value5, value1) := by
  rw [input3374_def, output3374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3372]
  try dsimp only
  rw [child3373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3372_skip, output3373_skip]
  kernel_rfl

theorem node3375_cond_eq
    (child3371 : Flapjack.WordAlloc.removeDeadStructural input3371 value1690 value1 value2 = (output3371, value1691, value1))
    (child3374 : Flapjack.WordAlloc.removeDeadStructural input3374 value1691 value1 value2 = (output3374, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3375 value1690 value1 value2 = (output3375, value5, value1) := by
  rw [input3375_def, output3375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3371]
  try dsimp only
  rw [child3374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3371_skip, output3374_skip]
  kernel_rfl

theorem node3376_cond_eq
    (child3370 : Flapjack.WordAlloc.removeDeadStructural input3370 value1689 value1 value2 = (output3370, value1690, value1))
    (child3375 : Flapjack.WordAlloc.removeDeadStructural input3375 value1690 value1 value2 = (output3375, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3376 value1689 value1 value2 = (output3376, value5, value1) := by
  rw [input3376_def, output3376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3370]
  try dsimp only
  rw [child3375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3370_skip, output3375_skip]
  kernel_rfl

theorem node3377_cond_eq
    (child3369 : Flapjack.WordAlloc.removeDeadStructural input3369 value1688 value1 value2 = (output3369, value1689, value1))
    (child3376 : Flapjack.WordAlloc.removeDeadStructural input3376 value1689 value1 value2 = (output3376, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3377 value1688 value1 value2 = (output3377, value5, value1) := by
  rw [input3377_def, output3377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3369]
  try dsimp only
  rw [child3376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3369_skip, output3376_skip]
  kernel_rfl

theorem node3378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3378 value5 value1 value2 = (output3378, value1693, value1) := by
  rw [input3378_def, output3378_def]
  kernel_rfl

theorem node3379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3379 value1693 value1 value2 = (output3379, value1694, value1) := by
  rw [input3379_def, output3379_def]
  kernel_rfl

theorem node3380_cond_eq
    (child3378 : Flapjack.WordAlloc.removeDeadStructural input3378 value5 value1 value2 = (output3378, value1693, value1))
    (child3379 : Flapjack.WordAlloc.removeDeadStructural input3379 value1693 value1 value2 = (output3379, value1694, value1)) : Flapjack.WordAlloc.removeDeadStructural input3380 value5 value1 value2 = (output3380, value1694, value1) := by
  rw [input3380_def, output3380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3378]
  try dsimp only
  rw [child3379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3378_skip, output3379_skip]
  kernel_rfl

theorem node3381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3381 value1694 value1 value2 = (output3381, value1695, value1) := by
  rw [input3381_def, output3381_def]
  kernel_rfl

theorem node3382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3382 value1695 value1 value2 = (output3382, value1695, value1) := by
  rw [input3382_def, output3382_def]
  kernel_rfl

theorem node3383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3383 value1695 value1 value2 = (output3383, value1696, value1) := by
  rw [input3383_def, output3383_def]
  kernel_rfl

theorem node3384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3384 value1696 value1 value2 = (output3384, value1697, value1) := by
  rw [input3384_def, output3384_def]
  kernel_rfl

theorem node3385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3385 value1697 value1 value2 = (output3385, value1698, value1) := by
  rw [input3385_def, output3385_def]
  kernel_rfl

theorem node3386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3386 value1698 value1 value2 = (output3386, value1699, value1) := by
  rw [input3386_def, output3386_def]
  kernel_rfl

theorem node3387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3387 value1699 value1 value2 = (output3387, value5, value1) := by
  rw [input3387_def, output3387_def]
  kernel_rfl

theorem node3388_cond_eq
    (child3386 : Flapjack.WordAlloc.removeDeadStructural input3386 value1698 value1 value2 = (output3386, value1699, value1))
    (child3387 : Flapjack.WordAlloc.removeDeadStructural input3387 value1699 value1 value2 = (output3387, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3388 value1698 value1 value2 = (output3388, value5, value1) := by
  rw [input3388_def, output3388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3386]
  try dsimp only
  rw [child3387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3386_skip, output3387_skip]
  kernel_rfl

theorem node3389_cond_eq
    (child3385 : Flapjack.WordAlloc.removeDeadStructural input3385 value1697 value1 value2 = (output3385, value1698, value1))
    (child3388 : Flapjack.WordAlloc.removeDeadStructural input3388 value1698 value1 value2 = (output3388, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3389 value1697 value1 value2 = (output3389, value5, value1) := by
  rw [input3389_def, output3389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3385]
  try dsimp only
  rw [child3388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3385_skip, output3388_skip]
  kernel_rfl

theorem node3390_cond_eq
    (child3384 : Flapjack.WordAlloc.removeDeadStructural input3384 value1696 value1 value2 = (output3384, value1697, value1))
    (child3389 : Flapjack.WordAlloc.removeDeadStructural input3389 value1697 value1 value2 = (output3389, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3390 value1696 value1 value2 = (output3390, value5, value1) := by
  rw [input3390_def, output3390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3384]
  try dsimp only
  rw [child3389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3384_skip, output3389_skip]
  kernel_rfl

theorem node3391_cond_eq
    (child3383 : Flapjack.WordAlloc.removeDeadStructural input3383 value1695 value1 value2 = (output3383, value1696, value1))
    (child3390 : Flapjack.WordAlloc.removeDeadStructural input3390 value1696 value1 value2 = (output3390, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3391 value1695 value1 value2 = (output3391, value5, value1) := by
  rw [input3391_def, output3391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3383]
  try dsimp only
  rw [child3390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3383_skip, output3390_skip]
  kernel_rfl

theorem node3392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3392 value5 value1 value2 = (output3392, value1700, value1) := by
  rw [input3392_def, output3392_def]
  kernel_rfl

theorem node3393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3393 value1700 value1 value2 = (output3393, value1701, value1) := by
  rw [input3393_def, output3393_def]
  kernel_rfl

theorem node3394_cond_eq
    (child3392 : Flapjack.WordAlloc.removeDeadStructural input3392 value5 value1 value2 = (output3392, value1700, value1))
    (child3393 : Flapjack.WordAlloc.removeDeadStructural input3393 value1700 value1 value2 = (output3393, value1701, value1)) : Flapjack.WordAlloc.removeDeadStructural input3394 value5 value1 value2 = (output3394, value1701, value1) := by
  rw [input3394_def, output3394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3392]
  try dsimp only
  rw [child3393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3392_skip, output3393_skip]
  kernel_rfl

theorem node3395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3395 value1701 value1 value2 = (output3395, value1702, value1) := by
  rw [input3395_def, output3395_def]
  kernel_rfl

theorem node3396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3396 value1702 value1 value2 = (output3396, value1702, value1) := by
  rw [input3396_def, output3396_def]
  kernel_rfl

theorem node3397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3397 value1702 value1 value2 = (output3397, value1703, value1) := by
  rw [input3397_def, output3397_def]
  kernel_rfl

theorem node3398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3398 value1703 value1 value2 = (output3398, value1704, value1) := by
  rw [input3398_def, output3398_def]
  kernel_rfl

theorem node3399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3399 value1704 value1 value2 = (output3399, value1705, value1) := by
  rw [input3399_def, output3399_def]
  kernel_rfl

theorem node3400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3400 value1705 value1 value2 = (output3400, value1706, value1) := by
  rw [input3400_def, output3400_def]
  kernel_rfl

theorem node3401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3401 value1706 value1 value2 = (output3401, value5, value1) := by
  rw [input3401_def, output3401_def]
  kernel_rfl

theorem node3402_cond_eq
    (child3400 : Flapjack.WordAlloc.removeDeadStructural input3400 value1705 value1 value2 = (output3400, value1706, value1))
    (child3401 : Flapjack.WordAlloc.removeDeadStructural input3401 value1706 value1 value2 = (output3401, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3402 value1705 value1 value2 = (output3402, value5, value1) := by
  rw [input3402_def, output3402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3400]
  try dsimp only
  rw [child3401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3400_skip, output3401_skip]
  kernel_rfl

theorem node3403_cond_eq
    (child3399 : Flapjack.WordAlloc.removeDeadStructural input3399 value1704 value1 value2 = (output3399, value1705, value1))
    (child3402 : Flapjack.WordAlloc.removeDeadStructural input3402 value1705 value1 value2 = (output3402, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3403 value1704 value1 value2 = (output3403, value5, value1) := by
  rw [input3403_def, output3403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3399]
  try dsimp only
  rw [child3402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3399_skip, output3402_skip]
  kernel_rfl

theorem node3404_cond_eq
    (child3398 : Flapjack.WordAlloc.removeDeadStructural input3398 value1703 value1 value2 = (output3398, value1704, value1))
    (child3403 : Flapjack.WordAlloc.removeDeadStructural input3403 value1704 value1 value2 = (output3403, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3404 value1703 value1 value2 = (output3404, value5, value1) := by
  rw [input3404_def, output3404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3398]
  try dsimp only
  rw [child3403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3398_skip, output3403_skip]
  kernel_rfl

theorem node3405_cond_eq
    (child3397 : Flapjack.WordAlloc.removeDeadStructural input3397 value1702 value1 value2 = (output3397, value1703, value1))
    (child3404 : Flapjack.WordAlloc.removeDeadStructural input3404 value1703 value1 value2 = (output3404, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3405 value1702 value1 value2 = (output3405, value5, value1) := by
  rw [input3405_def, output3405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3397]
  try dsimp only
  rw [child3404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3397_skip, output3404_skip]
  kernel_rfl

theorem node3406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3406 value5 value1 value2 = (output3406, value1707, value1) := by
  rw [input3406_def, output3406_def]
  kernel_rfl

theorem node3407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3407 value1707 value1 value2 = (output3407, value1708, value1) := by
  rw [input3407_def, output3407_def]
  kernel_rfl

theorem node3408_cond_eq
    (child3406 : Flapjack.WordAlloc.removeDeadStructural input3406 value5 value1 value2 = (output3406, value1707, value1))
    (child3407 : Flapjack.WordAlloc.removeDeadStructural input3407 value1707 value1 value2 = (output3407, value1708, value1)) : Flapjack.WordAlloc.removeDeadStructural input3408 value5 value1 value2 = (output3408, value1708, value1) := by
  rw [input3408_def, output3408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3406]
  try dsimp only
  rw [child3407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3406_skip, output3407_skip]
  kernel_rfl

theorem node3409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3409 value1708 value1 value2 = (output3409, value1709, value1) := by
  rw [input3409_def, output3409_def]
  kernel_rfl

theorem node3410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3410 value1709 value1 value2 = (output3410, value1709, value1) := by
  rw [input3410_def, output3410_def]
  kernel_rfl

theorem node3411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3411 value1709 value1 value2 = (output3411, value1710, value1) := by
  rw [input3411_def, output3411_def]
  kernel_rfl

theorem node3412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3412 value1710 value1 value2 = (output3412, value1711, value1) := by
  rw [input3412_def, output3412_def]
  kernel_rfl

theorem node3413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3413 value1711 value1 value2 = (output3413, value1712, value1) := by
  rw [input3413_def, output3413_def]
  kernel_rfl

theorem node3414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3414 value1712 value1 value2 = (output3414, value1713, value1) := by
  rw [input3414_def, output3414_def]
  kernel_rfl

theorem node3415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3415 value1713 value1 value2 = (output3415, value5, value1) := by
  rw [input3415_def, output3415_def]
  kernel_rfl

theorem node3416_cond_eq
    (child3414 : Flapjack.WordAlloc.removeDeadStructural input3414 value1712 value1 value2 = (output3414, value1713, value1))
    (child3415 : Flapjack.WordAlloc.removeDeadStructural input3415 value1713 value1 value2 = (output3415, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3416 value1712 value1 value2 = (output3416, value5, value1) := by
  rw [input3416_def, output3416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3414]
  try dsimp only
  rw [child3415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3414_skip, output3415_skip]
  kernel_rfl

theorem node3417_cond_eq
    (child3413 : Flapjack.WordAlloc.removeDeadStructural input3413 value1711 value1 value2 = (output3413, value1712, value1))
    (child3416 : Flapjack.WordAlloc.removeDeadStructural input3416 value1712 value1 value2 = (output3416, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3417 value1711 value1 value2 = (output3417, value5, value1) := by
  rw [input3417_def, output3417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3413]
  try dsimp only
  rw [child3416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3413_skip, output3416_skip]
  kernel_rfl

theorem node3418_cond_eq
    (child3412 : Flapjack.WordAlloc.removeDeadStructural input3412 value1710 value1 value2 = (output3412, value1711, value1))
    (child3417 : Flapjack.WordAlloc.removeDeadStructural input3417 value1711 value1 value2 = (output3417, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3418 value1710 value1 value2 = (output3418, value5, value1) := by
  rw [input3418_def, output3418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3412]
  try dsimp only
  rw [child3417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3412_skip, output3417_skip]
  kernel_rfl

theorem node3419_cond_eq
    (child3411 : Flapjack.WordAlloc.removeDeadStructural input3411 value1709 value1 value2 = (output3411, value1710, value1))
    (child3418 : Flapjack.WordAlloc.removeDeadStructural input3418 value1710 value1 value2 = (output3418, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3419 value1709 value1 value2 = (output3419, value5, value1) := by
  rw [input3419_def, output3419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3411]
  try dsimp only
  rw [child3418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3411_skip, output3418_skip]
  kernel_rfl

theorem node3420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3420 value5 value1 value2 = (output3420, value1714, value1) := by
  rw [input3420_def, output3420_def]
  kernel_rfl

theorem node3421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3421 value1714 value1 value2 = (output3421, value1715, value1) := by
  rw [input3421_def, output3421_def]
  kernel_rfl

theorem node3422_cond_eq
    (child3420 : Flapjack.WordAlloc.removeDeadStructural input3420 value5 value1 value2 = (output3420, value1714, value1))
    (child3421 : Flapjack.WordAlloc.removeDeadStructural input3421 value1714 value1 value2 = (output3421, value1715, value1)) : Flapjack.WordAlloc.removeDeadStructural input3422 value5 value1 value2 = (output3422, value1715, value1) := by
  rw [input3422_def, output3422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3420]
  try dsimp only
  rw [child3421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3420_skip, output3421_skip]
  kernel_rfl

theorem node3423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3423 value1715 value1 value2 = (output3423, value1716, value1) := by
  rw [input3423_def, output3423_def]
  kernel_rfl

theorem node3424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3424 value1716 value1 value2 = (output3424, value1716, value1) := by
  rw [input3424_def, output3424_def]
  kernel_rfl

theorem node3425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3425 value1716 value1 value2 = (output3425, value1717, value1) := by
  rw [input3425_def, output3425_def]
  kernel_rfl

theorem node3426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3426 value1717 value1 value2 = (output3426, value1718, value1) := by
  rw [input3426_def, output3426_def]
  kernel_rfl

theorem node3427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3427 value1718 value1 value2 = (output3427, value1719, value1) := by
  rw [input3427_def, output3427_def]
  kernel_rfl

theorem node3428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3428 value1719 value1 value2 = (output3428, value1720, value1) := by
  rw [input3428_def, output3428_def]
  kernel_rfl

theorem node3429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3429 value1720 value1 value2 = (output3429, value5, value1) := by
  rw [input3429_def, output3429_def]
  kernel_rfl

theorem node3430_cond_eq
    (child3428 : Flapjack.WordAlloc.removeDeadStructural input3428 value1719 value1 value2 = (output3428, value1720, value1))
    (child3429 : Flapjack.WordAlloc.removeDeadStructural input3429 value1720 value1 value2 = (output3429, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3430 value1719 value1 value2 = (output3430, value5, value1) := by
  rw [input3430_def, output3430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3428]
  try dsimp only
  rw [child3429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3428_skip, output3429_skip]
  kernel_rfl

theorem node3431_cond_eq
    (child3427 : Flapjack.WordAlloc.removeDeadStructural input3427 value1718 value1 value2 = (output3427, value1719, value1))
    (child3430 : Flapjack.WordAlloc.removeDeadStructural input3430 value1719 value1 value2 = (output3430, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3431 value1718 value1 value2 = (output3431, value5, value1) := by
  rw [input3431_def, output3431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3427]
  try dsimp only
  rw [child3430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3427_skip, output3430_skip]
  kernel_rfl

theorem node3432_cond_eq
    (child3426 : Flapjack.WordAlloc.removeDeadStructural input3426 value1717 value1 value2 = (output3426, value1718, value1))
    (child3431 : Flapjack.WordAlloc.removeDeadStructural input3431 value1718 value1 value2 = (output3431, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3432 value1717 value1 value2 = (output3432, value5, value1) := by
  rw [input3432_def, output3432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3426]
  try dsimp only
  rw [child3431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3426_skip, output3431_skip]
  kernel_rfl

theorem node3433_cond_eq
    (child3425 : Flapjack.WordAlloc.removeDeadStructural input3425 value1716 value1 value2 = (output3425, value1717, value1))
    (child3432 : Flapjack.WordAlloc.removeDeadStructural input3432 value1717 value1 value2 = (output3432, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3433 value1716 value1 value2 = (output3433, value5, value1) := by
  rw [input3433_def, output3433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3425]
  try dsimp only
  rw [child3432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3425_skip, output3432_skip]
  kernel_rfl

theorem node3434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3434 value5 value1 value2 = (output3434, value1721, value1) := by
  rw [input3434_def, output3434_def]
  kernel_rfl

theorem node3435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3435 value1721 value1 value2 = (output3435, value1722, value1) := by
  rw [input3435_def, output3435_def]
  kernel_rfl

theorem node3436_cond_eq
    (child3434 : Flapjack.WordAlloc.removeDeadStructural input3434 value5 value1 value2 = (output3434, value1721, value1))
    (child3435 : Flapjack.WordAlloc.removeDeadStructural input3435 value1721 value1 value2 = (output3435, value1722, value1)) : Flapjack.WordAlloc.removeDeadStructural input3436 value5 value1 value2 = (output3436, value1722, value1) := by
  rw [input3436_def, output3436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3434]
  try dsimp only
  rw [child3435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3434_skip, output3435_skip]
  kernel_rfl

theorem node3437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3437 value1722 value1 value2 = (output3437, value1723, value1) := by
  rw [input3437_def, output3437_def]
  kernel_rfl

theorem node3438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3438 value1723 value1 value2 = (output3438, value1723, value1) := by
  rw [input3438_def, output3438_def]
  kernel_rfl

theorem node3439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3439 value1723 value1 value2 = (output3439, value1724, value1) := by
  rw [input3439_def, output3439_def]
  kernel_rfl

theorem node3440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3440 value1724 value1 value2 = (output3440, value1725, value1) := by
  rw [input3440_def, output3440_def]
  kernel_rfl

theorem node3441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3441 value1725 value1 value2 = (output3441, value1726, value1) := by
  rw [input3441_def, output3441_def]
  kernel_rfl

theorem node3442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3442 value1726 value1 value2 = (output3442, value1727, value1) := by
  rw [input3442_def, output3442_def]
  kernel_rfl

theorem node3443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3443 value1727 value1 value2 = (output3443, value5, value1) := by
  rw [input3443_def, output3443_def]
  kernel_rfl

theorem node3444_cond_eq
    (child3442 : Flapjack.WordAlloc.removeDeadStructural input3442 value1726 value1 value2 = (output3442, value1727, value1))
    (child3443 : Flapjack.WordAlloc.removeDeadStructural input3443 value1727 value1 value2 = (output3443, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3444 value1726 value1 value2 = (output3444, value5, value1) := by
  rw [input3444_def, output3444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3442]
  try dsimp only
  rw [child3443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3442_skip, output3443_skip]
  kernel_rfl

theorem node3445_cond_eq
    (child3441 : Flapjack.WordAlloc.removeDeadStructural input3441 value1725 value1 value2 = (output3441, value1726, value1))
    (child3444 : Flapjack.WordAlloc.removeDeadStructural input3444 value1726 value1 value2 = (output3444, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3445 value1725 value1 value2 = (output3445, value5, value1) := by
  rw [input3445_def, output3445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3441]
  try dsimp only
  rw [child3444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3441_skip, output3444_skip]
  kernel_rfl

theorem node3446_cond_eq
    (child3440 : Flapjack.WordAlloc.removeDeadStructural input3440 value1724 value1 value2 = (output3440, value1725, value1))
    (child3445 : Flapjack.WordAlloc.removeDeadStructural input3445 value1725 value1 value2 = (output3445, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3446 value1724 value1 value2 = (output3446, value5, value1) := by
  rw [input3446_def, output3446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3440]
  try dsimp only
  rw [child3445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3440_skip, output3445_skip]
  kernel_rfl

theorem node3447_cond_eq
    (child3439 : Flapjack.WordAlloc.removeDeadStructural input3439 value1723 value1 value2 = (output3439, value1724, value1))
    (child3446 : Flapjack.WordAlloc.removeDeadStructural input3446 value1724 value1 value2 = (output3446, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3447 value1723 value1 value2 = (output3447, value5, value1) := by
  rw [input3447_def, output3447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3439]
  try dsimp only
  rw [child3446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3439_skip, output3446_skip]
  kernel_rfl

theorem node3448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3448 value5 value1 value2 = (output3448, value1728, value1) := by
  rw [input3448_def, output3448_def]
  kernel_rfl

theorem node3449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3449 value1728 value1 value2 = (output3449, value1729, value1) := by
  rw [input3449_def, output3449_def]
  kernel_rfl

theorem node3450_cond_eq
    (child3448 : Flapjack.WordAlloc.removeDeadStructural input3448 value5 value1 value2 = (output3448, value1728, value1))
    (child3449 : Flapjack.WordAlloc.removeDeadStructural input3449 value1728 value1 value2 = (output3449, value1729, value1)) : Flapjack.WordAlloc.removeDeadStructural input3450 value5 value1 value2 = (output3450, value1729, value1) := by
  rw [input3450_def, output3450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3448]
  try dsimp only
  rw [child3449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3448_skip, output3449_skip]
  kernel_rfl

theorem node3451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3451 value1729 value1 value2 = (output3451, value1730, value1) := by
  rw [input3451_def, output3451_def]
  kernel_rfl

theorem node3452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3452 value1730 value1 value2 = (output3452, value1730, value1) := by
  rw [input3452_def, output3452_def]
  kernel_rfl

theorem node3453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3453 value1730 value1 value2 = (output3453, value1731, value1) := by
  rw [input3453_def, output3453_def]
  kernel_rfl

theorem node3454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3454 value1731 value1 value2 = (output3454, value1732, value1) := by
  rw [input3454_def, output3454_def]
  kernel_rfl

theorem node3455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3455 value1732 value1 value2 = (output3455, value1733, value1) := by
  rw [input3455_def, output3455_def]
  kernel_rfl

theorem node3456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3456 value1733 value1 value2 = (output3456, value1734, value1) := by
  rw [input3456_def, output3456_def]
  kernel_rfl

theorem node3457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3457 value1734 value1 value2 = (output3457, value5, value1) := by
  rw [input3457_def, output3457_def]
  kernel_rfl

theorem node3458_cond_eq
    (child3456 : Flapjack.WordAlloc.removeDeadStructural input3456 value1733 value1 value2 = (output3456, value1734, value1))
    (child3457 : Flapjack.WordAlloc.removeDeadStructural input3457 value1734 value1 value2 = (output3457, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3458 value1733 value1 value2 = (output3458, value5, value1) := by
  rw [input3458_def, output3458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3456]
  try dsimp only
  rw [child3457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3456_skip, output3457_skip]
  kernel_rfl

theorem node3459_cond_eq
    (child3455 : Flapjack.WordAlloc.removeDeadStructural input3455 value1732 value1 value2 = (output3455, value1733, value1))
    (child3458 : Flapjack.WordAlloc.removeDeadStructural input3458 value1733 value1 value2 = (output3458, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3459 value1732 value1 value2 = (output3459, value5, value1) := by
  rw [input3459_def, output3459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3455]
  try dsimp only
  rw [child3458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3455_skip, output3458_skip]
  kernel_rfl

theorem node3460_cond_eq
    (child3454 : Flapjack.WordAlloc.removeDeadStructural input3454 value1731 value1 value2 = (output3454, value1732, value1))
    (child3459 : Flapjack.WordAlloc.removeDeadStructural input3459 value1732 value1 value2 = (output3459, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3460 value1731 value1 value2 = (output3460, value5, value1) := by
  rw [input3460_def, output3460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3454]
  try dsimp only
  rw [child3459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3454_skip, output3459_skip]
  kernel_rfl

theorem node3461_cond_eq
    (child3453 : Flapjack.WordAlloc.removeDeadStructural input3453 value1730 value1 value2 = (output3453, value1731, value1))
    (child3460 : Flapjack.WordAlloc.removeDeadStructural input3460 value1731 value1 value2 = (output3460, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3461 value1730 value1 value2 = (output3461, value5, value1) := by
  rw [input3461_def, output3461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3453]
  try dsimp only
  rw [child3460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3453_skip, output3460_skip]
  kernel_rfl

theorem node3462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3462 value5 value1 value2 = (output3462, value1735, value1) := by
  rw [input3462_def, output3462_def]
  kernel_rfl

theorem node3463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3463 value1735 value1 value2 = (output3463, value1736, value1) := by
  rw [input3463_def, output3463_def]
  kernel_rfl

theorem node3464_cond_eq
    (child3462 : Flapjack.WordAlloc.removeDeadStructural input3462 value5 value1 value2 = (output3462, value1735, value1))
    (child3463 : Flapjack.WordAlloc.removeDeadStructural input3463 value1735 value1 value2 = (output3463, value1736, value1)) : Flapjack.WordAlloc.removeDeadStructural input3464 value5 value1 value2 = (output3464, value1736, value1) := by
  rw [input3464_def, output3464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3462]
  try dsimp only
  rw [child3463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3462_skip, output3463_skip]
  kernel_rfl

theorem node3465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3465 value1736 value1 value2 = (output3465, value1737, value1) := by
  rw [input3465_def, output3465_def]
  kernel_rfl

theorem node3466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3466 value1737 value1 value2 = (output3466, value1737, value1) := by
  rw [input3466_def, output3466_def]
  kernel_rfl

theorem node3467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3467 value1737 value1 value2 = (output3467, value1738, value1) := by
  rw [input3467_def, output3467_def]
  kernel_rfl

theorem node3468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3468 value1738 value1 value2 = (output3468, value1739, value1) := by
  rw [input3468_def, output3468_def]
  kernel_rfl

theorem node3469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3469 value1739 value1 value2 = (output3469, value1740, value1) := by
  rw [input3469_def, output3469_def]
  kernel_rfl

theorem node3470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3470 value1740 value1 value2 = (output3470, value1741, value1) := by
  rw [input3470_def, output3470_def]
  kernel_rfl

theorem node3471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3471 value1741 value1 value2 = (output3471, value5, value1) := by
  rw [input3471_def, output3471_def]
  kernel_rfl

theorem node3472_cond_eq
    (child3470 : Flapjack.WordAlloc.removeDeadStructural input3470 value1740 value1 value2 = (output3470, value1741, value1))
    (child3471 : Flapjack.WordAlloc.removeDeadStructural input3471 value1741 value1 value2 = (output3471, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3472 value1740 value1 value2 = (output3472, value5, value1) := by
  rw [input3472_def, output3472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3470]
  try dsimp only
  rw [child3471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3470_skip, output3471_skip]
  kernel_rfl

theorem node3473_cond_eq
    (child3469 : Flapjack.WordAlloc.removeDeadStructural input3469 value1739 value1 value2 = (output3469, value1740, value1))
    (child3472 : Flapjack.WordAlloc.removeDeadStructural input3472 value1740 value1 value2 = (output3472, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3473 value1739 value1 value2 = (output3473, value5, value1) := by
  rw [input3473_def, output3473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3469]
  try dsimp only
  rw [child3472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3469_skip, output3472_skip]
  kernel_rfl

theorem node3474_cond_eq
    (child3468 : Flapjack.WordAlloc.removeDeadStructural input3468 value1738 value1 value2 = (output3468, value1739, value1))
    (child3473 : Flapjack.WordAlloc.removeDeadStructural input3473 value1739 value1 value2 = (output3473, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3474 value1738 value1 value2 = (output3474, value5, value1) := by
  rw [input3474_def, output3474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3468]
  try dsimp only
  rw [child3473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3468_skip, output3473_skip]
  kernel_rfl

theorem node3475_cond_eq
    (child3467 : Flapjack.WordAlloc.removeDeadStructural input3467 value1737 value1 value2 = (output3467, value1738, value1))
    (child3474 : Flapjack.WordAlloc.removeDeadStructural input3474 value1738 value1 value2 = (output3474, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3475 value1737 value1 value2 = (output3475, value5, value1) := by
  rw [input3475_def, output3475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3467]
  try dsimp only
  rw [child3474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3467_skip, output3474_skip]
  kernel_rfl

theorem node3476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3476 value5 value1 value2 = (output3476, value1742, value1) := by
  rw [input3476_def, output3476_def]
  kernel_rfl

theorem node3477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3477 value1742 value1 value2 = (output3477, value1743, value1) := by
  rw [input3477_def, output3477_def]
  kernel_rfl

theorem node3478_cond_eq
    (child3476 : Flapjack.WordAlloc.removeDeadStructural input3476 value5 value1 value2 = (output3476, value1742, value1))
    (child3477 : Flapjack.WordAlloc.removeDeadStructural input3477 value1742 value1 value2 = (output3477, value1743, value1)) : Flapjack.WordAlloc.removeDeadStructural input3478 value5 value1 value2 = (output3478, value1743, value1) := by
  rw [input3478_def, output3478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3476]
  try dsimp only
  rw [child3477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3476_skip, output3477_skip]
  kernel_rfl

theorem node3479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3479 value1743 value1 value2 = (output3479, value1744, value1) := by
  rw [input3479_def, output3479_def]
  kernel_rfl

theorem node3480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3480 value1744 value1 value2 = (output3480, value1744, value1) := by
  rw [input3480_def, output3480_def]
  kernel_rfl

theorem node3481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3481 value1744 value1 value2 = (output3481, value1745, value1) := by
  rw [input3481_def, output3481_def]
  kernel_rfl

theorem node3482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3482 value1745 value1 value2 = (output3482, value1746, value1) := by
  rw [input3482_def, output3482_def]
  kernel_rfl

theorem node3483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3483 value1746 value1 value2 = (output3483, value1747, value1) := by
  rw [input3483_def, output3483_def]
  kernel_rfl

theorem node3484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3484 value1747 value1 value2 = (output3484, value1748, value1) := by
  rw [input3484_def, output3484_def]
  kernel_rfl

theorem node3485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3485 value1748 value1 value2 = (output3485, value5, value1) := by
  rw [input3485_def, output3485_def]
  kernel_rfl

theorem node3486_cond_eq
    (child3484 : Flapjack.WordAlloc.removeDeadStructural input3484 value1747 value1 value2 = (output3484, value1748, value1))
    (child3485 : Flapjack.WordAlloc.removeDeadStructural input3485 value1748 value1 value2 = (output3485, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3486 value1747 value1 value2 = (output3486, value5, value1) := by
  rw [input3486_def, output3486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3484]
  try dsimp only
  rw [child3485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3484_skip, output3485_skip]
  kernel_rfl

theorem node3487_cond_eq
    (child3483 : Flapjack.WordAlloc.removeDeadStructural input3483 value1746 value1 value2 = (output3483, value1747, value1))
    (child3486 : Flapjack.WordAlloc.removeDeadStructural input3486 value1747 value1 value2 = (output3486, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3487 value1746 value1 value2 = (output3487, value5, value1) := by
  rw [input3487_def, output3487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3483]
  try dsimp only
  rw [child3486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3483_skip, output3486_skip]
  kernel_rfl

theorem node3488_cond_eq
    (child3482 : Flapjack.WordAlloc.removeDeadStructural input3482 value1745 value1 value2 = (output3482, value1746, value1))
    (child3487 : Flapjack.WordAlloc.removeDeadStructural input3487 value1746 value1 value2 = (output3487, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3488 value1745 value1 value2 = (output3488, value5, value1) := by
  rw [input3488_def, output3488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3482]
  try dsimp only
  rw [child3487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3482_skip, output3487_skip]
  kernel_rfl

theorem node3489_cond_eq
    (child3481 : Flapjack.WordAlloc.removeDeadStructural input3481 value1744 value1 value2 = (output3481, value1745, value1))
    (child3488 : Flapjack.WordAlloc.removeDeadStructural input3488 value1745 value1 value2 = (output3488, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3489 value1744 value1 value2 = (output3489, value5, value1) := by
  rw [input3489_def, output3489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3481]
  try dsimp only
  rw [child3488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3481_skip, output3488_skip]
  kernel_rfl

theorem node3490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3490 value5 value1 value2 = (output3490, value1749, value1) := by
  rw [input3490_def, output3490_def]
  kernel_rfl

theorem node3491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3491 value1749 value1 value2 = (output3491, value1750, value1) := by
  rw [input3491_def, output3491_def]
  kernel_rfl

theorem node3492_cond_eq
    (child3490 : Flapjack.WordAlloc.removeDeadStructural input3490 value5 value1 value2 = (output3490, value1749, value1))
    (child3491 : Flapjack.WordAlloc.removeDeadStructural input3491 value1749 value1 value2 = (output3491, value1750, value1)) : Flapjack.WordAlloc.removeDeadStructural input3492 value5 value1 value2 = (output3492, value1750, value1) := by
  rw [input3492_def, output3492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3490]
  try dsimp only
  rw [child3491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3490_skip, output3491_skip]
  kernel_rfl

theorem node3493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3493 value1750 value1 value2 = (output3493, value1751, value1) := by
  rw [input3493_def, output3493_def]
  kernel_rfl

theorem node3494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3494 value1751 value1 value2 = (output3494, value1751, value1) := by
  rw [input3494_def, output3494_def]
  kernel_rfl

theorem node3495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3495 value1751 value1 value2 = (output3495, value1752, value1) := by
  rw [input3495_def, output3495_def]
  kernel_rfl

theorem node3496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3496 value1752 value1 value2 = (output3496, value1753, value1) := by
  rw [input3496_def, output3496_def]
  kernel_rfl

theorem node3497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3497 value1753 value1 value2 = (output3497, value1754, value1) := by
  rw [input3497_def, output3497_def]
  kernel_rfl

theorem node3498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3498 value1754 value1 value2 = (output3498, value1755, value1) := by
  rw [input3498_def, output3498_def]
  kernel_rfl

theorem node3499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3499 value1755 value1 value2 = (output3499, value5, value1) := by
  rw [input3499_def, output3499_def]
  kernel_rfl

theorem node3500_cond_eq
    (child3498 : Flapjack.WordAlloc.removeDeadStructural input3498 value1754 value1 value2 = (output3498, value1755, value1))
    (child3499 : Flapjack.WordAlloc.removeDeadStructural input3499 value1755 value1 value2 = (output3499, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3500 value1754 value1 value2 = (output3500, value5, value1) := by
  rw [input3500_def, output3500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3498]
  try dsimp only
  rw [child3499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3498_skip, output3499_skip]
  kernel_rfl

theorem node3501_cond_eq
    (child3497 : Flapjack.WordAlloc.removeDeadStructural input3497 value1753 value1 value2 = (output3497, value1754, value1))
    (child3500 : Flapjack.WordAlloc.removeDeadStructural input3500 value1754 value1 value2 = (output3500, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3501 value1753 value1 value2 = (output3501, value5, value1) := by
  rw [input3501_def, output3501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3497]
  try dsimp only
  rw [child3500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3497_skip, output3500_skip]
  kernel_rfl

theorem node3502_cond_eq
    (child3496 : Flapjack.WordAlloc.removeDeadStructural input3496 value1752 value1 value2 = (output3496, value1753, value1))
    (child3501 : Flapjack.WordAlloc.removeDeadStructural input3501 value1753 value1 value2 = (output3501, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3502 value1752 value1 value2 = (output3502, value5, value1) := by
  rw [input3502_def, output3502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3496]
  try dsimp only
  rw [child3501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3496_skip, output3501_skip]
  kernel_rfl

theorem node3503_cond_eq
    (child3495 : Flapjack.WordAlloc.removeDeadStructural input3495 value1751 value1 value2 = (output3495, value1752, value1))
    (child3502 : Flapjack.WordAlloc.removeDeadStructural input3502 value1752 value1 value2 = (output3502, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3503 value1751 value1 value2 = (output3503, value5, value1) := by
  rw [input3503_def, output3503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3495]
  try dsimp only
  rw [child3502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3495_skip, output3502_skip]
  kernel_rfl

theorem node3504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3504 value5 value1 value2 = (output3504, value1756, value1) := by
  rw [input3504_def, output3504_def]
  kernel_rfl

theorem node3505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3505 value1756 value1 value2 = (output3505, value1757, value1) := by
  rw [input3505_def, output3505_def]
  kernel_rfl

theorem node3506_cond_eq
    (child3504 : Flapjack.WordAlloc.removeDeadStructural input3504 value5 value1 value2 = (output3504, value1756, value1))
    (child3505 : Flapjack.WordAlloc.removeDeadStructural input3505 value1756 value1 value2 = (output3505, value1757, value1)) : Flapjack.WordAlloc.removeDeadStructural input3506 value5 value1 value2 = (output3506, value1757, value1) := by
  rw [input3506_def, output3506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3504]
  try dsimp only
  rw [child3505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3504_skip, output3505_skip]
  kernel_rfl

theorem node3507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3507 value1757 value1 value2 = (output3507, value1758, value1) := by
  rw [input3507_def, output3507_def]
  kernel_rfl

theorem node3508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3508 value1758 value1 value2 = (output3508, value1758, value1) := by
  rw [input3508_def, output3508_def]
  kernel_rfl

theorem node3509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3509 value1758 value1 value2 = (output3509, value1759, value1) := by
  rw [input3509_def, output3509_def]
  kernel_rfl

theorem node3510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3510 value1759 value1 value2 = (output3510, value1760, value1) := by
  rw [input3510_def, output3510_def]
  kernel_rfl

theorem node3511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3511 value1760 value1 value2 = (output3511, value1761, value1) := by
  rw [input3511_def, output3511_def]
  kernel_rfl

theorem node3512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3512 value1761 value1 value2 = (output3512, value1762, value1) := by
  rw [input3512_def, output3512_def]
  kernel_rfl

theorem node3513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3513 value1762 value1 value2 = (output3513, value5, value1) := by
  rw [input3513_def, output3513_def]
  kernel_rfl

theorem node3514_cond_eq
    (child3512 : Flapjack.WordAlloc.removeDeadStructural input3512 value1761 value1 value2 = (output3512, value1762, value1))
    (child3513 : Flapjack.WordAlloc.removeDeadStructural input3513 value1762 value1 value2 = (output3513, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3514 value1761 value1 value2 = (output3514, value5, value1) := by
  rw [input3514_def, output3514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3512]
  try dsimp only
  rw [child3513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3512_skip, output3513_skip]
  kernel_rfl

theorem node3515_cond_eq
    (child3511 : Flapjack.WordAlloc.removeDeadStructural input3511 value1760 value1 value2 = (output3511, value1761, value1))
    (child3514 : Flapjack.WordAlloc.removeDeadStructural input3514 value1761 value1 value2 = (output3514, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3515 value1760 value1 value2 = (output3515, value5, value1) := by
  rw [input3515_def, output3515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3511]
  try dsimp only
  rw [child3514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3511_skip, output3514_skip]
  kernel_rfl

theorem node3516_cond_eq
    (child3510 : Flapjack.WordAlloc.removeDeadStructural input3510 value1759 value1 value2 = (output3510, value1760, value1))
    (child3515 : Flapjack.WordAlloc.removeDeadStructural input3515 value1760 value1 value2 = (output3515, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3516 value1759 value1 value2 = (output3516, value5, value1) := by
  rw [input3516_def, output3516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3510]
  try dsimp only
  rw [child3515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3510_skip, output3515_skip]
  kernel_rfl

theorem node3517_cond_eq
    (child3509 : Flapjack.WordAlloc.removeDeadStructural input3509 value1758 value1 value2 = (output3509, value1759, value1))
    (child3516 : Flapjack.WordAlloc.removeDeadStructural input3516 value1759 value1 value2 = (output3516, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3517 value1758 value1 value2 = (output3517, value5, value1) := by
  rw [input3517_def, output3517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3509]
  try dsimp only
  rw [child3516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3509_skip, output3516_skip]
  kernel_rfl

theorem node3518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3518 value5 value1 value2 = (output3518, value1763, value1) := by
  rw [input3518_def, output3518_def]
  kernel_rfl

theorem node3519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3519 value1763 value1 value2 = (output3519, value1764, value1) := by
  rw [input3519_def, output3519_def]
  kernel_rfl

theorem node3520_cond_eq
    (child3518 : Flapjack.WordAlloc.removeDeadStructural input3518 value5 value1 value2 = (output3518, value1763, value1))
    (child3519 : Flapjack.WordAlloc.removeDeadStructural input3519 value1763 value1 value2 = (output3519, value1764, value1)) : Flapjack.WordAlloc.removeDeadStructural input3520 value5 value1 value2 = (output3520, value1764, value1) := by
  rw [input3520_def, output3520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3518]
  try dsimp only
  rw [child3519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3518_skip, output3519_skip]
  kernel_rfl

theorem node3521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3521 value1764 value1 value2 = (output3521, value1765, value1) := by
  rw [input3521_def, output3521_def]
  kernel_rfl

theorem node3522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3522 value1765 value1 value2 = (output3522, value1765, value1) := by
  rw [input3522_def, output3522_def]
  kernel_rfl

theorem node3523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3523 value1765 value1 value2 = (output3523, value1766, value1) := by
  rw [input3523_def, output3523_def]
  kernel_rfl

theorem node3524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3524 value1766 value1 value2 = (output3524, value1767, value1) := by
  rw [input3524_def, output3524_def]
  kernel_rfl

theorem node3525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3525 value1767 value1 value2 = (output3525, value1768, value1) := by
  rw [input3525_def, output3525_def]
  kernel_rfl

theorem node3526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3526 value1768 value1 value2 = (output3526, value1769, value1) := by
  rw [input3526_def, output3526_def]
  kernel_rfl

theorem node3527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3527 value1769 value1 value2 = (output3527, value5, value1) := by
  rw [input3527_def, output3527_def]
  kernel_rfl

theorem node3528_cond_eq
    (child3526 : Flapjack.WordAlloc.removeDeadStructural input3526 value1768 value1 value2 = (output3526, value1769, value1))
    (child3527 : Flapjack.WordAlloc.removeDeadStructural input3527 value1769 value1 value2 = (output3527, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3528 value1768 value1 value2 = (output3528, value5, value1) := by
  rw [input3528_def, output3528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3526]
  try dsimp only
  rw [child3527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3526_skip, output3527_skip]
  kernel_rfl

theorem node3529_cond_eq
    (child3525 : Flapjack.WordAlloc.removeDeadStructural input3525 value1767 value1 value2 = (output3525, value1768, value1))
    (child3528 : Flapjack.WordAlloc.removeDeadStructural input3528 value1768 value1 value2 = (output3528, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3529 value1767 value1 value2 = (output3529, value5, value1) := by
  rw [input3529_def, output3529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3525]
  try dsimp only
  rw [child3528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3525_skip, output3528_skip]
  kernel_rfl

theorem node3530_cond_eq
    (child3524 : Flapjack.WordAlloc.removeDeadStructural input3524 value1766 value1 value2 = (output3524, value1767, value1))
    (child3529 : Flapjack.WordAlloc.removeDeadStructural input3529 value1767 value1 value2 = (output3529, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3530 value1766 value1 value2 = (output3530, value5, value1) := by
  rw [input3530_def, output3530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3524]
  try dsimp only
  rw [child3529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3524_skip, output3529_skip]
  kernel_rfl

theorem node3531_cond_eq
    (child3523 : Flapjack.WordAlloc.removeDeadStructural input3523 value1765 value1 value2 = (output3523, value1766, value1))
    (child3530 : Flapjack.WordAlloc.removeDeadStructural input3530 value1766 value1 value2 = (output3530, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3531 value1765 value1 value2 = (output3531, value5, value1) := by
  rw [input3531_def, output3531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3523]
  try dsimp only
  rw [child3530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3523_skip, output3530_skip]
  kernel_rfl

theorem node3532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3532 value5 value1 value2 = (output3532, value1770, value1) := by
  rw [input3532_def, output3532_def]
  kernel_rfl

theorem node3533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3533 value1770 value1 value2 = (output3533, value1771, value1) := by
  rw [input3533_def, output3533_def]
  kernel_rfl

theorem node3534_cond_eq
    (child3532 : Flapjack.WordAlloc.removeDeadStructural input3532 value5 value1 value2 = (output3532, value1770, value1))
    (child3533 : Flapjack.WordAlloc.removeDeadStructural input3533 value1770 value1 value2 = (output3533, value1771, value1)) : Flapjack.WordAlloc.removeDeadStructural input3534 value5 value1 value2 = (output3534, value1771, value1) := by
  rw [input3534_def, output3534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3532]
  try dsimp only
  rw [child3533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3532_skip, output3533_skip]
  kernel_rfl

theorem node3535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3535 value1771 value1 value2 = (output3535, value1772, value1) := by
  rw [input3535_def, output3535_def]
  kernel_rfl

theorem node3536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3536 value1772 value1 value2 = (output3536, value1772, value1) := by
  rw [input3536_def, output3536_def]
  kernel_rfl

theorem node3537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3537 value1772 value1 value2 = (output3537, value1773, value1) := by
  rw [input3537_def, output3537_def]
  kernel_rfl

theorem node3538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3538 value1773 value1 value2 = (output3538, value1774, value1) := by
  rw [input3538_def, output3538_def]
  kernel_rfl

theorem node3539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3539 value1774 value1 value2 = (output3539, value1775, value1) := by
  rw [input3539_def, output3539_def]
  kernel_rfl

theorem node3540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3540 value1775 value1 value2 = (output3540, value1776, value1) := by
  rw [input3540_def, output3540_def]
  kernel_rfl

theorem node3541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3541 value1776 value1 value2 = (output3541, value5, value1) := by
  rw [input3541_def, output3541_def]
  kernel_rfl

theorem node3542_cond_eq
    (child3540 : Flapjack.WordAlloc.removeDeadStructural input3540 value1775 value1 value2 = (output3540, value1776, value1))
    (child3541 : Flapjack.WordAlloc.removeDeadStructural input3541 value1776 value1 value2 = (output3541, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3542 value1775 value1 value2 = (output3542, value5, value1) := by
  rw [input3542_def, output3542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3540]
  try dsimp only
  rw [child3541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3540_skip, output3541_skip]
  kernel_rfl

theorem node3543_cond_eq
    (child3539 : Flapjack.WordAlloc.removeDeadStructural input3539 value1774 value1 value2 = (output3539, value1775, value1))
    (child3542 : Flapjack.WordAlloc.removeDeadStructural input3542 value1775 value1 value2 = (output3542, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3543 value1774 value1 value2 = (output3543, value5, value1) := by
  rw [input3543_def, output3543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3539]
  try dsimp only
  rw [child3542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3539_skip, output3542_skip]
  kernel_rfl

theorem node3544_cond_eq
    (child3538 : Flapjack.WordAlloc.removeDeadStructural input3538 value1773 value1 value2 = (output3538, value1774, value1))
    (child3543 : Flapjack.WordAlloc.removeDeadStructural input3543 value1774 value1 value2 = (output3543, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3544 value1773 value1 value2 = (output3544, value5, value1) := by
  rw [input3544_def, output3544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3538]
  try dsimp only
  rw [child3543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3538_skip, output3543_skip]
  kernel_rfl

theorem node3545_cond_eq
    (child3537 : Flapjack.WordAlloc.removeDeadStructural input3537 value1772 value1 value2 = (output3537, value1773, value1))
    (child3544 : Flapjack.WordAlloc.removeDeadStructural input3544 value1773 value1 value2 = (output3544, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3545 value1772 value1 value2 = (output3545, value5, value1) := by
  rw [input3545_def, output3545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3537]
  try dsimp only
  rw [child3544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3537_skip, output3544_skip]
  kernel_rfl

theorem node3546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3546 value5 value1 value2 = (output3546, value1777, value1) := by
  rw [input3546_def, output3546_def]
  kernel_rfl

theorem node3547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3547 value1777 value1 value2 = (output3547, value1778, value1) := by
  rw [input3547_def, output3547_def]
  kernel_rfl

theorem node3548_cond_eq
    (child3546 : Flapjack.WordAlloc.removeDeadStructural input3546 value5 value1 value2 = (output3546, value1777, value1))
    (child3547 : Flapjack.WordAlloc.removeDeadStructural input3547 value1777 value1 value2 = (output3547, value1778, value1)) : Flapjack.WordAlloc.removeDeadStructural input3548 value5 value1 value2 = (output3548, value1778, value1) := by
  rw [input3548_def, output3548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3546]
  try dsimp only
  rw [child3547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3546_skip, output3547_skip]
  kernel_rfl

theorem node3549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3549 value1778 value1 value2 = (output3549, value1779, value1) := by
  rw [input3549_def, output3549_def]
  kernel_rfl

theorem node3550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3550 value1779 value1 value2 = (output3550, value1779, value1) := by
  rw [input3550_def, output3550_def]
  kernel_rfl

theorem node3551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3551 value1779 value1 value2 = (output3551, value1780, value1) := by
  rw [input3551_def, output3551_def]
  kernel_rfl

theorem node3552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3552 value1780 value1 value2 = (output3552, value1781, value1) := by
  rw [input3552_def, output3552_def]
  kernel_rfl

theorem node3553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3553 value1781 value1 value2 = (output3553, value1782, value1) := by
  rw [input3553_def, output3553_def]
  kernel_rfl

theorem node3554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3554 value1782 value1 value2 = (output3554, value1783, value1) := by
  rw [input3554_def, output3554_def]
  kernel_rfl

theorem node3555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3555 value1783 value1 value2 = (output3555, value5, value1) := by
  rw [input3555_def, output3555_def]
  kernel_rfl

theorem node3556_cond_eq
    (child3554 : Flapjack.WordAlloc.removeDeadStructural input3554 value1782 value1 value2 = (output3554, value1783, value1))
    (child3555 : Flapjack.WordAlloc.removeDeadStructural input3555 value1783 value1 value2 = (output3555, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3556 value1782 value1 value2 = (output3556, value5, value1) := by
  rw [input3556_def, output3556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3554]
  try dsimp only
  rw [child3555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3554_skip, output3555_skip]
  kernel_rfl

theorem node3557_cond_eq
    (child3553 : Flapjack.WordAlloc.removeDeadStructural input3553 value1781 value1 value2 = (output3553, value1782, value1))
    (child3556 : Flapjack.WordAlloc.removeDeadStructural input3556 value1782 value1 value2 = (output3556, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3557 value1781 value1 value2 = (output3557, value5, value1) := by
  rw [input3557_def, output3557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3553]
  try dsimp only
  rw [child3556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3553_skip, output3556_skip]
  kernel_rfl

theorem node3558_cond_eq
    (child3552 : Flapjack.WordAlloc.removeDeadStructural input3552 value1780 value1 value2 = (output3552, value1781, value1))
    (child3557 : Flapjack.WordAlloc.removeDeadStructural input3557 value1781 value1 value2 = (output3557, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3558 value1780 value1 value2 = (output3558, value5, value1) := by
  rw [input3558_def, output3558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3552]
  try dsimp only
  rw [child3557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3552_skip, output3557_skip]
  kernel_rfl

theorem node3559_cond_eq
    (child3551 : Flapjack.WordAlloc.removeDeadStructural input3551 value1779 value1 value2 = (output3551, value1780, value1))
    (child3558 : Flapjack.WordAlloc.removeDeadStructural input3558 value1780 value1 value2 = (output3558, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3559 value1779 value1 value2 = (output3559, value5, value1) := by
  rw [input3559_def, output3559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3551]
  try dsimp only
  rw [child3558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3551_skip, output3558_skip]
  kernel_rfl

theorem node3560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3560 value5 value1 value2 = (output3560, value1784, value1) := by
  rw [input3560_def, output3560_def]
  kernel_rfl

theorem node3561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3561 value1784 value1 value2 = (output3561, value1785, value1) := by
  rw [input3561_def, output3561_def]
  kernel_rfl

theorem node3562_cond_eq
    (child3560 : Flapjack.WordAlloc.removeDeadStructural input3560 value5 value1 value2 = (output3560, value1784, value1))
    (child3561 : Flapjack.WordAlloc.removeDeadStructural input3561 value1784 value1 value2 = (output3561, value1785, value1)) : Flapjack.WordAlloc.removeDeadStructural input3562 value5 value1 value2 = (output3562, value1785, value1) := by
  rw [input3562_def, output3562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3560]
  try dsimp only
  rw [child3561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3560_skip, output3561_skip]
  kernel_rfl

theorem node3563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3563 value1785 value1 value2 = (output3563, value1786, value1) := by
  rw [input3563_def, output3563_def]
  kernel_rfl

theorem node3564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3564 value1786 value1 value2 = (output3564, value1786, value1) := by
  rw [input3564_def, output3564_def]
  kernel_rfl

theorem node3565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3565 value1786 value1 value2 = (output3565, value1787, value1) := by
  rw [input3565_def, output3565_def]
  kernel_rfl

theorem node3566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3566 value1787 value1 value2 = (output3566, value1788, value1) := by
  rw [input3566_def, output3566_def]
  kernel_rfl

theorem node3567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3567 value1788 value1 value2 = (output3567, value1789, value1) := by
  rw [input3567_def, output3567_def]
  kernel_rfl

theorem node3568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3568 value1789 value1 value2 = (output3568, value1790, value1) := by
  rw [input3568_def, output3568_def]
  kernel_rfl

theorem node3569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3569 value1790 value1 value2 = (output3569, value5, value1) := by
  rw [input3569_def, output3569_def]
  kernel_rfl

theorem node3570_cond_eq
    (child3568 : Flapjack.WordAlloc.removeDeadStructural input3568 value1789 value1 value2 = (output3568, value1790, value1))
    (child3569 : Flapjack.WordAlloc.removeDeadStructural input3569 value1790 value1 value2 = (output3569, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3570 value1789 value1 value2 = (output3570, value5, value1) := by
  rw [input3570_def, output3570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3568]
  try dsimp only
  rw [child3569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3568_skip, output3569_skip]
  kernel_rfl

theorem node3571_cond_eq
    (child3567 : Flapjack.WordAlloc.removeDeadStructural input3567 value1788 value1 value2 = (output3567, value1789, value1))
    (child3570 : Flapjack.WordAlloc.removeDeadStructural input3570 value1789 value1 value2 = (output3570, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3571 value1788 value1 value2 = (output3571, value5, value1) := by
  rw [input3571_def, output3571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3567]
  try dsimp only
  rw [child3570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3567_skip, output3570_skip]
  kernel_rfl

theorem node3572_cond_eq
    (child3566 : Flapjack.WordAlloc.removeDeadStructural input3566 value1787 value1 value2 = (output3566, value1788, value1))
    (child3571 : Flapjack.WordAlloc.removeDeadStructural input3571 value1788 value1 value2 = (output3571, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3572 value1787 value1 value2 = (output3572, value5, value1) := by
  rw [input3572_def, output3572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3566]
  try dsimp only
  rw [child3571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3566_skip, output3571_skip]
  kernel_rfl

theorem node3573_cond_eq
    (child3565 : Flapjack.WordAlloc.removeDeadStructural input3565 value1786 value1 value2 = (output3565, value1787, value1))
    (child3572 : Flapjack.WordAlloc.removeDeadStructural input3572 value1787 value1 value2 = (output3572, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3573 value1786 value1 value2 = (output3573, value5, value1) := by
  rw [input3573_def, output3573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3565]
  try dsimp only
  rw [child3572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3565_skip, output3572_skip]
  kernel_rfl

theorem node3574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3574 value5 value1 value2 = (output3574, value1791, value1) := by
  rw [input3574_def, output3574_def]
  kernel_rfl

theorem node3575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3575 value1791 value1 value2 = (output3575, value1792, value1) := by
  rw [input3575_def, output3575_def]
  kernel_rfl

theorem node3576_cond_eq
    (child3574 : Flapjack.WordAlloc.removeDeadStructural input3574 value5 value1 value2 = (output3574, value1791, value1))
    (child3575 : Flapjack.WordAlloc.removeDeadStructural input3575 value1791 value1 value2 = (output3575, value1792, value1)) : Flapjack.WordAlloc.removeDeadStructural input3576 value5 value1 value2 = (output3576, value1792, value1) := by
  rw [input3576_def, output3576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3574]
  try dsimp only
  rw [child3575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3574_skip, output3575_skip]
  kernel_rfl

theorem node3577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3577 value1792 value1 value2 = (output3577, value1793, value1) := by
  rw [input3577_def, output3577_def]
  kernel_rfl

theorem node3578_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3578 value1793 value1 value2 = (output3578, value1793, value1) := by
  rw [input3578_def, output3578_def]
  kernel_rfl

theorem node3579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3579 value1793 value1 value2 = (output3579, value1794, value1) := by
  rw [input3579_def, output3579_def]
  kernel_rfl

theorem node3580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3580 value1794 value1 value2 = (output3580, value1795, value1) := by
  rw [input3580_def, output3580_def]
  kernel_rfl

theorem node3581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3581 value1795 value1 value2 = (output3581, value1796, value1) := by
  rw [input3581_def, output3581_def]
  kernel_rfl

theorem node3582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3582 value1796 value1 value2 = (output3582, value5, value1) := by
  rw [input3582_def, output3582_def]
  kernel_rfl

theorem node3583_cond_eq
    (child3581 : Flapjack.WordAlloc.removeDeadStructural input3581 value1795 value1 value2 = (output3581, value1796, value1))
    (child3582 : Flapjack.WordAlloc.removeDeadStructural input3582 value1796 value1 value2 = (output3582, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3583 value1795 value1 value2 = (output3583, value5, value1) := by
  rw [input3583_def, output3583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3581]
  try dsimp only
  rw [child3582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3581_skip, output3582_skip]
  kernel_rfl

#print axioms node3583_cond_eq
end InitECandidate.Proofs.DeadStages240.Parallel
