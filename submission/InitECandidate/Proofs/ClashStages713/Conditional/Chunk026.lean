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
theorem tree2496_agree_conditional
    (child0 : tree2494 = literal2494)
    (child1 : tree2495 = literal2495) : tree2496 = literal2496 := by
  rw [tree2496_def, child0, child1]
  rfl
theorem node2496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2494 live2494 coloured2494 = result2494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2495 live2495 coloured2495 = result2495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2496 live2496 coloured2496 = result2496 := by
  rw [tree2496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2494 coloured2494 at child
  try dsimp only [live2496, coloured2496]
  rw [child]
  dsimp only [result2494]
  have child := child1
  unfold live2495 coloured2495 at child
  try dsimp only [live2496, coloured2496]
  rw [child]
  dsimp only [result2495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2497_agree_conditional : tree2497 = literal2497 := by
  rw [tree2497_def]
  rfl
theorem node2497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2497 live2497 coloured2497 = result2497 := by
  rw [tree2497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2498_agree_conditional
    (child0 : tree2496 = literal2496)
    (child1 : tree2497 = literal2497) : tree2498 = literal2498 := by
  rw [tree2498_def, child0, child1]
  rfl
theorem node2498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2496 live2496 coloured2496 = result2496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2497 live2497 coloured2497 = result2497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2498 live2498 coloured2498 = result2498 := by
  rw [tree2498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2496 coloured2496 at child
  try dsimp only [live2498, coloured2498]
  rw [child]
  dsimp only [result2496]
  have child := child1
  unfold live2497 coloured2497 at child
  try dsimp only [live2498, coloured2498]
  rw [child]
  dsimp only [result2497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2499_agree_conditional : tree2499 = literal2499 := by
  rw [tree2499_def]
  rfl
theorem node2499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2499 live2499 coloured2499 = result2499 := by
  rw [tree2499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2500_agree_conditional
    (child0 : tree2498 = literal2498)
    (child1 : tree2499 = literal2499) : tree2500 = literal2500 := by
  rw [tree2500_def, child0, child1]
  rfl
theorem node2500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2498 live2498 coloured2498 = result2498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2499 live2499 coloured2499 = result2499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2500 live2500 coloured2500 = result2500 := by
  rw [tree2500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2498 coloured2498 at child
  try dsimp only [live2500, coloured2500]
  rw [child]
  dsimp only [result2498]
  have child := child1
  unfold live2499 coloured2499 at child
  try dsimp only [live2500, coloured2500]
  rw [child]
  dsimp only [result2499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2501_agree_conditional : tree2501 = literal2501 := by
  rw [tree2501_def]
  rfl
theorem node2501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2501 live2501 coloured2501 = result2501 := by
  rw [tree2501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2502_agree_conditional
    (child0 : tree2500 = literal2500)
    (child1 : tree2501 = literal2501) : tree2502 = literal2502 := by
  rw [tree2502_def, child0, child1]
  rfl
theorem node2502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2500 live2500 coloured2500 = result2500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2501 live2501 coloured2501 = result2501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2502 live2502 coloured2502 = result2502 := by
  rw [tree2502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2500 coloured2500 at child
  try dsimp only [live2502, coloured2502]
  rw [child]
  dsimp only [result2500]
  have child := child1
  unfold live2501 coloured2501 at child
  try dsimp only [live2502, coloured2502]
  rw [child]
  dsimp only [result2501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2503_agree_conditional : tree2503 = literal2503 := by
  rw [tree2503_def]
  rfl
theorem node2503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2503 live2503 coloured2503 = result2503 := by
  rw [tree2503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2504_agree_conditional
    (child0 : tree2502 = literal2502)
    (child1 : tree2503 = literal2503) : tree2504 = literal2504 := by
  rw [tree2504_def, child0, child1]
  rfl
theorem node2504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2502 live2502 coloured2502 = result2502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2503 live2503 coloured2503 = result2503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2504 live2504 coloured2504 = result2504 := by
  rw [tree2504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2502 coloured2502 at child
  try dsimp only [live2504, coloured2504]
  rw [child]
  dsimp only [result2502]
  have child := child1
  unfold live2503 coloured2503 at child
  try dsimp only [live2504, coloured2504]
  rw [child]
  dsimp only [result2503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2505_agree_conditional : tree2505 = literal2505 := by
  rw [tree2505_def]
  rfl
theorem node2505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2505 live2505 coloured2505 = result2505 := by
  rw [tree2505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2506_agree_conditional
    (child0 : tree2504 = literal2504)
    (child1 : tree2505 = literal2505) : tree2506 = literal2506 := by
  rw [tree2506_def, child0, child1]
  rfl
theorem node2506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2504 live2504 coloured2504 = result2504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2505 live2505 coloured2505 = result2505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2506 live2506 coloured2506 = result2506 := by
  rw [tree2506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2504 coloured2504 at child
  try dsimp only [live2506, coloured2506]
  rw [child]
  dsimp only [result2504]
  have child := child1
  unfold live2505 coloured2505 at child
  try dsimp only [live2506, coloured2506]
  rw [child]
  dsimp only [result2505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2507_agree_conditional : tree2507 = literal2507 := by
  rw [tree2507_def]
  rfl
theorem node2507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2507 live2507 coloured2507 = result2507 := by
  rw [tree2507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2508_agree_conditional
    (child0 : tree2506 = literal2506)
    (child1 : tree2507 = literal2507) : tree2508 = literal2508 := by
  rw [tree2508_def, child0, child1]
  rfl
theorem node2508_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2506 live2506 coloured2506 = result2506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2507 live2507 coloured2507 = result2507) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2508 live2508 coloured2508 = result2508 := by
  rw [tree2508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2506 coloured2506 at child
  try dsimp only [live2508, coloured2508]
  rw [child]
  dsimp only [result2506]
  have child := child1
  unfold live2507 coloured2507 at child
  try dsimp only [live2508, coloured2508]
  rw [child]
  dsimp only [result2507]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2509_agree_conditional : tree2509 = literal2509 := by
  rw [tree2509_def]
  rfl
theorem node2509_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2509 live2509 coloured2509 = result2509 := by
  rw [tree2509_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2510_agree_conditional
    (child0 : tree2508 = literal2508)
    (child1 : tree2509 = literal2509) : tree2510 = literal2510 := by
  rw [tree2510_def, child0, child1]
  rfl
theorem node2510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2508 live2508 coloured2508 = result2508)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2509 live2509 coloured2509 = result2509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2510 live2510 coloured2510 = result2510 := by
  rw [tree2510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2508 coloured2508 at child
  try dsimp only [live2510, coloured2510]
  rw [child]
  dsimp only [result2508]
  have child := child1
  unfold live2509 coloured2509 at child
  try dsimp only [live2510, coloured2510]
  rw [child]
  dsimp only [result2509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2511_agree_conditional : tree2511 = literal2511 := by
  rw [tree2511_def]
  rfl
theorem node2511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2511 live2511 coloured2511 = result2511 := by
  rw [tree2511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2512_agree_conditional
    (child0 : tree2510 = literal2510)
    (child1 : tree2511 = literal2511) : tree2512 = literal2512 := by
  rw [tree2512_def, child0, child1]
  rfl
theorem node2512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2510 live2510 coloured2510 = result2510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2511 live2511 coloured2511 = result2511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2512 live2512 coloured2512 = result2512 := by
  rw [tree2512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2510 coloured2510 at child
  try dsimp only [live2512, coloured2512]
  rw [child]
  dsimp only [result2510]
  have child := child1
  unfold live2511 coloured2511 at child
  try dsimp only [live2512, coloured2512]
  rw [child]
  dsimp only [result2511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2513_agree_conditional : tree2513 = literal2513 := by
  rw [tree2513_def]
  rfl
theorem node2513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2513 live2513 coloured2513 = result2513 := by
  rw [tree2513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2514_agree_conditional
    (child0 : tree2512 = literal2512)
    (child1 : tree2513 = literal2513) : tree2514 = literal2514 := by
  rw [tree2514_def, child0, child1]
  rfl
theorem node2514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2512 live2512 coloured2512 = result2512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2513 live2513 coloured2513 = result2513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2514 live2514 coloured2514 = result2514 := by
  rw [tree2514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2512 coloured2512 at child
  try dsimp only [live2514, coloured2514]
  rw [child]
  dsimp only [result2512]
  have child := child1
  unfold live2513 coloured2513 at child
  try dsimp only [live2514, coloured2514]
  rw [child]
  dsimp only [result2513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2515_agree_conditional : tree2515 = literal2515 := by
  rw [tree2515_def]
  rfl
theorem node2515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2515 live2515 coloured2515 = result2515 := by
  rw [tree2515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2516_agree_conditional
    (child0 : tree2514 = literal2514)
    (child1 : tree2515 = literal2515) : tree2516 = literal2516 := by
  rw [tree2516_def, child0, child1]
  rfl
theorem node2516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2514 live2514 coloured2514 = result2514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2515 live2515 coloured2515 = result2515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2516 live2516 coloured2516 = result2516 := by
  rw [tree2516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2514 coloured2514 at child
  try dsimp only [live2516, coloured2516]
  rw [child]
  dsimp only [result2514]
  have child := child1
  unfold live2515 coloured2515 at child
  try dsimp only [live2516, coloured2516]
  rw [child]
  dsimp only [result2515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2517_agree_conditional : tree2517 = literal2517 := by
  rw [tree2517_def]
  rfl
theorem node2517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2517 live2517 coloured2517 = result2517 := by
  rw [tree2517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2518_agree_conditional
    (child0 : tree2516 = literal2516)
    (child1 : tree2517 = literal2517) : tree2518 = literal2518 := by
  rw [tree2518_def, child0, child1]
  rfl
theorem node2518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2516 live2516 coloured2516 = result2516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2517 live2517 coloured2517 = result2517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2518 live2518 coloured2518 = result2518 := by
  rw [tree2518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2516 coloured2516 at child
  try dsimp only [live2518, coloured2518]
  rw [child]
  dsimp only [result2516]
  have child := child1
  unfold live2517 coloured2517 at child
  try dsimp only [live2518, coloured2518]
  rw [child]
  dsimp only [result2517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2519_agree_conditional : tree2519 = literal2519 := by
  rw [tree2519_def]
  rfl
theorem node2519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2519 live2519 coloured2519 = result2519 := by
  rw [tree2519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2520_agree_conditional
    (child0 : tree2518 = literal2518)
    (child1 : tree2519 = literal2519) : tree2520 = literal2520 := by
  rw [tree2520_def, child0, child1]
  rfl
theorem node2520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2518 live2518 coloured2518 = result2518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2519 live2519 coloured2519 = result2519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2520 live2520 coloured2520 = result2520 := by
  rw [tree2520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2518 coloured2518 at child
  try dsimp only [live2520, coloured2520]
  rw [child]
  dsimp only [result2518]
  have child := child1
  unfold live2519 coloured2519 at child
  try dsimp only [live2520, coloured2520]
  rw [child]
  dsimp only [result2519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2521_agree_conditional : tree2521 = literal2521 := by
  rw [tree2521_def]
  rfl
theorem node2521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2521 live2521 coloured2521 = result2521 := by
  rw [tree2521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2522_agree_conditional
    (child0 : tree2520 = literal2520)
    (child1 : tree2521 = literal2521) : tree2522 = literal2522 := by
  rw [tree2522_def, child0, child1]
  rfl
theorem node2522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2520 live2520 coloured2520 = result2520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2521 live2521 coloured2521 = result2521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2522 live2522 coloured2522 = result2522 := by
  rw [tree2522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2520 coloured2520 at child
  try dsimp only [live2522, coloured2522]
  rw [child]
  dsimp only [result2520]
  have child := child1
  unfold live2521 coloured2521 at child
  try dsimp only [live2522, coloured2522]
  rw [child]
  dsimp only [result2521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2523_agree_conditional : tree2523 = literal2523 := by
  rw [tree2523_def]
  rfl
theorem node2523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2523 live2523 coloured2523 = result2523 := by
  rw [tree2523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2524_agree_conditional
    (child0 : tree2522 = literal2522)
    (child1 : tree2523 = literal2523) : tree2524 = literal2524 := by
  rw [tree2524_def, child0, child1]
  rfl
theorem node2524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2522 live2522 coloured2522 = result2522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2523 live2523 coloured2523 = result2523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2524 live2524 coloured2524 = result2524 := by
  rw [tree2524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2522 coloured2522 at child
  try dsimp only [live2524, coloured2524]
  rw [child]
  dsimp only [result2522]
  have child := child1
  unfold live2523 coloured2523 at child
  try dsimp only [live2524, coloured2524]
  rw [child]
  dsimp only [result2523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2525_agree_conditional : tree2525 = literal2525 := by
  rw [tree2525_def]
  rfl
theorem node2525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2525 live2525 coloured2525 = result2525 := by
  rw [tree2525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2526_agree_conditional
    (child0 : tree2524 = literal2524)
    (child1 : tree2525 = literal2525) : tree2526 = literal2526 := by
  rw [tree2526_def, child0, child1]
  rfl
theorem node2526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2524 live2524 coloured2524 = result2524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2525 live2525 coloured2525 = result2525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2526 live2526 coloured2526 = result2526 := by
  rw [tree2526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2524 coloured2524 at child
  try dsimp only [live2526, coloured2526]
  rw [child]
  dsimp only [result2524]
  have child := child1
  unfold live2525 coloured2525 at child
  try dsimp only [live2526, coloured2526]
  rw [child]
  dsimp only [result2525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2527_agree_conditional : tree2527 = literal2527 := by
  rw [tree2527_def]
  rfl
theorem node2527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2527 live2527 coloured2527 = result2527 := by
  rw [tree2527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2528_agree_conditional
    (child0 : tree2526 = literal2526)
    (child1 : tree2527 = literal2527) : tree2528 = literal2528 := by
  rw [tree2528_def, child0, child1]
  rfl
theorem node2528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2526 live2526 coloured2526 = result2526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2527 live2527 coloured2527 = result2527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2528 live2528 coloured2528 = result2528 := by
  rw [tree2528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2526 coloured2526 at child
  try dsimp only [live2528, coloured2528]
  rw [child]
  dsimp only [result2526]
  have child := child1
  unfold live2527 coloured2527 at child
  try dsimp only [live2528, coloured2528]
  rw [child]
  dsimp only [result2527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2529_agree_conditional : tree2529 = literal2529 := by
  rw [tree2529_def]
  rfl
theorem node2529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2529 live2529 coloured2529 = result2529 := by
  rw [tree2529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2530_agree_conditional
    (child0 : tree2528 = literal2528)
    (child1 : tree2529 = literal2529) : tree2530 = literal2530 := by
  rw [tree2530_def, child0, child1]
  rfl
theorem node2530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2528 live2528 coloured2528 = result2528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2529 live2529 coloured2529 = result2529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2530 live2530 coloured2530 = result2530 := by
  rw [tree2530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2528 coloured2528 at child
  try dsimp only [live2530, coloured2530]
  rw [child]
  dsimp only [result2528]
  have child := child1
  unfold live2529 coloured2529 at child
  try dsimp only [live2530, coloured2530]
  rw [child]
  dsimp only [result2529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2531_agree_conditional : tree2531 = literal2531 := by
  rw [tree2531_def]
  rfl
theorem node2531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2531 live2531 coloured2531 = result2531 := by
  rw [tree2531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2532_agree_conditional
    (child0 : tree2530 = literal2530)
    (child1 : tree2531 = literal2531) : tree2532 = literal2532 := by
  rw [tree2532_def, child0, child1]
  rfl
theorem node2532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2530 live2530 coloured2530 = result2530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2531 live2531 coloured2531 = result2531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2532 live2532 coloured2532 = result2532 := by
  rw [tree2532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2530 coloured2530 at child
  try dsimp only [live2532, coloured2532]
  rw [child]
  dsimp only [result2530]
  have child := child1
  unfold live2531 coloured2531 at child
  try dsimp only [live2532, coloured2532]
  rw [child]
  dsimp only [result2531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2533_agree_conditional : tree2533 = literal2533 := by
  rw [tree2533_def]
  rfl
theorem node2533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2533 live2533 coloured2533 = result2533 := by
  rw [tree2533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2534_agree_conditional
    (child0 : tree2532 = literal2532)
    (child1 : tree2533 = literal2533) : tree2534 = literal2534 := by
  rw [tree2534_def, child0, child1]
  rfl
theorem node2534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2532 live2532 coloured2532 = result2532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2533 live2533 coloured2533 = result2533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2534 live2534 coloured2534 = result2534 := by
  rw [tree2534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2532 coloured2532 at child
  try dsimp only [live2534, coloured2534]
  rw [child]
  dsimp only [result2532]
  have child := child1
  unfold live2533 coloured2533 at child
  try dsimp only [live2534, coloured2534]
  rw [child]
  dsimp only [result2533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2535_agree_conditional : tree2535 = literal2535 := by
  rw [tree2535_def]
  rfl
theorem node2535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2535 live2535 coloured2535 = result2535 := by
  rw [tree2535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2536_agree_conditional
    (child0 : tree2534 = literal2534)
    (child1 : tree2535 = literal2535) : tree2536 = literal2536 := by
  rw [tree2536_def, child0, child1]
  rfl
theorem node2536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2534 live2534 coloured2534 = result2534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2535 live2535 coloured2535 = result2535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2536 live2536 coloured2536 = result2536 := by
  rw [tree2536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2534 coloured2534 at child
  try dsimp only [live2536, coloured2536]
  rw [child]
  dsimp only [result2534]
  have child := child1
  unfold live2535 coloured2535 at child
  try dsimp only [live2536, coloured2536]
  rw [child]
  dsimp only [result2535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2537_agree_conditional : tree2537 = literal2537 := by
  rw [tree2537_def]
  rfl
theorem node2537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2537 live2537 coloured2537 = result2537 := by
  rw [tree2537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2538_agree_conditional
    (child0 : tree2536 = literal2536)
    (child1 : tree2537 = literal2537) : tree2538 = literal2538 := by
  rw [tree2538_def, child0, child1]
  rfl
theorem node2538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2536 live2536 coloured2536 = result2536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2537 live2537 coloured2537 = result2537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2538 live2538 coloured2538 = result2538 := by
  rw [tree2538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2536 coloured2536 at child
  try dsimp only [live2538, coloured2538]
  rw [child]
  dsimp only [result2536]
  have child := child1
  unfold live2537 coloured2537 at child
  try dsimp only [live2538, coloured2538]
  rw [child]
  dsimp only [result2537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2539_agree_conditional : tree2539 = literal2539 := by
  rw [tree2539_def]
  rfl
theorem node2539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2539 live2539 coloured2539 = result2539 := by
  rw [tree2539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2540_agree_conditional
    (child0 : tree2538 = literal2538)
    (child1 : tree2539 = literal2539) : tree2540 = literal2540 := by
  rw [tree2540_def, child0, child1]
  rfl
theorem node2540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2538 live2538 coloured2538 = result2538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2539 live2539 coloured2539 = result2539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2540 live2540 coloured2540 = result2540 := by
  rw [tree2540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2538 coloured2538 at child
  try dsimp only [live2540, coloured2540]
  rw [child]
  dsimp only [result2538]
  have child := child1
  unfold live2539 coloured2539 at child
  try dsimp only [live2540, coloured2540]
  rw [child]
  dsimp only [result2539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2541_agree_conditional : tree2541 = literal2541 := by
  rw [tree2541_def]
  rfl
theorem node2541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2541 live2541 coloured2541 = result2541 := by
  rw [tree2541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2542_agree_conditional
    (child0 : tree2540 = literal2540)
    (child1 : tree2541 = literal2541) : tree2542 = literal2542 := by
  rw [tree2542_def, child0, child1]
  rfl
theorem node2542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2540 live2540 coloured2540 = result2540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2541 live2541 coloured2541 = result2541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2542 live2542 coloured2542 = result2542 := by
  rw [tree2542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2540 coloured2540 at child
  try dsimp only [live2542, coloured2542]
  rw [child]
  dsimp only [result2540]
  have child := child1
  unfold live2541 coloured2541 at child
  try dsimp only [live2542, coloured2542]
  rw [child]
  dsimp only [result2541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2543_agree_conditional : tree2543 = literal2543 := by
  rw [tree2543_def]
  rfl
theorem node2543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2543 live2543 coloured2543 = result2543 := by
  rw [tree2543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2544_agree_conditional
    (child0 : tree2542 = literal2542)
    (child1 : tree2543 = literal2543) : tree2544 = literal2544 := by
  rw [tree2544_def, child0, child1]
  rfl
theorem node2544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2542 live2542 coloured2542 = result2542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2543 live2543 coloured2543 = result2543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2544 live2544 coloured2544 = result2544 := by
  rw [tree2544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2542 coloured2542 at child
  try dsimp only [live2544, coloured2544]
  rw [child]
  dsimp only [result2542]
  have child := child1
  unfold live2543 coloured2543 at child
  try dsimp only [live2544, coloured2544]
  rw [child]
  dsimp only [result2543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2545_agree_conditional : tree2545 = literal2545 := by
  rw [tree2545_def]
  rfl
theorem node2545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2545 live2545 coloured2545 = result2545 := by
  rw [tree2545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2546_agree_conditional
    (child0 : tree2544 = literal2544)
    (child1 : tree2545 = literal2545) : tree2546 = literal2546 := by
  rw [tree2546_def, child0, child1]
  rfl
theorem node2546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2544 live2544 coloured2544 = result2544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2545 live2545 coloured2545 = result2545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2546 live2546 coloured2546 = result2546 := by
  rw [tree2546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2544 coloured2544 at child
  try dsimp only [live2546, coloured2546]
  rw [child]
  dsimp only [result2544]
  have child := child1
  unfold live2545 coloured2545 at child
  try dsimp only [live2546, coloured2546]
  rw [child]
  dsimp only [result2545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2547_agree_conditional : tree2547 = literal2547 := by
  rw [tree2547_def]
  rfl
theorem node2547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2547 live2547 coloured2547 = result2547 := by
  rw [tree2547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2548_agree_conditional
    (child0 : tree2546 = literal2546)
    (child1 : tree2547 = literal2547) : tree2548 = literal2548 := by
  rw [tree2548_def, child0, child1]
  rfl
theorem node2548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2546 live2546 coloured2546 = result2546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2547 live2547 coloured2547 = result2547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2548 live2548 coloured2548 = result2548 := by
  rw [tree2548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2546 coloured2546 at child
  try dsimp only [live2548, coloured2548]
  rw [child]
  dsimp only [result2546]
  have child := child1
  unfold live2547 coloured2547 at child
  try dsimp only [live2548, coloured2548]
  rw [child]
  dsimp only [result2547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2549_agree_conditional : tree2549 = literal2549 := by
  rw [tree2549_def]
  rfl
theorem node2549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2549 live2549 coloured2549 = result2549 := by
  rw [tree2549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2550_agree_conditional
    (child0 : tree2548 = literal2548)
    (child1 : tree2549 = literal2549) : tree2550 = literal2550 := by
  rw [tree2550_def, child0, child1]
  rfl
theorem node2550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2548 live2548 coloured2548 = result2548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2549 live2549 coloured2549 = result2549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2550 live2550 coloured2550 = result2550 := by
  rw [tree2550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2548 coloured2548 at child
  try dsimp only [live2550, coloured2550]
  rw [child]
  dsimp only [result2548]
  have child := child1
  unfold live2549 coloured2549 at child
  try dsimp only [live2550, coloured2550]
  rw [child]
  dsimp only [result2549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2551_agree_conditional : tree2551 = literal2551 := by
  rw [tree2551_def]
  rfl
theorem node2551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2551 live2551 coloured2551 = result2551 := by
  rw [tree2551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2552_agree_conditional
    (child0 : tree2550 = literal2550)
    (child1 : tree2551 = literal2551) : tree2552 = literal2552 := by
  rw [tree2552_def, child0, child1]
  rfl
theorem node2552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2550 live2550 coloured2550 = result2550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2551 live2551 coloured2551 = result2551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2552 live2552 coloured2552 = result2552 := by
  rw [tree2552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2550 coloured2550 at child
  try dsimp only [live2552, coloured2552]
  rw [child]
  dsimp only [result2550]
  have child := child1
  unfold live2551 coloured2551 at child
  try dsimp only [live2552, coloured2552]
  rw [child]
  dsimp only [result2551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2553_agree_conditional : tree2553 = literal2553 := by
  rw [tree2553_def]
  rfl
theorem node2553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2553 live2553 coloured2553 = result2553 := by
  rw [tree2553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2554_agree_conditional
    (child0 : tree2552 = literal2552)
    (child1 : tree2553 = literal2553) : tree2554 = literal2554 := by
  rw [tree2554_def, child0, child1]
  rfl
theorem node2554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2552 live2552 coloured2552 = result2552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2553 live2553 coloured2553 = result2553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2554 live2554 coloured2554 = result2554 := by
  rw [tree2554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2552 coloured2552 at child
  try dsimp only [live2554, coloured2554]
  rw [child]
  dsimp only [result2552]
  have child := child1
  unfold live2553 coloured2553 at child
  try dsimp only [live2554, coloured2554]
  rw [child]
  dsimp only [result2553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2555_agree_conditional : tree2555 = literal2555 := by
  rw [tree2555_def]
  rfl
theorem node2555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2555 live2555 coloured2555 = result2555 := by
  rw [tree2555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2556_agree_conditional
    (child0 : tree2554 = literal2554)
    (child1 : tree2555 = literal2555) : tree2556 = literal2556 := by
  rw [tree2556_def, child0, child1]
  rfl
theorem node2556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2554 live2554 coloured2554 = result2554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2555 live2555 coloured2555 = result2555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2556 live2556 coloured2556 = result2556 := by
  rw [tree2556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2554 coloured2554 at child
  try dsimp only [live2556, coloured2556]
  rw [child]
  dsimp only [result2554]
  have child := child1
  unfold live2555 coloured2555 at child
  try dsimp only [live2556, coloured2556]
  rw [child]
  dsimp only [result2555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2557_agree_conditional : tree2557 = literal2557 := by
  rw [tree2557_def]
  rfl
theorem node2557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2557 live2557 coloured2557 = result2557 := by
  rw [tree2557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2558_agree_conditional
    (child0 : tree2556 = literal2556)
    (child1 : tree2557 = literal2557) : tree2558 = literal2558 := by
  rw [tree2558_def, child0, child1]
  rfl
theorem node2558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2556 live2556 coloured2556 = result2556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2557 live2557 coloured2557 = result2557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2558 live2558 coloured2558 = result2558 := by
  rw [tree2558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2556 coloured2556 at child
  try dsimp only [live2558, coloured2558]
  rw [child]
  dsimp only [result2556]
  have child := child1
  unfold live2557 coloured2557 at child
  try dsimp only [live2558, coloured2558]
  rw [child]
  dsimp only [result2557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2559_agree_conditional : tree2559 = literal2559 := by
  rw [tree2559_def]
  rfl
theorem node2559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2559 live2559 coloured2559 = result2559 := by
  rw [tree2559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2560_agree_conditional
    (child0 : tree2558 = literal2558)
    (child1 : tree2559 = literal2559) : tree2560 = literal2560 := by
  rw [tree2560_def, child0, child1]
  rfl
theorem node2560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2558 live2558 coloured2558 = result2558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2559 live2559 coloured2559 = result2559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2560 live2560 coloured2560 = result2560 := by
  rw [tree2560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2558 coloured2558 at child
  try dsimp only [live2560, coloured2560]
  rw [child]
  dsimp only [result2558]
  have child := child1
  unfold live2559 coloured2559 at child
  try dsimp only [live2560, coloured2560]
  rw [child]
  dsimp only [result2559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2561_agree_conditional : tree2561 = literal2561 := by
  rw [tree2561_def]
  rfl
theorem node2561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2561 live2561 coloured2561 = result2561 := by
  rw [tree2561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2562_agree_conditional
    (child0 : tree2560 = literal2560)
    (child1 : tree2561 = literal2561) : tree2562 = literal2562 := by
  rw [tree2562_def, child0, child1]
  rfl
theorem node2562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2560 live2560 coloured2560 = result2560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2561 live2561 coloured2561 = result2561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2562 live2562 coloured2562 = result2562 := by
  rw [tree2562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2560 coloured2560 at child
  try dsimp only [live2562, coloured2562]
  rw [child]
  dsimp only [result2560]
  have child := child1
  unfold live2561 coloured2561 at child
  try dsimp only [live2562, coloured2562]
  rw [child]
  dsimp only [result2561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2563_agree_conditional : tree2563 = literal2563 := by
  rw [tree2563_def]
  rfl
theorem node2563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2563 live2563 coloured2563 = result2563 := by
  rw [tree2563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2564_agree_conditional
    (child0 : tree2562 = literal2562)
    (child1 : tree2563 = literal2563) : tree2564 = literal2564 := by
  rw [tree2564_def, child0, child1]
  rfl
theorem node2564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2562 live2562 coloured2562 = result2562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2563 live2563 coloured2563 = result2563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2564 live2564 coloured2564 = result2564 := by
  rw [tree2564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2562 coloured2562 at child
  try dsimp only [live2564, coloured2564]
  rw [child]
  dsimp only [result2562]
  have child := child1
  unfold live2563 coloured2563 at child
  try dsimp only [live2564, coloured2564]
  rw [child]
  dsimp only [result2563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2565_agree_conditional : tree2565 = literal2565 := by
  rw [tree2565_def]
  rfl
theorem node2565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2565 live2565 coloured2565 = result2565 := by
  rw [tree2565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2566_agree_conditional
    (child0 : tree2564 = literal2564)
    (child1 : tree2565 = literal2565) : tree2566 = literal2566 := by
  rw [tree2566_def, child0, child1]
  rfl
theorem node2566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2564 live2564 coloured2564 = result2564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2565 live2565 coloured2565 = result2565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2566 live2566 coloured2566 = result2566 := by
  rw [tree2566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2564 coloured2564 at child
  try dsimp only [live2566, coloured2566]
  rw [child]
  dsimp only [result2564]
  have child := child1
  unfold live2565 coloured2565 at child
  try dsimp only [live2566, coloured2566]
  rw [child]
  dsimp only [result2565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2567_agree_conditional : tree2567 = literal2567 := by
  rw [tree2567_def]
  rfl
theorem node2567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2567 live2567 coloured2567 = result2567 := by
  rw [tree2567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2568_agree_conditional
    (child0 : tree2566 = literal2566)
    (child1 : tree2567 = literal2567) : tree2568 = literal2568 := by
  rw [tree2568_def, child0, child1]
  rfl
theorem node2568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2566 live2566 coloured2566 = result2566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2567 live2567 coloured2567 = result2567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2568 live2568 coloured2568 = result2568 := by
  rw [tree2568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2566 coloured2566 at child
  try dsimp only [live2568, coloured2568]
  rw [child]
  dsimp only [result2566]
  have child := child1
  unfold live2567 coloured2567 at child
  try dsimp only [live2568, coloured2568]
  rw [child]
  dsimp only [result2567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2569_agree_conditional : tree2569 = literal2569 := by
  rw [tree2569_def]
  rfl
theorem node2569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2569 live2569 coloured2569 = result2569 := by
  rw [tree2569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2570_agree_conditional
    (child0 : tree2568 = literal2568)
    (child1 : tree2569 = literal2569) : tree2570 = literal2570 := by
  rw [tree2570_def, child0, child1]
  rfl
theorem node2570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2568 live2568 coloured2568 = result2568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2569 live2569 coloured2569 = result2569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2570 live2570 coloured2570 = result2570 := by
  rw [tree2570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2568 coloured2568 at child
  try dsimp only [live2570, coloured2570]
  rw [child]
  dsimp only [result2568]
  have child := child1
  unfold live2569 coloured2569 at child
  try dsimp only [live2570, coloured2570]
  rw [child]
  dsimp only [result2569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2571_agree_conditional : tree2571 = literal2571 := by
  rw [tree2571_def]
  rfl
theorem node2571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2571 live2571 coloured2571 = result2571 := by
  rw [tree2571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2572_agree_conditional
    (child0 : tree2570 = literal2570)
    (child1 : tree2571 = literal2571) : tree2572 = literal2572 := by
  rw [tree2572_def, child0, child1]
  rfl
theorem node2572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2570 live2570 coloured2570 = result2570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2571 live2571 coloured2571 = result2571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2572 live2572 coloured2572 = result2572 := by
  rw [tree2572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2570 coloured2570 at child
  try dsimp only [live2572, coloured2572]
  rw [child]
  dsimp only [result2570]
  have child := child1
  unfold live2571 coloured2571 at child
  try dsimp only [live2572, coloured2572]
  rw [child]
  dsimp only [result2571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2573_agree_conditional : tree2573 = literal2573 := by
  rw [tree2573_def]
  rfl
theorem node2573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2573 live2573 coloured2573 = result2573 := by
  rw [tree2573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2574_agree_conditional
    (child0 : tree2572 = literal2572)
    (child1 : tree2573 = literal2573) : tree2574 = literal2574 := by
  rw [tree2574_def, child0, child1]
  rfl
theorem node2574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2572 live2572 coloured2572 = result2572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2573 live2573 coloured2573 = result2573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2574 live2574 coloured2574 = result2574 := by
  rw [tree2574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2572 coloured2572 at child
  try dsimp only [live2574, coloured2574]
  rw [child]
  dsimp only [result2572]
  have child := child1
  unfold live2573 coloured2573 at child
  try dsimp only [live2574, coloured2574]
  rw [child]
  dsimp only [result2573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2575_agree_conditional : tree2575 = literal2575 := by
  rw [tree2575_def]
  rfl
theorem node2575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2575 live2575 coloured2575 = result2575 := by
  rw [tree2575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2576_agree_conditional
    (child0 : tree2574 = literal2574)
    (child1 : tree2575 = literal2575) : tree2576 = literal2576 := by
  rw [tree2576_def, child0, child1]
  rfl
theorem node2576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2574 live2574 coloured2574 = result2574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2575 live2575 coloured2575 = result2575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2576 live2576 coloured2576 = result2576 := by
  rw [tree2576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2574 coloured2574 at child
  try dsimp only [live2576, coloured2576]
  rw [child]
  dsimp only [result2574]
  have child := child1
  unfold live2575 coloured2575 at child
  try dsimp only [live2576, coloured2576]
  rw [child]
  dsimp only [result2575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2577_agree_conditional : tree2577 = literal2577 := by
  rw [tree2577_def]
  rfl
theorem node2577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2577 live2577 coloured2577 = result2577 := by
  rw [tree2577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2578_agree_conditional
    (child0 : tree2576 = literal2576)
    (child1 : tree2577 = literal2577) : tree2578 = literal2578 := by
  rw [tree2578_def, child0, child1]
  rfl
theorem node2578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2576 live2576 coloured2576 = result2576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2577 live2577 coloured2577 = result2577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2578 live2578 coloured2578 = result2578 := by
  rw [tree2578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2576 coloured2576 at child
  try dsimp only [live2578, coloured2578]
  rw [child]
  dsimp only [result2576]
  have child := child1
  unfold live2577 coloured2577 at child
  try dsimp only [live2578, coloured2578]
  rw [child]
  dsimp only [result2577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2579_agree_conditional : tree2579 = literal2579 := by
  rw [tree2579_def]
  rfl
theorem node2579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2579 live2579 coloured2579 = result2579 := by
  rw [tree2579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2580_agree_conditional
    (child0 : tree2578 = literal2578)
    (child1 : tree2579 = literal2579) : tree2580 = literal2580 := by
  rw [tree2580_def, child0, child1]
  rfl
theorem node2580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2578 live2578 coloured2578 = result2578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2579 live2579 coloured2579 = result2579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2580 live2580 coloured2580 = result2580 := by
  rw [tree2580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2578 coloured2578 at child
  try dsimp only [live2580, coloured2580]
  rw [child]
  dsimp only [result2578]
  have child := child1
  unfold live2579 coloured2579 at child
  try dsimp only [live2580, coloured2580]
  rw [child]
  dsimp only [result2579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2581_agree_conditional : tree2581 = literal2581 := by
  rw [tree2581_def]
  rfl
theorem node2581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2581 live2581 coloured2581 = result2581 := by
  rw [tree2581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2582_agree_conditional
    (child0 : tree2580 = literal2580)
    (child1 : tree2581 = literal2581) : tree2582 = literal2582 := by
  rw [tree2582_def, child0, child1]
  rfl
theorem node2582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2580 live2580 coloured2580 = result2580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2581 live2581 coloured2581 = result2581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2582 live2582 coloured2582 = result2582 := by
  rw [tree2582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2580 coloured2580 at child
  try dsimp only [live2582, coloured2582]
  rw [child]
  dsimp only [result2580]
  have child := child1
  unfold live2581 coloured2581 at child
  try dsimp only [live2582, coloured2582]
  rw [child]
  dsimp only [result2581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2583_agree_conditional : tree2583 = literal2583 := by
  rw [tree2583_def]
  rfl
theorem node2583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2583 live2583 coloured2583 = result2583 := by
  rw [tree2583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2584_agree_conditional
    (child0 : tree2582 = literal2582)
    (child1 : tree2583 = literal2583) : tree2584 = literal2584 := by
  rw [tree2584_def, child0, child1]
  rfl
theorem node2584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2582 live2582 coloured2582 = result2582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2583 live2583 coloured2583 = result2583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2584 live2584 coloured2584 = result2584 := by
  rw [tree2584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2582 coloured2582 at child
  try dsimp only [live2584, coloured2584]
  rw [child]
  dsimp only [result2582]
  have child := child1
  unfold live2583 coloured2583 at child
  try dsimp only [live2584, coloured2584]
  rw [child]
  dsimp only [result2583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2585_agree_conditional : tree2585 = literal2585 := by
  rw [tree2585_def]
  rfl
theorem node2585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2585 live2585 coloured2585 = result2585 := by
  rw [tree2585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2586_agree_conditional
    (child0 : tree2584 = literal2584)
    (child1 : tree2585 = literal2585) : tree2586 = literal2586 := by
  rw [tree2586_def, child0, child1]
  rfl
theorem node2586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2584 live2584 coloured2584 = result2584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2585 live2585 coloured2585 = result2585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2586 live2586 coloured2586 = result2586 := by
  rw [tree2586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2584 coloured2584 at child
  try dsimp only [live2586, coloured2586]
  rw [child]
  dsimp only [result2584]
  have child := child1
  unfold live2585 coloured2585 at child
  try dsimp only [live2586, coloured2586]
  rw [child]
  dsimp only [result2585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2587_agree_conditional : tree2587 = literal2587 := by
  rw [tree2587_def]
  rfl
theorem node2587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2587 live2587 coloured2587 = result2587 := by
  rw [tree2587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2588_agree_conditional
    (child0 : tree2586 = literal2586)
    (child1 : tree2587 = literal2587) : tree2588 = literal2588 := by
  rw [tree2588_def, child0, child1]
  rfl
theorem node2588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2586 live2586 coloured2586 = result2586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2587 live2587 coloured2587 = result2587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2588 live2588 coloured2588 = result2588 := by
  rw [tree2588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2586 coloured2586 at child
  try dsimp only [live2588, coloured2588]
  rw [child]
  dsimp only [result2586]
  have child := child1
  unfold live2587 coloured2587 at child
  try dsimp only [live2588, coloured2588]
  rw [child]
  dsimp only [result2587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2589_agree_conditional : tree2589 = literal2589 := by
  rw [tree2589_def]
  rfl
theorem node2589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2589 live2589 coloured2589 = result2589 := by
  rw [tree2589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2590_agree_conditional
    (child0 : tree2588 = literal2588)
    (child1 : tree2589 = literal2589) : tree2590 = literal2590 := by
  rw [tree2590_def, child0, child1]
  rfl
theorem node2590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2588 live2588 coloured2588 = result2588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2589 live2589 coloured2589 = result2589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2590 live2590 coloured2590 = result2590 := by
  rw [tree2590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2588 coloured2588 at child
  try dsimp only [live2590, coloured2590]
  rw [child]
  dsimp only [result2588]
  have child := child1
  unfold live2589 coloured2589 at child
  try dsimp only [live2590, coloured2590]
  rw [child]
  dsimp only [result2589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2591_agree_conditional : tree2591 = literal2591 := by
  rw [tree2591_def]
  rfl
theorem node2591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2591 live2591 coloured2591 = result2591 := by
  rw [tree2591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
