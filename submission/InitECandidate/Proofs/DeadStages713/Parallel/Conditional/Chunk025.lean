import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk025
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node6400_cond_eq
    (child6398 : Flapjack.WordAlloc.removeDeadStructural input6398 value3204 value1 value2 = (output6398, value3205, value1))
    (child6399 : Flapjack.WordAlloc.removeDeadStructural input6399 value3205 value1 value2 = (output6399, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6400 value3204 value1 value2 = (output6400, value5, value1) := by
  rw [input6400_def, output6400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6398]
  dsimp only
  rw [child6399]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6398_skip, output6399_skip]
  kernel_rfl

theorem node6401_cond_eq
    (child6397 : Flapjack.WordAlloc.removeDeadStructural input6397 value3203 value1 value2 = (output6397, value3204, value1))
    (child6400 : Flapjack.WordAlloc.removeDeadStructural input6400 value3204 value1 value2 = (output6400, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6401 value3203 value1 value2 = (output6401, value5, value1) := by
  rw [input6401_def, output6401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6397]
  dsimp only
  rw [child6400]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6397_skip, output6400_skip]
  kernel_rfl

theorem node6402_cond_eq
    (child6396 : Flapjack.WordAlloc.removeDeadStructural input6396 value3202 value1 value2 = (output6396, value3203, value1))
    (child6401 : Flapjack.WordAlloc.removeDeadStructural input6401 value3203 value1 value2 = (output6401, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6402 value3202 value1 value2 = (output6402, value5, value1) := by
  rw [input6402_def, output6402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6396]
  dsimp only
  rw [child6401]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6396_skip, output6401_skip]
  kernel_rfl

theorem node6403_cond_eq
    (child6395 : Flapjack.WordAlloc.removeDeadStructural input6395 value3200 value1 value2 = (output6395, value3202, value1))
    (child6402 : Flapjack.WordAlloc.removeDeadStructural input6402 value3202 value1 value2 = (output6402, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6403 value3200 value1 value2 = (output6403, value5, value1) := by
  rw [input6403_def, output6403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6395]
  dsimp only
  rw [child6402]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6395_skip, output6402_skip]
  kernel_rfl

theorem node6404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6404 value5 value1 value2 = (output6404, value3206, value1) := by
  rw [input6404_def, output6404_def]
  kernel_rfl

theorem node6405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6405 value3206 value1 value2 = (output6405, value3207, value1) := by
  rw [input6405_def, output6405_def]
  kernel_rfl

theorem node6406_cond_eq
    (child6404 : Flapjack.WordAlloc.removeDeadStructural input6404 value5 value1 value2 = (output6404, value3206, value1))
    (child6405 : Flapjack.WordAlloc.removeDeadStructural input6405 value3206 value1 value2 = (output6405, value3207, value1)) : Flapjack.WordAlloc.removeDeadStructural input6406 value5 value1 value2 = (output6406, value3207, value1) := by
  rw [input6406_def, output6406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6404]
  dsimp only
  rw [child6405]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6404_skip, output6405_skip]
  kernel_rfl

theorem node6407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6407 value3207 value1 value2 = (output6407, value3208, value1) := by
  rw [input6407_def, output6407_def]
  kernel_rfl

theorem node6408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6408 value3208 value1 value2 = (output6408, value3208, value1) := by
  rw [input6408_def, output6408_def]
  kernel_rfl

theorem node6409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6409 value3208 value1 value2 = (output6409, value3209, value1) := by
  rw [input6409_def, output6409_def]
  kernel_rfl

theorem node6410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6410 value3209 value1 value2 = (output6410, value3210, value1) := by
  rw [input6410_def, output6410_def]
  kernel_rfl

theorem node6411_cond_eq
    (child6409 : Flapjack.WordAlloc.removeDeadStructural input6409 value3208 value1 value2 = (output6409, value3209, value1))
    (child6410 : Flapjack.WordAlloc.removeDeadStructural input6410 value3209 value1 value2 = (output6410, value3210, value1)) : Flapjack.WordAlloc.removeDeadStructural input6411 value3208 value1 value2 = (output6411, value3210, value1) := by
  rw [input6411_def, output6411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6409]
  dsimp only
  rw [child6410]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6409_skip, output6410_skip]
  kernel_rfl

theorem node6412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6412 value3210 value1 value2 = (output6412, value3211, value1) := by
  rw [input6412_def, output6412_def]
  kernel_rfl

theorem node6413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6413 value3211 value1 value2 = (output6413, value3212, value1) := by
  rw [input6413_def, output6413_def]
  kernel_rfl

theorem node6414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6414 value3212 value1 value2 = (output6414, value3213, value1) := by
  rw [input6414_def, output6414_def]
  kernel_rfl

theorem node6415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6415 value3213 value1 value2 = (output6415, value5, value1) := by
  rw [input6415_def, output6415_def]
  kernel_rfl

theorem node6416_cond_eq
    (child6414 : Flapjack.WordAlloc.removeDeadStructural input6414 value3212 value1 value2 = (output6414, value3213, value1))
    (child6415 : Flapjack.WordAlloc.removeDeadStructural input6415 value3213 value1 value2 = (output6415, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6416 value3212 value1 value2 = (output6416, value5, value1) := by
  rw [input6416_def, output6416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6414]
  dsimp only
  rw [child6415]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6414_skip, output6415_skip]
  kernel_rfl

theorem node6417_cond_eq
    (child6413 : Flapjack.WordAlloc.removeDeadStructural input6413 value3211 value1 value2 = (output6413, value3212, value1))
    (child6416 : Flapjack.WordAlloc.removeDeadStructural input6416 value3212 value1 value2 = (output6416, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6417 value3211 value1 value2 = (output6417, value5, value1) := by
  rw [input6417_def, output6417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6413]
  dsimp only
  rw [child6416]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6413_skip, output6416_skip]
  kernel_rfl

theorem node6418_cond_eq
    (child6412 : Flapjack.WordAlloc.removeDeadStructural input6412 value3210 value1 value2 = (output6412, value3211, value1))
    (child6417 : Flapjack.WordAlloc.removeDeadStructural input6417 value3211 value1 value2 = (output6417, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6418 value3210 value1 value2 = (output6418, value5, value1) := by
  rw [input6418_def, output6418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6412]
  dsimp only
  rw [child6417]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6412_skip, output6417_skip]
  kernel_rfl

theorem node6419_cond_eq
    (child6411 : Flapjack.WordAlloc.removeDeadStructural input6411 value3208 value1 value2 = (output6411, value3210, value1))
    (child6418 : Flapjack.WordAlloc.removeDeadStructural input6418 value3210 value1 value2 = (output6418, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6419 value3208 value1 value2 = (output6419, value5, value1) := by
  rw [input6419_def, output6419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6411]
  dsimp only
  rw [child6418]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6411_skip, output6418_skip]
  kernel_rfl

theorem node6420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6420 value5 value1 value2 = (output6420, value3214, value1) := by
  rw [input6420_def, output6420_def]
  kernel_rfl

theorem node6421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6421 value3214 value1 value2 = (output6421, value3215, value1) := by
  rw [input6421_def, output6421_def]
  kernel_rfl

theorem node6422_cond_eq
    (child6420 : Flapjack.WordAlloc.removeDeadStructural input6420 value5 value1 value2 = (output6420, value3214, value1))
    (child6421 : Flapjack.WordAlloc.removeDeadStructural input6421 value3214 value1 value2 = (output6421, value3215, value1)) : Flapjack.WordAlloc.removeDeadStructural input6422 value5 value1 value2 = (output6422, value3215, value1) := by
  rw [input6422_def, output6422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6420]
  dsimp only
  rw [child6421]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6420_skip, output6421_skip]
  kernel_rfl

theorem node6423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6423 value3215 value1 value2 = (output6423, value3216, value1) := by
  rw [input6423_def, output6423_def]
  kernel_rfl

theorem node6424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6424 value3216 value1 value2 = (output6424, value3216, value1) := by
  rw [input6424_def, output6424_def]
  kernel_rfl

theorem node6425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6425 value3216 value1 value2 = (output6425, value3217, value1) := by
  rw [input6425_def, output6425_def]
  kernel_rfl

theorem node6426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6426 value3217 value1 value2 = (output6426, value3218, value1) := by
  rw [input6426_def, output6426_def]
  kernel_rfl

theorem node6427_cond_eq
    (child6425 : Flapjack.WordAlloc.removeDeadStructural input6425 value3216 value1 value2 = (output6425, value3217, value1))
    (child6426 : Flapjack.WordAlloc.removeDeadStructural input6426 value3217 value1 value2 = (output6426, value3218, value1)) : Flapjack.WordAlloc.removeDeadStructural input6427 value3216 value1 value2 = (output6427, value3218, value1) := by
  rw [input6427_def, output6427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6425]
  dsimp only
  rw [child6426]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6425_skip, output6426_skip]
  kernel_rfl

theorem node6428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6428 value3218 value1 value2 = (output6428, value3219, value1) := by
  rw [input6428_def, output6428_def]
  kernel_rfl

theorem node6429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6429 value3219 value1 value2 = (output6429, value3220, value1) := by
  rw [input6429_def, output6429_def]
  kernel_rfl

theorem node6430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6430 value3220 value1 value2 = (output6430, value3221, value1) := by
  rw [input6430_def, output6430_def]
  kernel_rfl

theorem node6431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6431 value3221 value1 value2 = (output6431, value5, value1) := by
  rw [input6431_def, output6431_def]
  kernel_rfl

theorem node6432_cond_eq
    (child6430 : Flapjack.WordAlloc.removeDeadStructural input6430 value3220 value1 value2 = (output6430, value3221, value1))
    (child6431 : Flapjack.WordAlloc.removeDeadStructural input6431 value3221 value1 value2 = (output6431, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6432 value3220 value1 value2 = (output6432, value5, value1) := by
  rw [input6432_def, output6432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6430]
  dsimp only
  rw [child6431]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6430_skip, output6431_skip]
  kernel_rfl

theorem node6433_cond_eq
    (child6429 : Flapjack.WordAlloc.removeDeadStructural input6429 value3219 value1 value2 = (output6429, value3220, value1))
    (child6432 : Flapjack.WordAlloc.removeDeadStructural input6432 value3220 value1 value2 = (output6432, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6433 value3219 value1 value2 = (output6433, value5, value1) := by
  rw [input6433_def, output6433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6429]
  dsimp only
  rw [child6432]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6429_skip, output6432_skip]
  kernel_rfl

theorem node6434_cond_eq
    (child6428 : Flapjack.WordAlloc.removeDeadStructural input6428 value3218 value1 value2 = (output6428, value3219, value1))
    (child6433 : Flapjack.WordAlloc.removeDeadStructural input6433 value3219 value1 value2 = (output6433, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6434 value3218 value1 value2 = (output6434, value5, value1) := by
  rw [input6434_def, output6434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6428]
  dsimp only
  rw [child6433]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6428_skip, output6433_skip]
  kernel_rfl

theorem node6435_cond_eq
    (child6427 : Flapjack.WordAlloc.removeDeadStructural input6427 value3216 value1 value2 = (output6427, value3218, value1))
    (child6434 : Flapjack.WordAlloc.removeDeadStructural input6434 value3218 value1 value2 = (output6434, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6435 value3216 value1 value2 = (output6435, value5, value1) := by
  rw [input6435_def, output6435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6427]
  dsimp only
  rw [child6434]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6427_skip, output6434_skip]
  kernel_rfl

theorem node6436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6436 value5 value1 value2 = (output6436, value3222, value1) := by
  rw [input6436_def, output6436_def]
  kernel_rfl

theorem node6437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6437 value3222 value1 value2 = (output6437, value3223, value1) := by
  rw [input6437_def, output6437_def]
  kernel_rfl

theorem node6438_cond_eq
    (child6436 : Flapjack.WordAlloc.removeDeadStructural input6436 value5 value1 value2 = (output6436, value3222, value1))
    (child6437 : Flapjack.WordAlloc.removeDeadStructural input6437 value3222 value1 value2 = (output6437, value3223, value1)) : Flapjack.WordAlloc.removeDeadStructural input6438 value5 value1 value2 = (output6438, value3223, value1) := by
  rw [input6438_def, output6438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6436]
  dsimp only
  rw [child6437]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6436_skip, output6437_skip]
  kernel_rfl

theorem node6439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6439 value3223 value1 value2 = (output6439, value3224, value1) := by
  rw [input6439_def, output6439_def]
  kernel_rfl

theorem node6440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6440 value3224 value1 value2 = (output6440, value3224, value1) := by
  rw [input6440_def, output6440_def]
  kernel_rfl

theorem node6441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6441 value3224 value1 value2 = (output6441, value3225, value1) := by
  rw [input6441_def, output6441_def]
  kernel_rfl

theorem node6442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6442 value3225 value1 value2 = (output6442, value3226, value1) := by
  rw [input6442_def, output6442_def]
  kernel_rfl

theorem node6443_cond_eq
    (child6441 : Flapjack.WordAlloc.removeDeadStructural input6441 value3224 value1 value2 = (output6441, value3225, value1))
    (child6442 : Flapjack.WordAlloc.removeDeadStructural input6442 value3225 value1 value2 = (output6442, value3226, value1)) : Flapjack.WordAlloc.removeDeadStructural input6443 value3224 value1 value2 = (output6443, value3226, value1) := by
  rw [input6443_def, output6443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6441]
  dsimp only
  rw [child6442]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6441_skip, output6442_skip]
  kernel_rfl

theorem node6444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6444 value3226 value1 value2 = (output6444, value3227, value1) := by
  rw [input6444_def, output6444_def]
  kernel_rfl

theorem node6445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6445 value3227 value1 value2 = (output6445, value3228, value1) := by
  rw [input6445_def, output6445_def]
  kernel_rfl

theorem node6446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6446 value3228 value1 value2 = (output6446, value3229, value1) := by
  rw [input6446_def, output6446_def]
  kernel_rfl

theorem node6447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6447 value3229 value1 value2 = (output6447, value5, value1) := by
  rw [input6447_def, output6447_def]
  kernel_rfl

theorem node6448_cond_eq
    (child6446 : Flapjack.WordAlloc.removeDeadStructural input6446 value3228 value1 value2 = (output6446, value3229, value1))
    (child6447 : Flapjack.WordAlloc.removeDeadStructural input6447 value3229 value1 value2 = (output6447, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6448 value3228 value1 value2 = (output6448, value5, value1) := by
  rw [input6448_def, output6448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6446]
  dsimp only
  rw [child6447]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6446_skip, output6447_skip]
  kernel_rfl

theorem node6449_cond_eq
    (child6445 : Flapjack.WordAlloc.removeDeadStructural input6445 value3227 value1 value2 = (output6445, value3228, value1))
    (child6448 : Flapjack.WordAlloc.removeDeadStructural input6448 value3228 value1 value2 = (output6448, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6449 value3227 value1 value2 = (output6449, value5, value1) := by
  rw [input6449_def, output6449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6445]
  dsimp only
  rw [child6448]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6445_skip, output6448_skip]
  kernel_rfl

theorem node6450_cond_eq
    (child6444 : Flapjack.WordAlloc.removeDeadStructural input6444 value3226 value1 value2 = (output6444, value3227, value1))
    (child6449 : Flapjack.WordAlloc.removeDeadStructural input6449 value3227 value1 value2 = (output6449, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6450 value3226 value1 value2 = (output6450, value5, value1) := by
  rw [input6450_def, output6450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6444]
  dsimp only
  rw [child6449]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6444_skip, output6449_skip]
  kernel_rfl

theorem node6451_cond_eq
    (child6443 : Flapjack.WordAlloc.removeDeadStructural input6443 value3224 value1 value2 = (output6443, value3226, value1))
    (child6450 : Flapjack.WordAlloc.removeDeadStructural input6450 value3226 value1 value2 = (output6450, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6451 value3224 value1 value2 = (output6451, value5, value1) := by
  rw [input6451_def, output6451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6443]
  dsimp only
  rw [child6450]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6443_skip, output6450_skip]
  kernel_rfl

theorem node6452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6452 value5 value1 value2 = (output6452, value3230, value1) := by
  rw [input6452_def, output6452_def]
  kernel_rfl

theorem node6453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6453 value3230 value1 value2 = (output6453, value3231, value1) := by
  rw [input6453_def, output6453_def]
  kernel_rfl

theorem node6454_cond_eq
    (child6452 : Flapjack.WordAlloc.removeDeadStructural input6452 value5 value1 value2 = (output6452, value3230, value1))
    (child6453 : Flapjack.WordAlloc.removeDeadStructural input6453 value3230 value1 value2 = (output6453, value3231, value1)) : Flapjack.WordAlloc.removeDeadStructural input6454 value5 value1 value2 = (output6454, value3231, value1) := by
  rw [input6454_def, output6454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6452]
  dsimp only
  rw [child6453]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6452_skip, output6453_skip]
  kernel_rfl

theorem node6455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6455 value3231 value1 value2 = (output6455, value3232, value1) := by
  rw [input6455_def, output6455_def]
  kernel_rfl

theorem node6456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6456 value3232 value1 value2 = (output6456, value3232, value1) := by
  rw [input6456_def, output6456_def]
  kernel_rfl

theorem node6457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6457 value3232 value1 value2 = (output6457, value3233, value1) := by
  rw [input6457_def, output6457_def]
  kernel_rfl

theorem node6458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6458 value3233 value1 value2 = (output6458, value3234, value1) := by
  rw [input6458_def, output6458_def]
  kernel_rfl

theorem node6459_cond_eq
    (child6457 : Flapjack.WordAlloc.removeDeadStructural input6457 value3232 value1 value2 = (output6457, value3233, value1))
    (child6458 : Flapjack.WordAlloc.removeDeadStructural input6458 value3233 value1 value2 = (output6458, value3234, value1)) : Flapjack.WordAlloc.removeDeadStructural input6459 value3232 value1 value2 = (output6459, value3234, value1) := by
  rw [input6459_def, output6459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6457]
  dsimp only
  rw [child6458]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6457_skip, output6458_skip]
  kernel_rfl

theorem node6460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6460 value3234 value1 value2 = (output6460, value3235, value1) := by
  rw [input6460_def, output6460_def]
  kernel_rfl

theorem node6461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6461 value3235 value1 value2 = (output6461, value3236, value1) := by
  rw [input6461_def, output6461_def]
  kernel_rfl

theorem node6462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6462 value3236 value1 value2 = (output6462, value3237, value1) := by
  rw [input6462_def, output6462_def]
  kernel_rfl

theorem node6463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6463 value3237 value1 value2 = (output6463, value5, value1) := by
  rw [input6463_def, output6463_def]
  kernel_rfl

theorem node6464_cond_eq
    (child6462 : Flapjack.WordAlloc.removeDeadStructural input6462 value3236 value1 value2 = (output6462, value3237, value1))
    (child6463 : Flapjack.WordAlloc.removeDeadStructural input6463 value3237 value1 value2 = (output6463, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6464 value3236 value1 value2 = (output6464, value5, value1) := by
  rw [input6464_def, output6464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6462]
  dsimp only
  rw [child6463]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6462_skip, output6463_skip]
  kernel_rfl

theorem node6465_cond_eq
    (child6461 : Flapjack.WordAlloc.removeDeadStructural input6461 value3235 value1 value2 = (output6461, value3236, value1))
    (child6464 : Flapjack.WordAlloc.removeDeadStructural input6464 value3236 value1 value2 = (output6464, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6465 value3235 value1 value2 = (output6465, value5, value1) := by
  rw [input6465_def, output6465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6461]
  dsimp only
  rw [child6464]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6461_skip, output6464_skip]
  kernel_rfl

theorem node6466_cond_eq
    (child6460 : Flapjack.WordAlloc.removeDeadStructural input6460 value3234 value1 value2 = (output6460, value3235, value1))
    (child6465 : Flapjack.WordAlloc.removeDeadStructural input6465 value3235 value1 value2 = (output6465, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6466 value3234 value1 value2 = (output6466, value5, value1) := by
  rw [input6466_def, output6466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6460]
  dsimp only
  rw [child6465]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6460_skip, output6465_skip]
  kernel_rfl

theorem node6467_cond_eq
    (child6459 : Flapjack.WordAlloc.removeDeadStructural input6459 value3232 value1 value2 = (output6459, value3234, value1))
    (child6466 : Flapjack.WordAlloc.removeDeadStructural input6466 value3234 value1 value2 = (output6466, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6467 value3232 value1 value2 = (output6467, value5, value1) := by
  rw [input6467_def, output6467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6459]
  dsimp only
  rw [child6466]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6459_skip, output6466_skip]
  kernel_rfl

theorem node6468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6468 value5 value1 value2 = (output6468, value3238, value1) := by
  rw [input6468_def, output6468_def]
  kernel_rfl

theorem node6469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6469 value3238 value1 value2 = (output6469, value3239, value1) := by
  rw [input6469_def, output6469_def]
  kernel_rfl

theorem node6470_cond_eq
    (child6468 : Flapjack.WordAlloc.removeDeadStructural input6468 value5 value1 value2 = (output6468, value3238, value1))
    (child6469 : Flapjack.WordAlloc.removeDeadStructural input6469 value3238 value1 value2 = (output6469, value3239, value1)) : Flapjack.WordAlloc.removeDeadStructural input6470 value5 value1 value2 = (output6470, value3239, value1) := by
  rw [input6470_def, output6470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6468]
  dsimp only
  rw [child6469]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6468_skip, output6469_skip]
  kernel_rfl

theorem node6471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6471 value3239 value1 value2 = (output6471, value3240, value1) := by
  rw [input6471_def, output6471_def]
  kernel_rfl

theorem node6472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6472 value3240 value1 value2 = (output6472, value3240, value1) := by
  rw [input6472_def, output6472_def]
  kernel_rfl

theorem node6473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6473 value3240 value1 value2 = (output6473, value3241, value1) := by
  rw [input6473_def, output6473_def]
  kernel_rfl

theorem node6474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6474 value3241 value1 value2 = (output6474, value3242, value1) := by
  rw [input6474_def, output6474_def]
  kernel_rfl

theorem node6475_cond_eq
    (child6473 : Flapjack.WordAlloc.removeDeadStructural input6473 value3240 value1 value2 = (output6473, value3241, value1))
    (child6474 : Flapjack.WordAlloc.removeDeadStructural input6474 value3241 value1 value2 = (output6474, value3242, value1)) : Flapjack.WordAlloc.removeDeadStructural input6475 value3240 value1 value2 = (output6475, value3242, value1) := by
  rw [input6475_def, output6475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6473]
  dsimp only
  rw [child6474]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6473_skip, output6474_skip]
  kernel_rfl

theorem node6476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6476 value3242 value1 value2 = (output6476, value3243, value1) := by
  rw [input6476_def, output6476_def]
  kernel_rfl

theorem node6477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6477 value3243 value1 value2 = (output6477, value3244, value1) := by
  rw [input6477_def, output6477_def]
  kernel_rfl

theorem node6478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6478 value3244 value1 value2 = (output6478, value3245, value1) := by
  rw [input6478_def, output6478_def]
  kernel_rfl

theorem node6479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6479 value3245 value1 value2 = (output6479, value5, value1) := by
  rw [input6479_def, output6479_def]
  kernel_rfl

theorem node6480_cond_eq
    (child6478 : Flapjack.WordAlloc.removeDeadStructural input6478 value3244 value1 value2 = (output6478, value3245, value1))
    (child6479 : Flapjack.WordAlloc.removeDeadStructural input6479 value3245 value1 value2 = (output6479, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6480 value3244 value1 value2 = (output6480, value5, value1) := by
  rw [input6480_def, output6480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6478]
  dsimp only
  rw [child6479]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6478_skip, output6479_skip]
  kernel_rfl

theorem node6481_cond_eq
    (child6477 : Flapjack.WordAlloc.removeDeadStructural input6477 value3243 value1 value2 = (output6477, value3244, value1))
    (child6480 : Flapjack.WordAlloc.removeDeadStructural input6480 value3244 value1 value2 = (output6480, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6481 value3243 value1 value2 = (output6481, value5, value1) := by
  rw [input6481_def, output6481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6477]
  dsimp only
  rw [child6480]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6477_skip, output6480_skip]
  kernel_rfl

theorem node6482_cond_eq
    (child6476 : Flapjack.WordAlloc.removeDeadStructural input6476 value3242 value1 value2 = (output6476, value3243, value1))
    (child6481 : Flapjack.WordAlloc.removeDeadStructural input6481 value3243 value1 value2 = (output6481, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6482 value3242 value1 value2 = (output6482, value5, value1) := by
  rw [input6482_def, output6482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6476]
  dsimp only
  rw [child6481]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6476_skip, output6481_skip]
  kernel_rfl

theorem node6483_cond_eq
    (child6475 : Flapjack.WordAlloc.removeDeadStructural input6475 value3240 value1 value2 = (output6475, value3242, value1))
    (child6482 : Flapjack.WordAlloc.removeDeadStructural input6482 value3242 value1 value2 = (output6482, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6483 value3240 value1 value2 = (output6483, value5, value1) := by
  rw [input6483_def, output6483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6475]
  dsimp only
  rw [child6482]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6475_skip, output6482_skip]
  kernel_rfl

theorem node6484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6484 value5 value1 value2 = (output6484, value3246, value1) := by
  rw [input6484_def, output6484_def]
  kernel_rfl

theorem node6485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6485 value3246 value1 value2 = (output6485, value3247, value1) := by
  rw [input6485_def, output6485_def]
  kernel_rfl

theorem node6486_cond_eq
    (child6484 : Flapjack.WordAlloc.removeDeadStructural input6484 value5 value1 value2 = (output6484, value3246, value1))
    (child6485 : Flapjack.WordAlloc.removeDeadStructural input6485 value3246 value1 value2 = (output6485, value3247, value1)) : Flapjack.WordAlloc.removeDeadStructural input6486 value5 value1 value2 = (output6486, value3247, value1) := by
  rw [input6486_def, output6486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6484]
  dsimp only
  rw [child6485]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6484_skip, output6485_skip]
  kernel_rfl

theorem node6487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6487 value3247 value1 value2 = (output6487, value3248, value1) := by
  rw [input6487_def, output6487_def]
  kernel_rfl

theorem node6488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6488 value3248 value1 value2 = (output6488, value3248, value1) := by
  rw [input6488_def, output6488_def]
  kernel_rfl

theorem node6489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6489 value3248 value1 value2 = (output6489, value3249, value1) := by
  rw [input6489_def, output6489_def]
  kernel_rfl

theorem node6490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6490 value3249 value1 value2 = (output6490, value3250, value1) := by
  rw [input6490_def, output6490_def]
  kernel_rfl

theorem node6491_cond_eq
    (child6489 : Flapjack.WordAlloc.removeDeadStructural input6489 value3248 value1 value2 = (output6489, value3249, value1))
    (child6490 : Flapjack.WordAlloc.removeDeadStructural input6490 value3249 value1 value2 = (output6490, value3250, value1)) : Flapjack.WordAlloc.removeDeadStructural input6491 value3248 value1 value2 = (output6491, value3250, value1) := by
  rw [input6491_def, output6491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6489]
  dsimp only
  rw [child6490]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6489_skip, output6490_skip]
  kernel_rfl

theorem node6492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6492 value3250 value1 value2 = (output6492, value3251, value1) := by
  rw [input6492_def, output6492_def]
  kernel_rfl

theorem node6493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6493 value3251 value1 value2 = (output6493, value3252, value1) := by
  rw [input6493_def, output6493_def]
  kernel_rfl

theorem node6494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6494 value3252 value1 value2 = (output6494, value3253, value1) := by
  rw [input6494_def, output6494_def]
  kernel_rfl

theorem node6495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6495 value3253 value1 value2 = (output6495, value5, value1) := by
  rw [input6495_def, output6495_def]
  kernel_rfl

theorem node6496_cond_eq
    (child6494 : Flapjack.WordAlloc.removeDeadStructural input6494 value3252 value1 value2 = (output6494, value3253, value1))
    (child6495 : Flapjack.WordAlloc.removeDeadStructural input6495 value3253 value1 value2 = (output6495, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6496 value3252 value1 value2 = (output6496, value5, value1) := by
  rw [input6496_def, output6496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6494]
  dsimp only
  rw [child6495]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6494_skip, output6495_skip]
  kernel_rfl

theorem node6497_cond_eq
    (child6493 : Flapjack.WordAlloc.removeDeadStructural input6493 value3251 value1 value2 = (output6493, value3252, value1))
    (child6496 : Flapjack.WordAlloc.removeDeadStructural input6496 value3252 value1 value2 = (output6496, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6497 value3251 value1 value2 = (output6497, value5, value1) := by
  rw [input6497_def, output6497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6493]
  dsimp only
  rw [child6496]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6493_skip, output6496_skip]
  kernel_rfl

theorem node6498_cond_eq
    (child6492 : Flapjack.WordAlloc.removeDeadStructural input6492 value3250 value1 value2 = (output6492, value3251, value1))
    (child6497 : Flapjack.WordAlloc.removeDeadStructural input6497 value3251 value1 value2 = (output6497, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6498 value3250 value1 value2 = (output6498, value5, value1) := by
  rw [input6498_def, output6498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6492]
  dsimp only
  rw [child6497]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6492_skip, output6497_skip]
  kernel_rfl

theorem node6499_cond_eq
    (child6491 : Flapjack.WordAlloc.removeDeadStructural input6491 value3248 value1 value2 = (output6491, value3250, value1))
    (child6498 : Flapjack.WordAlloc.removeDeadStructural input6498 value3250 value1 value2 = (output6498, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6499 value3248 value1 value2 = (output6499, value5, value1) := by
  rw [input6499_def, output6499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6491]
  dsimp only
  rw [child6498]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6491_skip, output6498_skip]
  kernel_rfl

theorem node6500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6500 value5 value1 value2 = (output6500, value3254, value1) := by
  rw [input6500_def, output6500_def]
  kernel_rfl

theorem node6501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6501 value3254 value1 value2 = (output6501, value3255, value1) := by
  rw [input6501_def, output6501_def]
  kernel_rfl

theorem node6502_cond_eq
    (child6500 : Flapjack.WordAlloc.removeDeadStructural input6500 value5 value1 value2 = (output6500, value3254, value1))
    (child6501 : Flapjack.WordAlloc.removeDeadStructural input6501 value3254 value1 value2 = (output6501, value3255, value1)) : Flapjack.WordAlloc.removeDeadStructural input6502 value5 value1 value2 = (output6502, value3255, value1) := by
  rw [input6502_def, output6502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6500]
  dsimp only
  rw [child6501]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6500_skip, output6501_skip]
  kernel_rfl

theorem node6503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6503 value3255 value1 value2 = (output6503, value3256, value1) := by
  rw [input6503_def, output6503_def]
  kernel_rfl

theorem node6504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6504 value3256 value1 value2 = (output6504, value3256, value1) := by
  rw [input6504_def, output6504_def]
  kernel_rfl

theorem node6505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6505 value3256 value1 value2 = (output6505, value3257, value1) := by
  rw [input6505_def, output6505_def]
  kernel_rfl

theorem node6506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6506 value3257 value1 value2 = (output6506, value3258, value1) := by
  rw [input6506_def, output6506_def]
  kernel_rfl

theorem node6507_cond_eq
    (child6505 : Flapjack.WordAlloc.removeDeadStructural input6505 value3256 value1 value2 = (output6505, value3257, value1))
    (child6506 : Flapjack.WordAlloc.removeDeadStructural input6506 value3257 value1 value2 = (output6506, value3258, value1)) : Flapjack.WordAlloc.removeDeadStructural input6507 value3256 value1 value2 = (output6507, value3258, value1) := by
  rw [input6507_def, output6507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6505]
  dsimp only
  rw [child6506]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6505_skip, output6506_skip]
  kernel_rfl

theorem node6508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6508 value3258 value1 value2 = (output6508, value3259, value1) := by
  rw [input6508_def, output6508_def]
  kernel_rfl

theorem node6509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6509 value3259 value1 value2 = (output6509, value3260, value1) := by
  rw [input6509_def, output6509_def]
  kernel_rfl

theorem node6510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6510 value3260 value1 value2 = (output6510, value3261, value1) := by
  rw [input6510_def, output6510_def]
  kernel_rfl

theorem node6511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6511 value3261 value1 value2 = (output6511, value5, value1) := by
  rw [input6511_def, output6511_def]
  kernel_rfl

theorem node6512_cond_eq
    (child6510 : Flapjack.WordAlloc.removeDeadStructural input6510 value3260 value1 value2 = (output6510, value3261, value1))
    (child6511 : Flapjack.WordAlloc.removeDeadStructural input6511 value3261 value1 value2 = (output6511, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6512 value3260 value1 value2 = (output6512, value5, value1) := by
  rw [input6512_def, output6512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6510]
  dsimp only
  rw [child6511]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6510_skip, output6511_skip]
  kernel_rfl

theorem node6513_cond_eq
    (child6509 : Flapjack.WordAlloc.removeDeadStructural input6509 value3259 value1 value2 = (output6509, value3260, value1))
    (child6512 : Flapjack.WordAlloc.removeDeadStructural input6512 value3260 value1 value2 = (output6512, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6513 value3259 value1 value2 = (output6513, value5, value1) := by
  rw [input6513_def, output6513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6509]
  dsimp only
  rw [child6512]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6509_skip, output6512_skip]
  kernel_rfl

theorem node6514_cond_eq
    (child6508 : Flapjack.WordAlloc.removeDeadStructural input6508 value3258 value1 value2 = (output6508, value3259, value1))
    (child6513 : Flapjack.WordAlloc.removeDeadStructural input6513 value3259 value1 value2 = (output6513, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6514 value3258 value1 value2 = (output6514, value5, value1) := by
  rw [input6514_def, output6514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6508]
  dsimp only
  rw [child6513]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6508_skip, output6513_skip]
  kernel_rfl

theorem node6515_cond_eq
    (child6507 : Flapjack.WordAlloc.removeDeadStructural input6507 value3256 value1 value2 = (output6507, value3258, value1))
    (child6514 : Flapjack.WordAlloc.removeDeadStructural input6514 value3258 value1 value2 = (output6514, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6515 value3256 value1 value2 = (output6515, value5, value1) := by
  rw [input6515_def, output6515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6507]
  dsimp only
  rw [child6514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6507_skip, output6514_skip]
  kernel_rfl

theorem node6516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6516 value5 value1 value2 = (output6516, value3262, value1) := by
  rw [input6516_def, output6516_def]
  kernel_rfl

theorem node6517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6517 value3262 value1 value2 = (output6517, value3263, value1) := by
  rw [input6517_def, output6517_def]
  kernel_rfl

theorem node6518_cond_eq
    (child6516 : Flapjack.WordAlloc.removeDeadStructural input6516 value5 value1 value2 = (output6516, value3262, value1))
    (child6517 : Flapjack.WordAlloc.removeDeadStructural input6517 value3262 value1 value2 = (output6517, value3263, value1)) : Flapjack.WordAlloc.removeDeadStructural input6518 value5 value1 value2 = (output6518, value3263, value1) := by
  rw [input6518_def, output6518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6516]
  dsimp only
  rw [child6517]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6516_skip, output6517_skip]
  kernel_rfl

theorem node6519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6519 value3263 value1 value2 = (output6519, value3264, value1) := by
  rw [input6519_def, output6519_def]
  kernel_rfl

theorem node6520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6520 value3264 value1 value2 = (output6520, value3264, value1) := by
  rw [input6520_def, output6520_def]
  kernel_rfl

theorem node6521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6521 value3264 value1 value2 = (output6521, value3265, value1) := by
  rw [input6521_def, output6521_def]
  kernel_rfl

theorem node6522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6522 value3265 value1 value2 = (output6522, value3266, value1) := by
  rw [input6522_def, output6522_def]
  kernel_rfl

theorem node6523_cond_eq
    (child6521 : Flapjack.WordAlloc.removeDeadStructural input6521 value3264 value1 value2 = (output6521, value3265, value1))
    (child6522 : Flapjack.WordAlloc.removeDeadStructural input6522 value3265 value1 value2 = (output6522, value3266, value1)) : Flapjack.WordAlloc.removeDeadStructural input6523 value3264 value1 value2 = (output6523, value3266, value1) := by
  rw [input6523_def, output6523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6521]
  dsimp only
  rw [child6522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6521_skip, output6522_skip]
  kernel_rfl

theorem node6524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6524 value3266 value1 value2 = (output6524, value3267, value1) := by
  rw [input6524_def, output6524_def]
  kernel_rfl

theorem node6525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6525 value3267 value1 value2 = (output6525, value3268, value1) := by
  rw [input6525_def, output6525_def]
  kernel_rfl

theorem node6526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6526 value3268 value1 value2 = (output6526, value3269, value1) := by
  rw [input6526_def, output6526_def]
  kernel_rfl

theorem node6527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6527 value3269 value1 value2 = (output6527, value5, value1) := by
  rw [input6527_def, output6527_def]
  kernel_rfl

theorem node6528_cond_eq
    (child6526 : Flapjack.WordAlloc.removeDeadStructural input6526 value3268 value1 value2 = (output6526, value3269, value1))
    (child6527 : Flapjack.WordAlloc.removeDeadStructural input6527 value3269 value1 value2 = (output6527, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6528 value3268 value1 value2 = (output6528, value5, value1) := by
  rw [input6528_def, output6528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6526]
  dsimp only
  rw [child6527]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6526_skip, output6527_skip]
  kernel_rfl

theorem node6529_cond_eq
    (child6525 : Flapjack.WordAlloc.removeDeadStructural input6525 value3267 value1 value2 = (output6525, value3268, value1))
    (child6528 : Flapjack.WordAlloc.removeDeadStructural input6528 value3268 value1 value2 = (output6528, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6529 value3267 value1 value2 = (output6529, value5, value1) := by
  rw [input6529_def, output6529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6525]
  dsimp only
  rw [child6528]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6525_skip, output6528_skip]
  kernel_rfl

theorem node6530_cond_eq
    (child6524 : Flapjack.WordAlloc.removeDeadStructural input6524 value3266 value1 value2 = (output6524, value3267, value1))
    (child6529 : Flapjack.WordAlloc.removeDeadStructural input6529 value3267 value1 value2 = (output6529, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6530 value3266 value1 value2 = (output6530, value5, value1) := by
  rw [input6530_def, output6530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6524]
  dsimp only
  rw [child6529]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6524_skip, output6529_skip]
  kernel_rfl

theorem node6531_cond_eq
    (child6523 : Flapjack.WordAlloc.removeDeadStructural input6523 value3264 value1 value2 = (output6523, value3266, value1))
    (child6530 : Flapjack.WordAlloc.removeDeadStructural input6530 value3266 value1 value2 = (output6530, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6531 value3264 value1 value2 = (output6531, value5, value1) := by
  rw [input6531_def, output6531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6523]
  dsimp only
  rw [child6530]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6523_skip, output6530_skip]
  kernel_rfl

theorem node6532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6532 value5 value1 value2 = (output6532, value3270, value1) := by
  rw [input6532_def, output6532_def]
  kernel_rfl

theorem node6533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6533 value3270 value1 value2 = (output6533, value3271, value1) := by
  rw [input6533_def, output6533_def]
  kernel_rfl

theorem node6534_cond_eq
    (child6532 : Flapjack.WordAlloc.removeDeadStructural input6532 value5 value1 value2 = (output6532, value3270, value1))
    (child6533 : Flapjack.WordAlloc.removeDeadStructural input6533 value3270 value1 value2 = (output6533, value3271, value1)) : Flapjack.WordAlloc.removeDeadStructural input6534 value5 value1 value2 = (output6534, value3271, value1) := by
  rw [input6534_def, output6534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6532]
  dsimp only
  rw [child6533]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6532_skip, output6533_skip]
  kernel_rfl

theorem node6535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6535 value3271 value1 value2 = (output6535, value3272, value1) := by
  rw [input6535_def, output6535_def]
  kernel_rfl

theorem node6536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6536 value3272 value1 value2 = (output6536, value3272, value1) := by
  rw [input6536_def, output6536_def]
  kernel_rfl

theorem node6537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6537 value3272 value1 value2 = (output6537, value3273, value1) := by
  rw [input6537_def, output6537_def]
  kernel_rfl

theorem node6538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6538 value3273 value1 value2 = (output6538, value3274, value1) := by
  rw [input6538_def, output6538_def]
  kernel_rfl

theorem node6539_cond_eq
    (child6537 : Flapjack.WordAlloc.removeDeadStructural input6537 value3272 value1 value2 = (output6537, value3273, value1))
    (child6538 : Flapjack.WordAlloc.removeDeadStructural input6538 value3273 value1 value2 = (output6538, value3274, value1)) : Flapjack.WordAlloc.removeDeadStructural input6539 value3272 value1 value2 = (output6539, value3274, value1) := by
  rw [input6539_def, output6539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6537]
  dsimp only
  rw [child6538]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6537_skip, output6538_skip]
  kernel_rfl

theorem node6540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6540 value3274 value1 value2 = (output6540, value3275, value1) := by
  rw [input6540_def, output6540_def]
  kernel_rfl

theorem node6541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6541 value3275 value1 value2 = (output6541, value3276, value1) := by
  rw [input6541_def, output6541_def]
  kernel_rfl

theorem node6542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6542 value3276 value1 value2 = (output6542, value3277, value1) := by
  rw [input6542_def, output6542_def]
  kernel_rfl

theorem node6543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6543 value3277 value1 value2 = (output6543, value5, value1) := by
  rw [input6543_def, output6543_def]
  kernel_rfl

theorem node6544_cond_eq
    (child6542 : Flapjack.WordAlloc.removeDeadStructural input6542 value3276 value1 value2 = (output6542, value3277, value1))
    (child6543 : Flapjack.WordAlloc.removeDeadStructural input6543 value3277 value1 value2 = (output6543, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6544 value3276 value1 value2 = (output6544, value5, value1) := by
  rw [input6544_def, output6544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6542]
  dsimp only
  rw [child6543]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6542_skip, output6543_skip]
  kernel_rfl

theorem node6545_cond_eq
    (child6541 : Flapjack.WordAlloc.removeDeadStructural input6541 value3275 value1 value2 = (output6541, value3276, value1))
    (child6544 : Flapjack.WordAlloc.removeDeadStructural input6544 value3276 value1 value2 = (output6544, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6545 value3275 value1 value2 = (output6545, value5, value1) := by
  rw [input6545_def, output6545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6541]
  dsimp only
  rw [child6544]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6541_skip, output6544_skip]
  kernel_rfl

theorem node6546_cond_eq
    (child6540 : Flapjack.WordAlloc.removeDeadStructural input6540 value3274 value1 value2 = (output6540, value3275, value1))
    (child6545 : Flapjack.WordAlloc.removeDeadStructural input6545 value3275 value1 value2 = (output6545, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6546 value3274 value1 value2 = (output6546, value5, value1) := by
  rw [input6546_def, output6546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6540]
  dsimp only
  rw [child6545]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6540_skip, output6545_skip]
  kernel_rfl

theorem node6547_cond_eq
    (child6539 : Flapjack.WordAlloc.removeDeadStructural input6539 value3272 value1 value2 = (output6539, value3274, value1))
    (child6546 : Flapjack.WordAlloc.removeDeadStructural input6546 value3274 value1 value2 = (output6546, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6547 value3272 value1 value2 = (output6547, value5, value1) := by
  rw [input6547_def, output6547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6539]
  dsimp only
  rw [child6546]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6539_skip, output6546_skip]
  kernel_rfl

theorem node6548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6548 value5 value1 value2 = (output6548, value3278, value1) := by
  rw [input6548_def, output6548_def]
  kernel_rfl

theorem node6549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6549 value3278 value1 value2 = (output6549, value3279, value1) := by
  rw [input6549_def, output6549_def]
  kernel_rfl

theorem node6550_cond_eq
    (child6548 : Flapjack.WordAlloc.removeDeadStructural input6548 value5 value1 value2 = (output6548, value3278, value1))
    (child6549 : Flapjack.WordAlloc.removeDeadStructural input6549 value3278 value1 value2 = (output6549, value3279, value1)) : Flapjack.WordAlloc.removeDeadStructural input6550 value5 value1 value2 = (output6550, value3279, value1) := by
  rw [input6550_def, output6550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6548]
  dsimp only
  rw [child6549]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6548_skip, output6549_skip]
  kernel_rfl

theorem node6551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6551 value3279 value1 value2 = (output6551, value3280, value1) := by
  rw [input6551_def, output6551_def]
  kernel_rfl

theorem node6552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6552 value3280 value1 value2 = (output6552, value3280, value1) := by
  rw [input6552_def, output6552_def]
  kernel_rfl

theorem node6553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6553 value3280 value1 value2 = (output6553, value3281, value1) := by
  rw [input6553_def, output6553_def]
  kernel_rfl

theorem node6554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6554 value3281 value1 value2 = (output6554, value3282, value1) := by
  rw [input6554_def, output6554_def]
  kernel_rfl

theorem node6555_cond_eq
    (child6553 : Flapjack.WordAlloc.removeDeadStructural input6553 value3280 value1 value2 = (output6553, value3281, value1))
    (child6554 : Flapjack.WordAlloc.removeDeadStructural input6554 value3281 value1 value2 = (output6554, value3282, value1)) : Flapjack.WordAlloc.removeDeadStructural input6555 value3280 value1 value2 = (output6555, value3282, value1) := by
  rw [input6555_def, output6555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6553]
  dsimp only
  rw [child6554]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6553_skip, output6554_skip]
  kernel_rfl

theorem node6556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6556 value3282 value1 value2 = (output6556, value3283, value1) := by
  rw [input6556_def, output6556_def]
  kernel_rfl

theorem node6557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6557 value3283 value1 value2 = (output6557, value3284, value1) := by
  rw [input6557_def, output6557_def]
  kernel_rfl

theorem node6558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6558 value3284 value1 value2 = (output6558, value3285, value1) := by
  rw [input6558_def, output6558_def]
  kernel_rfl

theorem node6559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6559 value3285 value1 value2 = (output6559, value5, value1) := by
  rw [input6559_def, output6559_def]
  kernel_rfl

theorem node6560_cond_eq
    (child6558 : Flapjack.WordAlloc.removeDeadStructural input6558 value3284 value1 value2 = (output6558, value3285, value1))
    (child6559 : Flapjack.WordAlloc.removeDeadStructural input6559 value3285 value1 value2 = (output6559, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6560 value3284 value1 value2 = (output6560, value5, value1) := by
  rw [input6560_def, output6560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6558]
  dsimp only
  rw [child6559]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6558_skip, output6559_skip]
  kernel_rfl

theorem node6561_cond_eq
    (child6557 : Flapjack.WordAlloc.removeDeadStructural input6557 value3283 value1 value2 = (output6557, value3284, value1))
    (child6560 : Flapjack.WordAlloc.removeDeadStructural input6560 value3284 value1 value2 = (output6560, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6561 value3283 value1 value2 = (output6561, value5, value1) := by
  rw [input6561_def, output6561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6557]
  dsimp only
  rw [child6560]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6557_skip, output6560_skip]
  kernel_rfl

theorem node6562_cond_eq
    (child6556 : Flapjack.WordAlloc.removeDeadStructural input6556 value3282 value1 value2 = (output6556, value3283, value1))
    (child6561 : Flapjack.WordAlloc.removeDeadStructural input6561 value3283 value1 value2 = (output6561, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6562 value3282 value1 value2 = (output6562, value5, value1) := by
  rw [input6562_def, output6562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6556]
  dsimp only
  rw [child6561]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6556_skip, output6561_skip]
  kernel_rfl

theorem node6563_cond_eq
    (child6555 : Flapjack.WordAlloc.removeDeadStructural input6555 value3280 value1 value2 = (output6555, value3282, value1))
    (child6562 : Flapjack.WordAlloc.removeDeadStructural input6562 value3282 value1 value2 = (output6562, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6563 value3280 value1 value2 = (output6563, value5, value1) := by
  rw [input6563_def, output6563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6555]
  dsimp only
  rw [child6562]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6555_skip, output6562_skip]
  kernel_rfl

theorem node6564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6564 value5 value1 value2 = (output6564, value3286, value1) := by
  rw [input6564_def, output6564_def]
  kernel_rfl

theorem node6565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6565 value3286 value1 value2 = (output6565, value3287, value1) := by
  rw [input6565_def, output6565_def]
  kernel_rfl

theorem node6566_cond_eq
    (child6564 : Flapjack.WordAlloc.removeDeadStructural input6564 value5 value1 value2 = (output6564, value3286, value1))
    (child6565 : Flapjack.WordAlloc.removeDeadStructural input6565 value3286 value1 value2 = (output6565, value3287, value1)) : Flapjack.WordAlloc.removeDeadStructural input6566 value5 value1 value2 = (output6566, value3287, value1) := by
  rw [input6566_def, output6566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6564]
  dsimp only
  rw [child6565]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6564_skip, output6565_skip]
  kernel_rfl

theorem node6567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6567 value3287 value1 value2 = (output6567, value3288, value1) := by
  rw [input6567_def, output6567_def]
  kernel_rfl

theorem node6568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6568 value3288 value1 value2 = (output6568, value3288, value1) := by
  rw [input6568_def, output6568_def]
  kernel_rfl

theorem node6569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6569 value3288 value1 value2 = (output6569, value3289, value1) := by
  rw [input6569_def, output6569_def]
  kernel_rfl

theorem node6570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6570 value3289 value1 value2 = (output6570, value3290, value1) := by
  rw [input6570_def, output6570_def]
  kernel_rfl

theorem node6571_cond_eq
    (child6569 : Flapjack.WordAlloc.removeDeadStructural input6569 value3288 value1 value2 = (output6569, value3289, value1))
    (child6570 : Flapjack.WordAlloc.removeDeadStructural input6570 value3289 value1 value2 = (output6570, value3290, value1)) : Flapjack.WordAlloc.removeDeadStructural input6571 value3288 value1 value2 = (output6571, value3290, value1) := by
  rw [input6571_def, output6571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6569]
  dsimp only
  rw [child6570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6569_skip, output6570_skip]
  kernel_rfl

theorem node6572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6572 value3290 value1 value2 = (output6572, value3291, value1) := by
  rw [input6572_def, output6572_def]
  kernel_rfl

theorem node6573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6573 value3291 value1 value2 = (output6573, value3292, value1) := by
  rw [input6573_def, output6573_def]
  kernel_rfl

theorem node6574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6574 value3292 value1 value2 = (output6574, value3293, value1) := by
  rw [input6574_def, output6574_def]
  kernel_rfl

theorem node6575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6575 value3293 value1 value2 = (output6575, value5, value1) := by
  rw [input6575_def, output6575_def]
  kernel_rfl

theorem node6576_cond_eq
    (child6574 : Flapjack.WordAlloc.removeDeadStructural input6574 value3292 value1 value2 = (output6574, value3293, value1))
    (child6575 : Flapjack.WordAlloc.removeDeadStructural input6575 value3293 value1 value2 = (output6575, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6576 value3292 value1 value2 = (output6576, value5, value1) := by
  rw [input6576_def, output6576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6574]
  dsimp only
  rw [child6575]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6574_skip, output6575_skip]
  kernel_rfl

theorem node6577_cond_eq
    (child6573 : Flapjack.WordAlloc.removeDeadStructural input6573 value3291 value1 value2 = (output6573, value3292, value1))
    (child6576 : Flapjack.WordAlloc.removeDeadStructural input6576 value3292 value1 value2 = (output6576, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6577 value3291 value1 value2 = (output6577, value5, value1) := by
  rw [input6577_def, output6577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6573]
  dsimp only
  rw [child6576]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6573_skip, output6576_skip]
  kernel_rfl

theorem node6578_cond_eq
    (child6572 : Flapjack.WordAlloc.removeDeadStructural input6572 value3290 value1 value2 = (output6572, value3291, value1))
    (child6577 : Flapjack.WordAlloc.removeDeadStructural input6577 value3291 value1 value2 = (output6577, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6578 value3290 value1 value2 = (output6578, value5, value1) := by
  rw [input6578_def, output6578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6572]
  dsimp only
  rw [child6577]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6572_skip, output6577_skip]
  kernel_rfl

theorem node6579_cond_eq
    (child6571 : Flapjack.WordAlloc.removeDeadStructural input6571 value3288 value1 value2 = (output6571, value3290, value1))
    (child6578 : Flapjack.WordAlloc.removeDeadStructural input6578 value3290 value1 value2 = (output6578, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6579 value3288 value1 value2 = (output6579, value5, value1) := by
  rw [input6579_def, output6579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6571]
  dsimp only
  rw [child6578]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6571_skip, output6578_skip]
  kernel_rfl

theorem node6580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6580 value5 value1 value2 = (output6580, value3294, value1) := by
  rw [input6580_def, output6580_def]
  kernel_rfl

theorem node6581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6581 value3294 value1 value2 = (output6581, value3295, value1) := by
  rw [input6581_def, output6581_def]
  kernel_rfl

theorem node6582_cond_eq
    (child6580 : Flapjack.WordAlloc.removeDeadStructural input6580 value5 value1 value2 = (output6580, value3294, value1))
    (child6581 : Flapjack.WordAlloc.removeDeadStructural input6581 value3294 value1 value2 = (output6581, value3295, value1)) : Flapjack.WordAlloc.removeDeadStructural input6582 value5 value1 value2 = (output6582, value3295, value1) := by
  rw [input6582_def, output6582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6580]
  dsimp only
  rw [child6581]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6580_skip, output6581_skip]
  kernel_rfl

theorem node6583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6583 value3295 value1 value2 = (output6583, value3296, value1) := by
  rw [input6583_def, output6583_def]
  kernel_rfl

theorem node6584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6584 value3296 value1 value2 = (output6584, value3296, value1) := by
  rw [input6584_def, output6584_def]
  kernel_rfl

theorem node6585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6585 value3296 value1 value2 = (output6585, value3297, value1) := by
  rw [input6585_def, output6585_def]
  kernel_rfl

theorem node6586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6586 value3297 value1 value2 = (output6586, value3298, value1) := by
  rw [input6586_def, output6586_def]
  kernel_rfl

theorem node6587_cond_eq
    (child6585 : Flapjack.WordAlloc.removeDeadStructural input6585 value3296 value1 value2 = (output6585, value3297, value1))
    (child6586 : Flapjack.WordAlloc.removeDeadStructural input6586 value3297 value1 value2 = (output6586, value3298, value1)) : Flapjack.WordAlloc.removeDeadStructural input6587 value3296 value1 value2 = (output6587, value3298, value1) := by
  rw [input6587_def, output6587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6585]
  dsimp only
  rw [child6586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6585_skip, output6586_skip]
  kernel_rfl

theorem node6588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6588 value3298 value1 value2 = (output6588, value3299, value1) := by
  rw [input6588_def, output6588_def]
  kernel_rfl

theorem node6589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6589 value3299 value1 value2 = (output6589, value3300, value1) := by
  rw [input6589_def, output6589_def]
  kernel_rfl

theorem node6590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6590 value3300 value1 value2 = (output6590, value3301, value1) := by
  rw [input6590_def, output6590_def]
  kernel_rfl

theorem node6591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6591 value3301 value1 value2 = (output6591, value5, value1) := by
  rw [input6591_def, output6591_def]
  kernel_rfl

theorem node6592_cond_eq
    (child6590 : Flapjack.WordAlloc.removeDeadStructural input6590 value3300 value1 value2 = (output6590, value3301, value1))
    (child6591 : Flapjack.WordAlloc.removeDeadStructural input6591 value3301 value1 value2 = (output6591, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6592 value3300 value1 value2 = (output6592, value5, value1) := by
  rw [input6592_def, output6592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6590]
  dsimp only
  rw [child6591]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6590_skip, output6591_skip]
  kernel_rfl

theorem node6593_cond_eq
    (child6589 : Flapjack.WordAlloc.removeDeadStructural input6589 value3299 value1 value2 = (output6589, value3300, value1))
    (child6592 : Flapjack.WordAlloc.removeDeadStructural input6592 value3300 value1 value2 = (output6592, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6593 value3299 value1 value2 = (output6593, value5, value1) := by
  rw [input6593_def, output6593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6589]
  dsimp only
  rw [child6592]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6589_skip, output6592_skip]
  kernel_rfl

theorem node6594_cond_eq
    (child6588 : Flapjack.WordAlloc.removeDeadStructural input6588 value3298 value1 value2 = (output6588, value3299, value1))
    (child6593 : Flapjack.WordAlloc.removeDeadStructural input6593 value3299 value1 value2 = (output6593, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6594 value3298 value1 value2 = (output6594, value5, value1) := by
  rw [input6594_def, output6594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6588]
  dsimp only
  rw [child6593]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6588_skip, output6593_skip]
  kernel_rfl

theorem node6595_cond_eq
    (child6587 : Flapjack.WordAlloc.removeDeadStructural input6587 value3296 value1 value2 = (output6587, value3298, value1))
    (child6594 : Flapjack.WordAlloc.removeDeadStructural input6594 value3298 value1 value2 = (output6594, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6595 value3296 value1 value2 = (output6595, value5, value1) := by
  rw [input6595_def, output6595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6587]
  dsimp only
  rw [child6594]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6587_skip, output6594_skip]
  kernel_rfl

theorem node6596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6596 value5 value1 value2 = (output6596, value3302, value1) := by
  rw [input6596_def, output6596_def]
  kernel_rfl

theorem node6597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6597 value3302 value1 value2 = (output6597, value3303, value1) := by
  rw [input6597_def, output6597_def]
  kernel_rfl

theorem node6598_cond_eq
    (child6596 : Flapjack.WordAlloc.removeDeadStructural input6596 value5 value1 value2 = (output6596, value3302, value1))
    (child6597 : Flapjack.WordAlloc.removeDeadStructural input6597 value3302 value1 value2 = (output6597, value3303, value1)) : Flapjack.WordAlloc.removeDeadStructural input6598 value5 value1 value2 = (output6598, value3303, value1) := by
  rw [input6598_def, output6598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6596]
  dsimp only
  rw [child6597]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6596_skip, output6597_skip]
  kernel_rfl

theorem node6599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6599 value3303 value1 value2 = (output6599, value3304, value1) := by
  rw [input6599_def, output6599_def]
  kernel_rfl

theorem node6600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6600 value3304 value1 value2 = (output6600, value3304, value1) := by
  rw [input6600_def, output6600_def]
  kernel_rfl

theorem node6601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6601 value3304 value1 value2 = (output6601, value3305, value1) := by
  rw [input6601_def, output6601_def]
  kernel_rfl

theorem node6602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6602 value3305 value1 value2 = (output6602, value3306, value1) := by
  rw [input6602_def, output6602_def]
  kernel_rfl

theorem node6603_cond_eq
    (child6601 : Flapjack.WordAlloc.removeDeadStructural input6601 value3304 value1 value2 = (output6601, value3305, value1))
    (child6602 : Flapjack.WordAlloc.removeDeadStructural input6602 value3305 value1 value2 = (output6602, value3306, value1)) : Flapjack.WordAlloc.removeDeadStructural input6603 value3304 value1 value2 = (output6603, value3306, value1) := by
  rw [input6603_def, output6603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6601]
  dsimp only
  rw [child6602]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6601_skip, output6602_skip]
  kernel_rfl

theorem node6604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6604 value3306 value1 value2 = (output6604, value3307, value1) := by
  rw [input6604_def, output6604_def]
  kernel_rfl

theorem node6605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6605 value3307 value1 value2 = (output6605, value3308, value1) := by
  rw [input6605_def, output6605_def]
  kernel_rfl

theorem node6606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6606 value3308 value1 value2 = (output6606, value3309, value1) := by
  rw [input6606_def, output6606_def]
  kernel_rfl

theorem node6607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6607 value3309 value1 value2 = (output6607, value5, value1) := by
  rw [input6607_def, output6607_def]
  kernel_rfl

theorem node6608_cond_eq
    (child6606 : Flapjack.WordAlloc.removeDeadStructural input6606 value3308 value1 value2 = (output6606, value3309, value1))
    (child6607 : Flapjack.WordAlloc.removeDeadStructural input6607 value3309 value1 value2 = (output6607, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6608 value3308 value1 value2 = (output6608, value5, value1) := by
  rw [input6608_def, output6608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6606]
  dsimp only
  rw [child6607]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6606_skip, output6607_skip]
  kernel_rfl

theorem node6609_cond_eq
    (child6605 : Flapjack.WordAlloc.removeDeadStructural input6605 value3307 value1 value2 = (output6605, value3308, value1))
    (child6608 : Flapjack.WordAlloc.removeDeadStructural input6608 value3308 value1 value2 = (output6608, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6609 value3307 value1 value2 = (output6609, value5, value1) := by
  rw [input6609_def, output6609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6605]
  dsimp only
  rw [child6608]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6605_skip, output6608_skip]
  kernel_rfl

theorem node6610_cond_eq
    (child6604 : Flapjack.WordAlloc.removeDeadStructural input6604 value3306 value1 value2 = (output6604, value3307, value1))
    (child6609 : Flapjack.WordAlloc.removeDeadStructural input6609 value3307 value1 value2 = (output6609, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6610 value3306 value1 value2 = (output6610, value5, value1) := by
  rw [input6610_def, output6610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6604]
  dsimp only
  rw [child6609]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6604_skip, output6609_skip]
  kernel_rfl

theorem node6611_cond_eq
    (child6603 : Flapjack.WordAlloc.removeDeadStructural input6603 value3304 value1 value2 = (output6603, value3306, value1))
    (child6610 : Flapjack.WordAlloc.removeDeadStructural input6610 value3306 value1 value2 = (output6610, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6611 value3304 value1 value2 = (output6611, value5, value1) := by
  rw [input6611_def, output6611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6603]
  dsimp only
  rw [child6610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6603_skip, output6610_skip]
  kernel_rfl

theorem node6612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6612 value5 value1 value2 = (output6612, value3310, value1) := by
  rw [input6612_def, output6612_def]
  kernel_rfl

theorem node6613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6613 value3310 value1 value2 = (output6613, value3311, value1) := by
  rw [input6613_def, output6613_def]
  kernel_rfl

theorem node6614_cond_eq
    (child6612 : Flapjack.WordAlloc.removeDeadStructural input6612 value5 value1 value2 = (output6612, value3310, value1))
    (child6613 : Flapjack.WordAlloc.removeDeadStructural input6613 value3310 value1 value2 = (output6613, value3311, value1)) : Flapjack.WordAlloc.removeDeadStructural input6614 value5 value1 value2 = (output6614, value3311, value1) := by
  rw [input6614_def, output6614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6612]
  dsimp only
  rw [child6613]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6612_skip, output6613_skip]
  kernel_rfl

theorem node6615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6615 value3311 value1 value2 = (output6615, value3312, value1) := by
  rw [input6615_def, output6615_def]
  kernel_rfl

theorem node6616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6616 value3312 value1 value2 = (output6616, value3312, value1) := by
  rw [input6616_def, output6616_def]
  kernel_rfl

theorem node6617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6617 value3312 value1 value2 = (output6617, value3313, value1) := by
  rw [input6617_def, output6617_def]
  kernel_rfl

theorem node6618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6618 value3313 value1 value2 = (output6618, value3314, value1) := by
  rw [input6618_def, output6618_def]
  kernel_rfl

theorem node6619_cond_eq
    (child6617 : Flapjack.WordAlloc.removeDeadStructural input6617 value3312 value1 value2 = (output6617, value3313, value1))
    (child6618 : Flapjack.WordAlloc.removeDeadStructural input6618 value3313 value1 value2 = (output6618, value3314, value1)) : Flapjack.WordAlloc.removeDeadStructural input6619 value3312 value1 value2 = (output6619, value3314, value1) := by
  rw [input6619_def, output6619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6617]
  dsimp only
  rw [child6618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6617_skip, output6618_skip]
  kernel_rfl

theorem node6620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6620 value3314 value1 value2 = (output6620, value3315, value1) := by
  rw [input6620_def, output6620_def]
  kernel_rfl

theorem node6621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6621 value3315 value1 value2 = (output6621, value3316, value1) := by
  rw [input6621_def, output6621_def]
  kernel_rfl

theorem node6622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6622 value3316 value1 value2 = (output6622, value3317, value1) := by
  rw [input6622_def, output6622_def]
  kernel_rfl

theorem node6623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6623 value3317 value1 value2 = (output6623, value5, value1) := by
  rw [input6623_def, output6623_def]
  kernel_rfl

theorem node6624_cond_eq
    (child6622 : Flapjack.WordAlloc.removeDeadStructural input6622 value3316 value1 value2 = (output6622, value3317, value1))
    (child6623 : Flapjack.WordAlloc.removeDeadStructural input6623 value3317 value1 value2 = (output6623, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6624 value3316 value1 value2 = (output6624, value5, value1) := by
  rw [input6624_def, output6624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6622]
  dsimp only
  rw [child6623]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6622_skip, output6623_skip]
  kernel_rfl

theorem node6625_cond_eq
    (child6621 : Flapjack.WordAlloc.removeDeadStructural input6621 value3315 value1 value2 = (output6621, value3316, value1))
    (child6624 : Flapjack.WordAlloc.removeDeadStructural input6624 value3316 value1 value2 = (output6624, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6625 value3315 value1 value2 = (output6625, value5, value1) := by
  rw [input6625_def, output6625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6621]
  dsimp only
  rw [child6624]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6621_skip, output6624_skip]
  kernel_rfl

theorem node6626_cond_eq
    (child6620 : Flapjack.WordAlloc.removeDeadStructural input6620 value3314 value1 value2 = (output6620, value3315, value1))
    (child6625 : Flapjack.WordAlloc.removeDeadStructural input6625 value3315 value1 value2 = (output6625, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6626 value3314 value1 value2 = (output6626, value5, value1) := by
  rw [input6626_def, output6626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6620]
  dsimp only
  rw [child6625]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6620_skip, output6625_skip]
  kernel_rfl

theorem node6627_cond_eq
    (child6619 : Flapjack.WordAlloc.removeDeadStructural input6619 value3312 value1 value2 = (output6619, value3314, value1))
    (child6626 : Flapjack.WordAlloc.removeDeadStructural input6626 value3314 value1 value2 = (output6626, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6627 value3312 value1 value2 = (output6627, value5, value1) := by
  rw [input6627_def, output6627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6619]
  dsimp only
  rw [child6626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6619_skip, output6626_skip]
  kernel_rfl

theorem node6628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6628 value5 value1 value2 = (output6628, value3318, value1) := by
  rw [input6628_def, output6628_def]
  kernel_rfl

theorem node6629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6629 value3318 value1 value2 = (output6629, value3319, value1) := by
  rw [input6629_def, output6629_def]
  kernel_rfl

theorem node6630_cond_eq
    (child6628 : Flapjack.WordAlloc.removeDeadStructural input6628 value5 value1 value2 = (output6628, value3318, value1))
    (child6629 : Flapjack.WordAlloc.removeDeadStructural input6629 value3318 value1 value2 = (output6629, value3319, value1)) : Flapjack.WordAlloc.removeDeadStructural input6630 value5 value1 value2 = (output6630, value3319, value1) := by
  rw [input6630_def, output6630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6628]
  dsimp only
  rw [child6629]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6628_skip, output6629_skip]
  kernel_rfl

theorem node6631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6631 value3319 value1 value2 = (output6631, value3320, value1) := by
  rw [input6631_def, output6631_def]
  kernel_rfl

theorem node6632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6632 value3320 value1 value2 = (output6632, value3320, value1) := by
  rw [input6632_def, output6632_def]
  kernel_rfl

theorem node6633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6633 value3320 value1 value2 = (output6633, value3321, value1) := by
  rw [input6633_def, output6633_def]
  kernel_rfl

theorem node6634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6634 value3321 value1 value2 = (output6634, value3322, value1) := by
  rw [input6634_def, output6634_def]
  kernel_rfl

theorem node6635_cond_eq
    (child6633 : Flapjack.WordAlloc.removeDeadStructural input6633 value3320 value1 value2 = (output6633, value3321, value1))
    (child6634 : Flapjack.WordAlloc.removeDeadStructural input6634 value3321 value1 value2 = (output6634, value3322, value1)) : Flapjack.WordAlloc.removeDeadStructural input6635 value3320 value1 value2 = (output6635, value3322, value1) := by
  rw [input6635_def, output6635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6633]
  dsimp only
  rw [child6634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6633_skip, output6634_skip]
  kernel_rfl

theorem node6636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6636 value3322 value1 value2 = (output6636, value3323, value1) := by
  rw [input6636_def, output6636_def]
  kernel_rfl

theorem node6637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6637 value3323 value1 value2 = (output6637, value3324, value1) := by
  rw [input6637_def, output6637_def]
  kernel_rfl

theorem node6638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6638 value3324 value1 value2 = (output6638, value3325, value1) := by
  rw [input6638_def, output6638_def]
  kernel_rfl

theorem node6639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6639 value3325 value1 value2 = (output6639, value5, value1) := by
  rw [input6639_def, output6639_def]
  kernel_rfl

theorem node6640_cond_eq
    (child6638 : Flapjack.WordAlloc.removeDeadStructural input6638 value3324 value1 value2 = (output6638, value3325, value1))
    (child6639 : Flapjack.WordAlloc.removeDeadStructural input6639 value3325 value1 value2 = (output6639, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6640 value3324 value1 value2 = (output6640, value5, value1) := by
  rw [input6640_def, output6640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6638]
  dsimp only
  rw [child6639]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6638_skip, output6639_skip]
  kernel_rfl

theorem node6641_cond_eq
    (child6637 : Flapjack.WordAlloc.removeDeadStructural input6637 value3323 value1 value2 = (output6637, value3324, value1))
    (child6640 : Flapjack.WordAlloc.removeDeadStructural input6640 value3324 value1 value2 = (output6640, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6641 value3323 value1 value2 = (output6641, value5, value1) := by
  rw [input6641_def, output6641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6637]
  dsimp only
  rw [child6640]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6637_skip, output6640_skip]
  kernel_rfl

theorem node6642_cond_eq
    (child6636 : Flapjack.WordAlloc.removeDeadStructural input6636 value3322 value1 value2 = (output6636, value3323, value1))
    (child6641 : Flapjack.WordAlloc.removeDeadStructural input6641 value3323 value1 value2 = (output6641, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6642 value3322 value1 value2 = (output6642, value5, value1) := by
  rw [input6642_def, output6642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6636]
  dsimp only
  rw [child6641]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6636_skip, output6641_skip]
  kernel_rfl

theorem node6643_cond_eq
    (child6635 : Flapjack.WordAlloc.removeDeadStructural input6635 value3320 value1 value2 = (output6635, value3322, value1))
    (child6642 : Flapjack.WordAlloc.removeDeadStructural input6642 value3322 value1 value2 = (output6642, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6643 value3320 value1 value2 = (output6643, value5, value1) := by
  rw [input6643_def, output6643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6635]
  dsimp only
  rw [child6642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6635_skip, output6642_skip]
  kernel_rfl

theorem node6644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6644 value5 value1 value2 = (output6644, value3326, value1) := by
  rw [input6644_def, output6644_def]
  kernel_rfl

theorem node6645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6645 value3326 value1 value2 = (output6645, value3327, value1) := by
  rw [input6645_def, output6645_def]
  kernel_rfl

theorem node6646_cond_eq
    (child6644 : Flapjack.WordAlloc.removeDeadStructural input6644 value5 value1 value2 = (output6644, value3326, value1))
    (child6645 : Flapjack.WordAlloc.removeDeadStructural input6645 value3326 value1 value2 = (output6645, value3327, value1)) : Flapjack.WordAlloc.removeDeadStructural input6646 value5 value1 value2 = (output6646, value3327, value1) := by
  rw [input6646_def, output6646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6644]
  dsimp only
  rw [child6645]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6644_skip, output6645_skip]
  kernel_rfl

theorem node6647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6647 value3327 value1 value2 = (output6647, value3328, value1) := by
  rw [input6647_def, output6647_def]
  kernel_rfl

theorem node6648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6648 value3328 value1 value2 = (output6648, value3328, value1) := by
  rw [input6648_def, output6648_def]
  kernel_rfl

theorem node6649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6649 value3328 value1 value2 = (output6649, value3329, value1) := by
  rw [input6649_def, output6649_def]
  kernel_rfl

theorem node6650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6650 value3329 value1 value2 = (output6650, value3330, value1) := by
  rw [input6650_def, output6650_def]
  kernel_rfl

theorem node6651_cond_eq
    (child6649 : Flapjack.WordAlloc.removeDeadStructural input6649 value3328 value1 value2 = (output6649, value3329, value1))
    (child6650 : Flapjack.WordAlloc.removeDeadStructural input6650 value3329 value1 value2 = (output6650, value3330, value1)) : Flapjack.WordAlloc.removeDeadStructural input6651 value3328 value1 value2 = (output6651, value3330, value1) := by
  rw [input6651_def, output6651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6649]
  dsimp only
  rw [child6650]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6649_skip, output6650_skip]
  kernel_rfl

theorem node6652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6652 value3330 value1 value2 = (output6652, value3331, value1) := by
  rw [input6652_def, output6652_def]
  kernel_rfl

theorem node6653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6653 value3331 value1 value2 = (output6653, value3332, value1) := by
  rw [input6653_def, output6653_def]
  kernel_rfl

theorem node6654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6654 value3332 value1 value2 = (output6654, value3333, value1) := by
  rw [input6654_def, output6654_def]
  kernel_rfl

theorem node6655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6655 value3333 value1 value2 = (output6655, value5, value1) := by
  rw [input6655_def, output6655_def]
  kernel_rfl

#print axioms node6655_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
