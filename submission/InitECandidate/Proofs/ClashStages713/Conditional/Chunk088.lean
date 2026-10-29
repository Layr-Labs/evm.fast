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
theorem tree8448_agree_conditional
    (child0 : tree8446 = literal8446)
    (child1 : tree8447 = literal8447) : tree8448 = literal8448 := by
  rw [tree8448_def, child0, child1]
  rfl
theorem node8448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8446 live8446 coloured8446 = result8446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8447 live8447 coloured8447 = result8447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8448 live8448 coloured8448 = result8448 := by
  rw [tree8448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8446 coloured8446 at child
  try dsimp only [live8448, coloured8448]
  rw [child]
  dsimp only [result8446]
  have child := child1
  unfold live8447 coloured8447 at child
  try dsimp only [live8448, coloured8448]
  rw [child]
  dsimp only [result8447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8449_agree_conditional : tree8449 = literal8449 := by
  rw [tree8449_def]
  rfl
theorem node8449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8449 live8449 coloured8449 = result8449 := by
  rw [tree8449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8450_agree_conditional
    (child0 : tree8448 = literal8448)
    (child1 : tree8449 = literal8449) : tree8450 = literal8450 := by
  rw [tree8450_def, child0, child1]
  rfl
theorem node8450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8448 live8448 coloured8448 = result8448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8449 live8449 coloured8449 = result8449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8450 live8450 coloured8450 = result8450 := by
  rw [tree8450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8448 coloured8448 at child
  try dsimp only [live8450, coloured8450]
  rw [child]
  dsimp only [result8448]
  have child := child1
  unfold live8449 coloured8449 at child
  try dsimp only [live8450, coloured8450]
  rw [child]
  dsimp only [result8449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8451_agree_conditional : tree8451 = literal8451 := by
  rw [tree8451_def]
  rfl
theorem node8451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8451 live8451 coloured8451 = result8451 := by
  rw [tree8451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8452_agree_conditional
    (child0 : tree8450 = literal8450)
    (child1 : tree8451 = literal8451) : tree8452 = literal8452 := by
  rw [tree8452_def, child0, child1]
  rfl
theorem node8452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8450 live8450 coloured8450 = result8450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8451 live8451 coloured8451 = result8451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8452 live8452 coloured8452 = result8452 := by
  rw [tree8452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8450 coloured8450 at child
  try dsimp only [live8452, coloured8452]
  rw [child]
  dsimp only [result8450]
  have child := child1
  unfold live8451 coloured8451 at child
  try dsimp only [live8452, coloured8452]
  rw [child]
  dsimp only [result8451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8453_agree_conditional : tree8453 = literal8453 := by
  rw [tree8453_def]
  rfl
theorem node8453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8453 live8453 coloured8453 = result8453 := by
  rw [tree8453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8454_agree_conditional
    (child0 : tree8452 = literal8452)
    (child1 : tree8453 = literal8453) : tree8454 = literal8454 := by
  rw [tree8454_def, child0, child1]
  rfl
theorem node8454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8452 live8452 coloured8452 = result8452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8453 live8453 coloured8453 = result8453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8454 live8454 coloured8454 = result8454 := by
  rw [tree8454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8452 coloured8452 at child
  try dsimp only [live8454, coloured8454]
  rw [child]
  dsimp only [result8452]
  have child := child1
  unfold live8453 coloured8453 at child
  try dsimp only [live8454, coloured8454]
  rw [child]
  dsimp only [result8453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8455_agree_conditional : tree8455 = literal8455 := by
  rw [tree8455_def]
  rfl
theorem node8455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8455 live8455 coloured8455 = result8455 := by
  rw [tree8455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8456_agree_conditional
    (child0 : tree8454 = literal8454)
    (child1 : tree8455 = literal8455) : tree8456 = literal8456 := by
  rw [tree8456_def, child0, child1]
  rfl
theorem node8456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8454 live8454 coloured8454 = result8454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8455 live8455 coloured8455 = result8455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8456 live8456 coloured8456 = result8456 := by
  rw [tree8456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8454 coloured8454 at child
  try dsimp only [live8456, coloured8456]
  rw [child]
  dsimp only [result8454]
  have child := child1
  unfold live8455 coloured8455 at child
  try dsimp only [live8456, coloured8456]
  rw [child]
  dsimp only [result8455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8457_agree_conditional : tree8457 = literal8457 := by
  rw [tree8457_def]
  rfl
theorem node8457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8457 live8457 coloured8457 = result8457 := by
  rw [tree8457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8458_agree_conditional
    (child0 : tree8456 = literal8456)
    (child1 : tree8457 = literal8457) : tree8458 = literal8458 := by
  rw [tree8458_def, child0, child1]
  rfl
theorem node8458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8456 live8456 coloured8456 = result8456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8457 live8457 coloured8457 = result8457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8458 live8458 coloured8458 = result8458 := by
  rw [tree8458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8456 coloured8456 at child
  try dsimp only [live8458, coloured8458]
  rw [child]
  dsimp only [result8456]
  have child := child1
  unfold live8457 coloured8457 at child
  try dsimp only [live8458, coloured8458]
  rw [child]
  dsimp only [result8457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8459_agree_conditional : tree8459 = literal8459 := by
  rw [tree8459_def]
  rfl
theorem node8459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8459 live8459 coloured8459 = result8459 := by
  rw [tree8459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8460_agree_conditional
    (child0 : tree8458 = literal8458)
    (child1 : tree8459 = literal8459) : tree8460 = literal8460 := by
  rw [tree8460_def, child0, child1]
  rfl
theorem node8460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8458 live8458 coloured8458 = result8458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8459 live8459 coloured8459 = result8459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8460 live8460 coloured8460 = result8460 := by
  rw [tree8460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8458 coloured8458 at child
  try dsimp only [live8460, coloured8460]
  rw [child]
  dsimp only [result8458]
  have child := child1
  unfold live8459 coloured8459 at child
  try dsimp only [live8460, coloured8460]
  rw [child]
  dsimp only [result8459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8461_agree_conditional : tree8461 = literal8461 := by
  rw [tree8461_def]
  rfl
theorem node8461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8461 live8461 coloured8461 = result8461 := by
  rw [tree8461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8462_agree_conditional
    (child0 : tree8460 = literal8460)
    (child1 : tree8461 = literal8461) : tree8462 = literal8462 := by
  rw [tree8462_def, child0, child1]
  rfl
theorem node8462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8460 live8460 coloured8460 = result8460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8461 live8461 coloured8461 = result8461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8462 live8462 coloured8462 = result8462 := by
  rw [tree8462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8460 coloured8460 at child
  try dsimp only [live8462, coloured8462]
  rw [child]
  dsimp only [result8460]
  have child := child1
  unfold live8461 coloured8461 at child
  try dsimp only [live8462, coloured8462]
  rw [child]
  dsimp only [result8461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8463_agree_conditional : tree8463 = literal8463 := by
  rw [tree8463_def]
  rfl
theorem node8463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8463 live8463 coloured8463 = result8463 := by
  rw [tree8463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8464_agree_conditional
    (child0 : tree8462 = literal8462)
    (child1 : tree8463 = literal8463) : tree8464 = literal8464 := by
  rw [tree8464_def, child0, child1]
  rfl
theorem node8464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8462 live8462 coloured8462 = result8462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8463 live8463 coloured8463 = result8463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8464 live8464 coloured8464 = result8464 := by
  rw [tree8464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8462 coloured8462 at child
  try dsimp only [live8464, coloured8464]
  rw [child]
  dsimp only [result8462]
  have child := child1
  unfold live8463 coloured8463 at child
  try dsimp only [live8464, coloured8464]
  rw [child]
  dsimp only [result8463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8465_agree_conditional : tree8465 = literal8465 := by
  rw [tree8465_def]
  rfl
theorem node8465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8465 live8465 coloured8465 = result8465 := by
  rw [tree8465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8466_agree_conditional
    (child0 : tree8464 = literal8464)
    (child1 : tree8465 = literal8465) : tree8466 = literal8466 := by
  rw [tree8466_def, child0, child1]
  rfl
theorem node8466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8464 live8464 coloured8464 = result8464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8465 live8465 coloured8465 = result8465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8466 live8466 coloured8466 = result8466 := by
  rw [tree8466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8464 coloured8464 at child
  try dsimp only [live8466, coloured8466]
  rw [child]
  dsimp only [result8464]
  have child := child1
  unfold live8465 coloured8465 at child
  try dsimp only [live8466, coloured8466]
  rw [child]
  dsimp only [result8465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8467_agree_conditional : tree8467 = literal8467 := by
  rw [tree8467_def]
  rfl
theorem node8467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8467 live8467 coloured8467 = result8467 := by
  rw [tree8467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8468_agree_conditional
    (child0 : tree8466 = literal8466)
    (child1 : tree8467 = literal8467) : tree8468 = literal8468 := by
  rw [tree8468_def, child0, child1]
  rfl
theorem node8468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8466 live8466 coloured8466 = result8466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8467 live8467 coloured8467 = result8467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8468 live8468 coloured8468 = result8468 := by
  rw [tree8468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8466 coloured8466 at child
  try dsimp only [live8468, coloured8468]
  rw [child]
  dsimp only [result8466]
  have child := child1
  unfold live8467 coloured8467 at child
  try dsimp only [live8468, coloured8468]
  rw [child]
  dsimp only [result8467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8469_agree_conditional : tree8469 = literal8469 := by
  rw [tree8469_def]
  rfl
theorem node8469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8469 live8469 coloured8469 = result8469 := by
  rw [tree8469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8470_agree_conditional
    (child0 : tree8468 = literal8468)
    (child1 : tree8469 = literal8469) : tree8470 = literal8470 := by
  rw [tree8470_def, child0, child1]
  rfl
theorem node8470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8468 live8468 coloured8468 = result8468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8469 live8469 coloured8469 = result8469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8470 live8470 coloured8470 = result8470 := by
  rw [tree8470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8468 coloured8468 at child
  try dsimp only [live8470, coloured8470]
  rw [child]
  dsimp only [result8468]
  have child := child1
  unfold live8469 coloured8469 at child
  try dsimp only [live8470, coloured8470]
  rw [child]
  dsimp only [result8469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8471_agree_conditional : tree8471 = literal8471 := by
  rw [tree8471_def]
  rfl
theorem node8471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8471 live8471 coloured8471 = result8471 := by
  rw [tree8471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8472_agree_conditional
    (child0 : tree8470 = literal8470)
    (child1 : tree8471 = literal8471) : tree8472 = literal8472 := by
  rw [tree8472_def, child0, child1]
  rfl
theorem node8472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8470 live8470 coloured8470 = result8470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8471 live8471 coloured8471 = result8471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8472 live8472 coloured8472 = result8472 := by
  rw [tree8472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8470 coloured8470 at child
  try dsimp only [live8472, coloured8472]
  rw [child]
  dsimp only [result8470]
  have child := child1
  unfold live8471 coloured8471 at child
  try dsimp only [live8472, coloured8472]
  rw [child]
  dsimp only [result8471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8473_agree_conditional : tree8473 = literal8473 := by
  rw [tree8473_def]
  rfl
theorem node8473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8473 live8473 coloured8473 = result8473 := by
  rw [tree8473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8474_agree_conditional
    (child0 : tree8472 = literal8472)
    (child1 : tree8473 = literal8473) : tree8474 = literal8474 := by
  rw [tree8474_def, child0, child1]
  rfl
theorem node8474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8472 live8472 coloured8472 = result8472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8473 live8473 coloured8473 = result8473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8474 live8474 coloured8474 = result8474 := by
  rw [tree8474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8472 coloured8472 at child
  try dsimp only [live8474, coloured8474]
  rw [child]
  dsimp only [result8472]
  have child := child1
  unfold live8473 coloured8473 at child
  try dsimp only [live8474, coloured8474]
  rw [child]
  dsimp only [result8473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8475_agree_conditional : tree8475 = literal8475 := by
  rw [tree8475_def]
  rfl
theorem node8475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8475 live8475 coloured8475 = result8475 := by
  rw [tree8475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8476_agree_conditional
    (child0 : tree8474 = literal8474)
    (child1 : tree8475 = literal8475) : tree8476 = literal8476 := by
  rw [tree8476_def, child0, child1]
  rfl
theorem node8476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8474 live8474 coloured8474 = result8474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8475 live8475 coloured8475 = result8475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8476 live8476 coloured8476 = result8476 := by
  rw [tree8476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8474 coloured8474 at child
  try dsimp only [live8476, coloured8476]
  rw [child]
  dsimp only [result8474]
  have child := child1
  unfold live8475 coloured8475 at child
  try dsimp only [live8476, coloured8476]
  rw [child]
  dsimp only [result8475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8477_agree_conditional : tree8477 = literal8477 := by
  rw [tree8477_def]
  rfl
theorem node8477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8477 live8477 coloured8477 = result8477 := by
  rw [tree8477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8478_agree_conditional
    (child0 : tree8476 = literal8476)
    (child1 : tree8477 = literal8477) : tree8478 = literal8478 := by
  rw [tree8478_def, child0, child1]
  rfl
theorem node8478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8476 live8476 coloured8476 = result8476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8477 live8477 coloured8477 = result8477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8478 live8478 coloured8478 = result8478 := by
  rw [tree8478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8476 coloured8476 at child
  try dsimp only [live8478, coloured8478]
  rw [child]
  dsimp only [result8476]
  have child := child1
  unfold live8477 coloured8477 at child
  try dsimp only [live8478, coloured8478]
  rw [child]
  dsimp only [result8477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8479_agree_conditional : tree8479 = literal8479 := by
  rw [tree8479_def]
  rfl
theorem node8479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8479 live8479 coloured8479 = result8479 := by
  rw [tree8479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8480_agree_conditional
    (child0 : tree8478 = literal8478)
    (child1 : tree8479 = literal8479) : tree8480 = literal8480 := by
  rw [tree8480_def, child0, child1]
  rfl
theorem node8480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8478 live8478 coloured8478 = result8478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8479 live8479 coloured8479 = result8479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8480 live8480 coloured8480 = result8480 := by
  rw [tree8480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8478 coloured8478 at child
  try dsimp only [live8480, coloured8480]
  rw [child]
  dsimp only [result8478]
  have child := child1
  unfold live8479 coloured8479 at child
  try dsimp only [live8480, coloured8480]
  rw [child]
  dsimp only [result8479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8481_agree_conditional : tree8481 = literal8481 := by
  rw [tree8481_def]
  rfl
theorem node8481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8481 live8481 coloured8481 = result8481 := by
  rw [tree8481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8482_agree_conditional
    (child0 : tree8480 = literal8480)
    (child1 : tree8481 = literal8481) : tree8482 = literal8482 := by
  rw [tree8482_def, child0, child1]
  rfl
theorem node8482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8480 live8480 coloured8480 = result8480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8481 live8481 coloured8481 = result8481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8482 live8482 coloured8482 = result8482 := by
  rw [tree8482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8480 coloured8480 at child
  try dsimp only [live8482, coloured8482]
  rw [child]
  dsimp only [result8480]
  have child := child1
  unfold live8481 coloured8481 at child
  try dsimp only [live8482, coloured8482]
  rw [child]
  dsimp only [result8481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8483_agree_conditional : tree8483 = literal8483 := by
  rw [tree8483_def]
  rfl
theorem node8483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8483 live8483 coloured8483 = result8483 := by
  rw [tree8483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8484_agree_conditional
    (child0 : tree8482 = literal8482)
    (child1 : tree8483 = literal8483) : tree8484 = literal8484 := by
  rw [tree8484_def, child0, child1]
  rfl
theorem node8484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8482 live8482 coloured8482 = result8482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8483 live8483 coloured8483 = result8483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8484 live8484 coloured8484 = result8484 := by
  rw [tree8484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8482 coloured8482 at child
  try dsimp only [live8484, coloured8484]
  rw [child]
  dsimp only [result8482]
  have child := child1
  unfold live8483 coloured8483 at child
  try dsimp only [live8484, coloured8484]
  rw [child]
  dsimp only [result8483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8485_agree_conditional : tree8485 = literal8485 := by
  rw [tree8485_def]
  rfl
theorem node8485_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8485 live8485 coloured8485 = result8485 := by
  rw [tree8485_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8486_agree_conditional
    (child0 : tree8484 = literal8484)
    (child1 : tree8485 = literal8485) : tree8486 = literal8486 := by
  rw [tree8486_def, child0, child1]
  rfl
theorem node8486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8484 live8484 coloured8484 = result8484)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8485 live8485 coloured8485 = result8485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8486 live8486 coloured8486 = result8486 := by
  rw [tree8486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8484 coloured8484 at child
  try dsimp only [live8486, coloured8486]
  rw [child]
  dsimp only [result8484]
  have child := child1
  unfold live8485 coloured8485 at child
  try dsimp only [live8486, coloured8486]
  rw [child]
  dsimp only [result8485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8487_agree_conditional : tree8487 = literal8487 := by
  rw [tree8487_def]
  rfl
theorem node8487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8487 live8487 coloured8487 = result8487 := by
  rw [tree8487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8488_agree_conditional
    (child0 : tree8486 = literal8486)
    (child1 : tree8487 = literal8487) : tree8488 = literal8488 := by
  rw [tree8488_def, child0, child1]
  rfl
theorem node8488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8486 live8486 coloured8486 = result8486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8487 live8487 coloured8487 = result8487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8488 live8488 coloured8488 = result8488 := by
  rw [tree8488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8486 coloured8486 at child
  try dsimp only [live8488, coloured8488]
  rw [child]
  dsimp only [result8486]
  have child := child1
  unfold live8487 coloured8487 at child
  try dsimp only [live8488, coloured8488]
  rw [child]
  dsimp only [result8487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8489_agree_conditional : tree8489 = literal8489 := by
  rw [tree8489_def]
  rfl
theorem node8489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8489 live8489 coloured8489 = result8489 := by
  rw [tree8489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8490_agree_conditional
    (child0 : tree8488 = literal8488)
    (child1 : tree8489 = literal8489) : tree8490 = literal8490 := by
  rw [tree8490_def, child0, child1]
  rfl
theorem node8490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8488 live8488 coloured8488 = result8488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8489 live8489 coloured8489 = result8489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8490 live8490 coloured8490 = result8490 := by
  rw [tree8490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8488 coloured8488 at child
  try dsimp only [live8490, coloured8490]
  rw [child]
  dsimp only [result8488]
  have child := child1
  unfold live8489 coloured8489 at child
  try dsimp only [live8490, coloured8490]
  rw [child]
  dsimp only [result8489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8491_agree_conditional : tree8491 = literal8491 := by
  rw [tree8491_def]
  rfl
theorem node8491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8491 live8491 coloured8491 = result8491 := by
  rw [tree8491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8492_agree_conditional
    (child0 : tree8490 = literal8490)
    (child1 : tree8491 = literal8491) : tree8492 = literal8492 := by
  rw [tree8492_def, child0, child1]
  rfl
theorem node8492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8490 live8490 coloured8490 = result8490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8491 live8491 coloured8491 = result8491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8492 live8492 coloured8492 = result8492 := by
  rw [tree8492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8490 coloured8490 at child
  try dsimp only [live8492, coloured8492]
  rw [child]
  dsimp only [result8490]
  have child := child1
  unfold live8491 coloured8491 at child
  try dsimp only [live8492, coloured8492]
  rw [child]
  dsimp only [result8491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8493_agree_conditional : tree8493 = literal8493 := by
  rw [tree8493_def]
  rfl
theorem node8493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8493 live8493 coloured8493 = result8493 := by
  rw [tree8493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8494_agree_conditional
    (child0 : tree8492 = literal8492)
    (child1 : tree8493 = literal8493) : tree8494 = literal8494 := by
  rw [tree8494_def, child0, child1]
  rfl
theorem node8494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8492 live8492 coloured8492 = result8492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8493 live8493 coloured8493 = result8493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8494 live8494 coloured8494 = result8494 := by
  rw [tree8494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8492 coloured8492 at child
  try dsimp only [live8494, coloured8494]
  rw [child]
  dsimp only [result8492]
  have child := child1
  unfold live8493 coloured8493 at child
  try dsimp only [live8494, coloured8494]
  rw [child]
  dsimp only [result8493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8495_agree_conditional : tree8495 = literal8495 := by
  rw [tree8495_def]
  rfl
theorem node8495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8495 live8495 coloured8495 = result8495 := by
  rw [tree8495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8496_agree_conditional
    (child0 : tree8494 = literal8494)
    (child1 : tree8495 = literal8495) : tree8496 = literal8496 := by
  rw [tree8496_def, child0, child1]
  rfl
theorem node8496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8494 live8494 coloured8494 = result8494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8495 live8495 coloured8495 = result8495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8496 live8496 coloured8496 = result8496 := by
  rw [tree8496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8494 coloured8494 at child
  try dsimp only [live8496, coloured8496]
  rw [child]
  dsimp only [result8494]
  have child := child1
  unfold live8495 coloured8495 at child
  try dsimp only [live8496, coloured8496]
  rw [child]
  dsimp only [result8495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8497_agree_conditional : tree8497 = literal8497 := by
  rw [tree8497_def]
  rfl
theorem node8497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8497 live8497 coloured8497 = result8497 := by
  rw [tree8497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8498_agree_conditional
    (child0 : tree8496 = literal8496)
    (child1 : tree8497 = literal8497) : tree8498 = literal8498 := by
  rw [tree8498_def, child0, child1]
  rfl
theorem node8498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8496 live8496 coloured8496 = result8496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8497 live8497 coloured8497 = result8497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8498 live8498 coloured8498 = result8498 := by
  rw [tree8498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8496 coloured8496 at child
  try dsimp only [live8498, coloured8498]
  rw [child]
  dsimp only [result8496]
  have child := child1
  unfold live8497 coloured8497 at child
  try dsimp only [live8498, coloured8498]
  rw [child]
  dsimp only [result8497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8499_agree_conditional : tree8499 = literal8499 := by
  rw [tree8499_def]
  rfl
theorem node8499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8499 live8499 coloured8499 = result8499 := by
  rw [tree8499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8500_agree_conditional
    (child0 : tree8498 = literal8498)
    (child1 : tree8499 = literal8499) : tree8500 = literal8500 := by
  rw [tree8500_def, child0, child1]
  rfl
theorem node8500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8498 live8498 coloured8498 = result8498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8499 live8499 coloured8499 = result8499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8500 live8500 coloured8500 = result8500 := by
  rw [tree8500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8498 coloured8498 at child
  try dsimp only [live8500, coloured8500]
  rw [child]
  dsimp only [result8498]
  have child := child1
  unfold live8499 coloured8499 at child
  try dsimp only [live8500, coloured8500]
  rw [child]
  dsimp only [result8499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8501_agree_conditional : tree8501 = literal8501 := by
  rw [tree8501_def]
  rfl
theorem node8501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8501 live8501 coloured8501 = result8501 := by
  rw [tree8501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8502_agree_conditional
    (child0 : tree8500 = literal8500)
    (child1 : tree8501 = literal8501) : tree8502 = literal8502 := by
  rw [tree8502_def, child0, child1]
  rfl
theorem node8502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8500 live8500 coloured8500 = result8500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8501 live8501 coloured8501 = result8501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8502 live8502 coloured8502 = result8502 := by
  rw [tree8502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8500 coloured8500 at child
  try dsimp only [live8502, coloured8502]
  rw [child]
  dsimp only [result8500]
  have child := child1
  unfold live8501 coloured8501 at child
  try dsimp only [live8502, coloured8502]
  rw [child]
  dsimp only [result8501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8503_agree_conditional : tree8503 = literal8503 := by
  rw [tree8503_def]
  rfl
theorem node8503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8503 live8503 coloured8503 = result8503 := by
  rw [tree8503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8504_agree_conditional
    (child0 : tree8502 = literal8502)
    (child1 : tree8503 = literal8503) : tree8504 = literal8504 := by
  rw [tree8504_def, child0, child1]
  rfl
theorem node8504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8502 live8502 coloured8502 = result8502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8503 live8503 coloured8503 = result8503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8504 live8504 coloured8504 = result8504 := by
  rw [tree8504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8502 coloured8502 at child
  try dsimp only [live8504, coloured8504]
  rw [child]
  dsimp only [result8502]
  have child := child1
  unfold live8503 coloured8503 at child
  try dsimp only [live8504, coloured8504]
  rw [child]
  dsimp only [result8503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8505_agree_conditional : tree8505 = literal8505 := by
  rw [tree8505_def]
  rfl
theorem node8505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8505 live8505 coloured8505 = result8505 := by
  rw [tree8505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8506_agree_conditional
    (child0 : tree8504 = literal8504)
    (child1 : tree8505 = literal8505) : tree8506 = literal8506 := by
  rw [tree8506_def, child0, child1]
  rfl
theorem node8506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8504 live8504 coloured8504 = result8504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8505 live8505 coloured8505 = result8505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8506 live8506 coloured8506 = result8506 := by
  rw [tree8506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8504 coloured8504 at child
  try dsimp only [live8506, coloured8506]
  rw [child]
  dsimp only [result8504]
  have child := child1
  unfold live8505 coloured8505 at child
  try dsimp only [live8506, coloured8506]
  rw [child]
  dsimp only [result8505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8507_agree_conditional : tree8507 = literal8507 := by
  rw [tree8507_def]
  rfl
theorem node8507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8507 live8507 coloured8507 = result8507 := by
  rw [tree8507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8508_agree_conditional
    (child0 : tree8506 = literal8506)
    (child1 : tree8507 = literal8507) : tree8508 = literal8508 := by
  rw [tree8508_def, child0, child1]
  rfl
theorem node8508_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8506 live8506 coloured8506 = result8506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8507 live8507 coloured8507 = result8507) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8508 live8508 coloured8508 = result8508 := by
  rw [tree8508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8506 coloured8506 at child
  try dsimp only [live8508, coloured8508]
  rw [child]
  dsimp only [result8506]
  have child := child1
  unfold live8507 coloured8507 at child
  try dsimp only [live8508, coloured8508]
  rw [child]
  dsimp only [result8507]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8509_agree_conditional : tree8509 = literal8509 := by
  rw [tree8509_def]
  rfl
theorem node8509_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8509 live8509 coloured8509 = result8509 := by
  rw [tree8509_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8510_agree_conditional
    (child0 : tree8508 = literal8508)
    (child1 : tree8509 = literal8509) : tree8510 = literal8510 := by
  rw [tree8510_def, child0, child1]
  rfl
theorem node8510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8508 live8508 coloured8508 = result8508)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8509 live8509 coloured8509 = result8509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8510 live8510 coloured8510 = result8510 := by
  rw [tree8510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8508 coloured8508 at child
  try dsimp only [live8510, coloured8510]
  rw [child]
  dsimp only [result8508]
  have child := child1
  unfold live8509 coloured8509 at child
  try dsimp only [live8510, coloured8510]
  rw [child]
  dsimp only [result8509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8511_agree_conditional : tree8511 = literal8511 := by
  rw [tree8511_def]
  rfl
theorem node8511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8511 live8511 coloured8511 = result8511 := by
  rw [tree8511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8512_agree_conditional
    (child0 : tree8510 = literal8510)
    (child1 : tree8511 = literal8511) : tree8512 = literal8512 := by
  rw [tree8512_def, child0, child1]
  rfl
theorem node8512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8510 live8510 coloured8510 = result8510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8511 live8511 coloured8511 = result8511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8512 live8512 coloured8512 = result8512 := by
  rw [tree8512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8510 coloured8510 at child
  try dsimp only [live8512, coloured8512]
  rw [child]
  dsimp only [result8510]
  have child := child1
  unfold live8511 coloured8511 at child
  try dsimp only [live8512, coloured8512]
  rw [child]
  dsimp only [result8511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8513_agree_conditional : tree8513 = literal8513 := by
  rw [tree8513_def]
  rfl
theorem node8513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8513 live8513 coloured8513 = result8513 := by
  rw [tree8513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8514_agree_conditional
    (child0 : tree8512 = literal8512)
    (child1 : tree8513 = literal8513) : tree8514 = literal8514 := by
  rw [tree8514_def, child0, child1]
  rfl
theorem node8514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8512 live8512 coloured8512 = result8512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8513 live8513 coloured8513 = result8513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8514 live8514 coloured8514 = result8514 := by
  rw [tree8514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8512 coloured8512 at child
  try dsimp only [live8514, coloured8514]
  rw [child]
  dsimp only [result8512]
  have child := child1
  unfold live8513 coloured8513 at child
  try dsimp only [live8514, coloured8514]
  rw [child]
  dsimp only [result8513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8515_agree_conditional : tree8515 = literal8515 := by
  rw [tree8515_def]
  rfl
theorem node8515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8515 live8515 coloured8515 = result8515 := by
  rw [tree8515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8516_agree_conditional
    (child0 : tree8514 = literal8514)
    (child1 : tree8515 = literal8515) : tree8516 = literal8516 := by
  rw [tree8516_def, child0, child1]
  rfl
theorem node8516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8514 live8514 coloured8514 = result8514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8515 live8515 coloured8515 = result8515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8516 live8516 coloured8516 = result8516 := by
  rw [tree8516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8514 coloured8514 at child
  try dsimp only [live8516, coloured8516]
  rw [child]
  dsimp only [result8514]
  have child := child1
  unfold live8515 coloured8515 at child
  try dsimp only [live8516, coloured8516]
  rw [child]
  dsimp only [result8515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8517_agree_conditional : tree8517 = literal8517 := by
  rw [tree8517_def]
  rfl
theorem node8517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8517 live8517 coloured8517 = result8517 := by
  rw [tree8517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8518_agree_conditional
    (child0 : tree8516 = literal8516)
    (child1 : tree8517 = literal8517) : tree8518 = literal8518 := by
  rw [tree8518_def, child0, child1]
  rfl
theorem node8518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8516 live8516 coloured8516 = result8516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8517 live8517 coloured8517 = result8517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8518 live8518 coloured8518 = result8518 := by
  rw [tree8518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8516 coloured8516 at child
  try dsimp only [live8518, coloured8518]
  rw [child]
  dsimp only [result8516]
  have child := child1
  unfold live8517 coloured8517 at child
  try dsimp only [live8518, coloured8518]
  rw [child]
  dsimp only [result8517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8519_agree_conditional : tree8519 = literal8519 := by
  rw [tree8519_def]
  rfl
theorem node8519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8519 live8519 coloured8519 = result8519 := by
  rw [tree8519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8520_agree_conditional
    (child0 : tree8518 = literal8518)
    (child1 : tree8519 = literal8519) : tree8520 = literal8520 := by
  rw [tree8520_def, child0, child1]
  rfl
theorem node8520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8518 live8518 coloured8518 = result8518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8519 live8519 coloured8519 = result8519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8520 live8520 coloured8520 = result8520 := by
  rw [tree8520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8518 coloured8518 at child
  try dsimp only [live8520, coloured8520]
  rw [child]
  dsimp only [result8518]
  have child := child1
  unfold live8519 coloured8519 at child
  try dsimp only [live8520, coloured8520]
  rw [child]
  dsimp only [result8519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8521_agree_conditional : tree8521 = literal8521 := by
  rw [tree8521_def]
  rfl
theorem node8521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8521 live8521 coloured8521 = result8521 := by
  rw [tree8521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8522_agree_conditional
    (child0 : tree8520 = literal8520)
    (child1 : tree8521 = literal8521) : tree8522 = literal8522 := by
  rw [tree8522_def, child0, child1]
  rfl
theorem node8522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8520 live8520 coloured8520 = result8520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8521 live8521 coloured8521 = result8521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8522 live8522 coloured8522 = result8522 := by
  rw [tree8522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8520 coloured8520 at child
  try dsimp only [live8522, coloured8522]
  rw [child]
  dsimp only [result8520]
  have child := child1
  unfold live8521 coloured8521 at child
  try dsimp only [live8522, coloured8522]
  rw [child]
  dsimp only [result8521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8523_agree_conditional : tree8523 = literal8523 := by
  rw [tree8523_def]
  rfl
theorem node8523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8523 live8523 coloured8523 = result8523 := by
  rw [tree8523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8524_agree_conditional
    (child0 : tree8522 = literal8522)
    (child1 : tree8523 = literal8523) : tree8524 = literal8524 := by
  rw [tree8524_def, child0, child1]
  rfl
theorem node8524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8522 live8522 coloured8522 = result8522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8523 live8523 coloured8523 = result8523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8524 live8524 coloured8524 = result8524 := by
  rw [tree8524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8522 coloured8522 at child
  try dsimp only [live8524, coloured8524]
  rw [child]
  dsimp only [result8522]
  have child := child1
  unfold live8523 coloured8523 at child
  try dsimp only [live8524, coloured8524]
  rw [child]
  dsimp only [result8523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8525_agree_conditional : tree8525 = literal8525 := by
  rw [tree8525_def]
  rfl
theorem node8525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8525 live8525 coloured8525 = result8525 := by
  rw [tree8525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8526_agree_conditional
    (child0 : tree8524 = literal8524)
    (child1 : tree8525 = literal8525) : tree8526 = literal8526 := by
  rw [tree8526_def, child0, child1]
  rfl
theorem node8526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8524 live8524 coloured8524 = result8524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8525 live8525 coloured8525 = result8525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8526 live8526 coloured8526 = result8526 := by
  rw [tree8526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8524 coloured8524 at child
  try dsimp only [live8526, coloured8526]
  rw [child]
  dsimp only [result8524]
  have child := child1
  unfold live8525 coloured8525 at child
  try dsimp only [live8526, coloured8526]
  rw [child]
  dsimp only [result8525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8527_agree_conditional : tree8527 = literal8527 := by
  rw [tree8527_def]
  rfl
theorem node8527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8527 live8527 coloured8527 = result8527 := by
  rw [tree8527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8528_agree_conditional
    (child0 : tree8526 = literal8526)
    (child1 : tree8527 = literal8527) : tree8528 = literal8528 := by
  rw [tree8528_def, child0, child1]
  rfl
theorem node8528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8526 live8526 coloured8526 = result8526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8527 live8527 coloured8527 = result8527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8528 live8528 coloured8528 = result8528 := by
  rw [tree8528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8526 coloured8526 at child
  try dsimp only [live8528, coloured8528]
  rw [child]
  dsimp only [result8526]
  have child := child1
  unfold live8527 coloured8527 at child
  try dsimp only [live8528, coloured8528]
  rw [child]
  dsimp only [result8527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8529_agree_conditional : tree8529 = literal8529 := by
  rw [tree8529_def]
  rfl
theorem node8529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8529 live8529 coloured8529 = result8529 := by
  rw [tree8529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8530_agree_conditional
    (child0 : tree8528 = literal8528)
    (child1 : tree8529 = literal8529) : tree8530 = literal8530 := by
  rw [tree8530_def, child0, child1]
  rfl
theorem node8530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8528 live8528 coloured8528 = result8528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8529 live8529 coloured8529 = result8529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8530 live8530 coloured8530 = result8530 := by
  rw [tree8530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8528 coloured8528 at child
  try dsimp only [live8530, coloured8530]
  rw [child]
  dsimp only [result8528]
  have child := child1
  unfold live8529 coloured8529 at child
  try dsimp only [live8530, coloured8530]
  rw [child]
  dsimp only [result8529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8531_agree_conditional : tree8531 = literal8531 := by
  rw [tree8531_def]
  rfl
theorem node8531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8531 live8531 coloured8531 = result8531 := by
  rw [tree8531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8532_agree_conditional
    (child0 : tree8530 = literal8530)
    (child1 : tree8531 = literal8531) : tree8532 = literal8532 := by
  rw [tree8532_def, child0, child1]
  rfl
theorem node8532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8530 live8530 coloured8530 = result8530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8531 live8531 coloured8531 = result8531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8532 live8532 coloured8532 = result8532 := by
  rw [tree8532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8530 coloured8530 at child
  try dsimp only [live8532, coloured8532]
  rw [child]
  dsimp only [result8530]
  have child := child1
  unfold live8531 coloured8531 at child
  try dsimp only [live8532, coloured8532]
  rw [child]
  dsimp only [result8531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8533_agree_conditional : tree8533 = literal8533 := by
  rw [tree8533_def]
  rfl
theorem node8533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8533 live8533 coloured8533 = result8533 := by
  rw [tree8533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8534_agree_conditional
    (child0 : tree8532 = literal8532)
    (child1 : tree8533 = literal8533) : tree8534 = literal8534 := by
  rw [tree8534_def, child0, child1]
  rfl
theorem node8534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8532 live8532 coloured8532 = result8532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8533 live8533 coloured8533 = result8533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8534 live8534 coloured8534 = result8534 := by
  rw [tree8534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8532 coloured8532 at child
  try dsimp only [live8534, coloured8534]
  rw [child]
  dsimp only [result8532]
  have child := child1
  unfold live8533 coloured8533 at child
  try dsimp only [live8534, coloured8534]
  rw [child]
  dsimp only [result8533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8535_agree_conditional : tree8535 = literal8535 := by
  rw [tree8535_def]
  rfl
theorem node8535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8535 live8535 coloured8535 = result8535 := by
  rw [tree8535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8536_agree_conditional
    (child0 : tree8534 = literal8534)
    (child1 : tree8535 = literal8535) : tree8536 = literal8536 := by
  rw [tree8536_def, child0, child1]
  rfl
theorem node8536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8534 live8534 coloured8534 = result8534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8535 live8535 coloured8535 = result8535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8536 live8536 coloured8536 = result8536 := by
  rw [tree8536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8534 coloured8534 at child
  try dsimp only [live8536, coloured8536]
  rw [child]
  dsimp only [result8534]
  have child := child1
  unfold live8535 coloured8535 at child
  try dsimp only [live8536, coloured8536]
  rw [child]
  dsimp only [result8535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8537_agree_conditional : tree8537 = literal8537 := by
  rw [tree8537_def]
  rfl
theorem node8537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8537 live8537 coloured8537 = result8537 := by
  rw [tree8537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8538_agree_conditional
    (child0 : tree8536 = literal8536)
    (child1 : tree8537 = literal8537) : tree8538 = literal8538 := by
  rw [tree8538_def, child0, child1]
  rfl
theorem node8538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8536 live8536 coloured8536 = result8536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8537 live8537 coloured8537 = result8537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8538 live8538 coloured8538 = result8538 := by
  rw [tree8538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8536 coloured8536 at child
  try dsimp only [live8538, coloured8538]
  rw [child]
  dsimp only [result8536]
  have child := child1
  unfold live8537 coloured8537 at child
  try dsimp only [live8538, coloured8538]
  rw [child]
  dsimp only [result8537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8539_agree_conditional : tree8539 = literal8539 := by
  rw [tree8539_def]
  rfl
theorem node8539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8539 live8539 coloured8539 = result8539 := by
  rw [tree8539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8540_agree_conditional
    (child0 : tree8538 = literal8538)
    (child1 : tree8539 = literal8539) : tree8540 = literal8540 := by
  rw [tree8540_def, child0, child1]
  rfl
theorem node8540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8538 live8538 coloured8538 = result8538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8539 live8539 coloured8539 = result8539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8540 live8540 coloured8540 = result8540 := by
  rw [tree8540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8538 coloured8538 at child
  try dsimp only [live8540, coloured8540]
  rw [child]
  dsimp only [result8538]
  have child := child1
  unfold live8539 coloured8539 at child
  try dsimp only [live8540, coloured8540]
  rw [child]
  dsimp only [result8539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8541_agree_conditional : tree8541 = literal8541 := by
  rw [tree8541_def]
  rfl
theorem node8541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8541 live8541 coloured8541 = result8541 := by
  rw [tree8541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8542_agree_conditional
    (child0 : tree8540 = literal8540)
    (child1 : tree8541 = literal8541) : tree8542 = literal8542 := by
  rw [tree8542_def, child0, child1]
  rfl
theorem node8542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8540 live8540 coloured8540 = result8540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8541 live8541 coloured8541 = result8541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8542 live8542 coloured8542 = result8542 := by
  rw [tree8542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8540 coloured8540 at child
  try dsimp only [live8542, coloured8542]
  rw [child]
  dsimp only [result8540]
  have child := child1
  unfold live8541 coloured8541 at child
  try dsimp only [live8542, coloured8542]
  rw [child]
  dsimp only [result8541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8543_agree_conditional : tree8543 = literal8543 := by
  rw [tree8543_def]
  rfl
theorem node8543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8543 live8543 coloured8543 = result8543 := by
  rw [tree8543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
