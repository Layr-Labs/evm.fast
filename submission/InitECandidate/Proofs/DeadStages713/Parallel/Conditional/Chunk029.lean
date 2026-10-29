import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk029
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node7424_cond_eq
    (child7422 : Flapjack.WordAlloc.removeDeadStructural input7422 value3716 value1 value2 = (output7422, value3717, value1))
    (child7423 : Flapjack.WordAlloc.removeDeadStructural input7423 value3717 value1 value2 = (output7423, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7424 value3716 value1 value2 = (output7424, value5, value1) := by
  rw [input7424_def, output7424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7422]
  dsimp only
  rw [child7423]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7422_skip, output7423_skip]
  kernel_rfl

theorem node7425_cond_eq
    (child7421 : Flapjack.WordAlloc.removeDeadStructural input7421 value3715 value1 value2 = (output7421, value3716, value1))
    (child7424 : Flapjack.WordAlloc.removeDeadStructural input7424 value3716 value1 value2 = (output7424, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7425 value3715 value1 value2 = (output7425, value5, value1) := by
  rw [input7425_def, output7425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7421]
  dsimp only
  rw [child7424]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7421_skip, output7424_skip]
  kernel_rfl

theorem node7426_cond_eq
    (child7420 : Flapjack.WordAlloc.removeDeadStructural input7420 value3714 value1 value2 = (output7420, value3715, value1))
    (child7425 : Flapjack.WordAlloc.removeDeadStructural input7425 value3715 value1 value2 = (output7425, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7426 value3714 value1 value2 = (output7426, value5, value1) := by
  rw [input7426_def, output7426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7420]
  dsimp only
  rw [child7425]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7420_skip, output7425_skip]
  kernel_rfl

theorem node7427_cond_eq
    (child7419 : Flapjack.WordAlloc.removeDeadStructural input7419 value3712 value1 value2 = (output7419, value3714, value1))
    (child7426 : Flapjack.WordAlloc.removeDeadStructural input7426 value3714 value1 value2 = (output7426, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7427 value3712 value1 value2 = (output7427, value5, value1) := by
  rw [input7427_def, output7427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7419]
  dsimp only
  rw [child7426]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7419_skip, output7426_skip]
  kernel_rfl

theorem node7428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7428 value5 value1 value2 = (output7428, value3718, value1) := by
  rw [input7428_def, output7428_def]
  kernel_rfl

theorem node7429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7429 value3718 value1 value2 = (output7429, value3719, value1) := by
  rw [input7429_def, output7429_def]
  kernel_rfl

theorem node7430_cond_eq
    (child7428 : Flapjack.WordAlloc.removeDeadStructural input7428 value5 value1 value2 = (output7428, value3718, value1))
    (child7429 : Flapjack.WordAlloc.removeDeadStructural input7429 value3718 value1 value2 = (output7429, value3719, value1)) : Flapjack.WordAlloc.removeDeadStructural input7430 value5 value1 value2 = (output7430, value3719, value1) := by
  rw [input7430_def, output7430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7428]
  dsimp only
  rw [child7429]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7428_skip, output7429_skip]
  kernel_rfl

theorem node7431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7431 value3719 value1 value2 = (output7431, value3720, value1) := by
  rw [input7431_def, output7431_def]
  kernel_rfl

theorem node7432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7432 value3720 value1 value2 = (output7432, value3720, value1) := by
  rw [input7432_def, output7432_def]
  kernel_rfl

theorem node7433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7433 value3720 value1 value2 = (output7433, value3721, value1) := by
  rw [input7433_def, output7433_def]
  kernel_rfl

theorem node7434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7434 value3721 value1 value2 = (output7434, value3722, value1) := by
  rw [input7434_def, output7434_def]
  kernel_rfl

theorem node7435_cond_eq
    (child7433 : Flapjack.WordAlloc.removeDeadStructural input7433 value3720 value1 value2 = (output7433, value3721, value1))
    (child7434 : Flapjack.WordAlloc.removeDeadStructural input7434 value3721 value1 value2 = (output7434, value3722, value1)) : Flapjack.WordAlloc.removeDeadStructural input7435 value3720 value1 value2 = (output7435, value3722, value1) := by
  rw [input7435_def, output7435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7433]
  dsimp only
  rw [child7434]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7433_skip, output7434_skip]
  kernel_rfl

theorem node7436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7436 value3722 value1 value2 = (output7436, value3723, value1) := by
  rw [input7436_def, output7436_def]
  kernel_rfl

theorem node7437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7437 value3723 value1 value2 = (output7437, value3724, value1) := by
  rw [input7437_def, output7437_def]
  kernel_rfl

theorem node7438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7438 value3724 value1 value2 = (output7438, value3725, value1) := by
  rw [input7438_def, output7438_def]
  kernel_rfl

theorem node7439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7439 value3725 value1 value2 = (output7439, value5, value1) := by
  rw [input7439_def, output7439_def]
  kernel_rfl

theorem node7440_cond_eq
    (child7438 : Flapjack.WordAlloc.removeDeadStructural input7438 value3724 value1 value2 = (output7438, value3725, value1))
    (child7439 : Flapjack.WordAlloc.removeDeadStructural input7439 value3725 value1 value2 = (output7439, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7440 value3724 value1 value2 = (output7440, value5, value1) := by
  rw [input7440_def, output7440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7438]
  dsimp only
  rw [child7439]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7438_skip, output7439_skip]
  kernel_rfl

theorem node7441_cond_eq
    (child7437 : Flapjack.WordAlloc.removeDeadStructural input7437 value3723 value1 value2 = (output7437, value3724, value1))
    (child7440 : Flapjack.WordAlloc.removeDeadStructural input7440 value3724 value1 value2 = (output7440, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7441 value3723 value1 value2 = (output7441, value5, value1) := by
  rw [input7441_def, output7441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7437]
  dsimp only
  rw [child7440]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7437_skip, output7440_skip]
  kernel_rfl

theorem node7442_cond_eq
    (child7436 : Flapjack.WordAlloc.removeDeadStructural input7436 value3722 value1 value2 = (output7436, value3723, value1))
    (child7441 : Flapjack.WordAlloc.removeDeadStructural input7441 value3723 value1 value2 = (output7441, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7442 value3722 value1 value2 = (output7442, value5, value1) := by
  rw [input7442_def, output7442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7436]
  dsimp only
  rw [child7441]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7436_skip, output7441_skip]
  kernel_rfl

theorem node7443_cond_eq
    (child7435 : Flapjack.WordAlloc.removeDeadStructural input7435 value3720 value1 value2 = (output7435, value3722, value1))
    (child7442 : Flapjack.WordAlloc.removeDeadStructural input7442 value3722 value1 value2 = (output7442, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7443 value3720 value1 value2 = (output7443, value5, value1) := by
  rw [input7443_def, output7443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7435]
  dsimp only
  rw [child7442]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7435_skip, output7442_skip]
  kernel_rfl

theorem node7444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7444 value5 value1 value2 = (output7444, value3726, value1) := by
  rw [input7444_def, output7444_def]
  kernel_rfl

theorem node7445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7445 value3726 value1 value2 = (output7445, value3727, value1) := by
  rw [input7445_def, output7445_def]
  kernel_rfl

theorem node7446_cond_eq
    (child7444 : Flapjack.WordAlloc.removeDeadStructural input7444 value5 value1 value2 = (output7444, value3726, value1))
    (child7445 : Flapjack.WordAlloc.removeDeadStructural input7445 value3726 value1 value2 = (output7445, value3727, value1)) : Flapjack.WordAlloc.removeDeadStructural input7446 value5 value1 value2 = (output7446, value3727, value1) := by
  rw [input7446_def, output7446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7444]
  dsimp only
  rw [child7445]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7444_skip, output7445_skip]
  kernel_rfl

theorem node7447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7447 value3727 value1 value2 = (output7447, value3728, value1) := by
  rw [input7447_def, output7447_def]
  kernel_rfl

theorem node7448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7448 value3728 value1 value2 = (output7448, value3728, value1) := by
  rw [input7448_def, output7448_def]
  kernel_rfl

theorem node7449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7449 value3728 value1 value2 = (output7449, value3729, value1) := by
  rw [input7449_def, output7449_def]
  kernel_rfl

theorem node7450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7450 value3729 value1 value2 = (output7450, value3730, value1) := by
  rw [input7450_def, output7450_def]
  kernel_rfl

theorem node7451_cond_eq
    (child7449 : Flapjack.WordAlloc.removeDeadStructural input7449 value3728 value1 value2 = (output7449, value3729, value1))
    (child7450 : Flapjack.WordAlloc.removeDeadStructural input7450 value3729 value1 value2 = (output7450, value3730, value1)) : Flapjack.WordAlloc.removeDeadStructural input7451 value3728 value1 value2 = (output7451, value3730, value1) := by
  rw [input7451_def, output7451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7449]
  dsimp only
  rw [child7450]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7449_skip, output7450_skip]
  kernel_rfl

theorem node7452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7452 value3730 value1 value2 = (output7452, value3731, value1) := by
  rw [input7452_def, output7452_def]
  kernel_rfl

theorem node7453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7453 value3731 value1 value2 = (output7453, value3732, value1) := by
  rw [input7453_def, output7453_def]
  kernel_rfl

theorem node7454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7454 value3732 value1 value2 = (output7454, value3733, value1) := by
  rw [input7454_def, output7454_def]
  kernel_rfl

theorem node7455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7455 value3733 value1 value2 = (output7455, value5, value1) := by
  rw [input7455_def, output7455_def]
  kernel_rfl

theorem node7456_cond_eq
    (child7454 : Flapjack.WordAlloc.removeDeadStructural input7454 value3732 value1 value2 = (output7454, value3733, value1))
    (child7455 : Flapjack.WordAlloc.removeDeadStructural input7455 value3733 value1 value2 = (output7455, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7456 value3732 value1 value2 = (output7456, value5, value1) := by
  rw [input7456_def, output7456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7454]
  dsimp only
  rw [child7455]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7454_skip, output7455_skip]
  kernel_rfl

theorem node7457_cond_eq
    (child7453 : Flapjack.WordAlloc.removeDeadStructural input7453 value3731 value1 value2 = (output7453, value3732, value1))
    (child7456 : Flapjack.WordAlloc.removeDeadStructural input7456 value3732 value1 value2 = (output7456, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7457 value3731 value1 value2 = (output7457, value5, value1) := by
  rw [input7457_def, output7457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7453]
  dsimp only
  rw [child7456]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7453_skip, output7456_skip]
  kernel_rfl

theorem node7458_cond_eq
    (child7452 : Flapjack.WordAlloc.removeDeadStructural input7452 value3730 value1 value2 = (output7452, value3731, value1))
    (child7457 : Flapjack.WordAlloc.removeDeadStructural input7457 value3731 value1 value2 = (output7457, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7458 value3730 value1 value2 = (output7458, value5, value1) := by
  rw [input7458_def, output7458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7452]
  dsimp only
  rw [child7457]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7452_skip, output7457_skip]
  kernel_rfl

theorem node7459_cond_eq
    (child7451 : Flapjack.WordAlloc.removeDeadStructural input7451 value3728 value1 value2 = (output7451, value3730, value1))
    (child7458 : Flapjack.WordAlloc.removeDeadStructural input7458 value3730 value1 value2 = (output7458, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7459 value3728 value1 value2 = (output7459, value5, value1) := by
  rw [input7459_def, output7459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7451]
  dsimp only
  rw [child7458]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7451_skip, output7458_skip]
  kernel_rfl

theorem node7460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7460 value5 value1 value2 = (output7460, value3734, value1) := by
  rw [input7460_def, output7460_def]
  kernel_rfl

theorem node7461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7461 value3734 value1 value2 = (output7461, value3735, value1) := by
  rw [input7461_def, output7461_def]
  kernel_rfl

theorem node7462_cond_eq
    (child7460 : Flapjack.WordAlloc.removeDeadStructural input7460 value5 value1 value2 = (output7460, value3734, value1))
    (child7461 : Flapjack.WordAlloc.removeDeadStructural input7461 value3734 value1 value2 = (output7461, value3735, value1)) : Flapjack.WordAlloc.removeDeadStructural input7462 value5 value1 value2 = (output7462, value3735, value1) := by
  rw [input7462_def, output7462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7460]
  dsimp only
  rw [child7461]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7460_skip, output7461_skip]
  kernel_rfl

theorem node7463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7463 value3735 value1 value2 = (output7463, value3736, value1) := by
  rw [input7463_def, output7463_def]
  kernel_rfl

theorem node7464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7464 value3736 value1 value2 = (output7464, value3736, value1) := by
  rw [input7464_def, output7464_def]
  kernel_rfl

theorem node7465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7465 value3736 value1 value2 = (output7465, value3737, value1) := by
  rw [input7465_def, output7465_def]
  kernel_rfl

theorem node7466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7466 value3737 value1 value2 = (output7466, value3738, value1) := by
  rw [input7466_def, output7466_def]
  kernel_rfl

theorem node7467_cond_eq
    (child7465 : Flapjack.WordAlloc.removeDeadStructural input7465 value3736 value1 value2 = (output7465, value3737, value1))
    (child7466 : Flapjack.WordAlloc.removeDeadStructural input7466 value3737 value1 value2 = (output7466, value3738, value1)) : Flapjack.WordAlloc.removeDeadStructural input7467 value3736 value1 value2 = (output7467, value3738, value1) := by
  rw [input7467_def, output7467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7465]
  dsimp only
  rw [child7466]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7465_skip, output7466_skip]
  kernel_rfl

theorem node7468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7468 value3738 value1 value2 = (output7468, value3739, value1) := by
  rw [input7468_def, output7468_def]
  kernel_rfl

theorem node7469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7469 value3739 value1 value2 = (output7469, value3740, value1) := by
  rw [input7469_def, output7469_def]
  kernel_rfl

theorem node7470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7470 value3740 value1 value2 = (output7470, value3741, value1) := by
  rw [input7470_def, output7470_def]
  kernel_rfl

theorem node7471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7471 value3741 value1 value2 = (output7471, value5, value1) := by
  rw [input7471_def, output7471_def]
  kernel_rfl

theorem node7472_cond_eq
    (child7470 : Flapjack.WordAlloc.removeDeadStructural input7470 value3740 value1 value2 = (output7470, value3741, value1))
    (child7471 : Flapjack.WordAlloc.removeDeadStructural input7471 value3741 value1 value2 = (output7471, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7472 value3740 value1 value2 = (output7472, value5, value1) := by
  rw [input7472_def, output7472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7470]
  dsimp only
  rw [child7471]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7470_skip, output7471_skip]
  kernel_rfl

theorem node7473_cond_eq
    (child7469 : Flapjack.WordAlloc.removeDeadStructural input7469 value3739 value1 value2 = (output7469, value3740, value1))
    (child7472 : Flapjack.WordAlloc.removeDeadStructural input7472 value3740 value1 value2 = (output7472, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7473 value3739 value1 value2 = (output7473, value5, value1) := by
  rw [input7473_def, output7473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7469]
  dsimp only
  rw [child7472]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7469_skip, output7472_skip]
  kernel_rfl

theorem node7474_cond_eq
    (child7468 : Flapjack.WordAlloc.removeDeadStructural input7468 value3738 value1 value2 = (output7468, value3739, value1))
    (child7473 : Flapjack.WordAlloc.removeDeadStructural input7473 value3739 value1 value2 = (output7473, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7474 value3738 value1 value2 = (output7474, value5, value1) := by
  rw [input7474_def, output7474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7468]
  dsimp only
  rw [child7473]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7468_skip, output7473_skip]
  kernel_rfl

theorem node7475_cond_eq
    (child7467 : Flapjack.WordAlloc.removeDeadStructural input7467 value3736 value1 value2 = (output7467, value3738, value1))
    (child7474 : Flapjack.WordAlloc.removeDeadStructural input7474 value3738 value1 value2 = (output7474, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7475 value3736 value1 value2 = (output7475, value5, value1) := by
  rw [input7475_def, output7475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7467]
  dsimp only
  rw [child7474]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7467_skip, output7474_skip]
  kernel_rfl

theorem node7476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7476 value5 value1 value2 = (output7476, value3742, value1) := by
  rw [input7476_def, output7476_def]
  kernel_rfl

theorem node7477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7477 value3742 value1 value2 = (output7477, value3743, value1) := by
  rw [input7477_def, output7477_def]
  kernel_rfl

theorem node7478_cond_eq
    (child7476 : Flapjack.WordAlloc.removeDeadStructural input7476 value5 value1 value2 = (output7476, value3742, value1))
    (child7477 : Flapjack.WordAlloc.removeDeadStructural input7477 value3742 value1 value2 = (output7477, value3743, value1)) : Flapjack.WordAlloc.removeDeadStructural input7478 value5 value1 value2 = (output7478, value3743, value1) := by
  rw [input7478_def, output7478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7476]
  dsimp only
  rw [child7477]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7476_skip, output7477_skip]
  kernel_rfl

theorem node7479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7479 value3743 value1 value2 = (output7479, value3744, value1) := by
  rw [input7479_def, output7479_def]
  kernel_rfl

theorem node7480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7480 value3744 value1 value2 = (output7480, value3744, value1) := by
  rw [input7480_def, output7480_def]
  kernel_rfl

theorem node7481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7481 value3744 value1 value2 = (output7481, value3745, value1) := by
  rw [input7481_def, output7481_def]
  kernel_rfl

theorem node7482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7482 value3745 value1 value2 = (output7482, value3746, value1) := by
  rw [input7482_def, output7482_def]
  kernel_rfl

theorem node7483_cond_eq
    (child7481 : Flapjack.WordAlloc.removeDeadStructural input7481 value3744 value1 value2 = (output7481, value3745, value1))
    (child7482 : Flapjack.WordAlloc.removeDeadStructural input7482 value3745 value1 value2 = (output7482, value3746, value1)) : Flapjack.WordAlloc.removeDeadStructural input7483 value3744 value1 value2 = (output7483, value3746, value1) := by
  rw [input7483_def, output7483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7481]
  dsimp only
  rw [child7482]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7481_skip, output7482_skip]
  kernel_rfl

theorem node7484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7484 value3746 value1 value2 = (output7484, value3747, value1) := by
  rw [input7484_def, output7484_def]
  kernel_rfl

theorem node7485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7485 value3747 value1 value2 = (output7485, value3748, value1) := by
  rw [input7485_def, output7485_def]
  kernel_rfl

theorem node7486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7486 value3748 value1 value2 = (output7486, value3749, value1) := by
  rw [input7486_def, output7486_def]
  kernel_rfl

theorem node7487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7487 value3749 value1 value2 = (output7487, value5, value1) := by
  rw [input7487_def, output7487_def]
  kernel_rfl

theorem node7488_cond_eq
    (child7486 : Flapjack.WordAlloc.removeDeadStructural input7486 value3748 value1 value2 = (output7486, value3749, value1))
    (child7487 : Flapjack.WordAlloc.removeDeadStructural input7487 value3749 value1 value2 = (output7487, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7488 value3748 value1 value2 = (output7488, value5, value1) := by
  rw [input7488_def, output7488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7486]
  dsimp only
  rw [child7487]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7486_skip, output7487_skip]
  kernel_rfl

theorem node7489_cond_eq
    (child7485 : Flapjack.WordAlloc.removeDeadStructural input7485 value3747 value1 value2 = (output7485, value3748, value1))
    (child7488 : Flapjack.WordAlloc.removeDeadStructural input7488 value3748 value1 value2 = (output7488, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7489 value3747 value1 value2 = (output7489, value5, value1) := by
  rw [input7489_def, output7489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7485]
  dsimp only
  rw [child7488]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7485_skip, output7488_skip]
  kernel_rfl

theorem node7490_cond_eq
    (child7484 : Flapjack.WordAlloc.removeDeadStructural input7484 value3746 value1 value2 = (output7484, value3747, value1))
    (child7489 : Flapjack.WordAlloc.removeDeadStructural input7489 value3747 value1 value2 = (output7489, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7490 value3746 value1 value2 = (output7490, value5, value1) := by
  rw [input7490_def, output7490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7484]
  dsimp only
  rw [child7489]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7484_skip, output7489_skip]
  kernel_rfl

theorem node7491_cond_eq
    (child7483 : Flapjack.WordAlloc.removeDeadStructural input7483 value3744 value1 value2 = (output7483, value3746, value1))
    (child7490 : Flapjack.WordAlloc.removeDeadStructural input7490 value3746 value1 value2 = (output7490, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7491 value3744 value1 value2 = (output7491, value5, value1) := by
  rw [input7491_def, output7491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7483]
  dsimp only
  rw [child7490]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7483_skip, output7490_skip]
  kernel_rfl

theorem node7492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7492 value5 value1 value2 = (output7492, value3750, value1) := by
  rw [input7492_def, output7492_def]
  kernel_rfl

theorem node7493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7493 value3750 value1 value2 = (output7493, value3751, value1) := by
  rw [input7493_def, output7493_def]
  kernel_rfl

theorem node7494_cond_eq
    (child7492 : Flapjack.WordAlloc.removeDeadStructural input7492 value5 value1 value2 = (output7492, value3750, value1))
    (child7493 : Flapjack.WordAlloc.removeDeadStructural input7493 value3750 value1 value2 = (output7493, value3751, value1)) : Flapjack.WordAlloc.removeDeadStructural input7494 value5 value1 value2 = (output7494, value3751, value1) := by
  rw [input7494_def, output7494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7492]
  dsimp only
  rw [child7493]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7492_skip, output7493_skip]
  kernel_rfl

theorem node7495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7495 value3751 value1 value2 = (output7495, value3752, value1) := by
  rw [input7495_def, output7495_def]
  kernel_rfl

theorem node7496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7496 value3752 value1 value2 = (output7496, value3752, value1) := by
  rw [input7496_def, output7496_def]
  kernel_rfl

theorem node7497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7497 value3752 value1 value2 = (output7497, value3753, value1) := by
  rw [input7497_def, output7497_def]
  kernel_rfl

theorem node7498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7498 value3753 value1 value2 = (output7498, value3754, value1) := by
  rw [input7498_def, output7498_def]
  kernel_rfl

theorem node7499_cond_eq
    (child7497 : Flapjack.WordAlloc.removeDeadStructural input7497 value3752 value1 value2 = (output7497, value3753, value1))
    (child7498 : Flapjack.WordAlloc.removeDeadStructural input7498 value3753 value1 value2 = (output7498, value3754, value1)) : Flapjack.WordAlloc.removeDeadStructural input7499 value3752 value1 value2 = (output7499, value3754, value1) := by
  rw [input7499_def, output7499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7497]
  dsimp only
  rw [child7498]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7497_skip, output7498_skip]
  kernel_rfl

theorem node7500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7500 value3754 value1 value2 = (output7500, value3755, value1) := by
  rw [input7500_def, output7500_def]
  kernel_rfl

theorem node7501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7501 value3755 value1 value2 = (output7501, value3756, value1) := by
  rw [input7501_def, output7501_def]
  kernel_rfl

theorem node7502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7502 value3756 value1 value2 = (output7502, value3757, value1) := by
  rw [input7502_def, output7502_def]
  kernel_rfl

theorem node7503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7503 value3757 value1 value2 = (output7503, value5, value1) := by
  rw [input7503_def, output7503_def]
  kernel_rfl

theorem node7504_cond_eq
    (child7502 : Flapjack.WordAlloc.removeDeadStructural input7502 value3756 value1 value2 = (output7502, value3757, value1))
    (child7503 : Flapjack.WordAlloc.removeDeadStructural input7503 value3757 value1 value2 = (output7503, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7504 value3756 value1 value2 = (output7504, value5, value1) := by
  rw [input7504_def, output7504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7502]
  dsimp only
  rw [child7503]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7502_skip, output7503_skip]
  kernel_rfl

theorem node7505_cond_eq
    (child7501 : Flapjack.WordAlloc.removeDeadStructural input7501 value3755 value1 value2 = (output7501, value3756, value1))
    (child7504 : Flapjack.WordAlloc.removeDeadStructural input7504 value3756 value1 value2 = (output7504, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7505 value3755 value1 value2 = (output7505, value5, value1) := by
  rw [input7505_def, output7505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7501]
  dsimp only
  rw [child7504]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7501_skip, output7504_skip]
  kernel_rfl

theorem node7506_cond_eq
    (child7500 : Flapjack.WordAlloc.removeDeadStructural input7500 value3754 value1 value2 = (output7500, value3755, value1))
    (child7505 : Flapjack.WordAlloc.removeDeadStructural input7505 value3755 value1 value2 = (output7505, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7506 value3754 value1 value2 = (output7506, value5, value1) := by
  rw [input7506_def, output7506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7500]
  dsimp only
  rw [child7505]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7500_skip, output7505_skip]
  kernel_rfl

theorem node7507_cond_eq
    (child7499 : Flapjack.WordAlloc.removeDeadStructural input7499 value3752 value1 value2 = (output7499, value3754, value1))
    (child7506 : Flapjack.WordAlloc.removeDeadStructural input7506 value3754 value1 value2 = (output7506, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7507 value3752 value1 value2 = (output7507, value5, value1) := by
  rw [input7507_def, output7507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7499]
  dsimp only
  rw [child7506]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7499_skip, output7506_skip]
  kernel_rfl

theorem node7508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7508 value5 value1 value2 = (output7508, value3758, value1) := by
  rw [input7508_def, output7508_def]
  kernel_rfl

theorem node7509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7509 value3758 value1 value2 = (output7509, value3759, value1) := by
  rw [input7509_def, output7509_def]
  kernel_rfl

theorem node7510_cond_eq
    (child7508 : Flapjack.WordAlloc.removeDeadStructural input7508 value5 value1 value2 = (output7508, value3758, value1))
    (child7509 : Flapjack.WordAlloc.removeDeadStructural input7509 value3758 value1 value2 = (output7509, value3759, value1)) : Flapjack.WordAlloc.removeDeadStructural input7510 value5 value1 value2 = (output7510, value3759, value1) := by
  rw [input7510_def, output7510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7508]
  dsimp only
  rw [child7509]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7508_skip, output7509_skip]
  kernel_rfl

theorem node7511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7511 value3759 value1 value2 = (output7511, value3760, value1) := by
  rw [input7511_def, output7511_def]
  kernel_rfl

theorem node7512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7512 value3760 value1 value2 = (output7512, value3760, value1) := by
  rw [input7512_def, output7512_def]
  kernel_rfl

theorem node7513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7513 value3760 value1 value2 = (output7513, value3761, value1) := by
  rw [input7513_def, output7513_def]
  kernel_rfl

theorem node7514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7514 value3761 value1 value2 = (output7514, value3762, value1) := by
  rw [input7514_def, output7514_def]
  kernel_rfl

theorem node7515_cond_eq
    (child7513 : Flapjack.WordAlloc.removeDeadStructural input7513 value3760 value1 value2 = (output7513, value3761, value1))
    (child7514 : Flapjack.WordAlloc.removeDeadStructural input7514 value3761 value1 value2 = (output7514, value3762, value1)) : Flapjack.WordAlloc.removeDeadStructural input7515 value3760 value1 value2 = (output7515, value3762, value1) := by
  rw [input7515_def, output7515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7513]
  dsimp only
  rw [child7514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7513_skip, output7514_skip]
  kernel_rfl

theorem node7516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7516 value3762 value1 value2 = (output7516, value3763, value1) := by
  rw [input7516_def, output7516_def]
  kernel_rfl

theorem node7517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7517 value3763 value1 value2 = (output7517, value3764, value1) := by
  rw [input7517_def, output7517_def]
  kernel_rfl

theorem node7518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7518 value3764 value1 value2 = (output7518, value3765, value1) := by
  rw [input7518_def, output7518_def]
  kernel_rfl

theorem node7519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7519 value3765 value1 value2 = (output7519, value5, value1) := by
  rw [input7519_def, output7519_def]
  kernel_rfl

theorem node7520_cond_eq
    (child7518 : Flapjack.WordAlloc.removeDeadStructural input7518 value3764 value1 value2 = (output7518, value3765, value1))
    (child7519 : Flapjack.WordAlloc.removeDeadStructural input7519 value3765 value1 value2 = (output7519, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7520 value3764 value1 value2 = (output7520, value5, value1) := by
  rw [input7520_def, output7520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7518]
  dsimp only
  rw [child7519]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7518_skip, output7519_skip]
  kernel_rfl

theorem node7521_cond_eq
    (child7517 : Flapjack.WordAlloc.removeDeadStructural input7517 value3763 value1 value2 = (output7517, value3764, value1))
    (child7520 : Flapjack.WordAlloc.removeDeadStructural input7520 value3764 value1 value2 = (output7520, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7521 value3763 value1 value2 = (output7521, value5, value1) := by
  rw [input7521_def, output7521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7517]
  dsimp only
  rw [child7520]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7517_skip, output7520_skip]
  kernel_rfl

theorem node7522_cond_eq
    (child7516 : Flapjack.WordAlloc.removeDeadStructural input7516 value3762 value1 value2 = (output7516, value3763, value1))
    (child7521 : Flapjack.WordAlloc.removeDeadStructural input7521 value3763 value1 value2 = (output7521, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7522 value3762 value1 value2 = (output7522, value5, value1) := by
  rw [input7522_def, output7522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7516]
  dsimp only
  rw [child7521]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7516_skip, output7521_skip]
  kernel_rfl

theorem node7523_cond_eq
    (child7515 : Flapjack.WordAlloc.removeDeadStructural input7515 value3760 value1 value2 = (output7515, value3762, value1))
    (child7522 : Flapjack.WordAlloc.removeDeadStructural input7522 value3762 value1 value2 = (output7522, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7523 value3760 value1 value2 = (output7523, value5, value1) := by
  rw [input7523_def, output7523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7515]
  dsimp only
  rw [child7522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7515_skip, output7522_skip]
  kernel_rfl

theorem node7524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7524 value5 value1 value2 = (output7524, value3766, value1) := by
  rw [input7524_def, output7524_def]
  kernel_rfl

theorem node7525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7525 value3766 value1 value2 = (output7525, value3767, value1) := by
  rw [input7525_def, output7525_def]
  kernel_rfl

theorem node7526_cond_eq
    (child7524 : Flapjack.WordAlloc.removeDeadStructural input7524 value5 value1 value2 = (output7524, value3766, value1))
    (child7525 : Flapjack.WordAlloc.removeDeadStructural input7525 value3766 value1 value2 = (output7525, value3767, value1)) : Flapjack.WordAlloc.removeDeadStructural input7526 value5 value1 value2 = (output7526, value3767, value1) := by
  rw [input7526_def, output7526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7524]
  dsimp only
  rw [child7525]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7524_skip, output7525_skip]
  kernel_rfl

theorem node7527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7527 value3767 value1 value2 = (output7527, value3768, value1) := by
  rw [input7527_def, output7527_def]
  kernel_rfl

theorem node7528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7528 value3768 value1 value2 = (output7528, value3768, value1) := by
  rw [input7528_def, output7528_def]
  kernel_rfl

theorem node7529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7529 value3768 value1 value2 = (output7529, value3769, value1) := by
  rw [input7529_def, output7529_def]
  kernel_rfl

theorem node7530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7530 value3769 value1 value2 = (output7530, value3770, value1) := by
  rw [input7530_def, output7530_def]
  kernel_rfl

theorem node7531_cond_eq
    (child7529 : Flapjack.WordAlloc.removeDeadStructural input7529 value3768 value1 value2 = (output7529, value3769, value1))
    (child7530 : Flapjack.WordAlloc.removeDeadStructural input7530 value3769 value1 value2 = (output7530, value3770, value1)) : Flapjack.WordAlloc.removeDeadStructural input7531 value3768 value1 value2 = (output7531, value3770, value1) := by
  rw [input7531_def, output7531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7529]
  dsimp only
  rw [child7530]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7529_skip, output7530_skip]
  kernel_rfl

theorem node7532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7532 value3770 value1 value2 = (output7532, value3771, value1) := by
  rw [input7532_def, output7532_def]
  kernel_rfl

theorem node7533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7533 value3771 value1 value2 = (output7533, value3772, value1) := by
  rw [input7533_def, output7533_def]
  kernel_rfl

theorem node7534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7534 value3772 value1 value2 = (output7534, value3773, value1) := by
  rw [input7534_def, output7534_def]
  kernel_rfl

theorem node7535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7535 value3773 value1 value2 = (output7535, value5, value1) := by
  rw [input7535_def, output7535_def]
  kernel_rfl

theorem node7536_cond_eq
    (child7534 : Flapjack.WordAlloc.removeDeadStructural input7534 value3772 value1 value2 = (output7534, value3773, value1))
    (child7535 : Flapjack.WordAlloc.removeDeadStructural input7535 value3773 value1 value2 = (output7535, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7536 value3772 value1 value2 = (output7536, value5, value1) := by
  rw [input7536_def, output7536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7534]
  dsimp only
  rw [child7535]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7534_skip, output7535_skip]
  kernel_rfl

theorem node7537_cond_eq
    (child7533 : Flapjack.WordAlloc.removeDeadStructural input7533 value3771 value1 value2 = (output7533, value3772, value1))
    (child7536 : Flapjack.WordAlloc.removeDeadStructural input7536 value3772 value1 value2 = (output7536, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7537 value3771 value1 value2 = (output7537, value5, value1) := by
  rw [input7537_def, output7537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7533]
  dsimp only
  rw [child7536]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7533_skip, output7536_skip]
  kernel_rfl

theorem node7538_cond_eq
    (child7532 : Flapjack.WordAlloc.removeDeadStructural input7532 value3770 value1 value2 = (output7532, value3771, value1))
    (child7537 : Flapjack.WordAlloc.removeDeadStructural input7537 value3771 value1 value2 = (output7537, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7538 value3770 value1 value2 = (output7538, value5, value1) := by
  rw [input7538_def, output7538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7532]
  dsimp only
  rw [child7537]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7532_skip, output7537_skip]
  kernel_rfl

theorem node7539_cond_eq
    (child7531 : Flapjack.WordAlloc.removeDeadStructural input7531 value3768 value1 value2 = (output7531, value3770, value1))
    (child7538 : Flapjack.WordAlloc.removeDeadStructural input7538 value3770 value1 value2 = (output7538, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7539 value3768 value1 value2 = (output7539, value5, value1) := by
  rw [input7539_def, output7539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7531]
  dsimp only
  rw [child7538]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7531_skip, output7538_skip]
  kernel_rfl

theorem node7540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7540 value5 value1 value2 = (output7540, value3774, value1) := by
  rw [input7540_def, output7540_def]
  kernel_rfl

theorem node7541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7541 value3774 value1 value2 = (output7541, value3775, value1) := by
  rw [input7541_def, output7541_def]
  kernel_rfl

theorem node7542_cond_eq
    (child7540 : Flapjack.WordAlloc.removeDeadStructural input7540 value5 value1 value2 = (output7540, value3774, value1))
    (child7541 : Flapjack.WordAlloc.removeDeadStructural input7541 value3774 value1 value2 = (output7541, value3775, value1)) : Flapjack.WordAlloc.removeDeadStructural input7542 value5 value1 value2 = (output7542, value3775, value1) := by
  rw [input7542_def, output7542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7540]
  dsimp only
  rw [child7541]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7540_skip, output7541_skip]
  kernel_rfl

theorem node7543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7543 value3775 value1 value2 = (output7543, value3776, value1) := by
  rw [input7543_def, output7543_def]
  kernel_rfl

theorem node7544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7544 value3776 value1 value2 = (output7544, value3776, value1) := by
  rw [input7544_def, output7544_def]
  kernel_rfl

theorem node7545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7545 value3776 value1 value2 = (output7545, value3777, value1) := by
  rw [input7545_def, output7545_def]
  kernel_rfl

theorem node7546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7546 value3777 value1 value2 = (output7546, value3778, value1) := by
  rw [input7546_def, output7546_def]
  kernel_rfl

theorem node7547_cond_eq
    (child7545 : Flapjack.WordAlloc.removeDeadStructural input7545 value3776 value1 value2 = (output7545, value3777, value1))
    (child7546 : Flapjack.WordAlloc.removeDeadStructural input7546 value3777 value1 value2 = (output7546, value3778, value1)) : Flapjack.WordAlloc.removeDeadStructural input7547 value3776 value1 value2 = (output7547, value3778, value1) := by
  rw [input7547_def, output7547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7545]
  dsimp only
  rw [child7546]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7545_skip, output7546_skip]
  kernel_rfl

theorem node7548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7548 value3778 value1 value2 = (output7548, value3779, value1) := by
  rw [input7548_def, output7548_def]
  kernel_rfl

theorem node7549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7549 value3779 value1 value2 = (output7549, value3780, value1) := by
  rw [input7549_def, output7549_def]
  kernel_rfl

theorem node7550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7550 value3780 value1 value2 = (output7550, value3781, value1) := by
  rw [input7550_def, output7550_def]
  kernel_rfl

theorem node7551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7551 value3781 value1 value2 = (output7551, value5, value1) := by
  rw [input7551_def, output7551_def]
  kernel_rfl

theorem node7552_cond_eq
    (child7550 : Flapjack.WordAlloc.removeDeadStructural input7550 value3780 value1 value2 = (output7550, value3781, value1))
    (child7551 : Flapjack.WordAlloc.removeDeadStructural input7551 value3781 value1 value2 = (output7551, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7552 value3780 value1 value2 = (output7552, value5, value1) := by
  rw [input7552_def, output7552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7550]
  dsimp only
  rw [child7551]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7550_skip, output7551_skip]
  kernel_rfl

theorem node7553_cond_eq
    (child7549 : Flapjack.WordAlloc.removeDeadStructural input7549 value3779 value1 value2 = (output7549, value3780, value1))
    (child7552 : Flapjack.WordAlloc.removeDeadStructural input7552 value3780 value1 value2 = (output7552, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7553 value3779 value1 value2 = (output7553, value5, value1) := by
  rw [input7553_def, output7553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7549]
  dsimp only
  rw [child7552]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7549_skip, output7552_skip]
  kernel_rfl

theorem node7554_cond_eq
    (child7548 : Flapjack.WordAlloc.removeDeadStructural input7548 value3778 value1 value2 = (output7548, value3779, value1))
    (child7553 : Flapjack.WordAlloc.removeDeadStructural input7553 value3779 value1 value2 = (output7553, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7554 value3778 value1 value2 = (output7554, value5, value1) := by
  rw [input7554_def, output7554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7548]
  dsimp only
  rw [child7553]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7548_skip, output7553_skip]
  kernel_rfl

theorem node7555_cond_eq
    (child7547 : Flapjack.WordAlloc.removeDeadStructural input7547 value3776 value1 value2 = (output7547, value3778, value1))
    (child7554 : Flapjack.WordAlloc.removeDeadStructural input7554 value3778 value1 value2 = (output7554, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7555 value3776 value1 value2 = (output7555, value5, value1) := by
  rw [input7555_def, output7555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7547]
  dsimp only
  rw [child7554]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7547_skip, output7554_skip]
  kernel_rfl

theorem node7556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7556 value5 value1 value2 = (output7556, value3782, value1) := by
  rw [input7556_def, output7556_def]
  kernel_rfl

theorem node7557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7557 value3782 value1 value2 = (output7557, value3783, value1) := by
  rw [input7557_def, output7557_def]
  kernel_rfl

theorem node7558_cond_eq
    (child7556 : Flapjack.WordAlloc.removeDeadStructural input7556 value5 value1 value2 = (output7556, value3782, value1))
    (child7557 : Flapjack.WordAlloc.removeDeadStructural input7557 value3782 value1 value2 = (output7557, value3783, value1)) : Flapjack.WordAlloc.removeDeadStructural input7558 value5 value1 value2 = (output7558, value3783, value1) := by
  rw [input7558_def, output7558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7556]
  dsimp only
  rw [child7557]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7556_skip, output7557_skip]
  kernel_rfl

theorem node7559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7559 value3783 value1 value2 = (output7559, value3784, value1) := by
  rw [input7559_def, output7559_def]
  kernel_rfl

theorem node7560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7560 value3784 value1 value2 = (output7560, value3784, value1) := by
  rw [input7560_def, output7560_def]
  kernel_rfl

theorem node7561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7561 value3784 value1 value2 = (output7561, value3785, value1) := by
  rw [input7561_def, output7561_def]
  kernel_rfl

theorem node7562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7562 value3785 value1 value2 = (output7562, value3786, value1) := by
  rw [input7562_def, output7562_def]
  kernel_rfl

theorem node7563_cond_eq
    (child7561 : Flapjack.WordAlloc.removeDeadStructural input7561 value3784 value1 value2 = (output7561, value3785, value1))
    (child7562 : Flapjack.WordAlloc.removeDeadStructural input7562 value3785 value1 value2 = (output7562, value3786, value1)) : Flapjack.WordAlloc.removeDeadStructural input7563 value3784 value1 value2 = (output7563, value3786, value1) := by
  rw [input7563_def, output7563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7561]
  dsimp only
  rw [child7562]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7561_skip, output7562_skip]
  kernel_rfl

theorem node7564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7564 value3786 value1 value2 = (output7564, value3787, value1) := by
  rw [input7564_def, output7564_def]
  kernel_rfl

theorem node7565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7565 value3787 value1 value2 = (output7565, value3788, value1) := by
  rw [input7565_def, output7565_def]
  kernel_rfl

theorem node7566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7566 value3788 value1 value2 = (output7566, value3789, value1) := by
  rw [input7566_def, output7566_def]
  kernel_rfl

theorem node7567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7567 value3789 value1 value2 = (output7567, value5, value1) := by
  rw [input7567_def, output7567_def]
  kernel_rfl

theorem node7568_cond_eq
    (child7566 : Flapjack.WordAlloc.removeDeadStructural input7566 value3788 value1 value2 = (output7566, value3789, value1))
    (child7567 : Flapjack.WordAlloc.removeDeadStructural input7567 value3789 value1 value2 = (output7567, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7568 value3788 value1 value2 = (output7568, value5, value1) := by
  rw [input7568_def, output7568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7566]
  dsimp only
  rw [child7567]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7566_skip, output7567_skip]
  kernel_rfl

theorem node7569_cond_eq
    (child7565 : Flapjack.WordAlloc.removeDeadStructural input7565 value3787 value1 value2 = (output7565, value3788, value1))
    (child7568 : Flapjack.WordAlloc.removeDeadStructural input7568 value3788 value1 value2 = (output7568, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7569 value3787 value1 value2 = (output7569, value5, value1) := by
  rw [input7569_def, output7569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7565]
  dsimp only
  rw [child7568]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7565_skip, output7568_skip]
  kernel_rfl

theorem node7570_cond_eq
    (child7564 : Flapjack.WordAlloc.removeDeadStructural input7564 value3786 value1 value2 = (output7564, value3787, value1))
    (child7569 : Flapjack.WordAlloc.removeDeadStructural input7569 value3787 value1 value2 = (output7569, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7570 value3786 value1 value2 = (output7570, value5, value1) := by
  rw [input7570_def, output7570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7564]
  dsimp only
  rw [child7569]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7564_skip, output7569_skip]
  kernel_rfl

theorem node7571_cond_eq
    (child7563 : Flapjack.WordAlloc.removeDeadStructural input7563 value3784 value1 value2 = (output7563, value3786, value1))
    (child7570 : Flapjack.WordAlloc.removeDeadStructural input7570 value3786 value1 value2 = (output7570, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7571 value3784 value1 value2 = (output7571, value5, value1) := by
  rw [input7571_def, output7571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7563]
  dsimp only
  rw [child7570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7563_skip, output7570_skip]
  kernel_rfl

theorem node7572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7572 value5 value1 value2 = (output7572, value3790, value1) := by
  rw [input7572_def, output7572_def]
  kernel_rfl

theorem node7573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7573 value3790 value1 value2 = (output7573, value3791, value1) := by
  rw [input7573_def, output7573_def]
  kernel_rfl

theorem node7574_cond_eq
    (child7572 : Flapjack.WordAlloc.removeDeadStructural input7572 value5 value1 value2 = (output7572, value3790, value1))
    (child7573 : Flapjack.WordAlloc.removeDeadStructural input7573 value3790 value1 value2 = (output7573, value3791, value1)) : Flapjack.WordAlloc.removeDeadStructural input7574 value5 value1 value2 = (output7574, value3791, value1) := by
  rw [input7574_def, output7574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7572]
  dsimp only
  rw [child7573]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7572_skip, output7573_skip]
  kernel_rfl

theorem node7575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7575 value3791 value1 value2 = (output7575, value3792, value1) := by
  rw [input7575_def, output7575_def]
  kernel_rfl

theorem node7576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7576 value3792 value1 value2 = (output7576, value3792, value1) := by
  rw [input7576_def, output7576_def]
  kernel_rfl

theorem node7577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7577 value3792 value1 value2 = (output7577, value3793, value1) := by
  rw [input7577_def, output7577_def]
  kernel_rfl

theorem node7578_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7578 value3793 value1 value2 = (output7578, value3794, value1) := by
  rw [input7578_def, output7578_def]
  kernel_rfl

theorem node7579_cond_eq
    (child7577 : Flapjack.WordAlloc.removeDeadStructural input7577 value3792 value1 value2 = (output7577, value3793, value1))
    (child7578 : Flapjack.WordAlloc.removeDeadStructural input7578 value3793 value1 value2 = (output7578, value3794, value1)) : Flapjack.WordAlloc.removeDeadStructural input7579 value3792 value1 value2 = (output7579, value3794, value1) := by
  rw [input7579_def, output7579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7577]
  dsimp only
  rw [child7578]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7577_skip, output7578_skip]
  kernel_rfl

theorem node7580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7580 value3794 value1 value2 = (output7580, value3795, value1) := by
  rw [input7580_def, output7580_def]
  kernel_rfl

theorem node7581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7581 value3795 value1 value2 = (output7581, value3796, value1) := by
  rw [input7581_def, output7581_def]
  kernel_rfl

theorem node7582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7582 value3796 value1 value2 = (output7582, value3797, value1) := by
  rw [input7582_def, output7582_def]
  kernel_rfl

theorem node7583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7583 value3797 value1 value2 = (output7583, value5, value1) := by
  rw [input7583_def, output7583_def]
  kernel_rfl

theorem node7584_cond_eq
    (child7582 : Flapjack.WordAlloc.removeDeadStructural input7582 value3796 value1 value2 = (output7582, value3797, value1))
    (child7583 : Flapjack.WordAlloc.removeDeadStructural input7583 value3797 value1 value2 = (output7583, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7584 value3796 value1 value2 = (output7584, value5, value1) := by
  rw [input7584_def, output7584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7582]
  dsimp only
  rw [child7583]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7582_skip, output7583_skip]
  kernel_rfl

theorem node7585_cond_eq
    (child7581 : Flapjack.WordAlloc.removeDeadStructural input7581 value3795 value1 value2 = (output7581, value3796, value1))
    (child7584 : Flapjack.WordAlloc.removeDeadStructural input7584 value3796 value1 value2 = (output7584, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7585 value3795 value1 value2 = (output7585, value5, value1) := by
  rw [input7585_def, output7585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7581]
  dsimp only
  rw [child7584]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7581_skip, output7584_skip]
  kernel_rfl

theorem node7586_cond_eq
    (child7580 : Flapjack.WordAlloc.removeDeadStructural input7580 value3794 value1 value2 = (output7580, value3795, value1))
    (child7585 : Flapjack.WordAlloc.removeDeadStructural input7585 value3795 value1 value2 = (output7585, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7586 value3794 value1 value2 = (output7586, value5, value1) := by
  rw [input7586_def, output7586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7580]
  dsimp only
  rw [child7585]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7580_skip, output7585_skip]
  kernel_rfl

theorem node7587_cond_eq
    (child7579 : Flapjack.WordAlloc.removeDeadStructural input7579 value3792 value1 value2 = (output7579, value3794, value1))
    (child7586 : Flapjack.WordAlloc.removeDeadStructural input7586 value3794 value1 value2 = (output7586, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7587 value3792 value1 value2 = (output7587, value5, value1) := by
  rw [input7587_def, output7587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7579]
  dsimp only
  rw [child7586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7579_skip, output7586_skip]
  kernel_rfl

theorem node7588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7588 value5 value1 value2 = (output7588, value3798, value1) := by
  rw [input7588_def, output7588_def]
  kernel_rfl

theorem node7589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7589 value3798 value1 value2 = (output7589, value3799, value1) := by
  rw [input7589_def, output7589_def]
  kernel_rfl

theorem node7590_cond_eq
    (child7588 : Flapjack.WordAlloc.removeDeadStructural input7588 value5 value1 value2 = (output7588, value3798, value1))
    (child7589 : Flapjack.WordAlloc.removeDeadStructural input7589 value3798 value1 value2 = (output7589, value3799, value1)) : Flapjack.WordAlloc.removeDeadStructural input7590 value5 value1 value2 = (output7590, value3799, value1) := by
  rw [input7590_def, output7590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7588]
  dsimp only
  rw [child7589]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7588_skip, output7589_skip]
  kernel_rfl

theorem node7591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7591 value3799 value1 value2 = (output7591, value3800, value1) := by
  rw [input7591_def, output7591_def]
  kernel_rfl

theorem node7592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7592 value3800 value1 value2 = (output7592, value3800, value1) := by
  rw [input7592_def, output7592_def]
  kernel_rfl

theorem node7593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7593 value3800 value1 value2 = (output7593, value3801, value1) := by
  rw [input7593_def, output7593_def]
  kernel_rfl

theorem node7594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7594 value3801 value1 value2 = (output7594, value3802, value1) := by
  rw [input7594_def, output7594_def]
  kernel_rfl

theorem node7595_cond_eq
    (child7593 : Flapjack.WordAlloc.removeDeadStructural input7593 value3800 value1 value2 = (output7593, value3801, value1))
    (child7594 : Flapjack.WordAlloc.removeDeadStructural input7594 value3801 value1 value2 = (output7594, value3802, value1)) : Flapjack.WordAlloc.removeDeadStructural input7595 value3800 value1 value2 = (output7595, value3802, value1) := by
  rw [input7595_def, output7595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7593]
  dsimp only
  rw [child7594]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7593_skip, output7594_skip]
  kernel_rfl

theorem node7596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7596 value3802 value1 value2 = (output7596, value3803, value1) := by
  rw [input7596_def, output7596_def]
  kernel_rfl

theorem node7597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7597 value3803 value1 value2 = (output7597, value3804, value1) := by
  rw [input7597_def, output7597_def]
  kernel_rfl

theorem node7598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7598 value3804 value1 value2 = (output7598, value3805, value1) := by
  rw [input7598_def, output7598_def]
  kernel_rfl

theorem node7599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7599 value3805 value1 value2 = (output7599, value5, value1) := by
  rw [input7599_def, output7599_def]
  kernel_rfl

theorem node7600_cond_eq
    (child7598 : Flapjack.WordAlloc.removeDeadStructural input7598 value3804 value1 value2 = (output7598, value3805, value1))
    (child7599 : Flapjack.WordAlloc.removeDeadStructural input7599 value3805 value1 value2 = (output7599, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7600 value3804 value1 value2 = (output7600, value5, value1) := by
  rw [input7600_def, output7600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7598]
  dsimp only
  rw [child7599]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7598_skip, output7599_skip]
  kernel_rfl

theorem node7601_cond_eq
    (child7597 : Flapjack.WordAlloc.removeDeadStructural input7597 value3803 value1 value2 = (output7597, value3804, value1))
    (child7600 : Flapjack.WordAlloc.removeDeadStructural input7600 value3804 value1 value2 = (output7600, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7601 value3803 value1 value2 = (output7601, value5, value1) := by
  rw [input7601_def, output7601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7597]
  dsimp only
  rw [child7600]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7597_skip, output7600_skip]
  kernel_rfl

theorem node7602_cond_eq
    (child7596 : Flapjack.WordAlloc.removeDeadStructural input7596 value3802 value1 value2 = (output7596, value3803, value1))
    (child7601 : Flapjack.WordAlloc.removeDeadStructural input7601 value3803 value1 value2 = (output7601, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7602 value3802 value1 value2 = (output7602, value5, value1) := by
  rw [input7602_def, output7602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7596]
  dsimp only
  rw [child7601]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7596_skip, output7601_skip]
  kernel_rfl

theorem node7603_cond_eq
    (child7595 : Flapjack.WordAlloc.removeDeadStructural input7595 value3800 value1 value2 = (output7595, value3802, value1))
    (child7602 : Flapjack.WordAlloc.removeDeadStructural input7602 value3802 value1 value2 = (output7602, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7603 value3800 value1 value2 = (output7603, value5, value1) := by
  rw [input7603_def, output7603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7595]
  dsimp only
  rw [child7602]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7595_skip, output7602_skip]
  kernel_rfl

theorem node7604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7604 value5 value1 value2 = (output7604, value3806, value1) := by
  rw [input7604_def, output7604_def]
  kernel_rfl

theorem node7605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7605 value3806 value1 value2 = (output7605, value3807, value1) := by
  rw [input7605_def, output7605_def]
  kernel_rfl

theorem node7606_cond_eq
    (child7604 : Flapjack.WordAlloc.removeDeadStructural input7604 value5 value1 value2 = (output7604, value3806, value1))
    (child7605 : Flapjack.WordAlloc.removeDeadStructural input7605 value3806 value1 value2 = (output7605, value3807, value1)) : Flapjack.WordAlloc.removeDeadStructural input7606 value5 value1 value2 = (output7606, value3807, value1) := by
  rw [input7606_def, output7606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7604]
  dsimp only
  rw [child7605]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7604_skip, output7605_skip]
  kernel_rfl

theorem node7607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7607 value3807 value1 value2 = (output7607, value3808, value1) := by
  rw [input7607_def, output7607_def]
  kernel_rfl

theorem node7608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7608 value3808 value1 value2 = (output7608, value3808, value1) := by
  rw [input7608_def, output7608_def]
  kernel_rfl

theorem node7609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7609 value3808 value1 value2 = (output7609, value3809, value1) := by
  rw [input7609_def, output7609_def]
  kernel_rfl

theorem node7610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7610 value3809 value1 value2 = (output7610, value3810, value1) := by
  rw [input7610_def, output7610_def]
  kernel_rfl

theorem node7611_cond_eq
    (child7609 : Flapjack.WordAlloc.removeDeadStructural input7609 value3808 value1 value2 = (output7609, value3809, value1))
    (child7610 : Flapjack.WordAlloc.removeDeadStructural input7610 value3809 value1 value2 = (output7610, value3810, value1)) : Flapjack.WordAlloc.removeDeadStructural input7611 value3808 value1 value2 = (output7611, value3810, value1) := by
  rw [input7611_def, output7611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7609]
  dsimp only
  rw [child7610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7609_skip, output7610_skip]
  kernel_rfl

theorem node7612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7612 value3810 value1 value2 = (output7612, value3811, value1) := by
  rw [input7612_def, output7612_def]
  kernel_rfl

theorem node7613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7613 value3811 value1 value2 = (output7613, value3812, value1) := by
  rw [input7613_def, output7613_def]
  kernel_rfl

theorem node7614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7614 value3812 value1 value2 = (output7614, value3813, value1) := by
  rw [input7614_def, output7614_def]
  kernel_rfl

theorem node7615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7615 value3813 value1 value2 = (output7615, value5, value1) := by
  rw [input7615_def, output7615_def]
  kernel_rfl

theorem node7616_cond_eq
    (child7614 : Flapjack.WordAlloc.removeDeadStructural input7614 value3812 value1 value2 = (output7614, value3813, value1))
    (child7615 : Flapjack.WordAlloc.removeDeadStructural input7615 value3813 value1 value2 = (output7615, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7616 value3812 value1 value2 = (output7616, value5, value1) := by
  rw [input7616_def, output7616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7614]
  dsimp only
  rw [child7615]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7614_skip, output7615_skip]
  kernel_rfl

theorem node7617_cond_eq
    (child7613 : Flapjack.WordAlloc.removeDeadStructural input7613 value3811 value1 value2 = (output7613, value3812, value1))
    (child7616 : Flapjack.WordAlloc.removeDeadStructural input7616 value3812 value1 value2 = (output7616, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7617 value3811 value1 value2 = (output7617, value5, value1) := by
  rw [input7617_def, output7617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7613]
  dsimp only
  rw [child7616]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7613_skip, output7616_skip]
  kernel_rfl

theorem node7618_cond_eq
    (child7612 : Flapjack.WordAlloc.removeDeadStructural input7612 value3810 value1 value2 = (output7612, value3811, value1))
    (child7617 : Flapjack.WordAlloc.removeDeadStructural input7617 value3811 value1 value2 = (output7617, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7618 value3810 value1 value2 = (output7618, value5, value1) := by
  rw [input7618_def, output7618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7612]
  dsimp only
  rw [child7617]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7612_skip, output7617_skip]
  kernel_rfl

theorem node7619_cond_eq
    (child7611 : Flapjack.WordAlloc.removeDeadStructural input7611 value3808 value1 value2 = (output7611, value3810, value1))
    (child7618 : Flapjack.WordAlloc.removeDeadStructural input7618 value3810 value1 value2 = (output7618, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7619 value3808 value1 value2 = (output7619, value5, value1) := by
  rw [input7619_def, output7619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7611]
  dsimp only
  rw [child7618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7611_skip, output7618_skip]
  kernel_rfl

theorem node7620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7620 value5 value1 value2 = (output7620, value3814, value1) := by
  rw [input7620_def, output7620_def]
  kernel_rfl

theorem node7621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7621 value3814 value1 value2 = (output7621, value3815, value1) := by
  rw [input7621_def, output7621_def]
  kernel_rfl

theorem node7622_cond_eq
    (child7620 : Flapjack.WordAlloc.removeDeadStructural input7620 value5 value1 value2 = (output7620, value3814, value1))
    (child7621 : Flapjack.WordAlloc.removeDeadStructural input7621 value3814 value1 value2 = (output7621, value3815, value1)) : Flapjack.WordAlloc.removeDeadStructural input7622 value5 value1 value2 = (output7622, value3815, value1) := by
  rw [input7622_def, output7622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7620]
  dsimp only
  rw [child7621]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7620_skip, output7621_skip]
  kernel_rfl

theorem node7623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7623 value3815 value1 value2 = (output7623, value3816, value1) := by
  rw [input7623_def, output7623_def]
  kernel_rfl

theorem node7624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7624 value3816 value1 value2 = (output7624, value3816, value1) := by
  rw [input7624_def, output7624_def]
  kernel_rfl

theorem node7625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7625 value3816 value1 value2 = (output7625, value3817, value1) := by
  rw [input7625_def, output7625_def]
  kernel_rfl

theorem node7626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7626 value3817 value1 value2 = (output7626, value3818, value1) := by
  rw [input7626_def, output7626_def]
  kernel_rfl

theorem node7627_cond_eq
    (child7625 : Flapjack.WordAlloc.removeDeadStructural input7625 value3816 value1 value2 = (output7625, value3817, value1))
    (child7626 : Flapjack.WordAlloc.removeDeadStructural input7626 value3817 value1 value2 = (output7626, value3818, value1)) : Flapjack.WordAlloc.removeDeadStructural input7627 value3816 value1 value2 = (output7627, value3818, value1) := by
  rw [input7627_def, output7627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7625]
  dsimp only
  rw [child7626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7625_skip, output7626_skip]
  kernel_rfl

theorem node7628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7628 value3818 value1 value2 = (output7628, value3819, value1) := by
  rw [input7628_def, output7628_def]
  kernel_rfl

theorem node7629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7629 value3819 value1 value2 = (output7629, value3820, value1) := by
  rw [input7629_def, output7629_def]
  kernel_rfl

theorem node7630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7630 value3820 value1 value2 = (output7630, value3821, value1) := by
  rw [input7630_def, output7630_def]
  kernel_rfl

theorem node7631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7631 value3821 value1 value2 = (output7631, value5, value1) := by
  rw [input7631_def, output7631_def]
  kernel_rfl

theorem node7632_cond_eq
    (child7630 : Flapjack.WordAlloc.removeDeadStructural input7630 value3820 value1 value2 = (output7630, value3821, value1))
    (child7631 : Flapjack.WordAlloc.removeDeadStructural input7631 value3821 value1 value2 = (output7631, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7632 value3820 value1 value2 = (output7632, value5, value1) := by
  rw [input7632_def, output7632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7630]
  dsimp only
  rw [child7631]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7630_skip, output7631_skip]
  kernel_rfl

theorem node7633_cond_eq
    (child7629 : Flapjack.WordAlloc.removeDeadStructural input7629 value3819 value1 value2 = (output7629, value3820, value1))
    (child7632 : Flapjack.WordAlloc.removeDeadStructural input7632 value3820 value1 value2 = (output7632, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7633 value3819 value1 value2 = (output7633, value5, value1) := by
  rw [input7633_def, output7633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7629]
  dsimp only
  rw [child7632]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7629_skip, output7632_skip]
  kernel_rfl

theorem node7634_cond_eq
    (child7628 : Flapjack.WordAlloc.removeDeadStructural input7628 value3818 value1 value2 = (output7628, value3819, value1))
    (child7633 : Flapjack.WordAlloc.removeDeadStructural input7633 value3819 value1 value2 = (output7633, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7634 value3818 value1 value2 = (output7634, value5, value1) := by
  rw [input7634_def, output7634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7628]
  dsimp only
  rw [child7633]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7628_skip, output7633_skip]
  kernel_rfl

theorem node7635_cond_eq
    (child7627 : Flapjack.WordAlloc.removeDeadStructural input7627 value3816 value1 value2 = (output7627, value3818, value1))
    (child7634 : Flapjack.WordAlloc.removeDeadStructural input7634 value3818 value1 value2 = (output7634, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7635 value3816 value1 value2 = (output7635, value5, value1) := by
  rw [input7635_def, output7635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7627]
  dsimp only
  rw [child7634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7627_skip, output7634_skip]
  kernel_rfl

theorem node7636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7636 value5 value1 value2 = (output7636, value3822, value1) := by
  rw [input7636_def, output7636_def]
  kernel_rfl

theorem node7637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7637 value3822 value1 value2 = (output7637, value3823, value1) := by
  rw [input7637_def, output7637_def]
  kernel_rfl

theorem node7638_cond_eq
    (child7636 : Flapjack.WordAlloc.removeDeadStructural input7636 value5 value1 value2 = (output7636, value3822, value1))
    (child7637 : Flapjack.WordAlloc.removeDeadStructural input7637 value3822 value1 value2 = (output7637, value3823, value1)) : Flapjack.WordAlloc.removeDeadStructural input7638 value5 value1 value2 = (output7638, value3823, value1) := by
  rw [input7638_def, output7638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7636]
  dsimp only
  rw [child7637]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7636_skip, output7637_skip]
  kernel_rfl

theorem node7639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7639 value3823 value1 value2 = (output7639, value3824, value1) := by
  rw [input7639_def, output7639_def]
  kernel_rfl

theorem node7640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7640 value3824 value1 value2 = (output7640, value3824, value1) := by
  rw [input7640_def, output7640_def]
  kernel_rfl

theorem node7641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7641 value3824 value1 value2 = (output7641, value3825, value1) := by
  rw [input7641_def, output7641_def]
  kernel_rfl

theorem node7642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7642 value3825 value1 value2 = (output7642, value3826, value1) := by
  rw [input7642_def, output7642_def]
  kernel_rfl

theorem node7643_cond_eq
    (child7641 : Flapjack.WordAlloc.removeDeadStructural input7641 value3824 value1 value2 = (output7641, value3825, value1))
    (child7642 : Flapjack.WordAlloc.removeDeadStructural input7642 value3825 value1 value2 = (output7642, value3826, value1)) : Flapjack.WordAlloc.removeDeadStructural input7643 value3824 value1 value2 = (output7643, value3826, value1) := by
  rw [input7643_def, output7643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7641]
  dsimp only
  rw [child7642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7641_skip, output7642_skip]
  kernel_rfl

theorem node7644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7644 value3826 value1 value2 = (output7644, value3827, value1) := by
  rw [input7644_def, output7644_def]
  kernel_rfl

theorem node7645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7645 value3827 value1 value2 = (output7645, value3828, value1) := by
  rw [input7645_def, output7645_def]
  kernel_rfl

theorem node7646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7646 value3828 value1 value2 = (output7646, value3829, value1) := by
  rw [input7646_def, output7646_def]
  kernel_rfl

theorem node7647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7647 value3829 value1 value2 = (output7647, value5, value1) := by
  rw [input7647_def, output7647_def]
  kernel_rfl

theorem node7648_cond_eq
    (child7646 : Flapjack.WordAlloc.removeDeadStructural input7646 value3828 value1 value2 = (output7646, value3829, value1))
    (child7647 : Flapjack.WordAlloc.removeDeadStructural input7647 value3829 value1 value2 = (output7647, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7648 value3828 value1 value2 = (output7648, value5, value1) := by
  rw [input7648_def, output7648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7646]
  dsimp only
  rw [child7647]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7646_skip, output7647_skip]
  kernel_rfl

theorem node7649_cond_eq
    (child7645 : Flapjack.WordAlloc.removeDeadStructural input7645 value3827 value1 value2 = (output7645, value3828, value1))
    (child7648 : Flapjack.WordAlloc.removeDeadStructural input7648 value3828 value1 value2 = (output7648, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7649 value3827 value1 value2 = (output7649, value5, value1) := by
  rw [input7649_def, output7649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7645]
  dsimp only
  rw [child7648]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7645_skip, output7648_skip]
  kernel_rfl

theorem node7650_cond_eq
    (child7644 : Flapjack.WordAlloc.removeDeadStructural input7644 value3826 value1 value2 = (output7644, value3827, value1))
    (child7649 : Flapjack.WordAlloc.removeDeadStructural input7649 value3827 value1 value2 = (output7649, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7650 value3826 value1 value2 = (output7650, value5, value1) := by
  rw [input7650_def, output7650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7644]
  dsimp only
  rw [child7649]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7644_skip, output7649_skip]
  kernel_rfl

theorem node7651_cond_eq
    (child7643 : Flapjack.WordAlloc.removeDeadStructural input7643 value3824 value1 value2 = (output7643, value3826, value1))
    (child7650 : Flapjack.WordAlloc.removeDeadStructural input7650 value3826 value1 value2 = (output7650, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7651 value3824 value1 value2 = (output7651, value5, value1) := by
  rw [input7651_def, output7651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7643]
  dsimp only
  rw [child7650]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7643_skip, output7650_skip]
  kernel_rfl

theorem node7652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7652 value5 value1 value2 = (output7652, value3830, value1) := by
  rw [input7652_def, output7652_def]
  kernel_rfl

theorem node7653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7653 value3830 value1 value2 = (output7653, value3831, value1) := by
  rw [input7653_def, output7653_def]
  kernel_rfl

theorem node7654_cond_eq
    (child7652 : Flapjack.WordAlloc.removeDeadStructural input7652 value5 value1 value2 = (output7652, value3830, value1))
    (child7653 : Flapjack.WordAlloc.removeDeadStructural input7653 value3830 value1 value2 = (output7653, value3831, value1)) : Flapjack.WordAlloc.removeDeadStructural input7654 value5 value1 value2 = (output7654, value3831, value1) := by
  rw [input7654_def, output7654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7652]
  dsimp only
  rw [child7653]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7652_skip, output7653_skip]
  kernel_rfl

theorem node7655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7655 value3831 value1 value2 = (output7655, value3832, value1) := by
  rw [input7655_def, output7655_def]
  kernel_rfl

theorem node7656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7656 value3832 value1 value2 = (output7656, value3832, value1) := by
  rw [input7656_def, output7656_def]
  kernel_rfl

theorem node7657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7657 value3832 value1 value2 = (output7657, value3833, value1) := by
  rw [input7657_def, output7657_def]
  kernel_rfl

theorem node7658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7658 value3833 value1 value2 = (output7658, value3834, value1) := by
  rw [input7658_def, output7658_def]
  kernel_rfl

theorem node7659_cond_eq
    (child7657 : Flapjack.WordAlloc.removeDeadStructural input7657 value3832 value1 value2 = (output7657, value3833, value1))
    (child7658 : Flapjack.WordAlloc.removeDeadStructural input7658 value3833 value1 value2 = (output7658, value3834, value1)) : Flapjack.WordAlloc.removeDeadStructural input7659 value3832 value1 value2 = (output7659, value3834, value1) := by
  rw [input7659_def, output7659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7657]
  dsimp only
  rw [child7658]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7657_skip, output7658_skip]
  kernel_rfl

theorem node7660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7660 value3834 value1 value2 = (output7660, value3835, value1) := by
  rw [input7660_def, output7660_def]
  kernel_rfl

theorem node7661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7661 value3835 value1 value2 = (output7661, value3836, value1) := by
  rw [input7661_def, output7661_def]
  kernel_rfl

theorem node7662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7662 value3836 value1 value2 = (output7662, value3837, value1) := by
  rw [input7662_def, output7662_def]
  kernel_rfl

theorem node7663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7663 value3837 value1 value2 = (output7663, value5, value1) := by
  rw [input7663_def, output7663_def]
  kernel_rfl

theorem node7664_cond_eq
    (child7662 : Flapjack.WordAlloc.removeDeadStructural input7662 value3836 value1 value2 = (output7662, value3837, value1))
    (child7663 : Flapjack.WordAlloc.removeDeadStructural input7663 value3837 value1 value2 = (output7663, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7664 value3836 value1 value2 = (output7664, value5, value1) := by
  rw [input7664_def, output7664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7662]
  dsimp only
  rw [child7663]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7662_skip, output7663_skip]
  kernel_rfl

theorem node7665_cond_eq
    (child7661 : Flapjack.WordAlloc.removeDeadStructural input7661 value3835 value1 value2 = (output7661, value3836, value1))
    (child7664 : Flapjack.WordAlloc.removeDeadStructural input7664 value3836 value1 value2 = (output7664, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7665 value3835 value1 value2 = (output7665, value5, value1) := by
  rw [input7665_def, output7665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7661]
  dsimp only
  rw [child7664]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7661_skip, output7664_skip]
  kernel_rfl

theorem node7666_cond_eq
    (child7660 : Flapjack.WordAlloc.removeDeadStructural input7660 value3834 value1 value2 = (output7660, value3835, value1))
    (child7665 : Flapjack.WordAlloc.removeDeadStructural input7665 value3835 value1 value2 = (output7665, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7666 value3834 value1 value2 = (output7666, value5, value1) := by
  rw [input7666_def, output7666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7660]
  dsimp only
  rw [child7665]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7660_skip, output7665_skip]
  kernel_rfl

theorem node7667_cond_eq
    (child7659 : Flapjack.WordAlloc.removeDeadStructural input7659 value3832 value1 value2 = (output7659, value3834, value1))
    (child7666 : Flapjack.WordAlloc.removeDeadStructural input7666 value3834 value1 value2 = (output7666, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7667 value3832 value1 value2 = (output7667, value5, value1) := by
  rw [input7667_def, output7667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7659]
  dsimp only
  rw [child7666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7659_skip, output7666_skip]
  kernel_rfl

theorem node7668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7668 value5 value1 value2 = (output7668, value3838, value1) := by
  rw [input7668_def, output7668_def]
  kernel_rfl

theorem node7669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7669 value3838 value1 value2 = (output7669, value3839, value1) := by
  rw [input7669_def, output7669_def]
  kernel_rfl

theorem node7670_cond_eq
    (child7668 : Flapjack.WordAlloc.removeDeadStructural input7668 value5 value1 value2 = (output7668, value3838, value1))
    (child7669 : Flapjack.WordAlloc.removeDeadStructural input7669 value3838 value1 value2 = (output7669, value3839, value1)) : Flapjack.WordAlloc.removeDeadStructural input7670 value5 value1 value2 = (output7670, value3839, value1) := by
  rw [input7670_def, output7670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7668]
  dsimp only
  rw [child7669]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7668_skip, output7669_skip]
  kernel_rfl

theorem node7671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7671 value3839 value1 value2 = (output7671, value3840, value1) := by
  rw [input7671_def, output7671_def]
  kernel_rfl

theorem node7672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7672 value3840 value1 value2 = (output7672, value3840, value1) := by
  rw [input7672_def, output7672_def]
  kernel_rfl

theorem node7673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7673 value3840 value1 value2 = (output7673, value3841, value1) := by
  rw [input7673_def, output7673_def]
  kernel_rfl

theorem node7674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7674 value3841 value1 value2 = (output7674, value3842, value1) := by
  rw [input7674_def, output7674_def]
  kernel_rfl

theorem node7675_cond_eq
    (child7673 : Flapjack.WordAlloc.removeDeadStructural input7673 value3840 value1 value2 = (output7673, value3841, value1))
    (child7674 : Flapjack.WordAlloc.removeDeadStructural input7674 value3841 value1 value2 = (output7674, value3842, value1)) : Flapjack.WordAlloc.removeDeadStructural input7675 value3840 value1 value2 = (output7675, value3842, value1) := by
  rw [input7675_def, output7675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7673]
  dsimp only
  rw [child7674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7673_skip, output7674_skip]
  kernel_rfl

theorem node7676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7676 value3842 value1 value2 = (output7676, value3843, value1) := by
  rw [input7676_def, output7676_def]
  kernel_rfl

theorem node7677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7677 value3843 value1 value2 = (output7677, value3844, value1) := by
  rw [input7677_def, output7677_def]
  kernel_rfl

theorem node7678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7678 value3844 value1 value2 = (output7678, value3845, value1) := by
  rw [input7678_def, output7678_def]
  kernel_rfl

theorem node7679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7679 value3845 value1 value2 = (output7679, value5, value1) := by
  rw [input7679_def, output7679_def]
  kernel_rfl

#print axioms node7679_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
