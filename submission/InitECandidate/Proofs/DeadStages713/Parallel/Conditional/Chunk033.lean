import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk033
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node8448_cond_eq
    (child8446 : Flapjack.WordAlloc.removeDeadStructural input8446 value4228 value1 value2 = (output8446, value4229, value1))
    (child8447 : Flapjack.WordAlloc.removeDeadStructural input8447 value4229 value1 value2 = (output8447, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8448 value4228 value1 value2 = (output8448, value5, value1) := by
  rw [input8448_def, output8448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8446]
  dsimp only
  rw [child8447]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8446_skip, output8447_skip]
  kernel_rfl

theorem node8449_cond_eq
    (child8445 : Flapjack.WordAlloc.removeDeadStructural input8445 value4227 value1 value2 = (output8445, value4228, value1))
    (child8448 : Flapjack.WordAlloc.removeDeadStructural input8448 value4228 value1 value2 = (output8448, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8449 value4227 value1 value2 = (output8449, value5, value1) := by
  rw [input8449_def, output8449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8445]
  dsimp only
  rw [child8448]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8445_skip, output8448_skip]
  kernel_rfl

theorem node8450_cond_eq
    (child8444 : Flapjack.WordAlloc.removeDeadStructural input8444 value4226 value1 value2 = (output8444, value4227, value1))
    (child8449 : Flapjack.WordAlloc.removeDeadStructural input8449 value4227 value1 value2 = (output8449, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8450 value4226 value1 value2 = (output8450, value5, value1) := by
  rw [input8450_def, output8450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8444]
  dsimp only
  rw [child8449]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8444_skip, output8449_skip]
  kernel_rfl

theorem node8451_cond_eq
    (child8443 : Flapjack.WordAlloc.removeDeadStructural input8443 value4224 value1 value2 = (output8443, value4226, value1))
    (child8450 : Flapjack.WordAlloc.removeDeadStructural input8450 value4226 value1 value2 = (output8450, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8451 value4224 value1 value2 = (output8451, value5, value1) := by
  rw [input8451_def, output8451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8443]
  dsimp only
  rw [child8450]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8443_skip, output8450_skip]
  kernel_rfl

theorem node8452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8452 value5 value1 value2 = (output8452, value4230, value1) := by
  rw [input8452_def, output8452_def]
  kernel_rfl

theorem node8453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8453 value4230 value1 value2 = (output8453, value4231, value1) := by
  rw [input8453_def, output8453_def]
  kernel_rfl

theorem node8454_cond_eq
    (child8452 : Flapjack.WordAlloc.removeDeadStructural input8452 value5 value1 value2 = (output8452, value4230, value1))
    (child8453 : Flapjack.WordAlloc.removeDeadStructural input8453 value4230 value1 value2 = (output8453, value4231, value1)) : Flapjack.WordAlloc.removeDeadStructural input8454 value5 value1 value2 = (output8454, value4231, value1) := by
  rw [input8454_def, output8454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8452]
  dsimp only
  rw [child8453]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8452_skip, output8453_skip]
  kernel_rfl

theorem node8455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8455 value4231 value1 value2 = (output8455, value4232, value1) := by
  rw [input8455_def, output8455_def]
  kernel_rfl

theorem node8456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8456 value4232 value1 value2 = (output8456, value4232, value1) := by
  rw [input8456_def, output8456_def]
  kernel_rfl

theorem node8457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8457 value4232 value1 value2 = (output8457, value4233, value1) := by
  rw [input8457_def, output8457_def]
  kernel_rfl

theorem node8458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8458 value4233 value1 value2 = (output8458, value4234, value1) := by
  rw [input8458_def, output8458_def]
  kernel_rfl

theorem node8459_cond_eq
    (child8457 : Flapjack.WordAlloc.removeDeadStructural input8457 value4232 value1 value2 = (output8457, value4233, value1))
    (child8458 : Flapjack.WordAlloc.removeDeadStructural input8458 value4233 value1 value2 = (output8458, value4234, value1)) : Flapjack.WordAlloc.removeDeadStructural input8459 value4232 value1 value2 = (output8459, value4234, value1) := by
  rw [input8459_def, output8459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8457]
  dsimp only
  rw [child8458]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8457_skip, output8458_skip]
  kernel_rfl

theorem node8460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8460 value4234 value1 value2 = (output8460, value4235, value1) := by
  rw [input8460_def, output8460_def]
  kernel_rfl

theorem node8461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8461 value4235 value1 value2 = (output8461, value4236, value1) := by
  rw [input8461_def, output8461_def]
  kernel_rfl

theorem node8462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8462 value4236 value1 value2 = (output8462, value4237, value1) := by
  rw [input8462_def, output8462_def]
  kernel_rfl

theorem node8463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8463 value4237 value1 value2 = (output8463, value5, value1) := by
  rw [input8463_def, output8463_def]
  kernel_rfl

theorem node8464_cond_eq
    (child8462 : Flapjack.WordAlloc.removeDeadStructural input8462 value4236 value1 value2 = (output8462, value4237, value1))
    (child8463 : Flapjack.WordAlloc.removeDeadStructural input8463 value4237 value1 value2 = (output8463, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8464 value4236 value1 value2 = (output8464, value5, value1) := by
  rw [input8464_def, output8464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8462]
  dsimp only
  rw [child8463]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8462_skip, output8463_skip]
  kernel_rfl

theorem node8465_cond_eq
    (child8461 : Flapjack.WordAlloc.removeDeadStructural input8461 value4235 value1 value2 = (output8461, value4236, value1))
    (child8464 : Flapjack.WordAlloc.removeDeadStructural input8464 value4236 value1 value2 = (output8464, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8465 value4235 value1 value2 = (output8465, value5, value1) := by
  rw [input8465_def, output8465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8461]
  dsimp only
  rw [child8464]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8461_skip, output8464_skip]
  kernel_rfl

theorem node8466_cond_eq
    (child8460 : Flapjack.WordAlloc.removeDeadStructural input8460 value4234 value1 value2 = (output8460, value4235, value1))
    (child8465 : Flapjack.WordAlloc.removeDeadStructural input8465 value4235 value1 value2 = (output8465, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8466 value4234 value1 value2 = (output8466, value5, value1) := by
  rw [input8466_def, output8466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8460]
  dsimp only
  rw [child8465]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8460_skip, output8465_skip]
  kernel_rfl

theorem node8467_cond_eq
    (child8459 : Flapjack.WordAlloc.removeDeadStructural input8459 value4232 value1 value2 = (output8459, value4234, value1))
    (child8466 : Flapjack.WordAlloc.removeDeadStructural input8466 value4234 value1 value2 = (output8466, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8467 value4232 value1 value2 = (output8467, value5, value1) := by
  rw [input8467_def, output8467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8459]
  dsimp only
  rw [child8466]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8459_skip, output8466_skip]
  kernel_rfl

theorem node8468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8468 value5 value1 value2 = (output8468, value4238, value1) := by
  rw [input8468_def, output8468_def]
  kernel_rfl

theorem node8469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8469 value4238 value1 value2 = (output8469, value4239, value1) := by
  rw [input8469_def, output8469_def]
  kernel_rfl

theorem node8470_cond_eq
    (child8468 : Flapjack.WordAlloc.removeDeadStructural input8468 value5 value1 value2 = (output8468, value4238, value1))
    (child8469 : Flapjack.WordAlloc.removeDeadStructural input8469 value4238 value1 value2 = (output8469, value4239, value1)) : Flapjack.WordAlloc.removeDeadStructural input8470 value5 value1 value2 = (output8470, value4239, value1) := by
  rw [input8470_def, output8470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8468]
  dsimp only
  rw [child8469]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8468_skip, output8469_skip]
  kernel_rfl

theorem node8471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8471 value4239 value1 value2 = (output8471, value4240, value1) := by
  rw [input8471_def, output8471_def]
  kernel_rfl

theorem node8472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8472 value4240 value1 value2 = (output8472, value4240, value1) := by
  rw [input8472_def, output8472_def]
  kernel_rfl

theorem node8473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8473 value4240 value1 value2 = (output8473, value4241, value1) := by
  rw [input8473_def, output8473_def]
  kernel_rfl

theorem node8474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8474 value4241 value1 value2 = (output8474, value4242, value1) := by
  rw [input8474_def, output8474_def]
  kernel_rfl

theorem node8475_cond_eq
    (child8473 : Flapjack.WordAlloc.removeDeadStructural input8473 value4240 value1 value2 = (output8473, value4241, value1))
    (child8474 : Flapjack.WordAlloc.removeDeadStructural input8474 value4241 value1 value2 = (output8474, value4242, value1)) : Flapjack.WordAlloc.removeDeadStructural input8475 value4240 value1 value2 = (output8475, value4242, value1) := by
  rw [input8475_def, output8475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8473]
  dsimp only
  rw [child8474]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8473_skip, output8474_skip]
  kernel_rfl

theorem node8476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8476 value4242 value1 value2 = (output8476, value4243, value1) := by
  rw [input8476_def, output8476_def]
  kernel_rfl

theorem node8477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8477 value4243 value1 value2 = (output8477, value4244, value1) := by
  rw [input8477_def, output8477_def]
  kernel_rfl

theorem node8478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8478 value4244 value1 value2 = (output8478, value4245, value1) := by
  rw [input8478_def, output8478_def]
  kernel_rfl

theorem node8479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8479 value4245 value1 value2 = (output8479, value5, value1) := by
  rw [input8479_def, output8479_def]
  kernel_rfl

theorem node8480_cond_eq
    (child8478 : Flapjack.WordAlloc.removeDeadStructural input8478 value4244 value1 value2 = (output8478, value4245, value1))
    (child8479 : Flapjack.WordAlloc.removeDeadStructural input8479 value4245 value1 value2 = (output8479, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8480 value4244 value1 value2 = (output8480, value5, value1) := by
  rw [input8480_def, output8480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8478]
  dsimp only
  rw [child8479]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8478_skip, output8479_skip]
  kernel_rfl

theorem node8481_cond_eq
    (child8477 : Flapjack.WordAlloc.removeDeadStructural input8477 value4243 value1 value2 = (output8477, value4244, value1))
    (child8480 : Flapjack.WordAlloc.removeDeadStructural input8480 value4244 value1 value2 = (output8480, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8481 value4243 value1 value2 = (output8481, value5, value1) := by
  rw [input8481_def, output8481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8477]
  dsimp only
  rw [child8480]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8477_skip, output8480_skip]
  kernel_rfl

theorem node8482_cond_eq
    (child8476 : Flapjack.WordAlloc.removeDeadStructural input8476 value4242 value1 value2 = (output8476, value4243, value1))
    (child8481 : Flapjack.WordAlloc.removeDeadStructural input8481 value4243 value1 value2 = (output8481, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8482 value4242 value1 value2 = (output8482, value5, value1) := by
  rw [input8482_def, output8482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8476]
  dsimp only
  rw [child8481]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8476_skip, output8481_skip]
  kernel_rfl

theorem node8483_cond_eq
    (child8475 : Flapjack.WordAlloc.removeDeadStructural input8475 value4240 value1 value2 = (output8475, value4242, value1))
    (child8482 : Flapjack.WordAlloc.removeDeadStructural input8482 value4242 value1 value2 = (output8482, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8483 value4240 value1 value2 = (output8483, value5, value1) := by
  rw [input8483_def, output8483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8475]
  dsimp only
  rw [child8482]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8475_skip, output8482_skip]
  kernel_rfl

theorem node8484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8484 value5 value1 value2 = (output8484, value4246, value1) := by
  rw [input8484_def, output8484_def]
  kernel_rfl

theorem node8485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8485 value4246 value1 value2 = (output8485, value4247, value1) := by
  rw [input8485_def, output8485_def]
  kernel_rfl

theorem node8486_cond_eq
    (child8484 : Flapjack.WordAlloc.removeDeadStructural input8484 value5 value1 value2 = (output8484, value4246, value1))
    (child8485 : Flapjack.WordAlloc.removeDeadStructural input8485 value4246 value1 value2 = (output8485, value4247, value1)) : Flapjack.WordAlloc.removeDeadStructural input8486 value5 value1 value2 = (output8486, value4247, value1) := by
  rw [input8486_def, output8486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8484]
  dsimp only
  rw [child8485]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8484_skip, output8485_skip]
  kernel_rfl

theorem node8487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8487 value4247 value1 value2 = (output8487, value4248, value1) := by
  rw [input8487_def, output8487_def]
  kernel_rfl

theorem node8488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8488 value4248 value1 value2 = (output8488, value4248, value1) := by
  rw [input8488_def, output8488_def]
  kernel_rfl

theorem node8489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8489 value4248 value1 value2 = (output8489, value4249, value1) := by
  rw [input8489_def, output8489_def]
  kernel_rfl

theorem node8490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8490 value4249 value1 value2 = (output8490, value4250, value1) := by
  rw [input8490_def, output8490_def]
  kernel_rfl

theorem node8491_cond_eq
    (child8489 : Flapjack.WordAlloc.removeDeadStructural input8489 value4248 value1 value2 = (output8489, value4249, value1))
    (child8490 : Flapjack.WordAlloc.removeDeadStructural input8490 value4249 value1 value2 = (output8490, value4250, value1)) : Flapjack.WordAlloc.removeDeadStructural input8491 value4248 value1 value2 = (output8491, value4250, value1) := by
  rw [input8491_def, output8491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8489]
  dsimp only
  rw [child8490]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8489_skip, output8490_skip]
  kernel_rfl

theorem node8492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8492 value4250 value1 value2 = (output8492, value4251, value1) := by
  rw [input8492_def, output8492_def]
  kernel_rfl

theorem node8493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8493 value4251 value1 value2 = (output8493, value4252, value1) := by
  rw [input8493_def, output8493_def]
  kernel_rfl

theorem node8494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8494 value4252 value1 value2 = (output8494, value4253, value1) := by
  rw [input8494_def, output8494_def]
  kernel_rfl

theorem node8495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8495 value4253 value1 value2 = (output8495, value5, value1) := by
  rw [input8495_def, output8495_def]
  kernel_rfl

theorem node8496_cond_eq
    (child8494 : Flapjack.WordAlloc.removeDeadStructural input8494 value4252 value1 value2 = (output8494, value4253, value1))
    (child8495 : Flapjack.WordAlloc.removeDeadStructural input8495 value4253 value1 value2 = (output8495, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8496 value4252 value1 value2 = (output8496, value5, value1) := by
  rw [input8496_def, output8496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8494]
  dsimp only
  rw [child8495]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8494_skip, output8495_skip]
  kernel_rfl

theorem node8497_cond_eq
    (child8493 : Flapjack.WordAlloc.removeDeadStructural input8493 value4251 value1 value2 = (output8493, value4252, value1))
    (child8496 : Flapjack.WordAlloc.removeDeadStructural input8496 value4252 value1 value2 = (output8496, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8497 value4251 value1 value2 = (output8497, value5, value1) := by
  rw [input8497_def, output8497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8493]
  dsimp only
  rw [child8496]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8493_skip, output8496_skip]
  kernel_rfl

theorem node8498_cond_eq
    (child8492 : Flapjack.WordAlloc.removeDeadStructural input8492 value4250 value1 value2 = (output8492, value4251, value1))
    (child8497 : Flapjack.WordAlloc.removeDeadStructural input8497 value4251 value1 value2 = (output8497, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8498 value4250 value1 value2 = (output8498, value5, value1) := by
  rw [input8498_def, output8498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8492]
  dsimp only
  rw [child8497]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8492_skip, output8497_skip]
  kernel_rfl

theorem node8499_cond_eq
    (child8491 : Flapjack.WordAlloc.removeDeadStructural input8491 value4248 value1 value2 = (output8491, value4250, value1))
    (child8498 : Flapjack.WordAlloc.removeDeadStructural input8498 value4250 value1 value2 = (output8498, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8499 value4248 value1 value2 = (output8499, value5, value1) := by
  rw [input8499_def, output8499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8491]
  dsimp only
  rw [child8498]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8491_skip, output8498_skip]
  kernel_rfl

theorem node8500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8500 value5 value1 value2 = (output8500, value4254, value1) := by
  rw [input8500_def, output8500_def]
  kernel_rfl

theorem node8501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8501 value4254 value1 value2 = (output8501, value4255, value1) := by
  rw [input8501_def, output8501_def]
  kernel_rfl

theorem node8502_cond_eq
    (child8500 : Flapjack.WordAlloc.removeDeadStructural input8500 value5 value1 value2 = (output8500, value4254, value1))
    (child8501 : Flapjack.WordAlloc.removeDeadStructural input8501 value4254 value1 value2 = (output8501, value4255, value1)) : Flapjack.WordAlloc.removeDeadStructural input8502 value5 value1 value2 = (output8502, value4255, value1) := by
  rw [input8502_def, output8502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8500]
  dsimp only
  rw [child8501]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8500_skip, output8501_skip]
  kernel_rfl

theorem node8503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8503 value4255 value1 value2 = (output8503, value4256, value1) := by
  rw [input8503_def, output8503_def]
  kernel_rfl

theorem node8504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8504 value4256 value1 value2 = (output8504, value4256, value1) := by
  rw [input8504_def, output8504_def]
  kernel_rfl

theorem node8505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8505 value4256 value1 value2 = (output8505, value4257, value1) := by
  rw [input8505_def, output8505_def]
  kernel_rfl

theorem node8506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8506 value4257 value1 value2 = (output8506, value4258, value1) := by
  rw [input8506_def, output8506_def]
  kernel_rfl

theorem node8507_cond_eq
    (child8505 : Flapjack.WordAlloc.removeDeadStructural input8505 value4256 value1 value2 = (output8505, value4257, value1))
    (child8506 : Flapjack.WordAlloc.removeDeadStructural input8506 value4257 value1 value2 = (output8506, value4258, value1)) : Flapjack.WordAlloc.removeDeadStructural input8507 value4256 value1 value2 = (output8507, value4258, value1) := by
  rw [input8507_def, output8507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8505]
  dsimp only
  rw [child8506]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8505_skip, output8506_skip]
  kernel_rfl

theorem node8508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8508 value4258 value1 value2 = (output8508, value4259, value1) := by
  rw [input8508_def, output8508_def]
  kernel_rfl

theorem node8509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8509 value4259 value1 value2 = (output8509, value4260, value1) := by
  rw [input8509_def, output8509_def]
  kernel_rfl

theorem node8510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8510 value4260 value1 value2 = (output8510, value4261, value1) := by
  rw [input8510_def, output8510_def]
  kernel_rfl

theorem node8511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8511 value4261 value1 value2 = (output8511, value5, value1) := by
  rw [input8511_def, output8511_def]
  kernel_rfl

theorem node8512_cond_eq
    (child8510 : Flapjack.WordAlloc.removeDeadStructural input8510 value4260 value1 value2 = (output8510, value4261, value1))
    (child8511 : Flapjack.WordAlloc.removeDeadStructural input8511 value4261 value1 value2 = (output8511, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8512 value4260 value1 value2 = (output8512, value5, value1) := by
  rw [input8512_def, output8512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8510]
  dsimp only
  rw [child8511]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8510_skip, output8511_skip]
  kernel_rfl

theorem node8513_cond_eq
    (child8509 : Flapjack.WordAlloc.removeDeadStructural input8509 value4259 value1 value2 = (output8509, value4260, value1))
    (child8512 : Flapjack.WordAlloc.removeDeadStructural input8512 value4260 value1 value2 = (output8512, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8513 value4259 value1 value2 = (output8513, value5, value1) := by
  rw [input8513_def, output8513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8509]
  dsimp only
  rw [child8512]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8509_skip, output8512_skip]
  kernel_rfl

theorem node8514_cond_eq
    (child8508 : Flapjack.WordAlloc.removeDeadStructural input8508 value4258 value1 value2 = (output8508, value4259, value1))
    (child8513 : Flapjack.WordAlloc.removeDeadStructural input8513 value4259 value1 value2 = (output8513, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8514 value4258 value1 value2 = (output8514, value5, value1) := by
  rw [input8514_def, output8514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8508]
  dsimp only
  rw [child8513]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8508_skip, output8513_skip]
  kernel_rfl

theorem node8515_cond_eq
    (child8507 : Flapjack.WordAlloc.removeDeadStructural input8507 value4256 value1 value2 = (output8507, value4258, value1))
    (child8514 : Flapjack.WordAlloc.removeDeadStructural input8514 value4258 value1 value2 = (output8514, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8515 value4256 value1 value2 = (output8515, value5, value1) := by
  rw [input8515_def, output8515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8507]
  dsimp only
  rw [child8514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8507_skip, output8514_skip]
  kernel_rfl

theorem node8516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8516 value5 value1 value2 = (output8516, value4262, value1) := by
  rw [input8516_def, output8516_def]
  kernel_rfl

theorem node8517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8517 value4262 value1 value2 = (output8517, value4263, value1) := by
  rw [input8517_def, output8517_def]
  kernel_rfl

theorem node8518_cond_eq
    (child8516 : Flapjack.WordAlloc.removeDeadStructural input8516 value5 value1 value2 = (output8516, value4262, value1))
    (child8517 : Flapjack.WordAlloc.removeDeadStructural input8517 value4262 value1 value2 = (output8517, value4263, value1)) : Flapjack.WordAlloc.removeDeadStructural input8518 value5 value1 value2 = (output8518, value4263, value1) := by
  rw [input8518_def, output8518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8516]
  dsimp only
  rw [child8517]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8516_skip, output8517_skip]
  kernel_rfl

theorem node8519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8519 value4263 value1 value2 = (output8519, value4264, value1) := by
  rw [input8519_def, output8519_def]
  kernel_rfl

theorem node8520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8520 value4264 value1 value2 = (output8520, value4264, value1) := by
  rw [input8520_def, output8520_def]
  kernel_rfl

theorem node8521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8521 value4264 value1 value2 = (output8521, value4265, value1) := by
  rw [input8521_def, output8521_def]
  kernel_rfl

theorem node8522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8522 value4265 value1 value2 = (output8522, value4266, value1) := by
  rw [input8522_def, output8522_def]
  kernel_rfl

theorem node8523_cond_eq
    (child8521 : Flapjack.WordAlloc.removeDeadStructural input8521 value4264 value1 value2 = (output8521, value4265, value1))
    (child8522 : Flapjack.WordAlloc.removeDeadStructural input8522 value4265 value1 value2 = (output8522, value4266, value1)) : Flapjack.WordAlloc.removeDeadStructural input8523 value4264 value1 value2 = (output8523, value4266, value1) := by
  rw [input8523_def, output8523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8521]
  dsimp only
  rw [child8522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8521_skip, output8522_skip]
  kernel_rfl

theorem node8524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8524 value4266 value1 value2 = (output8524, value4267, value1) := by
  rw [input8524_def, output8524_def]
  kernel_rfl

theorem node8525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8525 value4267 value1 value2 = (output8525, value4268, value1) := by
  rw [input8525_def, output8525_def]
  kernel_rfl

theorem node8526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8526 value4268 value1 value2 = (output8526, value4269, value1) := by
  rw [input8526_def, output8526_def]
  kernel_rfl

theorem node8527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8527 value4269 value1 value2 = (output8527, value5, value1) := by
  rw [input8527_def, output8527_def]
  kernel_rfl

theorem node8528_cond_eq
    (child8526 : Flapjack.WordAlloc.removeDeadStructural input8526 value4268 value1 value2 = (output8526, value4269, value1))
    (child8527 : Flapjack.WordAlloc.removeDeadStructural input8527 value4269 value1 value2 = (output8527, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8528 value4268 value1 value2 = (output8528, value5, value1) := by
  rw [input8528_def, output8528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8526]
  dsimp only
  rw [child8527]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8526_skip, output8527_skip]
  kernel_rfl

theorem node8529_cond_eq
    (child8525 : Flapjack.WordAlloc.removeDeadStructural input8525 value4267 value1 value2 = (output8525, value4268, value1))
    (child8528 : Flapjack.WordAlloc.removeDeadStructural input8528 value4268 value1 value2 = (output8528, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8529 value4267 value1 value2 = (output8529, value5, value1) := by
  rw [input8529_def, output8529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8525]
  dsimp only
  rw [child8528]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8525_skip, output8528_skip]
  kernel_rfl

theorem node8530_cond_eq
    (child8524 : Flapjack.WordAlloc.removeDeadStructural input8524 value4266 value1 value2 = (output8524, value4267, value1))
    (child8529 : Flapjack.WordAlloc.removeDeadStructural input8529 value4267 value1 value2 = (output8529, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8530 value4266 value1 value2 = (output8530, value5, value1) := by
  rw [input8530_def, output8530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8524]
  dsimp only
  rw [child8529]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8524_skip, output8529_skip]
  kernel_rfl

theorem node8531_cond_eq
    (child8523 : Flapjack.WordAlloc.removeDeadStructural input8523 value4264 value1 value2 = (output8523, value4266, value1))
    (child8530 : Flapjack.WordAlloc.removeDeadStructural input8530 value4266 value1 value2 = (output8530, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8531 value4264 value1 value2 = (output8531, value5, value1) := by
  rw [input8531_def, output8531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8523]
  dsimp only
  rw [child8530]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8523_skip, output8530_skip]
  kernel_rfl

theorem node8532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8532 value5 value1 value2 = (output8532, value4270, value1) := by
  rw [input8532_def, output8532_def]
  kernel_rfl

theorem node8533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8533 value4270 value1 value2 = (output8533, value4271, value1) := by
  rw [input8533_def, output8533_def]
  kernel_rfl

theorem node8534_cond_eq
    (child8532 : Flapjack.WordAlloc.removeDeadStructural input8532 value5 value1 value2 = (output8532, value4270, value1))
    (child8533 : Flapjack.WordAlloc.removeDeadStructural input8533 value4270 value1 value2 = (output8533, value4271, value1)) : Flapjack.WordAlloc.removeDeadStructural input8534 value5 value1 value2 = (output8534, value4271, value1) := by
  rw [input8534_def, output8534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8532]
  dsimp only
  rw [child8533]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8532_skip, output8533_skip]
  kernel_rfl

theorem node8535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8535 value4271 value1 value2 = (output8535, value4272, value1) := by
  rw [input8535_def, output8535_def]
  kernel_rfl

theorem node8536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8536 value4272 value1 value2 = (output8536, value4272, value1) := by
  rw [input8536_def, output8536_def]
  kernel_rfl

theorem node8537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8537 value4272 value1 value2 = (output8537, value4273, value1) := by
  rw [input8537_def, output8537_def]
  kernel_rfl

theorem node8538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8538 value4273 value1 value2 = (output8538, value4274, value1) := by
  rw [input8538_def, output8538_def]
  kernel_rfl

theorem node8539_cond_eq
    (child8537 : Flapjack.WordAlloc.removeDeadStructural input8537 value4272 value1 value2 = (output8537, value4273, value1))
    (child8538 : Flapjack.WordAlloc.removeDeadStructural input8538 value4273 value1 value2 = (output8538, value4274, value1)) : Flapjack.WordAlloc.removeDeadStructural input8539 value4272 value1 value2 = (output8539, value4274, value1) := by
  rw [input8539_def, output8539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8537]
  dsimp only
  rw [child8538]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8537_skip, output8538_skip]
  kernel_rfl

theorem node8540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8540 value4274 value1 value2 = (output8540, value4275, value1) := by
  rw [input8540_def, output8540_def]
  kernel_rfl

theorem node8541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8541 value4275 value1 value2 = (output8541, value4276, value1) := by
  rw [input8541_def, output8541_def]
  kernel_rfl

theorem node8542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8542 value4276 value1 value2 = (output8542, value4277, value1) := by
  rw [input8542_def, output8542_def]
  kernel_rfl

theorem node8543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8543 value4277 value1 value2 = (output8543, value5, value1) := by
  rw [input8543_def, output8543_def]
  kernel_rfl

theorem node8544_cond_eq
    (child8542 : Flapjack.WordAlloc.removeDeadStructural input8542 value4276 value1 value2 = (output8542, value4277, value1))
    (child8543 : Flapjack.WordAlloc.removeDeadStructural input8543 value4277 value1 value2 = (output8543, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8544 value4276 value1 value2 = (output8544, value5, value1) := by
  rw [input8544_def, output8544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8542]
  dsimp only
  rw [child8543]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8542_skip, output8543_skip]
  kernel_rfl

theorem node8545_cond_eq
    (child8541 : Flapjack.WordAlloc.removeDeadStructural input8541 value4275 value1 value2 = (output8541, value4276, value1))
    (child8544 : Flapjack.WordAlloc.removeDeadStructural input8544 value4276 value1 value2 = (output8544, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8545 value4275 value1 value2 = (output8545, value5, value1) := by
  rw [input8545_def, output8545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8541]
  dsimp only
  rw [child8544]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8541_skip, output8544_skip]
  kernel_rfl

theorem node8546_cond_eq
    (child8540 : Flapjack.WordAlloc.removeDeadStructural input8540 value4274 value1 value2 = (output8540, value4275, value1))
    (child8545 : Flapjack.WordAlloc.removeDeadStructural input8545 value4275 value1 value2 = (output8545, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8546 value4274 value1 value2 = (output8546, value5, value1) := by
  rw [input8546_def, output8546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8540]
  dsimp only
  rw [child8545]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8540_skip, output8545_skip]
  kernel_rfl

theorem node8547_cond_eq
    (child8539 : Flapjack.WordAlloc.removeDeadStructural input8539 value4272 value1 value2 = (output8539, value4274, value1))
    (child8546 : Flapjack.WordAlloc.removeDeadStructural input8546 value4274 value1 value2 = (output8546, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8547 value4272 value1 value2 = (output8547, value5, value1) := by
  rw [input8547_def, output8547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8539]
  dsimp only
  rw [child8546]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8539_skip, output8546_skip]
  kernel_rfl

theorem node8548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8548 value5 value1 value2 = (output8548, value4278, value1) := by
  rw [input8548_def, output8548_def]
  kernel_rfl

theorem node8549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8549 value4278 value1 value2 = (output8549, value4279, value1) := by
  rw [input8549_def, output8549_def]
  kernel_rfl

theorem node8550_cond_eq
    (child8548 : Flapjack.WordAlloc.removeDeadStructural input8548 value5 value1 value2 = (output8548, value4278, value1))
    (child8549 : Flapjack.WordAlloc.removeDeadStructural input8549 value4278 value1 value2 = (output8549, value4279, value1)) : Flapjack.WordAlloc.removeDeadStructural input8550 value5 value1 value2 = (output8550, value4279, value1) := by
  rw [input8550_def, output8550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8548]
  dsimp only
  rw [child8549]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8548_skip, output8549_skip]
  kernel_rfl

theorem node8551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8551 value4279 value1 value2 = (output8551, value4280, value1) := by
  rw [input8551_def, output8551_def]
  kernel_rfl

theorem node8552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8552 value4280 value1 value2 = (output8552, value4280, value1) := by
  rw [input8552_def, output8552_def]
  kernel_rfl

theorem node8553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8553 value4280 value1 value2 = (output8553, value4281, value1) := by
  rw [input8553_def, output8553_def]
  kernel_rfl

theorem node8554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8554 value4281 value1 value2 = (output8554, value4282, value1) := by
  rw [input8554_def, output8554_def]
  kernel_rfl

theorem node8555_cond_eq
    (child8553 : Flapjack.WordAlloc.removeDeadStructural input8553 value4280 value1 value2 = (output8553, value4281, value1))
    (child8554 : Flapjack.WordAlloc.removeDeadStructural input8554 value4281 value1 value2 = (output8554, value4282, value1)) : Flapjack.WordAlloc.removeDeadStructural input8555 value4280 value1 value2 = (output8555, value4282, value1) := by
  rw [input8555_def, output8555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8553]
  dsimp only
  rw [child8554]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8553_skip, output8554_skip]
  kernel_rfl

theorem node8556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8556 value4282 value1 value2 = (output8556, value4283, value1) := by
  rw [input8556_def, output8556_def]
  kernel_rfl

theorem node8557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8557 value4283 value1 value2 = (output8557, value4284, value1) := by
  rw [input8557_def, output8557_def]
  kernel_rfl

theorem node8558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8558 value4284 value1 value2 = (output8558, value4285, value1) := by
  rw [input8558_def, output8558_def]
  kernel_rfl

theorem node8559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8559 value4285 value1 value2 = (output8559, value5, value1) := by
  rw [input8559_def, output8559_def]
  kernel_rfl

theorem node8560_cond_eq
    (child8558 : Flapjack.WordAlloc.removeDeadStructural input8558 value4284 value1 value2 = (output8558, value4285, value1))
    (child8559 : Flapjack.WordAlloc.removeDeadStructural input8559 value4285 value1 value2 = (output8559, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8560 value4284 value1 value2 = (output8560, value5, value1) := by
  rw [input8560_def, output8560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8558]
  dsimp only
  rw [child8559]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8558_skip, output8559_skip]
  kernel_rfl

theorem node8561_cond_eq
    (child8557 : Flapjack.WordAlloc.removeDeadStructural input8557 value4283 value1 value2 = (output8557, value4284, value1))
    (child8560 : Flapjack.WordAlloc.removeDeadStructural input8560 value4284 value1 value2 = (output8560, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8561 value4283 value1 value2 = (output8561, value5, value1) := by
  rw [input8561_def, output8561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8557]
  dsimp only
  rw [child8560]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8557_skip, output8560_skip]
  kernel_rfl

theorem node8562_cond_eq
    (child8556 : Flapjack.WordAlloc.removeDeadStructural input8556 value4282 value1 value2 = (output8556, value4283, value1))
    (child8561 : Flapjack.WordAlloc.removeDeadStructural input8561 value4283 value1 value2 = (output8561, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8562 value4282 value1 value2 = (output8562, value5, value1) := by
  rw [input8562_def, output8562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8556]
  dsimp only
  rw [child8561]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8556_skip, output8561_skip]
  kernel_rfl

theorem node8563_cond_eq
    (child8555 : Flapjack.WordAlloc.removeDeadStructural input8555 value4280 value1 value2 = (output8555, value4282, value1))
    (child8562 : Flapjack.WordAlloc.removeDeadStructural input8562 value4282 value1 value2 = (output8562, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8563 value4280 value1 value2 = (output8563, value5, value1) := by
  rw [input8563_def, output8563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8555]
  dsimp only
  rw [child8562]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8555_skip, output8562_skip]
  kernel_rfl

theorem node8564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8564 value5 value1 value2 = (output8564, value4286, value1) := by
  rw [input8564_def, output8564_def]
  kernel_rfl

theorem node8565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8565 value4286 value1 value2 = (output8565, value4287, value1) := by
  rw [input8565_def, output8565_def]
  kernel_rfl

theorem node8566_cond_eq
    (child8564 : Flapjack.WordAlloc.removeDeadStructural input8564 value5 value1 value2 = (output8564, value4286, value1))
    (child8565 : Flapjack.WordAlloc.removeDeadStructural input8565 value4286 value1 value2 = (output8565, value4287, value1)) : Flapjack.WordAlloc.removeDeadStructural input8566 value5 value1 value2 = (output8566, value4287, value1) := by
  rw [input8566_def, output8566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8564]
  dsimp only
  rw [child8565]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8564_skip, output8565_skip]
  kernel_rfl

theorem node8567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8567 value4287 value1 value2 = (output8567, value4288, value1) := by
  rw [input8567_def, output8567_def]
  kernel_rfl

theorem node8568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8568 value4288 value1 value2 = (output8568, value4288, value1) := by
  rw [input8568_def, output8568_def]
  kernel_rfl

theorem node8569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8569 value4288 value1 value2 = (output8569, value4289, value1) := by
  rw [input8569_def, output8569_def]
  kernel_rfl

theorem node8570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8570 value4289 value1 value2 = (output8570, value4290, value1) := by
  rw [input8570_def, output8570_def]
  kernel_rfl

theorem node8571_cond_eq
    (child8569 : Flapjack.WordAlloc.removeDeadStructural input8569 value4288 value1 value2 = (output8569, value4289, value1))
    (child8570 : Flapjack.WordAlloc.removeDeadStructural input8570 value4289 value1 value2 = (output8570, value4290, value1)) : Flapjack.WordAlloc.removeDeadStructural input8571 value4288 value1 value2 = (output8571, value4290, value1) := by
  rw [input8571_def, output8571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8569]
  dsimp only
  rw [child8570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8569_skip, output8570_skip]
  kernel_rfl

theorem node8572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8572 value4290 value1 value2 = (output8572, value4291, value1) := by
  rw [input8572_def, output8572_def]
  kernel_rfl

theorem node8573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8573 value4291 value1 value2 = (output8573, value4292, value1) := by
  rw [input8573_def, output8573_def]
  kernel_rfl

theorem node8574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8574 value4292 value1 value2 = (output8574, value4293, value1) := by
  rw [input8574_def, output8574_def]
  kernel_rfl

theorem node8575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8575 value4293 value1 value2 = (output8575, value5, value1) := by
  rw [input8575_def, output8575_def]
  kernel_rfl

theorem node8576_cond_eq
    (child8574 : Flapjack.WordAlloc.removeDeadStructural input8574 value4292 value1 value2 = (output8574, value4293, value1))
    (child8575 : Flapjack.WordAlloc.removeDeadStructural input8575 value4293 value1 value2 = (output8575, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8576 value4292 value1 value2 = (output8576, value5, value1) := by
  rw [input8576_def, output8576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8574]
  dsimp only
  rw [child8575]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8574_skip, output8575_skip]
  kernel_rfl

theorem node8577_cond_eq
    (child8573 : Flapjack.WordAlloc.removeDeadStructural input8573 value4291 value1 value2 = (output8573, value4292, value1))
    (child8576 : Flapjack.WordAlloc.removeDeadStructural input8576 value4292 value1 value2 = (output8576, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8577 value4291 value1 value2 = (output8577, value5, value1) := by
  rw [input8577_def, output8577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8573]
  dsimp only
  rw [child8576]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8573_skip, output8576_skip]
  kernel_rfl

theorem node8578_cond_eq
    (child8572 : Flapjack.WordAlloc.removeDeadStructural input8572 value4290 value1 value2 = (output8572, value4291, value1))
    (child8577 : Flapjack.WordAlloc.removeDeadStructural input8577 value4291 value1 value2 = (output8577, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8578 value4290 value1 value2 = (output8578, value5, value1) := by
  rw [input8578_def, output8578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8572]
  dsimp only
  rw [child8577]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8572_skip, output8577_skip]
  kernel_rfl

theorem node8579_cond_eq
    (child8571 : Flapjack.WordAlloc.removeDeadStructural input8571 value4288 value1 value2 = (output8571, value4290, value1))
    (child8578 : Flapjack.WordAlloc.removeDeadStructural input8578 value4290 value1 value2 = (output8578, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8579 value4288 value1 value2 = (output8579, value5, value1) := by
  rw [input8579_def, output8579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8571]
  dsimp only
  rw [child8578]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8571_skip, output8578_skip]
  kernel_rfl

theorem node8580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8580 value5 value1 value2 = (output8580, value4294, value1) := by
  rw [input8580_def, output8580_def]
  kernel_rfl

theorem node8581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8581 value4294 value1 value2 = (output8581, value4295, value1) := by
  rw [input8581_def, output8581_def]
  kernel_rfl

theorem node8582_cond_eq
    (child8580 : Flapjack.WordAlloc.removeDeadStructural input8580 value5 value1 value2 = (output8580, value4294, value1))
    (child8581 : Flapjack.WordAlloc.removeDeadStructural input8581 value4294 value1 value2 = (output8581, value4295, value1)) : Flapjack.WordAlloc.removeDeadStructural input8582 value5 value1 value2 = (output8582, value4295, value1) := by
  rw [input8582_def, output8582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8580]
  dsimp only
  rw [child8581]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8580_skip, output8581_skip]
  kernel_rfl

theorem node8583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8583 value4295 value1 value2 = (output8583, value4296, value1) := by
  rw [input8583_def, output8583_def]
  kernel_rfl

theorem node8584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8584 value4296 value1 value2 = (output8584, value4296, value1) := by
  rw [input8584_def, output8584_def]
  kernel_rfl

theorem node8585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8585 value4296 value1 value2 = (output8585, value4297, value1) := by
  rw [input8585_def, output8585_def]
  kernel_rfl

theorem node8586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8586 value4297 value1 value2 = (output8586, value4298, value1) := by
  rw [input8586_def, output8586_def]
  kernel_rfl

theorem node8587_cond_eq
    (child8585 : Flapjack.WordAlloc.removeDeadStructural input8585 value4296 value1 value2 = (output8585, value4297, value1))
    (child8586 : Flapjack.WordAlloc.removeDeadStructural input8586 value4297 value1 value2 = (output8586, value4298, value1)) : Flapjack.WordAlloc.removeDeadStructural input8587 value4296 value1 value2 = (output8587, value4298, value1) := by
  rw [input8587_def, output8587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8585]
  dsimp only
  rw [child8586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8585_skip, output8586_skip]
  kernel_rfl

theorem node8588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8588 value4298 value1 value2 = (output8588, value4299, value1) := by
  rw [input8588_def, output8588_def]
  kernel_rfl

theorem node8589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8589 value4299 value1 value2 = (output8589, value4300, value1) := by
  rw [input8589_def, output8589_def]
  kernel_rfl

theorem node8590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8590 value4300 value1 value2 = (output8590, value4301, value1) := by
  rw [input8590_def, output8590_def]
  kernel_rfl

theorem node8591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8591 value4301 value1 value2 = (output8591, value5, value1) := by
  rw [input8591_def, output8591_def]
  kernel_rfl

theorem node8592_cond_eq
    (child8590 : Flapjack.WordAlloc.removeDeadStructural input8590 value4300 value1 value2 = (output8590, value4301, value1))
    (child8591 : Flapjack.WordAlloc.removeDeadStructural input8591 value4301 value1 value2 = (output8591, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8592 value4300 value1 value2 = (output8592, value5, value1) := by
  rw [input8592_def, output8592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8590]
  dsimp only
  rw [child8591]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8590_skip, output8591_skip]
  kernel_rfl

theorem node8593_cond_eq
    (child8589 : Flapjack.WordAlloc.removeDeadStructural input8589 value4299 value1 value2 = (output8589, value4300, value1))
    (child8592 : Flapjack.WordAlloc.removeDeadStructural input8592 value4300 value1 value2 = (output8592, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8593 value4299 value1 value2 = (output8593, value5, value1) := by
  rw [input8593_def, output8593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8589]
  dsimp only
  rw [child8592]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8589_skip, output8592_skip]
  kernel_rfl

theorem node8594_cond_eq
    (child8588 : Flapjack.WordAlloc.removeDeadStructural input8588 value4298 value1 value2 = (output8588, value4299, value1))
    (child8593 : Flapjack.WordAlloc.removeDeadStructural input8593 value4299 value1 value2 = (output8593, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8594 value4298 value1 value2 = (output8594, value5, value1) := by
  rw [input8594_def, output8594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8588]
  dsimp only
  rw [child8593]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8588_skip, output8593_skip]
  kernel_rfl

theorem node8595_cond_eq
    (child8587 : Flapjack.WordAlloc.removeDeadStructural input8587 value4296 value1 value2 = (output8587, value4298, value1))
    (child8594 : Flapjack.WordAlloc.removeDeadStructural input8594 value4298 value1 value2 = (output8594, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8595 value4296 value1 value2 = (output8595, value5, value1) := by
  rw [input8595_def, output8595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8587]
  dsimp only
  rw [child8594]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8587_skip, output8594_skip]
  kernel_rfl

theorem node8596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8596 value5 value1 value2 = (output8596, value4302, value1) := by
  rw [input8596_def, output8596_def]
  kernel_rfl

theorem node8597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8597 value4302 value1 value2 = (output8597, value4303, value1) := by
  rw [input8597_def, output8597_def]
  kernel_rfl

theorem node8598_cond_eq
    (child8596 : Flapjack.WordAlloc.removeDeadStructural input8596 value5 value1 value2 = (output8596, value4302, value1))
    (child8597 : Flapjack.WordAlloc.removeDeadStructural input8597 value4302 value1 value2 = (output8597, value4303, value1)) : Flapjack.WordAlloc.removeDeadStructural input8598 value5 value1 value2 = (output8598, value4303, value1) := by
  rw [input8598_def, output8598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8596]
  dsimp only
  rw [child8597]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8596_skip, output8597_skip]
  kernel_rfl

theorem node8599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8599 value4303 value1 value2 = (output8599, value4304, value1) := by
  rw [input8599_def, output8599_def]
  kernel_rfl

theorem node8600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8600 value4304 value1 value2 = (output8600, value4304, value1) := by
  rw [input8600_def, output8600_def]
  kernel_rfl

theorem node8601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8601 value4304 value1 value2 = (output8601, value4305, value1) := by
  rw [input8601_def, output8601_def]
  kernel_rfl

theorem node8602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8602 value4305 value1 value2 = (output8602, value4306, value1) := by
  rw [input8602_def, output8602_def]
  kernel_rfl

theorem node8603_cond_eq
    (child8601 : Flapjack.WordAlloc.removeDeadStructural input8601 value4304 value1 value2 = (output8601, value4305, value1))
    (child8602 : Flapjack.WordAlloc.removeDeadStructural input8602 value4305 value1 value2 = (output8602, value4306, value1)) : Flapjack.WordAlloc.removeDeadStructural input8603 value4304 value1 value2 = (output8603, value4306, value1) := by
  rw [input8603_def, output8603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8601]
  dsimp only
  rw [child8602]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8601_skip, output8602_skip]
  kernel_rfl

theorem node8604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8604 value4306 value1 value2 = (output8604, value4307, value1) := by
  rw [input8604_def, output8604_def]
  kernel_rfl

theorem node8605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8605 value4307 value1 value2 = (output8605, value4308, value1) := by
  rw [input8605_def, output8605_def]
  kernel_rfl

theorem node8606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8606 value4308 value1 value2 = (output8606, value4309, value1) := by
  rw [input8606_def, output8606_def]
  kernel_rfl

theorem node8607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8607 value4309 value1 value2 = (output8607, value5, value1) := by
  rw [input8607_def, output8607_def]
  kernel_rfl

theorem node8608_cond_eq
    (child8606 : Flapjack.WordAlloc.removeDeadStructural input8606 value4308 value1 value2 = (output8606, value4309, value1))
    (child8607 : Flapjack.WordAlloc.removeDeadStructural input8607 value4309 value1 value2 = (output8607, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8608 value4308 value1 value2 = (output8608, value5, value1) := by
  rw [input8608_def, output8608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8606]
  dsimp only
  rw [child8607]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8606_skip, output8607_skip]
  kernel_rfl

theorem node8609_cond_eq
    (child8605 : Flapjack.WordAlloc.removeDeadStructural input8605 value4307 value1 value2 = (output8605, value4308, value1))
    (child8608 : Flapjack.WordAlloc.removeDeadStructural input8608 value4308 value1 value2 = (output8608, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8609 value4307 value1 value2 = (output8609, value5, value1) := by
  rw [input8609_def, output8609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8605]
  dsimp only
  rw [child8608]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8605_skip, output8608_skip]
  kernel_rfl

theorem node8610_cond_eq
    (child8604 : Flapjack.WordAlloc.removeDeadStructural input8604 value4306 value1 value2 = (output8604, value4307, value1))
    (child8609 : Flapjack.WordAlloc.removeDeadStructural input8609 value4307 value1 value2 = (output8609, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8610 value4306 value1 value2 = (output8610, value5, value1) := by
  rw [input8610_def, output8610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8604]
  dsimp only
  rw [child8609]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8604_skip, output8609_skip]
  kernel_rfl

theorem node8611_cond_eq
    (child8603 : Flapjack.WordAlloc.removeDeadStructural input8603 value4304 value1 value2 = (output8603, value4306, value1))
    (child8610 : Flapjack.WordAlloc.removeDeadStructural input8610 value4306 value1 value2 = (output8610, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8611 value4304 value1 value2 = (output8611, value5, value1) := by
  rw [input8611_def, output8611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8603]
  dsimp only
  rw [child8610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8603_skip, output8610_skip]
  kernel_rfl

theorem node8612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8612 value5 value1 value2 = (output8612, value4310, value1) := by
  rw [input8612_def, output8612_def]
  kernel_rfl

theorem node8613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8613 value4310 value1 value2 = (output8613, value4311, value1) := by
  rw [input8613_def, output8613_def]
  kernel_rfl

theorem node8614_cond_eq
    (child8612 : Flapjack.WordAlloc.removeDeadStructural input8612 value5 value1 value2 = (output8612, value4310, value1))
    (child8613 : Flapjack.WordAlloc.removeDeadStructural input8613 value4310 value1 value2 = (output8613, value4311, value1)) : Flapjack.WordAlloc.removeDeadStructural input8614 value5 value1 value2 = (output8614, value4311, value1) := by
  rw [input8614_def, output8614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8612]
  dsimp only
  rw [child8613]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8612_skip, output8613_skip]
  kernel_rfl

theorem node8615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8615 value4311 value1 value2 = (output8615, value4312, value1) := by
  rw [input8615_def, output8615_def]
  kernel_rfl

theorem node8616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8616 value4312 value1 value2 = (output8616, value4312, value1) := by
  rw [input8616_def, output8616_def]
  kernel_rfl

theorem node8617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8617 value4312 value1 value2 = (output8617, value4313, value1) := by
  rw [input8617_def, output8617_def]
  kernel_rfl

theorem node8618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8618 value4313 value1 value2 = (output8618, value4314, value1) := by
  rw [input8618_def, output8618_def]
  kernel_rfl

theorem node8619_cond_eq
    (child8617 : Flapjack.WordAlloc.removeDeadStructural input8617 value4312 value1 value2 = (output8617, value4313, value1))
    (child8618 : Flapjack.WordAlloc.removeDeadStructural input8618 value4313 value1 value2 = (output8618, value4314, value1)) : Flapjack.WordAlloc.removeDeadStructural input8619 value4312 value1 value2 = (output8619, value4314, value1) := by
  rw [input8619_def, output8619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8617]
  dsimp only
  rw [child8618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8617_skip, output8618_skip]
  kernel_rfl

theorem node8620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8620 value4314 value1 value2 = (output8620, value4315, value1) := by
  rw [input8620_def, output8620_def]
  kernel_rfl

theorem node8621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8621 value4315 value1 value2 = (output8621, value4316, value1) := by
  rw [input8621_def, output8621_def]
  kernel_rfl

theorem node8622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8622 value4316 value1 value2 = (output8622, value4317, value1) := by
  rw [input8622_def, output8622_def]
  kernel_rfl

theorem node8623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8623 value4317 value1 value2 = (output8623, value5, value1) := by
  rw [input8623_def, output8623_def]
  kernel_rfl

theorem node8624_cond_eq
    (child8622 : Flapjack.WordAlloc.removeDeadStructural input8622 value4316 value1 value2 = (output8622, value4317, value1))
    (child8623 : Flapjack.WordAlloc.removeDeadStructural input8623 value4317 value1 value2 = (output8623, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8624 value4316 value1 value2 = (output8624, value5, value1) := by
  rw [input8624_def, output8624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8622]
  dsimp only
  rw [child8623]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8622_skip, output8623_skip]
  kernel_rfl

theorem node8625_cond_eq
    (child8621 : Flapjack.WordAlloc.removeDeadStructural input8621 value4315 value1 value2 = (output8621, value4316, value1))
    (child8624 : Flapjack.WordAlloc.removeDeadStructural input8624 value4316 value1 value2 = (output8624, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8625 value4315 value1 value2 = (output8625, value5, value1) := by
  rw [input8625_def, output8625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8621]
  dsimp only
  rw [child8624]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8621_skip, output8624_skip]
  kernel_rfl

theorem node8626_cond_eq
    (child8620 : Flapjack.WordAlloc.removeDeadStructural input8620 value4314 value1 value2 = (output8620, value4315, value1))
    (child8625 : Flapjack.WordAlloc.removeDeadStructural input8625 value4315 value1 value2 = (output8625, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8626 value4314 value1 value2 = (output8626, value5, value1) := by
  rw [input8626_def, output8626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8620]
  dsimp only
  rw [child8625]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8620_skip, output8625_skip]
  kernel_rfl

theorem node8627_cond_eq
    (child8619 : Flapjack.WordAlloc.removeDeadStructural input8619 value4312 value1 value2 = (output8619, value4314, value1))
    (child8626 : Flapjack.WordAlloc.removeDeadStructural input8626 value4314 value1 value2 = (output8626, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8627 value4312 value1 value2 = (output8627, value5, value1) := by
  rw [input8627_def, output8627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8619]
  dsimp only
  rw [child8626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8619_skip, output8626_skip]
  kernel_rfl

theorem node8628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8628 value5 value1 value2 = (output8628, value4318, value1) := by
  rw [input8628_def, output8628_def]
  kernel_rfl

theorem node8629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8629 value4318 value1 value2 = (output8629, value4319, value1) := by
  rw [input8629_def, output8629_def]
  kernel_rfl

theorem node8630_cond_eq
    (child8628 : Flapjack.WordAlloc.removeDeadStructural input8628 value5 value1 value2 = (output8628, value4318, value1))
    (child8629 : Flapjack.WordAlloc.removeDeadStructural input8629 value4318 value1 value2 = (output8629, value4319, value1)) : Flapjack.WordAlloc.removeDeadStructural input8630 value5 value1 value2 = (output8630, value4319, value1) := by
  rw [input8630_def, output8630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8628]
  dsimp only
  rw [child8629]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8628_skip, output8629_skip]
  kernel_rfl

theorem node8631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8631 value4319 value1 value2 = (output8631, value4320, value1) := by
  rw [input8631_def, output8631_def]
  kernel_rfl

theorem node8632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8632 value4320 value1 value2 = (output8632, value4320, value1) := by
  rw [input8632_def, output8632_def]
  kernel_rfl

theorem node8633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8633 value4320 value1 value2 = (output8633, value4321, value1) := by
  rw [input8633_def, output8633_def]
  kernel_rfl

theorem node8634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8634 value4321 value1 value2 = (output8634, value4322, value1) := by
  rw [input8634_def, output8634_def]
  kernel_rfl

theorem node8635_cond_eq
    (child8633 : Flapjack.WordAlloc.removeDeadStructural input8633 value4320 value1 value2 = (output8633, value4321, value1))
    (child8634 : Flapjack.WordAlloc.removeDeadStructural input8634 value4321 value1 value2 = (output8634, value4322, value1)) : Flapjack.WordAlloc.removeDeadStructural input8635 value4320 value1 value2 = (output8635, value4322, value1) := by
  rw [input8635_def, output8635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8633]
  dsimp only
  rw [child8634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8633_skip, output8634_skip]
  kernel_rfl

theorem node8636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8636 value4322 value1 value2 = (output8636, value4323, value1) := by
  rw [input8636_def, output8636_def]
  kernel_rfl

theorem node8637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8637 value4323 value1 value2 = (output8637, value4324, value1) := by
  rw [input8637_def, output8637_def]
  kernel_rfl

theorem node8638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8638 value4324 value1 value2 = (output8638, value4325, value1) := by
  rw [input8638_def, output8638_def]
  kernel_rfl

theorem node8639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8639 value4325 value1 value2 = (output8639, value5, value1) := by
  rw [input8639_def, output8639_def]
  kernel_rfl

theorem node8640_cond_eq
    (child8638 : Flapjack.WordAlloc.removeDeadStructural input8638 value4324 value1 value2 = (output8638, value4325, value1))
    (child8639 : Flapjack.WordAlloc.removeDeadStructural input8639 value4325 value1 value2 = (output8639, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8640 value4324 value1 value2 = (output8640, value5, value1) := by
  rw [input8640_def, output8640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8638]
  dsimp only
  rw [child8639]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8638_skip, output8639_skip]
  kernel_rfl

theorem node8641_cond_eq
    (child8637 : Flapjack.WordAlloc.removeDeadStructural input8637 value4323 value1 value2 = (output8637, value4324, value1))
    (child8640 : Flapjack.WordAlloc.removeDeadStructural input8640 value4324 value1 value2 = (output8640, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8641 value4323 value1 value2 = (output8641, value5, value1) := by
  rw [input8641_def, output8641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8637]
  dsimp only
  rw [child8640]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8637_skip, output8640_skip]
  kernel_rfl

theorem node8642_cond_eq
    (child8636 : Flapjack.WordAlloc.removeDeadStructural input8636 value4322 value1 value2 = (output8636, value4323, value1))
    (child8641 : Flapjack.WordAlloc.removeDeadStructural input8641 value4323 value1 value2 = (output8641, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8642 value4322 value1 value2 = (output8642, value5, value1) := by
  rw [input8642_def, output8642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8636]
  dsimp only
  rw [child8641]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8636_skip, output8641_skip]
  kernel_rfl

theorem node8643_cond_eq
    (child8635 : Flapjack.WordAlloc.removeDeadStructural input8635 value4320 value1 value2 = (output8635, value4322, value1))
    (child8642 : Flapjack.WordAlloc.removeDeadStructural input8642 value4322 value1 value2 = (output8642, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8643 value4320 value1 value2 = (output8643, value5, value1) := by
  rw [input8643_def, output8643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8635]
  dsimp only
  rw [child8642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8635_skip, output8642_skip]
  kernel_rfl

theorem node8644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8644 value5 value1 value2 = (output8644, value4326, value1) := by
  rw [input8644_def, output8644_def]
  kernel_rfl

theorem node8645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8645 value4326 value1 value2 = (output8645, value4327, value1) := by
  rw [input8645_def, output8645_def]
  kernel_rfl

theorem node8646_cond_eq
    (child8644 : Flapjack.WordAlloc.removeDeadStructural input8644 value5 value1 value2 = (output8644, value4326, value1))
    (child8645 : Flapjack.WordAlloc.removeDeadStructural input8645 value4326 value1 value2 = (output8645, value4327, value1)) : Flapjack.WordAlloc.removeDeadStructural input8646 value5 value1 value2 = (output8646, value4327, value1) := by
  rw [input8646_def, output8646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8644]
  dsimp only
  rw [child8645]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8644_skip, output8645_skip]
  kernel_rfl

theorem node8647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8647 value4327 value1 value2 = (output8647, value4328, value1) := by
  rw [input8647_def, output8647_def]
  kernel_rfl

theorem node8648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8648 value4328 value1 value2 = (output8648, value4328, value1) := by
  rw [input8648_def, output8648_def]
  kernel_rfl

theorem node8649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8649 value4328 value1 value2 = (output8649, value4329, value1) := by
  rw [input8649_def, output8649_def]
  kernel_rfl

theorem node8650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8650 value4329 value1 value2 = (output8650, value4330, value1) := by
  rw [input8650_def, output8650_def]
  kernel_rfl

theorem node8651_cond_eq
    (child8649 : Flapjack.WordAlloc.removeDeadStructural input8649 value4328 value1 value2 = (output8649, value4329, value1))
    (child8650 : Flapjack.WordAlloc.removeDeadStructural input8650 value4329 value1 value2 = (output8650, value4330, value1)) : Flapjack.WordAlloc.removeDeadStructural input8651 value4328 value1 value2 = (output8651, value4330, value1) := by
  rw [input8651_def, output8651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8649]
  dsimp only
  rw [child8650]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8649_skip, output8650_skip]
  kernel_rfl

theorem node8652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8652 value4330 value1 value2 = (output8652, value4331, value1) := by
  rw [input8652_def, output8652_def]
  kernel_rfl

theorem node8653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8653 value4331 value1 value2 = (output8653, value4332, value1) := by
  rw [input8653_def, output8653_def]
  kernel_rfl

theorem node8654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8654 value4332 value1 value2 = (output8654, value4333, value1) := by
  rw [input8654_def, output8654_def]
  kernel_rfl

theorem node8655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8655 value4333 value1 value2 = (output8655, value5, value1) := by
  rw [input8655_def, output8655_def]
  kernel_rfl

theorem node8656_cond_eq
    (child8654 : Flapjack.WordAlloc.removeDeadStructural input8654 value4332 value1 value2 = (output8654, value4333, value1))
    (child8655 : Flapjack.WordAlloc.removeDeadStructural input8655 value4333 value1 value2 = (output8655, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8656 value4332 value1 value2 = (output8656, value5, value1) := by
  rw [input8656_def, output8656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8654]
  dsimp only
  rw [child8655]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8654_skip, output8655_skip]
  kernel_rfl

theorem node8657_cond_eq
    (child8653 : Flapjack.WordAlloc.removeDeadStructural input8653 value4331 value1 value2 = (output8653, value4332, value1))
    (child8656 : Flapjack.WordAlloc.removeDeadStructural input8656 value4332 value1 value2 = (output8656, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8657 value4331 value1 value2 = (output8657, value5, value1) := by
  rw [input8657_def, output8657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8653]
  dsimp only
  rw [child8656]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8653_skip, output8656_skip]
  kernel_rfl

theorem node8658_cond_eq
    (child8652 : Flapjack.WordAlloc.removeDeadStructural input8652 value4330 value1 value2 = (output8652, value4331, value1))
    (child8657 : Flapjack.WordAlloc.removeDeadStructural input8657 value4331 value1 value2 = (output8657, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8658 value4330 value1 value2 = (output8658, value5, value1) := by
  rw [input8658_def, output8658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8652]
  dsimp only
  rw [child8657]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8652_skip, output8657_skip]
  kernel_rfl

theorem node8659_cond_eq
    (child8651 : Flapjack.WordAlloc.removeDeadStructural input8651 value4328 value1 value2 = (output8651, value4330, value1))
    (child8658 : Flapjack.WordAlloc.removeDeadStructural input8658 value4330 value1 value2 = (output8658, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8659 value4328 value1 value2 = (output8659, value5, value1) := by
  rw [input8659_def, output8659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8651]
  dsimp only
  rw [child8658]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8651_skip, output8658_skip]
  kernel_rfl

theorem node8660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8660 value5 value1 value2 = (output8660, value4334, value1) := by
  rw [input8660_def, output8660_def]
  kernel_rfl

theorem node8661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8661 value4334 value1 value2 = (output8661, value4335, value1) := by
  rw [input8661_def, output8661_def]
  kernel_rfl

theorem node8662_cond_eq
    (child8660 : Flapjack.WordAlloc.removeDeadStructural input8660 value5 value1 value2 = (output8660, value4334, value1))
    (child8661 : Flapjack.WordAlloc.removeDeadStructural input8661 value4334 value1 value2 = (output8661, value4335, value1)) : Flapjack.WordAlloc.removeDeadStructural input8662 value5 value1 value2 = (output8662, value4335, value1) := by
  rw [input8662_def, output8662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8660]
  dsimp only
  rw [child8661]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8660_skip, output8661_skip]
  kernel_rfl

theorem node8663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8663 value4335 value1 value2 = (output8663, value4336, value1) := by
  rw [input8663_def, output8663_def]
  kernel_rfl

theorem node8664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8664 value4336 value1 value2 = (output8664, value4336, value1) := by
  rw [input8664_def, output8664_def]
  kernel_rfl

theorem node8665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8665 value4336 value1 value2 = (output8665, value4337, value1) := by
  rw [input8665_def, output8665_def]
  kernel_rfl

theorem node8666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8666 value4337 value1 value2 = (output8666, value4338, value1) := by
  rw [input8666_def, output8666_def]
  kernel_rfl

theorem node8667_cond_eq
    (child8665 : Flapjack.WordAlloc.removeDeadStructural input8665 value4336 value1 value2 = (output8665, value4337, value1))
    (child8666 : Flapjack.WordAlloc.removeDeadStructural input8666 value4337 value1 value2 = (output8666, value4338, value1)) : Flapjack.WordAlloc.removeDeadStructural input8667 value4336 value1 value2 = (output8667, value4338, value1) := by
  rw [input8667_def, output8667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8665]
  dsimp only
  rw [child8666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8665_skip, output8666_skip]
  kernel_rfl

theorem node8668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8668 value4338 value1 value2 = (output8668, value4339, value1) := by
  rw [input8668_def, output8668_def]
  kernel_rfl

theorem node8669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8669 value4339 value1 value2 = (output8669, value4340, value1) := by
  rw [input8669_def, output8669_def]
  kernel_rfl

theorem node8670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8670 value4340 value1 value2 = (output8670, value4341, value1) := by
  rw [input8670_def, output8670_def]
  kernel_rfl

theorem node8671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8671 value4341 value1 value2 = (output8671, value5, value1) := by
  rw [input8671_def, output8671_def]
  kernel_rfl

theorem node8672_cond_eq
    (child8670 : Flapjack.WordAlloc.removeDeadStructural input8670 value4340 value1 value2 = (output8670, value4341, value1))
    (child8671 : Flapjack.WordAlloc.removeDeadStructural input8671 value4341 value1 value2 = (output8671, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8672 value4340 value1 value2 = (output8672, value5, value1) := by
  rw [input8672_def, output8672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8670]
  dsimp only
  rw [child8671]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8670_skip, output8671_skip]
  kernel_rfl

theorem node8673_cond_eq
    (child8669 : Flapjack.WordAlloc.removeDeadStructural input8669 value4339 value1 value2 = (output8669, value4340, value1))
    (child8672 : Flapjack.WordAlloc.removeDeadStructural input8672 value4340 value1 value2 = (output8672, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8673 value4339 value1 value2 = (output8673, value5, value1) := by
  rw [input8673_def, output8673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8669]
  dsimp only
  rw [child8672]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8669_skip, output8672_skip]
  kernel_rfl

theorem node8674_cond_eq
    (child8668 : Flapjack.WordAlloc.removeDeadStructural input8668 value4338 value1 value2 = (output8668, value4339, value1))
    (child8673 : Flapjack.WordAlloc.removeDeadStructural input8673 value4339 value1 value2 = (output8673, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8674 value4338 value1 value2 = (output8674, value5, value1) := by
  rw [input8674_def, output8674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8668]
  dsimp only
  rw [child8673]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8668_skip, output8673_skip]
  kernel_rfl

theorem node8675_cond_eq
    (child8667 : Flapjack.WordAlloc.removeDeadStructural input8667 value4336 value1 value2 = (output8667, value4338, value1))
    (child8674 : Flapjack.WordAlloc.removeDeadStructural input8674 value4338 value1 value2 = (output8674, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8675 value4336 value1 value2 = (output8675, value5, value1) := by
  rw [input8675_def, output8675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8667]
  dsimp only
  rw [child8674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8667_skip, output8674_skip]
  kernel_rfl

theorem node8676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8676 value5 value1 value2 = (output8676, value4342, value1) := by
  rw [input8676_def, output8676_def]
  kernel_rfl

theorem node8677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8677 value4342 value1 value2 = (output8677, value4343, value1) := by
  rw [input8677_def, output8677_def]
  kernel_rfl

theorem node8678_cond_eq
    (child8676 : Flapjack.WordAlloc.removeDeadStructural input8676 value5 value1 value2 = (output8676, value4342, value1))
    (child8677 : Flapjack.WordAlloc.removeDeadStructural input8677 value4342 value1 value2 = (output8677, value4343, value1)) : Flapjack.WordAlloc.removeDeadStructural input8678 value5 value1 value2 = (output8678, value4343, value1) := by
  rw [input8678_def, output8678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8676]
  dsimp only
  rw [child8677]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8676_skip, output8677_skip]
  kernel_rfl

theorem node8679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8679 value4343 value1 value2 = (output8679, value4344, value1) := by
  rw [input8679_def, output8679_def]
  kernel_rfl

theorem node8680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8680 value4344 value1 value2 = (output8680, value4344, value1) := by
  rw [input8680_def, output8680_def]
  kernel_rfl

theorem node8681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8681 value4344 value1 value2 = (output8681, value4345, value1) := by
  rw [input8681_def, output8681_def]
  kernel_rfl

theorem node8682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8682 value4345 value1 value2 = (output8682, value4346, value1) := by
  rw [input8682_def, output8682_def]
  kernel_rfl

theorem node8683_cond_eq
    (child8681 : Flapjack.WordAlloc.removeDeadStructural input8681 value4344 value1 value2 = (output8681, value4345, value1))
    (child8682 : Flapjack.WordAlloc.removeDeadStructural input8682 value4345 value1 value2 = (output8682, value4346, value1)) : Flapjack.WordAlloc.removeDeadStructural input8683 value4344 value1 value2 = (output8683, value4346, value1) := by
  rw [input8683_def, output8683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8681]
  dsimp only
  rw [child8682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8681_skip, output8682_skip]
  kernel_rfl

theorem node8684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8684 value4346 value1 value2 = (output8684, value4347, value1) := by
  rw [input8684_def, output8684_def]
  kernel_rfl

theorem node8685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8685 value4347 value1 value2 = (output8685, value4348, value1) := by
  rw [input8685_def, output8685_def]
  kernel_rfl

theorem node8686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8686 value4348 value1 value2 = (output8686, value4349, value1) := by
  rw [input8686_def, output8686_def]
  kernel_rfl

theorem node8687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8687 value4349 value1 value2 = (output8687, value5, value1) := by
  rw [input8687_def, output8687_def]
  kernel_rfl

theorem node8688_cond_eq
    (child8686 : Flapjack.WordAlloc.removeDeadStructural input8686 value4348 value1 value2 = (output8686, value4349, value1))
    (child8687 : Flapjack.WordAlloc.removeDeadStructural input8687 value4349 value1 value2 = (output8687, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8688 value4348 value1 value2 = (output8688, value5, value1) := by
  rw [input8688_def, output8688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8686]
  dsimp only
  rw [child8687]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8686_skip, output8687_skip]
  kernel_rfl

theorem node8689_cond_eq
    (child8685 : Flapjack.WordAlloc.removeDeadStructural input8685 value4347 value1 value2 = (output8685, value4348, value1))
    (child8688 : Flapjack.WordAlloc.removeDeadStructural input8688 value4348 value1 value2 = (output8688, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8689 value4347 value1 value2 = (output8689, value5, value1) := by
  rw [input8689_def, output8689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8685]
  dsimp only
  rw [child8688]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8685_skip, output8688_skip]
  kernel_rfl

theorem node8690_cond_eq
    (child8684 : Flapjack.WordAlloc.removeDeadStructural input8684 value4346 value1 value2 = (output8684, value4347, value1))
    (child8689 : Flapjack.WordAlloc.removeDeadStructural input8689 value4347 value1 value2 = (output8689, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8690 value4346 value1 value2 = (output8690, value5, value1) := by
  rw [input8690_def, output8690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8684]
  dsimp only
  rw [child8689]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8684_skip, output8689_skip]
  kernel_rfl

theorem node8691_cond_eq
    (child8683 : Flapjack.WordAlloc.removeDeadStructural input8683 value4344 value1 value2 = (output8683, value4346, value1))
    (child8690 : Flapjack.WordAlloc.removeDeadStructural input8690 value4346 value1 value2 = (output8690, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8691 value4344 value1 value2 = (output8691, value5, value1) := by
  rw [input8691_def, output8691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8683]
  dsimp only
  rw [child8690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8683_skip, output8690_skip]
  kernel_rfl

theorem node8692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8692 value5 value1 value2 = (output8692, value4350, value1) := by
  rw [input8692_def, output8692_def]
  kernel_rfl

theorem node8693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8693 value4350 value1 value2 = (output8693, value4351, value1) := by
  rw [input8693_def, output8693_def]
  kernel_rfl

theorem node8694_cond_eq
    (child8692 : Flapjack.WordAlloc.removeDeadStructural input8692 value5 value1 value2 = (output8692, value4350, value1))
    (child8693 : Flapjack.WordAlloc.removeDeadStructural input8693 value4350 value1 value2 = (output8693, value4351, value1)) : Flapjack.WordAlloc.removeDeadStructural input8694 value5 value1 value2 = (output8694, value4351, value1) := by
  rw [input8694_def, output8694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8692]
  dsimp only
  rw [child8693]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8692_skip, output8693_skip]
  kernel_rfl

theorem node8695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8695 value4351 value1 value2 = (output8695, value4352, value1) := by
  rw [input8695_def, output8695_def]
  kernel_rfl

theorem node8696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8696 value4352 value1 value2 = (output8696, value4352, value1) := by
  rw [input8696_def, output8696_def]
  kernel_rfl

theorem node8697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8697 value4352 value1 value2 = (output8697, value4353, value1) := by
  rw [input8697_def, output8697_def]
  kernel_rfl

theorem node8698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8698 value4353 value1 value2 = (output8698, value4354, value1) := by
  rw [input8698_def, output8698_def]
  kernel_rfl

theorem node8699_cond_eq
    (child8697 : Flapjack.WordAlloc.removeDeadStructural input8697 value4352 value1 value2 = (output8697, value4353, value1))
    (child8698 : Flapjack.WordAlloc.removeDeadStructural input8698 value4353 value1 value2 = (output8698, value4354, value1)) : Flapjack.WordAlloc.removeDeadStructural input8699 value4352 value1 value2 = (output8699, value4354, value1) := by
  rw [input8699_def, output8699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8697]
  dsimp only
  rw [child8698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8697_skip, output8698_skip]
  kernel_rfl

theorem node8700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8700 value4354 value1 value2 = (output8700, value4355, value1) := by
  rw [input8700_def, output8700_def]
  kernel_rfl

theorem node8701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8701 value4355 value1 value2 = (output8701, value4356, value1) := by
  rw [input8701_def, output8701_def]
  kernel_rfl

theorem node8702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8702 value4356 value1 value2 = (output8702, value4357, value1) := by
  rw [input8702_def, output8702_def]
  kernel_rfl

theorem node8703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8703 value4357 value1 value2 = (output8703, value5, value1) := by
  rw [input8703_def, output8703_def]
  kernel_rfl

#print axioms node8703_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
