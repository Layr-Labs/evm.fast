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
theorem tree6432_agree_conditional
    (child0 : tree6430 = literal6430)
    (child1 : tree6431 = literal6431) : tree6432 = literal6432 := by
  rw [tree6432_def, child0, child1]
  rfl
theorem node6432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6430 live6430 coloured6430 = result6430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6431 live6431 coloured6431 = result6431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6432 live6432 coloured6432 = result6432 := by
  rw [tree6432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6430 coloured6430 at child
  try dsimp only [live6432, coloured6432]
  rw [child]
  dsimp only [result6430]
  have child := child1
  unfold live6431 coloured6431 at child
  try dsimp only [live6432, coloured6432]
  rw [child]
  dsimp only [result6431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6433_agree_conditional : tree6433 = literal6433 := by
  rw [tree6433_def]
  rfl
theorem node6433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6433 live6433 coloured6433 = result6433 := by
  rw [tree6433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6434_agree_conditional
    (child0 : tree6432 = literal6432)
    (child1 : tree6433 = literal6433) : tree6434 = literal6434 := by
  rw [tree6434_def, child0, child1]
  rfl
theorem node6434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6432 live6432 coloured6432 = result6432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6433 live6433 coloured6433 = result6433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6434 live6434 coloured6434 = result6434 := by
  rw [tree6434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6432 coloured6432 at child
  try dsimp only [live6434, coloured6434]
  rw [child]
  dsimp only [result6432]
  have child := child1
  unfold live6433 coloured6433 at child
  try dsimp only [live6434, coloured6434]
  rw [child]
  dsimp only [result6433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6435_agree_conditional : tree6435 = literal6435 := by
  rw [tree6435_def]
  rfl
theorem node6435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6435 live6435 coloured6435 = result6435 := by
  rw [tree6435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6436_agree_conditional
    (child0 : tree6434 = literal6434)
    (child1 : tree6435 = literal6435) : tree6436 = literal6436 := by
  rw [tree6436_def, child0, child1]
  rfl
theorem node6436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6434 live6434 coloured6434 = result6434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6435 live6435 coloured6435 = result6435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6436 live6436 coloured6436 = result6436 := by
  rw [tree6436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6434 coloured6434 at child
  try dsimp only [live6436, coloured6436]
  rw [child]
  dsimp only [result6434]
  have child := child1
  unfold live6435 coloured6435 at child
  try dsimp only [live6436, coloured6436]
  rw [child]
  dsimp only [result6435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6437_agree_conditional : tree6437 = literal6437 := by
  rw [tree6437_def]
  rfl
theorem node6437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6437 live6437 coloured6437 = result6437 := by
  rw [tree6437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6438_agree_conditional
    (child0 : tree6436 = literal6436)
    (child1 : tree6437 = literal6437) : tree6438 = literal6438 := by
  rw [tree6438_def, child0, child1]
  rfl
theorem node6438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6436 live6436 coloured6436 = result6436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6437 live6437 coloured6437 = result6437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6438 live6438 coloured6438 = result6438 := by
  rw [tree6438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6436 coloured6436 at child
  try dsimp only [live6438, coloured6438]
  rw [child]
  dsimp only [result6436]
  have child := child1
  unfold live6437 coloured6437 at child
  try dsimp only [live6438, coloured6438]
  rw [child]
  dsimp only [result6437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6439_agree_conditional : tree6439 = literal6439 := by
  rw [tree6439_def]
  rfl
theorem node6439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6439 live6439 coloured6439 = result6439 := by
  rw [tree6439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6440_agree_conditional
    (child0 : tree6438 = literal6438)
    (child1 : tree6439 = literal6439) : tree6440 = literal6440 := by
  rw [tree6440_def, child0, child1]
  rfl
theorem node6440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6438 live6438 coloured6438 = result6438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6439 live6439 coloured6439 = result6439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6440 live6440 coloured6440 = result6440 := by
  rw [tree6440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6438 coloured6438 at child
  try dsimp only [live6440, coloured6440]
  rw [child]
  dsimp only [result6438]
  have child := child1
  unfold live6439 coloured6439 at child
  try dsimp only [live6440, coloured6440]
  rw [child]
  dsimp only [result6439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6441_agree_conditional : tree6441 = literal6441 := by
  rw [tree6441_def]
  rfl
theorem node6441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6441 live6441 coloured6441 = result6441 := by
  rw [tree6441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6442_agree_conditional
    (child0 : tree6440 = literal6440)
    (child1 : tree6441 = literal6441) : tree6442 = literal6442 := by
  rw [tree6442_def, child0, child1]
  rfl
theorem node6442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6440 live6440 coloured6440 = result6440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6441 live6441 coloured6441 = result6441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6442 live6442 coloured6442 = result6442 := by
  rw [tree6442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6440 coloured6440 at child
  try dsimp only [live6442, coloured6442]
  rw [child]
  dsimp only [result6440]
  have child := child1
  unfold live6441 coloured6441 at child
  try dsimp only [live6442, coloured6442]
  rw [child]
  dsimp only [result6441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6443_agree_conditional : tree6443 = literal6443 := by
  rw [tree6443_def]
  rfl
theorem node6443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6443 live6443 coloured6443 = result6443 := by
  rw [tree6443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6444_agree_conditional
    (child0 : tree6442 = literal6442)
    (child1 : tree6443 = literal6443) : tree6444 = literal6444 := by
  rw [tree6444_def, child0, child1]
  rfl
theorem node6444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6442 live6442 coloured6442 = result6442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6443 live6443 coloured6443 = result6443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6444 live6444 coloured6444 = result6444 := by
  rw [tree6444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6442 coloured6442 at child
  try dsimp only [live6444, coloured6444]
  rw [child]
  dsimp only [result6442]
  have child := child1
  unfold live6443 coloured6443 at child
  try dsimp only [live6444, coloured6444]
  rw [child]
  dsimp only [result6443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6445_agree_conditional : tree6445 = literal6445 := by
  rw [tree6445_def]
  rfl
theorem node6445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6445 live6445 coloured6445 = result6445 := by
  rw [tree6445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6446_agree_conditional
    (child0 : tree6444 = literal6444)
    (child1 : tree6445 = literal6445) : tree6446 = literal6446 := by
  rw [tree6446_def, child0, child1]
  rfl
theorem node6446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6444 live6444 coloured6444 = result6444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6445 live6445 coloured6445 = result6445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6446 live6446 coloured6446 = result6446 := by
  rw [tree6446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6444 coloured6444 at child
  try dsimp only [live6446, coloured6446]
  rw [child]
  dsimp only [result6444]
  have child := child1
  unfold live6445 coloured6445 at child
  try dsimp only [live6446, coloured6446]
  rw [child]
  dsimp only [result6445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6447_agree_conditional : tree6447 = literal6447 := by
  rw [tree6447_def]
  rfl
theorem node6447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6447 live6447 coloured6447 = result6447 := by
  rw [tree6447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6448_agree_conditional
    (child0 : tree6446 = literal6446)
    (child1 : tree6447 = literal6447) : tree6448 = literal6448 := by
  rw [tree6448_def, child0, child1]
  rfl
theorem node6448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6446 live6446 coloured6446 = result6446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6447 live6447 coloured6447 = result6447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6448 live6448 coloured6448 = result6448 := by
  rw [tree6448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6446 coloured6446 at child
  try dsimp only [live6448, coloured6448]
  rw [child]
  dsimp only [result6446]
  have child := child1
  unfold live6447 coloured6447 at child
  try dsimp only [live6448, coloured6448]
  rw [child]
  dsimp only [result6447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6449_agree_conditional : tree6449 = literal6449 := by
  rw [tree6449_def]
  rfl
theorem node6449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6449 live6449 coloured6449 = result6449 := by
  rw [tree6449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6450_agree_conditional
    (child0 : tree6448 = literal6448)
    (child1 : tree6449 = literal6449) : tree6450 = literal6450 := by
  rw [tree6450_def, child0, child1]
  rfl
theorem node6450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6448 live6448 coloured6448 = result6448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6449 live6449 coloured6449 = result6449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6450 live6450 coloured6450 = result6450 := by
  rw [tree6450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6448 coloured6448 at child
  try dsimp only [live6450, coloured6450]
  rw [child]
  dsimp only [result6448]
  have child := child1
  unfold live6449 coloured6449 at child
  try dsimp only [live6450, coloured6450]
  rw [child]
  dsimp only [result6449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6451_agree_conditional : tree6451 = literal6451 := by
  rw [tree6451_def]
  rfl
theorem node6451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6451 live6451 coloured6451 = result6451 := by
  rw [tree6451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6452_agree_conditional
    (child0 : tree6450 = literal6450)
    (child1 : tree6451 = literal6451) : tree6452 = literal6452 := by
  rw [tree6452_def, child0, child1]
  rfl
theorem node6452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6450 live6450 coloured6450 = result6450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6451 live6451 coloured6451 = result6451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6452 live6452 coloured6452 = result6452 := by
  rw [tree6452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6450 coloured6450 at child
  try dsimp only [live6452, coloured6452]
  rw [child]
  dsimp only [result6450]
  have child := child1
  unfold live6451 coloured6451 at child
  try dsimp only [live6452, coloured6452]
  rw [child]
  dsimp only [result6451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6453_agree_conditional : tree6453 = literal6453 := by
  rw [tree6453_def]
  rfl
theorem node6453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6453 live6453 coloured6453 = result6453 := by
  rw [tree6453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6454_agree_conditional
    (child0 : tree6452 = literal6452)
    (child1 : tree6453 = literal6453) : tree6454 = literal6454 := by
  rw [tree6454_def, child0, child1]
  rfl
theorem node6454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6452 live6452 coloured6452 = result6452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6453 live6453 coloured6453 = result6453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6454 live6454 coloured6454 = result6454 := by
  rw [tree6454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6452 coloured6452 at child
  try dsimp only [live6454, coloured6454]
  rw [child]
  dsimp only [result6452]
  have child := child1
  unfold live6453 coloured6453 at child
  try dsimp only [live6454, coloured6454]
  rw [child]
  dsimp only [result6453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6455_agree_conditional : tree6455 = literal6455 := by
  rw [tree6455_def]
  rfl
theorem node6455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6455 live6455 coloured6455 = result6455 := by
  rw [tree6455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6456_agree_conditional
    (child0 : tree6454 = literal6454)
    (child1 : tree6455 = literal6455) : tree6456 = literal6456 := by
  rw [tree6456_def, child0, child1]
  rfl
theorem node6456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6454 live6454 coloured6454 = result6454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6455 live6455 coloured6455 = result6455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6456 live6456 coloured6456 = result6456 := by
  rw [tree6456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6454 coloured6454 at child
  try dsimp only [live6456, coloured6456]
  rw [child]
  dsimp only [result6454]
  have child := child1
  unfold live6455 coloured6455 at child
  try dsimp only [live6456, coloured6456]
  rw [child]
  dsimp only [result6455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6457_agree_conditional : tree6457 = literal6457 := by
  rw [tree6457_def]
  rfl
theorem node6457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6457 live6457 coloured6457 = result6457 := by
  rw [tree6457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6458_agree_conditional
    (child0 : tree6456 = literal6456)
    (child1 : tree6457 = literal6457) : tree6458 = literal6458 := by
  rw [tree6458_def, child0, child1]
  rfl
theorem node6458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6456 live6456 coloured6456 = result6456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6457 live6457 coloured6457 = result6457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6458 live6458 coloured6458 = result6458 := by
  rw [tree6458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6456 coloured6456 at child
  try dsimp only [live6458, coloured6458]
  rw [child]
  dsimp only [result6456]
  have child := child1
  unfold live6457 coloured6457 at child
  try dsimp only [live6458, coloured6458]
  rw [child]
  dsimp only [result6457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6459_agree_conditional : tree6459 = literal6459 := by
  rw [tree6459_def]
  rfl
theorem node6459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6459 live6459 coloured6459 = result6459 := by
  rw [tree6459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6460_agree_conditional
    (child0 : tree6458 = literal6458)
    (child1 : tree6459 = literal6459) : tree6460 = literal6460 := by
  rw [tree6460_def, child0, child1]
  rfl
theorem node6460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6458 live6458 coloured6458 = result6458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6459 live6459 coloured6459 = result6459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6460 live6460 coloured6460 = result6460 := by
  rw [tree6460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6458 coloured6458 at child
  try dsimp only [live6460, coloured6460]
  rw [child]
  dsimp only [result6458]
  have child := child1
  unfold live6459 coloured6459 at child
  try dsimp only [live6460, coloured6460]
  rw [child]
  dsimp only [result6459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6461_agree_conditional : tree6461 = literal6461 := by
  rw [tree6461_def]
  rfl
theorem node6461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6461 live6461 coloured6461 = result6461 := by
  rw [tree6461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6462_agree_conditional
    (child0 : tree6460 = literal6460)
    (child1 : tree6461 = literal6461) : tree6462 = literal6462 := by
  rw [tree6462_def, child0, child1]
  rfl
theorem node6462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6460 live6460 coloured6460 = result6460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6461 live6461 coloured6461 = result6461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6462 live6462 coloured6462 = result6462 := by
  rw [tree6462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6460 coloured6460 at child
  try dsimp only [live6462, coloured6462]
  rw [child]
  dsimp only [result6460]
  have child := child1
  unfold live6461 coloured6461 at child
  try dsimp only [live6462, coloured6462]
  rw [child]
  dsimp only [result6461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6463_agree_conditional : tree6463 = literal6463 := by
  rw [tree6463_def]
  rfl
theorem node6463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6463 live6463 coloured6463 = result6463 := by
  rw [tree6463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6464_agree_conditional
    (child0 : tree6462 = literal6462)
    (child1 : tree6463 = literal6463) : tree6464 = literal6464 := by
  rw [tree6464_def, child0, child1]
  rfl
theorem node6464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6462 live6462 coloured6462 = result6462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6463 live6463 coloured6463 = result6463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6464 live6464 coloured6464 = result6464 := by
  rw [tree6464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6462 coloured6462 at child
  try dsimp only [live6464, coloured6464]
  rw [child]
  dsimp only [result6462]
  have child := child1
  unfold live6463 coloured6463 at child
  try dsimp only [live6464, coloured6464]
  rw [child]
  dsimp only [result6463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6465_agree_conditional : tree6465 = literal6465 := by
  rw [tree6465_def]
  rfl
theorem node6465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6465 live6465 coloured6465 = result6465 := by
  rw [tree6465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6466_agree_conditional
    (child0 : tree6464 = literal6464)
    (child1 : tree6465 = literal6465) : tree6466 = literal6466 := by
  rw [tree6466_def, child0, child1]
  rfl
theorem node6466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6464 live6464 coloured6464 = result6464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6465 live6465 coloured6465 = result6465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6466 live6466 coloured6466 = result6466 := by
  rw [tree6466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6464 coloured6464 at child
  try dsimp only [live6466, coloured6466]
  rw [child]
  dsimp only [result6464]
  have child := child1
  unfold live6465 coloured6465 at child
  try dsimp only [live6466, coloured6466]
  rw [child]
  dsimp only [result6465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6467_agree_conditional : tree6467 = literal6467 := by
  rw [tree6467_def]
  rfl
theorem node6467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6467 live6467 coloured6467 = result6467 := by
  rw [tree6467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6468_agree_conditional
    (child0 : tree6466 = literal6466)
    (child1 : tree6467 = literal6467) : tree6468 = literal6468 := by
  rw [tree6468_def, child0, child1]
  rfl
theorem node6468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6466 live6466 coloured6466 = result6466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6467 live6467 coloured6467 = result6467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6468 live6468 coloured6468 = result6468 := by
  rw [tree6468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6466 coloured6466 at child
  try dsimp only [live6468, coloured6468]
  rw [child]
  dsimp only [result6466]
  have child := child1
  unfold live6467 coloured6467 at child
  try dsimp only [live6468, coloured6468]
  rw [child]
  dsimp only [result6467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6469_agree_conditional : tree6469 = literal6469 := by
  rw [tree6469_def]
  rfl
theorem node6469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6469 live6469 coloured6469 = result6469 := by
  rw [tree6469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6470_agree_conditional
    (child0 : tree6468 = literal6468)
    (child1 : tree6469 = literal6469) : tree6470 = literal6470 := by
  rw [tree6470_def, child0, child1]
  rfl
theorem node6470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6468 live6468 coloured6468 = result6468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6469 live6469 coloured6469 = result6469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6470 live6470 coloured6470 = result6470 := by
  rw [tree6470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6468 coloured6468 at child
  try dsimp only [live6470, coloured6470]
  rw [child]
  dsimp only [result6468]
  have child := child1
  unfold live6469 coloured6469 at child
  try dsimp only [live6470, coloured6470]
  rw [child]
  dsimp only [result6469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6471_agree_conditional : tree6471 = literal6471 := by
  rw [tree6471_def]
  rfl
theorem node6471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6471 live6471 coloured6471 = result6471 := by
  rw [tree6471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6472_agree_conditional
    (child0 : tree6470 = literal6470)
    (child1 : tree6471 = literal6471) : tree6472 = literal6472 := by
  rw [tree6472_def, child0, child1]
  rfl
theorem node6472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6470 live6470 coloured6470 = result6470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6471 live6471 coloured6471 = result6471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6472 live6472 coloured6472 = result6472 := by
  rw [tree6472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6470 coloured6470 at child
  try dsimp only [live6472, coloured6472]
  rw [child]
  dsimp only [result6470]
  have child := child1
  unfold live6471 coloured6471 at child
  try dsimp only [live6472, coloured6472]
  rw [child]
  dsimp only [result6471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6473_agree_conditional : tree6473 = literal6473 := by
  rw [tree6473_def]
  rfl
theorem node6473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6473 live6473 coloured6473 = result6473 := by
  rw [tree6473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6474_agree_conditional
    (child0 : tree6472 = literal6472)
    (child1 : tree6473 = literal6473) : tree6474 = literal6474 := by
  rw [tree6474_def, child0, child1]
  rfl
theorem node6474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6472 live6472 coloured6472 = result6472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6473 live6473 coloured6473 = result6473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6474 live6474 coloured6474 = result6474 := by
  rw [tree6474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6472 coloured6472 at child
  try dsimp only [live6474, coloured6474]
  rw [child]
  dsimp only [result6472]
  have child := child1
  unfold live6473 coloured6473 at child
  try dsimp only [live6474, coloured6474]
  rw [child]
  dsimp only [result6473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6475_agree_conditional : tree6475 = literal6475 := by
  rw [tree6475_def]
  rfl
theorem node6475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6475 live6475 coloured6475 = result6475 := by
  rw [tree6475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6476_agree_conditional
    (child0 : tree6474 = literal6474)
    (child1 : tree6475 = literal6475) : tree6476 = literal6476 := by
  rw [tree6476_def, child0, child1]
  rfl
theorem node6476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6474 live6474 coloured6474 = result6474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6475 live6475 coloured6475 = result6475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6476 live6476 coloured6476 = result6476 := by
  rw [tree6476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6474 coloured6474 at child
  try dsimp only [live6476, coloured6476]
  rw [child]
  dsimp only [result6474]
  have child := child1
  unfold live6475 coloured6475 at child
  try dsimp only [live6476, coloured6476]
  rw [child]
  dsimp only [result6475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6477_agree_conditional : tree6477 = literal6477 := by
  rw [tree6477_def]
  rfl
theorem node6477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6477 live6477 coloured6477 = result6477 := by
  rw [tree6477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6478_agree_conditional
    (child0 : tree6476 = literal6476)
    (child1 : tree6477 = literal6477) : tree6478 = literal6478 := by
  rw [tree6478_def, child0, child1]
  rfl
theorem node6478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6476 live6476 coloured6476 = result6476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6477 live6477 coloured6477 = result6477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6478 live6478 coloured6478 = result6478 := by
  rw [tree6478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6476 coloured6476 at child
  try dsimp only [live6478, coloured6478]
  rw [child]
  dsimp only [result6476]
  have child := child1
  unfold live6477 coloured6477 at child
  try dsimp only [live6478, coloured6478]
  rw [child]
  dsimp only [result6477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6479_agree_conditional : tree6479 = literal6479 := by
  rw [tree6479_def]
  rfl
theorem node6479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6479 live6479 coloured6479 = result6479 := by
  rw [tree6479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6480_agree_conditional
    (child0 : tree6478 = literal6478)
    (child1 : tree6479 = literal6479) : tree6480 = literal6480 := by
  rw [tree6480_def, child0, child1]
  rfl
theorem node6480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6478 live6478 coloured6478 = result6478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6479 live6479 coloured6479 = result6479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6480 live6480 coloured6480 = result6480 := by
  rw [tree6480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6478 coloured6478 at child
  try dsimp only [live6480, coloured6480]
  rw [child]
  dsimp only [result6478]
  have child := child1
  unfold live6479 coloured6479 at child
  try dsimp only [live6480, coloured6480]
  rw [child]
  dsimp only [result6479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6481_agree_conditional : tree6481 = literal6481 := by
  rw [tree6481_def]
  rfl
theorem node6481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6481 live6481 coloured6481 = result6481 := by
  rw [tree6481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6482_agree_conditional
    (child0 : tree6480 = literal6480)
    (child1 : tree6481 = literal6481) : tree6482 = literal6482 := by
  rw [tree6482_def, child0, child1]
  rfl
theorem node6482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6480 live6480 coloured6480 = result6480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6481 live6481 coloured6481 = result6481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6482 live6482 coloured6482 = result6482 := by
  rw [tree6482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6480 coloured6480 at child
  try dsimp only [live6482, coloured6482]
  rw [child]
  dsimp only [result6480]
  have child := child1
  unfold live6481 coloured6481 at child
  try dsimp only [live6482, coloured6482]
  rw [child]
  dsimp only [result6481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6483_agree_conditional : tree6483 = literal6483 := by
  rw [tree6483_def]
  rfl
theorem node6483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6483 live6483 coloured6483 = result6483 := by
  rw [tree6483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6484_agree_conditional
    (child0 : tree6482 = literal6482)
    (child1 : tree6483 = literal6483) : tree6484 = literal6484 := by
  rw [tree6484_def, child0, child1]
  rfl
theorem node6484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6482 live6482 coloured6482 = result6482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6483 live6483 coloured6483 = result6483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6484 live6484 coloured6484 = result6484 := by
  rw [tree6484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6482 coloured6482 at child
  try dsimp only [live6484, coloured6484]
  rw [child]
  dsimp only [result6482]
  have child := child1
  unfold live6483 coloured6483 at child
  try dsimp only [live6484, coloured6484]
  rw [child]
  dsimp only [result6483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6485_agree_conditional : tree6485 = literal6485 := by
  rw [tree6485_def]
  rfl
theorem node6485_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6485 live6485 coloured6485 = result6485 := by
  rw [tree6485_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6486_agree_conditional
    (child0 : tree6484 = literal6484)
    (child1 : tree6485 = literal6485) : tree6486 = literal6486 := by
  rw [tree6486_def, child0, child1]
  rfl
theorem node6486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6484 live6484 coloured6484 = result6484)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6485 live6485 coloured6485 = result6485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6486 live6486 coloured6486 = result6486 := by
  rw [tree6486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6484 coloured6484 at child
  try dsimp only [live6486, coloured6486]
  rw [child]
  dsimp only [result6484]
  have child := child1
  unfold live6485 coloured6485 at child
  try dsimp only [live6486, coloured6486]
  rw [child]
  dsimp only [result6485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6487_agree_conditional : tree6487 = literal6487 := by
  rw [tree6487_def]
  rfl
theorem node6487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6487 live6487 coloured6487 = result6487 := by
  rw [tree6487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6488_agree_conditional
    (child0 : tree6486 = literal6486)
    (child1 : tree6487 = literal6487) : tree6488 = literal6488 := by
  rw [tree6488_def, child0, child1]
  rfl
theorem node6488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6486 live6486 coloured6486 = result6486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6487 live6487 coloured6487 = result6487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6488 live6488 coloured6488 = result6488 := by
  rw [tree6488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6486 coloured6486 at child
  try dsimp only [live6488, coloured6488]
  rw [child]
  dsimp only [result6486]
  have child := child1
  unfold live6487 coloured6487 at child
  try dsimp only [live6488, coloured6488]
  rw [child]
  dsimp only [result6487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6489_agree_conditional : tree6489 = literal6489 := by
  rw [tree6489_def]
  rfl
theorem node6489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6489 live6489 coloured6489 = result6489 := by
  rw [tree6489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6490_agree_conditional
    (child0 : tree6488 = literal6488)
    (child1 : tree6489 = literal6489) : tree6490 = literal6490 := by
  rw [tree6490_def, child0, child1]
  rfl
theorem node6490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6488 live6488 coloured6488 = result6488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6489 live6489 coloured6489 = result6489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6490 live6490 coloured6490 = result6490 := by
  rw [tree6490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6488 coloured6488 at child
  try dsimp only [live6490, coloured6490]
  rw [child]
  dsimp only [result6488]
  have child := child1
  unfold live6489 coloured6489 at child
  try dsimp only [live6490, coloured6490]
  rw [child]
  dsimp only [result6489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6491_agree_conditional : tree6491 = literal6491 := by
  rw [tree6491_def]
  rfl
theorem node6491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6491 live6491 coloured6491 = result6491 := by
  rw [tree6491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6492_agree_conditional
    (child0 : tree6490 = literal6490)
    (child1 : tree6491 = literal6491) : tree6492 = literal6492 := by
  rw [tree6492_def, child0, child1]
  rfl
theorem node6492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6490 live6490 coloured6490 = result6490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6491 live6491 coloured6491 = result6491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6492 live6492 coloured6492 = result6492 := by
  rw [tree6492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6490 coloured6490 at child
  try dsimp only [live6492, coloured6492]
  rw [child]
  dsimp only [result6490]
  have child := child1
  unfold live6491 coloured6491 at child
  try dsimp only [live6492, coloured6492]
  rw [child]
  dsimp only [result6491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6493_agree_conditional : tree6493 = literal6493 := by
  rw [tree6493_def]
  rfl
theorem node6493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6493 live6493 coloured6493 = result6493 := by
  rw [tree6493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6494_agree_conditional
    (child0 : tree6492 = literal6492)
    (child1 : tree6493 = literal6493) : tree6494 = literal6494 := by
  rw [tree6494_def, child0, child1]
  rfl
theorem node6494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6492 live6492 coloured6492 = result6492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6493 live6493 coloured6493 = result6493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6494 live6494 coloured6494 = result6494 := by
  rw [tree6494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6492 coloured6492 at child
  try dsimp only [live6494, coloured6494]
  rw [child]
  dsimp only [result6492]
  have child := child1
  unfold live6493 coloured6493 at child
  try dsimp only [live6494, coloured6494]
  rw [child]
  dsimp only [result6493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6495_agree_conditional : tree6495 = literal6495 := by
  rw [tree6495_def]
  rfl
theorem node6495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6495 live6495 coloured6495 = result6495 := by
  rw [tree6495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6496_agree_conditional
    (child0 : tree6494 = literal6494)
    (child1 : tree6495 = literal6495) : tree6496 = literal6496 := by
  rw [tree6496_def, child0, child1]
  rfl
theorem node6496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6494 live6494 coloured6494 = result6494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6495 live6495 coloured6495 = result6495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6496 live6496 coloured6496 = result6496 := by
  rw [tree6496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6494 coloured6494 at child
  try dsimp only [live6496, coloured6496]
  rw [child]
  dsimp only [result6494]
  have child := child1
  unfold live6495 coloured6495 at child
  try dsimp only [live6496, coloured6496]
  rw [child]
  dsimp only [result6495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6497_agree_conditional : tree6497 = literal6497 := by
  rw [tree6497_def]
  rfl
theorem node6497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6497 live6497 coloured6497 = result6497 := by
  rw [tree6497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6498_agree_conditional
    (child0 : tree6496 = literal6496)
    (child1 : tree6497 = literal6497) : tree6498 = literal6498 := by
  rw [tree6498_def, child0, child1]
  rfl
theorem node6498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6496 live6496 coloured6496 = result6496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6497 live6497 coloured6497 = result6497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6498 live6498 coloured6498 = result6498 := by
  rw [tree6498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6496 coloured6496 at child
  try dsimp only [live6498, coloured6498]
  rw [child]
  dsimp only [result6496]
  have child := child1
  unfold live6497 coloured6497 at child
  try dsimp only [live6498, coloured6498]
  rw [child]
  dsimp only [result6497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6499_agree_conditional : tree6499 = literal6499 := by
  rw [tree6499_def]
  rfl
theorem node6499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6499 live6499 coloured6499 = result6499 := by
  rw [tree6499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6500_agree_conditional
    (child0 : tree6498 = literal6498)
    (child1 : tree6499 = literal6499) : tree6500 = literal6500 := by
  rw [tree6500_def, child0, child1]
  rfl
theorem node6500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6498 live6498 coloured6498 = result6498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6499 live6499 coloured6499 = result6499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6500 live6500 coloured6500 = result6500 := by
  rw [tree6500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6498 coloured6498 at child
  try dsimp only [live6500, coloured6500]
  rw [child]
  dsimp only [result6498]
  have child := child1
  unfold live6499 coloured6499 at child
  try dsimp only [live6500, coloured6500]
  rw [child]
  dsimp only [result6499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6501_agree_conditional : tree6501 = literal6501 := by
  rw [tree6501_def]
  rfl
theorem node6501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6501 live6501 coloured6501 = result6501 := by
  rw [tree6501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6502_agree_conditional
    (child0 : tree6500 = literal6500)
    (child1 : tree6501 = literal6501) : tree6502 = literal6502 := by
  rw [tree6502_def, child0, child1]
  rfl
theorem node6502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6500 live6500 coloured6500 = result6500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6501 live6501 coloured6501 = result6501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6502 live6502 coloured6502 = result6502 := by
  rw [tree6502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6500 coloured6500 at child
  try dsimp only [live6502, coloured6502]
  rw [child]
  dsimp only [result6500]
  have child := child1
  unfold live6501 coloured6501 at child
  try dsimp only [live6502, coloured6502]
  rw [child]
  dsimp only [result6501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6503_agree_conditional : tree6503 = literal6503 := by
  rw [tree6503_def]
  rfl
theorem node6503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6503 live6503 coloured6503 = result6503 := by
  rw [tree6503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6504_agree_conditional
    (child0 : tree6502 = literal6502)
    (child1 : tree6503 = literal6503) : tree6504 = literal6504 := by
  rw [tree6504_def, child0, child1]
  rfl
theorem node6504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6502 live6502 coloured6502 = result6502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6503 live6503 coloured6503 = result6503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6504 live6504 coloured6504 = result6504 := by
  rw [tree6504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6502 coloured6502 at child
  try dsimp only [live6504, coloured6504]
  rw [child]
  dsimp only [result6502]
  have child := child1
  unfold live6503 coloured6503 at child
  try dsimp only [live6504, coloured6504]
  rw [child]
  dsimp only [result6503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6505_agree_conditional : tree6505 = literal6505 := by
  rw [tree6505_def]
  rfl
theorem node6505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6505 live6505 coloured6505 = result6505 := by
  rw [tree6505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6506_agree_conditional
    (child0 : tree6504 = literal6504)
    (child1 : tree6505 = literal6505) : tree6506 = literal6506 := by
  rw [tree6506_def, child0, child1]
  rfl
theorem node6506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6504 live6504 coloured6504 = result6504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6505 live6505 coloured6505 = result6505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6506 live6506 coloured6506 = result6506 := by
  rw [tree6506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6504 coloured6504 at child
  try dsimp only [live6506, coloured6506]
  rw [child]
  dsimp only [result6504]
  have child := child1
  unfold live6505 coloured6505 at child
  try dsimp only [live6506, coloured6506]
  rw [child]
  dsimp only [result6505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6507_agree_conditional : tree6507 = literal6507 := by
  rw [tree6507_def]
  rfl
theorem node6507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6507 live6507 coloured6507 = result6507 := by
  rw [tree6507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6508_agree_conditional
    (child0 : tree6506 = literal6506)
    (child1 : tree6507 = literal6507) : tree6508 = literal6508 := by
  rw [tree6508_def, child0, child1]
  rfl
theorem node6508_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6506 live6506 coloured6506 = result6506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6507 live6507 coloured6507 = result6507) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6508 live6508 coloured6508 = result6508 := by
  rw [tree6508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6506 coloured6506 at child
  try dsimp only [live6508, coloured6508]
  rw [child]
  dsimp only [result6506]
  have child := child1
  unfold live6507 coloured6507 at child
  try dsimp only [live6508, coloured6508]
  rw [child]
  dsimp only [result6507]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6509_agree_conditional : tree6509 = literal6509 := by
  rw [tree6509_def]
  rfl
theorem node6509_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6509 live6509 coloured6509 = result6509 := by
  rw [tree6509_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6510_agree_conditional
    (child0 : tree6508 = literal6508)
    (child1 : tree6509 = literal6509) : tree6510 = literal6510 := by
  rw [tree6510_def, child0, child1]
  rfl
theorem node6510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6508 live6508 coloured6508 = result6508)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6509 live6509 coloured6509 = result6509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6510 live6510 coloured6510 = result6510 := by
  rw [tree6510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6508 coloured6508 at child
  try dsimp only [live6510, coloured6510]
  rw [child]
  dsimp only [result6508]
  have child := child1
  unfold live6509 coloured6509 at child
  try dsimp only [live6510, coloured6510]
  rw [child]
  dsimp only [result6509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6511_agree_conditional : tree6511 = literal6511 := by
  rw [tree6511_def]
  rfl
theorem node6511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6511 live6511 coloured6511 = result6511 := by
  rw [tree6511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6512_agree_conditional
    (child0 : tree6510 = literal6510)
    (child1 : tree6511 = literal6511) : tree6512 = literal6512 := by
  rw [tree6512_def, child0, child1]
  rfl
theorem node6512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6510 live6510 coloured6510 = result6510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6511 live6511 coloured6511 = result6511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6512 live6512 coloured6512 = result6512 := by
  rw [tree6512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6510 coloured6510 at child
  try dsimp only [live6512, coloured6512]
  rw [child]
  dsimp only [result6510]
  have child := child1
  unfold live6511 coloured6511 at child
  try dsimp only [live6512, coloured6512]
  rw [child]
  dsimp only [result6511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6513_agree_conditional : tree6513 = literal6513 := by
  rw [tree6513_def]
  rfl
theorem node6513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6513 live6513 coloured6513 = result6513 := by
  rw [tree6513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6514_agree_conditional
    (child0 : tree6512 = literal6512)
    (child1 : tree6513 = literal6513) : tree6514 = literal6514 := by
  rw [tree6514_def, child0, child1]
  rfl
theorem node6514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6512 live6512 coloured6512 = result6512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6513 live6513 coloured6513 = result6513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6514 live6514 coloured6514 = result6514 := by
  rw [tree6514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6512 coloured6512 at child
  try dsimp only [live6514, coloured6514]
  rw [child]
  dsimp only [result6512]
  have child := child1
  unfold live6513 coloured6513 at child
  try dsimp only [live6514, coloured6514]
  rw [child]
  dsimp only [result6513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6515_agree_conditional : tree6515 = literal6515 := by
  rw [tree6515_def]
  rfl
theorem node6515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6515 live6515 coloured6515 = result6515 := by
  rw [tree6515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6516_agree_conditional
    (child0 : tree6514 = literal6514)
    (child1 : tree6515 = literal6515) : tree6516 = literal6516 := by
  rw [tree6516_def, child0, child1]
  rfl
theorem node6516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6514 live6514 coloured6514 = result6514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6515 live6515 coloured6515 = result6515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6516 live6516 coloured6516 = result6516 := by
  rw [tree6516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6514 coloured6514 at child
  try dsimp only [live6516, coloured6516]
  rw [child]
  dsimp only [result6514]
  have child := child1
  unfold live6515 coloured6515 at child
  try dsimp only [live6516, coloured6516]
  rw [child]
  dsimp only [result6515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6517_agree_conditional : tree6517 = literal6517 := by
  rw [tree6517_def]
  rfl
theorem node6517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6517 live6517 coloured6517 = result6517 := by
  rw [tree6517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6518_agree_conditional
    (child0 : tree6516 = literal6516)
    (child1 : tree6517 = literal6517) : tree6518 = literal6518 := by
  rw [tree6518_def, child0, child1]
  rfl
theorem node6518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6516 live6516 coloured6516 = result6516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6517 live6517 coloured6517 = result6517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6518 live6518 coloured6518 = result6518 := by
  rw [tree6518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6516 coloured6516 at child
  try dsimp only [live6518, coloured6518]
  rw [child]
  dsimp only [result6516]
  have child := child1
  unfold live6517 coloured6517 at child
  try dsimp only [live6518, coloured6518]
  rw [child]
  dsimp only [result6517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6519_agree_conditional : tree6519 = literal6519 := by
  rw [tree6519_def]
  rfl
theorem node6519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6519 live6519 coloured6519 = result6519 := by
  rw [tree6519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6520_agree_conditional
    (child0 : tree6518 = literal6518)
    (child1 : tree6519 = literal6519) : tree6520 = literal6520 := by
  rw [tree6520_def, child0, child1]
  rfl
theorem node6520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6518 live6518 coloured6518 = result6518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6519 live6519 coloured6519 = result6519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6520 live6520 coloured6520 = result6520 := by
  rw [tree6520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6518 coloured6518 at child
  try dsimp only [live6520, coloured6520]
  rw [child]
  dsimp only [result6518]
  have child := child1
  unfold live6519 coloured6519 at child
  try dsimp only [live6520, coloured6520]
  rw [child]
  dsimp only [result6519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6521_agree_conditional : tree6521 = literal6521 := by
  rw [tree6521_def]
  rfl
theorem node6521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6521 live6521 coloured6521 = result6521 := by
  rw [tree6521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6522_agree_conditional
    (child0 : tree6520 = literal6520)
    (child1 : tree6521 = literal6521) : tree6522 = literal6522 := by
  rw [tree6522_def, child0, child1]
  rfl
theorem node6522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6520 live6520 coloured6520 = result6520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6521 live6521 coloured6521 = result6521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6522 live6522 coloured6522 = result6522 := by
  rw [tree6522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6520 coloured6520 at child
  try dsimp only [live6522, coloured6522]
  rw [child]
  dsimp only [result6520]
  have child := child1
  unfold live6521 coloured6521 at child
  try dsimp only [live6522, coloured6522]
  rw [child]
  dsimp only [result6521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6523_agree_conditional : tree6523 = literal6523 := by
  rw [tree6523_def]
  rfl
theorem node6523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6523 live6523 coloured6523 = result6523 := by
  rw [tree6523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6524_agree_conditional
    (child0 : tree6522 = literal6522)
    (child1 : tree6523 = literal6523) : tree6524 = literal6524 := by
  rw [tree6524_def, child0, child1]
  rfl
theorem node6524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6522 live6522 coloured6522 = result6522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6523 live6523 coloured6523 = result6523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6524 live6524 coloured6524 = result6524 := by
  rw [tree6524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6522 coloured6522 at child
  try dsimp only [live6524, coloured6524]
  rw [child]
  dsimp only [result6522]
  have child := child1
  unfold live6523 coloured6523 at child
  try dsimp only [live6524, coloured6524]
  rw [child]
  dsimp only [result6523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6525_agree_conditional : tree6525 = literal6525 := by
  rw [tree6525_def]
  rfl
theorem node6525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6525 live6525 coloured6525 = result6525 := by
  rw [tree6525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6526_agree_conditional
    (child0 : tree6524 = literal6524)
    (child1 : tree6525 = literal6525) : tree6526 = literal6526 := by
  rw [tree6526_def, child0, child1]
  rfl
theorem node6526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6524 live6524 coloured6524 = result6524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6525 live6525 coloured6525 = result6525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6526 live6526 coloured6526 = result6526 := by
  rw [tree6526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6524 coloured6524 at child
  try dsimp only [live6526, coloured6526]
  rw [child]
  dsimp only [result6524]
  have child := child1
  unfold live6525 coloured6525 at child
  try dsimp only [live6526, coloured6526]
  rw [child]
  dsimp only [result6525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6527_agree_conditional : tree6527 = literal6527 := by
  rw [tree6527_def]
  rfl
theorem node6527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6527 live6527 coloured6527 = result6527 := by
  rw [tree6527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
