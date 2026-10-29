import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages875.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages875
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
theorem tree2508_agree_conditional : tree2508 = literal2508 := by
  rw [tree2508_def]
  rfl
theorem node2508_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2508 live2508 coloured2508 = result2508 := by
  rw [tree2508_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2509_agree_conditional
    (child0 : tree2507 = literal2507)
    (child1 : tree2508 = literal2508) : tree2509 = literal2509 := by
  rw [tree2509_def, child0, child1]
  rfl
theorem node2509_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2507 live2507 coloured2507 = result2507)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2508 live2508 coloured2508 = result2508) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2509 live2509 coloured2509 = result2509 := by
  rw [tree2509_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2507 coloured2507 at child
  try dsimp only [live2509, coloured2509]
  rw [child]
  dsimp only [result2507]
  have child := child1
  unfold live2508 coloured2508 at child
  try dsimp only [live2509, coloured2509]
  rw [child]
  dsimp only [result2508]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2510_agree_conditional : tree2510 = literal2510 := by
  rw [tree2510_def]
  rfl
theorem node2510_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2510 live2510 coloured2510 = result2510 := by
  rw [tree2510_def]
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
theorem tree2515_agree_conditional
    (child0 : tree2509 = literal2509)
    (child1 : tree2514 = literal2514) : tree2515 = literal2515 := by
  rw [tree2515_def, child0, child1]
  rfl
theorem node2515_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2509 live2509 coloured2509 = result2509)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2514 live2514 coloured2514 = result2514) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2515 live2515 coloured2515 = result2515 := by
  rw [tree2515_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2509 coloured2509 at child
  try dsimp only [live2515, coloured2515]
  rw [child]
  dsimp only [result2509]
  have child := child1
  unfold live2514 coloured2514 at child
  try dsimp only [live2515, coloured2515]
  rw [child]
  dsimp only [result2514]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2516_agree_conditional
    (child0 : tree2506 = literal2506)
    (child1 : tree2515 = literal2515) : tree2516 = literal2516 := by
  rw [tree2516_def, child0, child1]
  rfl
theorem node2516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2506 live2506 coloured2506 = result2506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2515 live2515 coloured2515 = result2515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2516 live2516 coloured2516 = result2516 := by
  rw [tree2516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2506 coloured2506 at child
  try dsimp only [live2516, coloured2516]
  rw [child]
  dsimp only [result2506]
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
end InitECandidate.Proofs.ClashStages875
