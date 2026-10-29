import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree4416_agree_conditional
    (child0 : tree4414 = literal4414)
    (child1 : tree4415 = literal4415) : tree4416 = literal4416 := by
  rw [tree4416_def, child0, child1]
  rfl
theorem node4416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4414 live4414 coloured4414 = result4414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4415 live4415 coloured4415 = result4415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4416 live4416 coloured4416 = result4416 := by
  rw [tree4416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4414 coloured4414 at child
  try dsimp only [live4416, coloured4416]
  rw [child]
  dsimp only [result4414]
  have child := child1
  unfold live4415 coloured4415 at child
  try dsimp only [live4416, coloured4416]
  rw [child]
  dsimp only [result4415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4417_agree_conditional : tree4417 = literal4417 := by
  rw [tree4417_def]
  rfl
theorem node4417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4417 live4417 coloured4417 = result4417 := by
  rw [tree4417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4418_agree_conditional
    (child0 : tree4416 = literal4416)
    (child1 : tree4417 = literal4417) : tree4418 = literal4418 := by
  rw [tree4418_def, child0, child1]
  rfl
theorem node4418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4416 live4416 coloured4416 = result4416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4417 live4417 coloured4417 = result4417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4418 live4418 coloured4418 = result4418 := by
  rw [tree4418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4416 coloured4416 at child
  try dsimp only [live4418, coloured4418]
  rw [child]
  dsimp only [result4416]
  have child := child1
  unfold live4417 coloured4417 at child
  try dsimp only [live4418, coloured4418]
  rw [child]
  dsimp only [result4417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4419_agree_conditional : tree4419 = literal4419 := by
  rw [tree4419_def]
  rfl
theorem node4419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4419 live4419 coloured4419 = result4419 := by
  rw [tree4419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4420_agree_conditional
    (child0 : tree4418 = literal4418)
    (child1 : tree4419 = literal4419) : tree4420 = literal4420 := by
  rw [tree4420_def, child0, child1]
  rfl
theorem node4420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4418 live4418 coloured4418 = result4418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4419 live4419 coloured4419 = result4419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4420 live4420 coloured4420 = result4420 := by
  rw [tree4420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4418 coloured4418 at child
  try dsimp only [live4420, coloured4420]
  rw [child]
  dsimp only [result4418]
  have child := child1
  unfold live4419 coloured4419 at child
  try dsimp only [live4420, coloured4420]
  rw [child]
  dsimp only [result4419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4421_agree_conditional : tree4421 = literal4421 := by
  rw [tree4421_def]
  rfl
theorem node4421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4421 live4421 coloured4421 = result4421 := by
  rw [tree4421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4422_agree_conditional
    (child0 : tree4420 = literal4420)
    (child1 : tree4421 = literal4421) : tree4422 = literal4422 := by
  rw [tree4422_def, child0, child1]
  rfl
theorem node4422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4420 live4420 coloured4420 = result4420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4421 live4421 coloured4421 = result4421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4422 live4422 coloured4422 = result4422 := by
  rw [tree4422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4420 coloured4420 at child
  try dsimp only [live4422, coloured4422]
  rw [child]
  dsimp only [result4420]
  have child := child1
  unfold live4421 coloured4421 at child
  try dsimp only [live4422, coloured4422]
  rw [child]
  dsimp only [result4421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4423_agree_conditional : tree4423 = literal4423 := by
  rw [tree4423_def]
  rfl
theorem node4423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4423 live4423 coloured4423 = result4423 := by
  rw [tree4423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4424_agree_conditional
    (child0 : tree4422 = literal4422)
    (child1 : tree4423 = literal4423) : tree4424 = literal4424 := by
  rw [tree4424_def, child0, child1]
  rfl
theorem node4424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4422 live4422 coloured4422 = result4422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4423 live4423 coloured4423 = result4423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4424 live4424 coloured4424 = result4424 := by
  rw [tree4424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4422 coloured4422 at child
  try dsimp only [live4424, coloured4424]
  rw [child]
  dsimp only [result4422]
  have child := child1
  unfold live4423 coloured4423 at child
  try dsimp only [live4424, coloured4424]
  rw [child]
  dsimp only [result4423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4425_agree_conditional : tree4425 = literal4425 := by
  rw [tree4425_def]
  rfl
theorem node4425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4425 live4425 coloured4425 = result4425 := by
  rw [tree4425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4426_agree_conditional
    (child0 : tree4424 = literal4424)
    (child1 : tree4425 = literal4425) : tree4426 = literal4426 := by
  rw [tree4426_def, child0, child1]
  rfl
theorem node4426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4424 live4424 coloured4424 = result4424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4425 live4425 coloured4425 = result4425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4426 live4426 coloured4426 = result4426 := by
  rw [tree4426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4424 coloured4424 at child
  try dsimp only [live4426, coloured4426]
  rw [child]
  dsimp only [result4424]
  have child := child1
  unfold live4425 coloured4425 at child
  try dsimp only [live4426, coloured4426]
  rw [child]
  dsimp only [result4425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4427_agree_conditional : tree4427 = literal4427 := by
  rw [tree4427_def]
  rfl
theorem node4427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4427 live4427 coloured4427 = result4427 := by
  rw [tree4427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4428_agree_conditional
    (child0 : tree4426 = literal4426)
    (child1 : tree4427 = literal4427) : tree4428 = literal4428 := by
  rw [tree4428_def, child0, child1]
  rfl
theorem node4428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4426 live4426 coloured4426 = result4426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4427 live4427 coloured4427 = result4427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4428 live4428 coloured4428 = result4428 := by
  rw [tree4428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4426 coloured4426 at child
  try dsimp only [live4428, coloured4428]
  rw [child]
  dsimp only [result4426]
  have child := child1
  unfold live4427 coloured4427 at child
  try dsimp only [live4428, coloured4428]
  rw [child]
  dsimp only [result4427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4429_agree_conditional : tree4429 = literal4429 := by
  rw [tree4429_def]
  rfl
theorem node4429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4429 live4429 coloured4429 = result4429 := by
  rw [tree4429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4430_agree_conditional
    (child0 : tree4428 = literal4428)
    (child1 : tree4429 = literal4429) : tree4430 = literal4430 := by
  rw [tree4430_def, child0, child1]
  rfl
theorem node4430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4428 live4428 coloured4428 = result4428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4429 live4429 coloured4429 = result4429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4430 live4430 coloured4430 = result4430 := by
  rw [tree4430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4428 coloured4428 at child
  try dsimp only [live4430, coloured4430]
  rw [child]
  dsimp only [result4428]
  have child := child1
  unfold live4429 coloured4429 at child
  try dsimp only [live4430, coloured4430]
  rw [child]
  dsimp only [result4429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4431_agree_conditional : tree4431 = literal4431 := by
  rw [tree4431_def]
  rfl
theorem node4431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4431 live4431 coloured4431 = result4431 := by
  rw [tree4431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4432_agree_conditional
    (child0 : tree4430 = literal4430)
    (child1 : tree4431 = literal4431) : tree4432 = literal4432 := by
  rw [tree4432_def, child0, child1]
  rfl
theorem node4432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4430 live4430 coloured4430 = result4430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4431 live4431 coloured4431 = result4431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4432 live4432 coloured4432 = result4432 := by
  rw [tree4432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4430 coloured4430 at child
  try dsimp only [live4432, coloured4432]
  rw [child]
  dsimp only [result4430]
  have child := child1
  unfold live4431 coloured4431 at child
  try dsimp only [live4432, coloured4432]
  rw [child]
  dsimp only [result4431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4433_agree_conditional : tree4433 = literal4433 := by
  rw [tree4433_def]
  rfl
theorem node4433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4433 live4433 coloured4433 = result4433 := by
  rw [tree4433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4434_agree_conditional
    (child0 : tree4432 = literal4432)
    (child1 : tree4433 = literal4433) : tree4434 = literal4434 := by
  rw [tree4434_def, child0, child1]
  rfl
theorem node4434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4432 live4432 coloured4432 = result4432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4433 live4433 coloured4433 = result4433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4434 live4434 coloured4434 = result4434 := by
  rw [tree4434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4432 coloured4432 at child
  try dsimp only [live4434, coloured4434]
  rw [child]
  dsimp only [result4432]
  have child := child1
  unfold live4433 coloured4433 at child
  try dsimp only [live4434, coloured4434]
  rw [child]
  dsimp only [result4433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4435_agree_conditional : tree4435 = literal4435 := by
  rw [tree4435_def]
  rfl
theorem node4435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4435 live4435 coloured4435 = result4435 := by
  rw [tree4435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4436_agree_conditional
    (child0 : tree4434 = literal4434)
    (child1 : tree4435 = literal4435) : tree4436 = literal4436 := by
  rw [tree4436_def, child0, child1]
  rfl
theorem node4436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4434 live4434 coloured4434 = result4434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4435 live4435 coloured4435 = result4435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4436 live4436 coloured4436 = result4436 := by
  rw [tree4436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4434 coloured4434 at child
  try dsimp only [live4436, coloured4436]
  rw [child]
  dsimp only [result4434]
  have child := child1
  unfold live4435 coloured4435 at child
  try dsimp only [live4436, coloured4436]
  rw [child]
  dsimp only [result4435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4437_agree_conditional : tree4437 = literal4437 := by
  rw [tree4437_def]
  rfl
theorem node4437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4437 live4437 coloured4437 = result4437 := by
  rw [tree4437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4438_agree_conditional
    (child0 : tree4436 = literal4436)
    (child1 : tree4437 = literal4437) : tree4438 = literal4438 := by
  rw [tree4438_def, child0, child1]
  rfl
theorem node4438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4436 live4436 coloured4436 = result4436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4437 live4437 coloured4437 = result4437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4438 live4438 coloured4438 = result4438 := by
  rw [tree4438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4436 coloured4436 at child
  try dsimp only [live4438, coloured4438]
  rw [child]
  dsimp only [result4436]
  have child := child1
  unfold live4437 coloured4437 at child
  try dsimp only [live4438, coloured4438]
  rw [child]
  dsimp only [result4437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4439_agree_conditional : tree4439 = literal4439 := by
  rw [tree4439_def]
  rfl
theorem node4439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4439 live4439 coloured4439 = result4439 := by
  rw [tree4439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4440_agree_conditional
    (child0 : tree4438 = literal4438)
    (child1 : tree4439 = literal4439) : tree4440 = literal4440 := by
  rw [tree4440_def, child0, child1]
  rfl
theorem node4440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4438 live4438 coloured4438 = result4438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4439 live4439 coloured4439 = result4439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4440 live4440 coloured4440 = result4440 := by
  rw [tree4440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4438 coloured4438 at child
  try dsimp only [live4440, coloured4440]
  rw [child]
  dsimp only [result4438]
  have child := child1
  unfold live4439 coloured4439 at child
  try dsimp only [live4440, coloured4440]
  rw [child]
  dsimp only [result4439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4441_agree_conditional : tree4441 = literal4441 := by
  rw [tree4441_def]
  rfl
theorem node4441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4441 live4441 coloured4441 = result4441 := by
  rw [tree4441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4442_agree_conditional
    (child0 : tree4440 = literal4440)
    (child1 : tree4441 = literal4441) : tree4442 = literal4442 := by
  rw [tree4442_def, child0, child1]
  rfl
theorem node4442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4440 live4440 coloured4440 = result4440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4441 live4441 coloured4441 = result4441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4442 live4442 coloured4442 = result4442 := by
  rw [tree4442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4440 coloured4440 at child
  try dsimp only [live4442, coloured4442]
  rw [child]
  dsimp only [result4440]
  have child := child1
  unfold live4441 coloured4441 at child
  try dsimp only [live4442, coloured4442]
  rw [child]
  dsimp only [result4441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4443_agree_conditional : tree4443 = literal4443 := by
  rw [tree4443_def]
  rfl
theorem node4443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4443 live4443 coloured4443 = result4443 := by
  rw [tree4443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4444_agree_conditional
    (child0 : tree4442 = literal4442)
    (child1 : tree4443 = literal4443) : tree4444 = literal4444 := by
  rw [tree4444_def, child0, child1]
  rfl
theorem node4444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4442 live4442 coloured4442 = result4442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4443 live4443 coloured4443 = result4443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4444 live4444 coloured4444 = result4444 := by
  rw [tree4444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4442 coloured4442 at child
  try dsimp only [live4444, coloured4444]
  rw [child]
  dsimp only [result4442]
  have child := child1
  unfold live4443 coloured4443 at child
  try dsimp only [live4444, coloured4444]
  rw [child]
  dsimp only [result4443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4445_agree_conditional : tree4445 = literal4445 := by
  rw [tree4445_def]
  rfl
theorem node4445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4445 live4445 coloured4445 = result4445 := by
  rw [tree4445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4446_agree_conditional
    (child0 : tree4444 = literal4444)
    (child1 : tree4445 = literal4445) : tree4446 = literal4446 := by
  rw [tree4446_def, child0, child1]
  rfl
theorem node4446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4444 live4444 coloured4444 = result4444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4445 live4445 coloured4445 = result4445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4446 live4446 coloured4446 = result4446 := by
  rw [tree4446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4444 coloured4444 at child
  try dsimp only [live4446, coloured4446]
  rw [child]
  dsimp only [result4444]
  have child := child1
  unfold live4445 coloured4445 at child
  try dsimp only [live4446, coloured4446]
  rw [child]
  dsimp only [result4445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4447_agree_conditional : tree4447 = literal4447 := by
  rw [tree4447_def]
  rfl
theorem node4447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4447 live4447 coloured4447 = result4447 := by
  rw [tree4447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4448_agree_conditional
    (child0 : tree4446 = literal4446)
    (child1 : tree4447 = literal4447) : tree4448 = literal4448 := by
  rw [tree4448_def, child0, child1]
  rfl
theorem node4448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4446 live4446 coloured4446 = result4446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4447 live4447 coloured4447 = result4447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4448 live4448 coloured4448 = result4448 := by
  rw [tree4448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4446 coloured4446 at child
  try dsimp only [live4448, coloured4448]
  rw [child]
  dsimp only [result4446]
  have child := child1
  unfold live4447 coloured4447 at child
  try dsimp only [live4448, coloured4448]
  rw [child]
  dsimp only [result4447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4449_agree_conditional : tree4449 = literal4449 := by
  rw [tree4449_def]
  rfl
theorem node4449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4449 live4449 coloured4449 = result4449 := by
  rw [tree4449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4450_agree_conditional
    (child0 : tree4448 = literal4448)
    (child1 : tree4449 = literal4449) : tree4450 = literal4450 := by
  rw [tree4450_def, child0, child1]
  rfl
theorem node4450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4448 live4448 coloured4448 = result4448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4449 live4449 coloured4449 = result4449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4450 live4450 coloured4450 = result4450 := by
  rw [tree4450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4448 coloured4448 at child
  try dsimp only [live4450, coloured4450]
  rw [child]
  dsimp only [result4448]
  have child := child1
  unfold live4449 coloured4449 at child
  try dsimp only [live4450, coloured4450]
  rw [child]
  dsimp only [result4449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4451_agree_conditional : tree4451 = literal4451 := by
  rw [tree4451_def]
  rfl
theorem node4451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4451 live4451 coloured4451 = result4451 := by
  rw [tree4451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4452_agree_conditional
    (child0 : tree4450 = literal4450)
    (child1 : tree4451 = literal4451) : tree4452 = literal4452 := by
  rw [tree4452_def, child0, child1]
  rfl
theorem node4452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4450 live4450 coloured4450 = result4450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4451 live4451 coloured4451 = result4451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4452 live4452 coloured4452 = result4452 := by
  rw [tree4452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4450 coloured4450 at child
  try dsimp only [live4452, coloured4452]
  rw [child]
  dsimp only [result4450]
  have child := child1
  unfold live4451 coloured4451 at child
  try dsimp only [live4452, coloured4452]
  rw [child]
  dsimp only [result4451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4453_agree_conditional : tree4453 = literal4453 := by
  rw [tree4453_def]
  rfl
theorem node4453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4453 live4453 coloured4453 = result4453 := by
  rw [tree4453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4454_agree_conditional
    (child0 : tree4452 = literal4452)
    (child1 : tree4453 = literal4453) : tree4454 = literal4454 := by
  rw [tree4454_def, child0, child1]
  rfl
theorem node4454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4452 live4452 coloured4452 = result4452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4453 live4453 coloured4453 = result4453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4454 live4454 coloured4454 = result4454 := by
  rw [tree4454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4452 coloured4452 at child
  try dsimp only [live4454, coloured4454]
  rw [child]
  dsimp only [result4452]
  have child := child1
  unfold live4453 coloured4453 at child
  try dsimp only [live4454, coloured4454]
  rw [child]
  dsimp only [result4453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4455_agree_conditional : tree4455 = literal4455 := by
  rw [tree4455_def]
  rfl
theorem node4455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4455 live4455 coloured4455 = result4455 := by
  rw [tree4455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4456_agree_conditional
    (child0 : tree4454 = literal4454)
    (child1 : tree4455 = literal4455) : tree4456 = literal4456 := by
  rw [tree4456_def, child0, child1]
  rfl
theorem node4456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4454 live4454 coloured4454 = result4454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4455 live4455 coloured4455 = result4455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4456 live4456 coloured4456 = result4456 := by
  rw [tree4456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4454 coloured4454 at child
  try dsimp only [live4456, coloured4456]
  rw [child]
  dsimp only [result4454]
  have child := child1
  unfold live4455 coloured4455 at child
  try dsimp only [live4456, coloured4456]
  rw [child]
  dsimp only [result4455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4457_agree_conditional : tree4457 = literal4457 := by
  rw [tree4457_def]
  rfl
theorem node4457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4457 live4457 coloured4457 = result4457 := by
  rw [tree4457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4458_agree_conditional
    (child0 : tree4456 = literal4456)
    (child1 : tree4457 = literal4457) : tree4458 = literal4458 := by
  rw [tree4458_def, child0, child1]
  rfl
theorem node4458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4456 live4456 coloured4456 = result4456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4457 live4457 coloured4457 = result4457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4458 live4458 coloured4458 = result4458 := by
  rw [tree4458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4456 coloured4456 at child
  try dsimp only [live4458, coloured4458]
  rw [child]
  dsimp only [result4456]
  have child := child1
  unfold live4457 coloured4457 at child
  try dsimp only [live4458, coloured4458]
  rw [child]
  dsimp only [result4457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4459_agree_conditional : tree4459 = literal4459 := by
  rw [tree4459_def]
  rfl
theorem node4459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4459 live4459 coloured4459 = result4459 := by
  rw [tree4459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4460_agree_conditional
    (child0 : tree4458 = literal4458)
    (child1 : tree4459 = literal4459) : tree4460 = literal4460 := by
  rw [tree4460_def, child0, child1]
  rfl
theorem node4460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4458 live4458 coloured4458 = result4458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4459 live4459 coloured4459 = result4459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4460 live4460 coloured4460 = result4460 := by
  rw [tree4460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4458 coloured4458 at child
  try dsimp only [live4460, coloured4460]
  rw [child]
  dsimp only [result4458]
  have child := child1
  unfold live4459 coloured4459 at child
  try dsimp only [live4460, coloured4460]
  rw [child]
  dsimp only [result4459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4461_agree_conditional : tree4461 = literal4461 := by
  rw [tree4461_def]
  rfl
theorem node4461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4461 live4461 coloured4461 = result4461 := by
  rw [tree4461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4462_agree_conditional
    (child0 : tree4460 = literal4460)
    (child1 : tree4461 = literal4461) : tree4462 = literal4462 := by
  rw [tree4462_def, child0, child1]
  rfl
theorem node4462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4460 live4460 coloured4460 = result4460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4461 live4461 coloured4461 = result4461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4462 live4462 coloured4462 = result4462 := by
  rw [tree4462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4460 coloured4460 at child
  try dsimp only [live4462, coloured4462]
  rw [child]
  dsimp only [result4460]
  have child := child1
  unfold live4461 coloured4461 at child
  try dsimp only [live4462, coloured4462]
  rw [child]
  dsimp only [result4461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4463_agree_conditional : tree4463 = literal4463 := by
  rw [tree4463_def]
  rfl
theorem node4463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4463 live4463 coloured4463 = result4463 := by
  rw [tree4463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4464_agree_conditional
    (child0 : tree4462 = literal4462)
    (child1 : tree4463 = literal4463) : tree4464 = literal4464 := by
  rw [tree4464_def, child0, child1]
  rfl
theorem node4464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4462 live4462 coloured4462 = result4462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4463 live4463 coloured4463 = result4463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4464 live4464 coloured4464 = result4464 := by
  rw [tree4464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4462 coloured4462 at child
  try dsimp only [live4464, coloured4464]
  rw [child]
  dsimp only [result4462]
  have child := child1
  unfold live4463 coloured4463 at child
  try dsimp only [live4464, coloured4464]
  rw [child]
  dsimp only [result4463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4465_agree_conditional : tree4465 = literal4465 := by
  rw [tree4465_def]
  rfl
theorem node4465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4465 live4465 coloured4465 = result4465 := by
  rw [tree4465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4466_agree_conditional
    (child0 : tree4464 = literal4464)
    (child1 : tree4465 = literal4465) : tree4466 = literal4466 := by
  rw [tree4466_def, child0, child1]
  rfl
theorem node4466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4464 live4464 coloured4464 = result4464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4465 live4465 coloured4465 = result4465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4466 live4466 coloured4466 = result4466 := by
  rw [tree4466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4464 coloured4464 at child
  try dsimp only [live4466, coloured4466]
  rw [child]
  dsimp only [result4464]
  have child := child1
  unfold live4465 coloured4465 at child
  try dsimp only [live4466, coloured4466]
  rw [child]
  dsimp only [result4465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4467_agree_conditional : tree4467 = literal4467 := by
  rw [tree4467_def]
  rfl
theorem node4467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4467 live4467 coloured4467 = result4467 := by
  rw [tree4467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4468_agree_conditional
    (child0 : tree4466 = literal4466)
    (child1 : tree4467 = literal4467) : tree4468 = literal4468 := by
  rw [tree4468_def, child0, child1]
  rfl
theorem node4468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4466 live4466 coloured4466 = result4466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4467 live4467 coloured4467 = result4467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4468 live4468 coloured4468 = result4468 := by
  rw [tree4468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4466 coloured4466 at child
  try dsimp only [live4468, coloured4468]
  rw [child]
  dsimp only [result4466]
  have child := child1
  unfold live4467 coloured4467 at child
  try dsimp only [live4468, coloured4468]
  rw [child]
  dsimp only [result4467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4469_agree_conditional : tree4469 = literal4469 := by
  rw [tree4469_def]
  rfl
theorem node4469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4469 live4469 coloured4469 = result4469 := by
  rw [tree4469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4470_agree_conditional
    (child0 : tree4468 = literal4468)
    (child1 : tree4469 = literal4469) : tree4470 = literal4470 := by
  rw [tree4470_def, child0, child1]
  rfl
theorem node4470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4468 live4468 coloured4468 = result4468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4469 live4469 coloured4469 = result4469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4470 live4470 coloured4470 = result4470 := by
  rw [tree4470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4468 coloured4468 at child
  try dsimp only [live4470, coloured4470]
  rw [child]
  dsimp only [result4468]
  have child := child1
  unfold live4469 coloured4469 at child
  try dsimp only [live4470, coloured4470]
  rw [child]
  dsimp only [result4469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4471_agree_conditional : tree4471 = literal4471 := by
  rw [tree4471_def]
  rfl
theorem node4471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4471 live4471 coloured4471 = result4471 := by
  rw [tree4471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4472_agree_conditional
    (child0 : tree4470 = literal4470)
    (child1 : tree4471 = literal4471) : tree4472 = literal4472 := by
  rw [tree4472_def, child0, child1]
  rfl
theorem node4472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4470 live4470 coloured4470 = result4470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4471 live4471 coloured4471 = result4471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4472 live4472 coloured4472 = result4472 := by
  rw [tree4472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4470 coloured4470 at child
  try dsimp only [live4472, coloured4472]
  rw [child]
  dsimp only [result4470]
  have child := child1
  unfold live4471 coloured4471 at child
  try dsimp only [live4472, coloured4472]
  rw [child]
  dsimp only [result4471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4473_agree_conditional : tree4473 = literal4473 := by
  rw [tree4473_def]
  rfl
theorem node4473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4473 live4473 coloured4473 = result4473 := by
  rw [tree4473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4474_agree_conditional
    (child0 : tree4472 = literal4472)
    (child1 : tree4473 = literal4473) : tree4474 = literal4474 := by
  rw [tree4474_def, child0, child1]
  rfl
theorem node4474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4472 live4472 coloured4472 = result4472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4473 live4473 coloured4473 = result4473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4474 live4474 coloured4474 = result4474 := by
  rw [tree4474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4472 coloured4472 at child
  try dsimp only [live4474, coloured4474]
  rw [child]
  dsimp only [result4472]
  have child := child1
  unfold live4473 coloured4473 at child
  try dsimp only [live4474, coloured4474]
  rw [child]
  dsimp only [result4473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4475_agree_conditional : tree4475 = literal4475 := by
  rw [tree4475_def]
  rfl
theorem node4475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4475 live4475 coloured4475 = result4475 := by
  rw [tree4475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4476_agree_conditional
    (child0 : tree4474 = literal4474)
    (child1 : tree4475 = literal4475) : tree4476 = literal4476 := by
  rw [tree4476_def, child0, child1]
  rfl
theorem node4476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4474 live4474 coloured4474 = result4474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4475 live4475 coloured4475 = result4475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4476 live4476 coloured4476 = result4476 := by
  rw [tree4476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4474 coloured4474 at child
  try dsimp only [live4476, coloured4476]
  rw [child]
  dsimp only [result4474]
  have child := child1
  unfold live4475 coloured4475 at child
  try dsimp only [live4476, coloured4476]
  rw [child]
  dsimp only [result4475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4477_agree_conditional : tree4477 = literal4477 := by
  rw [tree4477_def]
  rfl
theorem node4477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4477 live4477 coloured4477 = result4477 := by
  rw [tree4477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4478_agree_conditional
    (child0 : tree4476 = literal4476)
    (child1 : tree4477 = literal4477) : tree4478 = literal4478 := by
  rw [tree4478_def, child0, child1]
  rfl
theorem node4478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4476 live4476 coloured4476 = result4476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4477 live4477 coloured4477 = result4477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4478 live4478 coloured4478 = result4478 := by
  rw [tree4478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4476 coloured4476 at child
  try dsimp only [live4478, coloured4478]
  rw [child]
  dsimp only [result4476]
  have child := child1
  unfold live4477 coloured4477 at child
  try dsimp only [live4478, coloured4478]
  rw [child]
  dsimp only [result4477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4479_agree_conditional : tree4479 = literal4479 := by
  rw [tree4479_def]
  rfl
theorem node4479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4479 live4479 coloured4479 = result4479 := by
  rw [tree4479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4480_agree_conditional
    (child0 : tree4478 = literal4478)
    (child1 : tree4479 = literal4479) : tree4480 = literal4480 := by
  rw [tree4480_def, child0, child1]
  rfl
theorem node4480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4478 live4478 coloured4478 = result4478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4479 live4479 coloured4479 = result4479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4480 live4480 coloured4480 = result4480 := by
  rw [tree4480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4478 coloured4478 at child
  try dsimp only [live4480, coloured4480]
  rw [child]
  dsimp only [result4478]
  have child := child1
  unfold live4479 coloured4479 at child
  try dsimp only [live4480, coloured4480]
  rw [child]
  dsimp only [result4479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4481_agree_conditional : tree4481 = literal4481 := by
  rw [tree4481_def]
  rfl
theorem node4481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4481 live4481 coloured4481 = result4481 := by
  rw [tree4481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4482_agree_conditional
    (child0 : tree4480 = literal4480)
    (child1 : tree4481 = literal4481) : tree4482 = literal4482 := by
  rw [tree4482_def, child0, child1]
  rfl
theorem node4482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4480 live4480 coloured4480 = result4480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4481 live4481 coloured4481 = result4481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4482 live4482 coloured4482 = result4482 := by
  rw [tree4482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4480 coloured4480 at child
  try dsimp only [live4482, coloured4482]
  rw [child]
  dsimp only [result4480]
  have child := child1
  unfold live4481 coloured4481 at child
  try dsimp only [live4482, coloured4482]
  rw [child]
  dsimp only [result4481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4483_agree_conditional : tree4483 = literal4483 := by
  rw [tree4483_def]
  rfl
theorem node4483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4483 live4483 coloured4483 = result4483 := by
  rw [tree4483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4484_agree_conditional
    (child0 : tree4482 = literal4482)
    (child1 : tree4483 = literal4483) : tree4484 = literal4484 := by
  rw [tree4484_def, child0, child1]
  rfl
theorem node4484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4482 live4482 coloured4482 = result4482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4483 live4483 coloured4483 = result4483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4484 live4484 coloured4484 = result4484 := by
  rw [tree4484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4482 coloured4482 at child
  try dsimp only [live4484, coloured4484]
  rw [child]
  dsimp only [result4482]
  have child := child1
  unfold live4483 coloured4483 at child
  try dsimp only [live4484, coloured4484]
  rw [child]
  dsimp only [result4483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4485_agree_conditional : tree4485 = literal4485 := by
  rw [tree4485_def]
  rfl
theorem node4485_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4485 live4485 coloured4485 = result4485 := by
  rw [tree4485_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4486_agree_conditional
    (child0 : tree4484 = literal4484)
    (child1 : tree4485 = literal4485) : tree4486 = literal4486 := by
  rw [tree4486_def, child0, child1]
  rfl
theorem node4486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4484 live4484 coloured4484 = result4484)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4485 live4485 coloured4485 = result4485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4486 live4486 coloured4486 = result4486 := by
  rw [tree4486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4484 coloured4484 at child
  try dsimp only [live4486, coloured4486]
  rw [child]
  dsimp only [result4484]
  have child := child1
  unfold live4485 coloured4485 at child
  try dsimp only [live4486, coloured4486]
  rw [child]
  dsimp only [result4485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4487_agree_conditional : tree4487 = literal4487 := by
  rw [tree4487_def]
  rfl
theorem node4487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4487 live4487 coloured4487 = result4487 := by
  rw [tree4487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4488_agree_conditional
    (child0 : tree4486 = literal4486)
    (child1 : tree4487 = literal4487) : tree4488 = literal4488 := by
  rw [tree4488_def, child0, child1]
  rfl
theorem node4488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4486 live4486 coloured4486 = result4486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4487 live4487 coloured4487 = result4487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4488 live4488 coloured4488 = result4488 := by
  rw [tree4488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4486 coloured4486 at child
  try dsimp only [live4488, coloured4488]
  rw [child]
  dsimp only [result4486]
  have child := child1
  unfold live4487 coloured4487 at child
  try dsimp only [live4488, coloured4488]
  rw [child]
  dsimp only [result4487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4489_agree_conditional : tree4489 = literal4489 := by
  rw [tree4489_def]
  rfl
theorem node4489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4489 live4489 coloured4489 = result4489 := by
  rw [tree4489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4490_agree_conditional
    (child0 : tree4488 = literal4488)
    (child1 : tree4489 = literal4489) : tree4490 = literal4490 := by
  rw [tree4490_def, child0, child1]
  rfl
theorem node4490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4488 live4488 coloured4488 = result4488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4489 live4489 coloured4489 = result4489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4490 live4490 coloured4490 = result4490 := by
  rw [tree4490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4488 coloured4488 at child
  try dsimp only [live4490, coloured4490]
  rw [child]
  dsimp only [result4488]
  have child := child1
  unfold live4489 coloured4489 at child
  try dsimp only [live4490, coloured4490]
  rw [child]
  dsimp only [result4489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4491_agree_conditional : tree4491 = literal4491 := by
  rw [tree4491_def]
  rfl
theorem node4491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4491 live4491 coloured4491 = result4491 := by
  rw [tree4491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4492_agree_conditional
    (child0 : tree4490 = literal4490)
    (child1 : tree4491 = literal4491) : tree4492 = literal4492 := by
  rw [tree4492_def, child0, child1]
  rfl
theorem node4492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4490 live4490 coloured4490 = result4490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4491 live4491 coloured4491 = result4491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4492 live4492 coloured4492 = result4492 := by
  rw [tree4492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4490 coloured4490 at child
  try dsimp only [live4492, coloured4492]
  rw [child]
  dsimp only [result4490]
  have child := child1
  unfold live4491 coloured4491 at child
  try dsimp only [live4492, coloured4492]
  rw [child]
  dsimp only [result4491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4493_agree_conditional : tree4493 = literal4493 := by
  rw [tree4493_def]
  rfl
theorem node4493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4493 live4493 coloured4493 = result4493 := by
  rw [tree4493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4494_agree_conditional
    (child0 : tree4492 = literal4492)
    (child1 : tree4493 = literal4493) : tree4494 = literal4494 := by
  rw [tree4494_def, child0, child1]
  rfl
theorem node4494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4492 live4492 coloured4492 = result4492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4493 live4493 coloured4493 = result4493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4494 live4494 coloured4494 = result4494 := by
  rw [tree4494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4492 coloured4492 at child
  try dsimp only [live4494, coloured4494]
  rw [child]
  dsimp only [result4492]
  have child := child1
  unfold live4493 coloured4493 at child
  try dsimp only [live4494, coloured4494]
  rw [child]
  dsimp only [result4493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4495_agree_conditional : tree4495 = literal4495 := by
  rw [tree4495_def]
  rfl
theorem node4495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4495 live4495 coloured4495 = result4495 := by
  rw [tree4495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4496_agree_conditional
    (child0 : tree4494 = literal4494)
    (child1 : tree4495 = literal4495) : tree4496 = literal4496 := by
  rw [tree4496_def, child0, child1]
  rfl
theorem node4496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4494 live4494 coloured4494 = result4494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4495 live4495 coloured4495 = result4495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4496 live4496 coloured4496 = result4496 := by
  rw [tree4496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4494 coloured4494 at child
  try dsimp only [live4496, coloured4496]
  rw [child]
  dsimp only [result4494]
  have child := child1
  unfold live4495 coloured4495 at child
  try dsimp only [live4496, coloured4496]
  rw [child]
  dsimp only [result4495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4497_agree_conditional : tree4497 = literal4497 := by
  rw [tree4497_def]
  rfl
theorem node4497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4497 live4497 coloured4497 = result4497 := by
  rw [tree4497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4498_agree_conditional
    (child0 : tree4496 = literal4496)
    (child1 : tree4497 = literal4497) : tree4498 = literal4498 := by
  rw [tree4498_def, child0, child1]
  rfl
theorem node4498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4496 live4496 coloured4496 = result4496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4497 live4497 coloured4497 = result4497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4498 live4498 coloured4498 = result4498 := by
  rw [tree4498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4496 coloured4496 at child
  try dsimp only [live4498, coloured4498]
  rw [child]
  dsimp only [result4496]
  have child := child1
  unfold live4497 coloured4497 at child
  try dsimp only [live4498, coloured4498]
  rw [child]
  dsimp only [result4497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4499_agree_conditional : tree4499 = literal4499 := by
  rw [tree4499_def]
  rfl
theorem node4499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4499 live4499 coloured4499 = result4499 := by
  rw [tree4499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4500_agree_conditional
    (child0 : tree4498 = literal4498)
    (child1 : tree4499 = literal4499) : tree4500 = literal4500 := by
  rw [tree4500_def, child0, child1]
  rfl
theorem node4500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4498 live4498 coloured4498 = result4498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4499 live4499 coloured4499 = result4499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4500 live4500 coloured4500 = result4500 := by
  rw [tree4500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4498 coloured4498 at child
  try dsimp only [live4500, coloured4500]
  rw [child]
  dsimp only [result4498]
  have child := child1
  unfold live4499 coloured4499 at child
  try dsimp only [live4500, coloured4500]
  rw [child]
  dsimp only [result4499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4501_agree_conditional : tree4501 = literal4501 := by
  rw [tree4501_def]
  rfl
theorem node4501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4501 live4501 coloured4501 = result4501 := by
  rw [tree4501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4502_agree_conditional
    (child0 : tree4500 = literal4500)
    (child1 : tree4501 = literal4501) : tree4502 = literal4502 := by
  rw [tree4502_def, child0, child1]
  rfl
theorem node4502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4500 live4500 coloured4500 = result4500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4501 live4501 coloured4501 = result4501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4502 live4502 coloured4502 = result4502 := by
  rw [tree4502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4500 coloured4500 at child
  try dsimp only [live4502, coloured4502]
  rw [child]
  dsimp only [result4500]
  have child := child1
  unfold live4501 coloured4501 at child
  try dsimp only [live4502, coloured4502]
  rw [child]
  dsimp only [result4501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4503_agree_conditional : tree4503 = literal4503 := by
  rw [tree4503_def]
  rfl
theorem node4503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4503 live4503 coloured4503 = result4503 := by
  rw [tree4503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4504_agree_conditional
    (child0 : tree4502 = literal4502)
    (child1 : tree4503 = literal4503) : tree4504 = literal4504 := by
  rw [tree4504_def, child0, child1]
  rfl
theorem node4504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4502 live4502 coloured4502 = result4502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4503 live4503 coloured4503 = result4503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4504 live4504 coloured4504 = result4504 := by
  rw [tree4504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4502 coloured4502 at child
  try dsimp only [live4504, coloured4504]
  rw [child]
  dsimp only [result4502]
  have child := child1
  unfold live4503 coloured4503 at child
  try dsimp only [live4504, coloured4504]
  rw [child]
  dsimp only [result4503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4505_agree_conditional : tree4505 = literal4505 := by
  rw [tree4505_def]
  rfl
theorem node4505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4505 live4505 coloured4505 = result4505 := by
  rw [tree4505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4506_agree_conditional
    (child0 : tree4504 = literal4504)
    (child1 : tree4505 = literal4505) : tree4506 = literal4506 := by
  rw [tree4506_def, child0, child1]
  rfl
theorem node4506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4504 live4504 coloured4504 = result4504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4505 live4505 coloured4505 = result4505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4506 live4506 coloured4506 = result4506 := by
  rw [tree4506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4504 coloured4504 at child
  try dsimp only [live4506, coloured4506]
  rw [child]
  dsimp only [result4504]
  have child := child1
  unfold live4505 coloured4505 at child
  try dsimp only [live4506, coloured4506]
  rw [child]
  dsimp only [result4505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4507_agree_conditional : tree4507 = literal4507 := by
  rw [tree4507_def]
  rfl
theorem node4507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4507 live4507 coloured4507 = result4507 := by
  rw [tree4507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4508_agree_conditional
    (child0 : tree4506 = literal4506)
    (child1 : tree4507 = literal4507) : tree4508 = literal4508 := by
  rw [tree4508_def, child0, child1]
  rfl
theorem node4508_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4506 live4506 coloured4506 = result4506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4507 live4507 coloured4507 = result4507) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4508 live4508 coloured4508 = result4508 := by
  rw [tree4508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4506 coloured4506 at child
  try dsimp only [live4508, coloured4508]
  rw [child]
  dsimp only [result4506]
  have child := child1
  unfold live4507 coloured4507 at child
  try dsimp only [live4508, coloured4508]
  rw [child]
  dsimp only [result4507]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4509_agree_conditional : tree4509 = literal4509 := by
  rw [tree4509_def]
  rfl
theorem node4509_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4509 live4509 coloured4509 = result4509 := by
  rw [tree4509_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4510_agree_conditional
    (child0 : tree4508 = literal4508)
    (child1 : tree4509 = literal4509) : tree4510 = literal4510 := by
  rw [tree4510_def, child0, child1]
  rfl
theorem node4510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4508 live4508 coloured4508 = result4508)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4509 live4509 coloured4509 = result4509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4510 live4510 coloured4510 = result4510 := by
  rw [tree4510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4508 coloured4508 at child
  try dsimp only [live4510, coloured4510]
  rw [child]
  dsimp only [result4508]
  have child := child1
  unfold live4509 coloured4509 at child
  try dsimp only [live4510, coloured4510]
  rw [child]
  dsimp only [result4509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4511_agree_conditional : tree4511 = literal4511 := by
  rw [tree4511_def]
  rfl
theorem node4511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4511 live4511 coloured4511 = result4511 := by
  rw [tree4511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
