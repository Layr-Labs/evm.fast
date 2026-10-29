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
theorem tree9504_agree_conditional
    (child0 : tree9502 = literal9502)
    (child1 : tree9503 = literal9503) : tree9504 = literal9504 := by
  rw [tree9504_def, child0, child1]
  rfl
theorem node9504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9502 live9502 coloured9502 = result9502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9503 live9503 coloured9503 = result9503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9504 live9504 coloured9504 = result9504 := by
  rw [tree9504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9502 coloured9502 at child
  try dsimp only [live9504, coloured9504]
  rw [child]
  dsimp only [result9502]
  have child := child1
  unfold live9503 coloured9503 at child
  try dsimp only [live9504, coloured9504]
  rw [child]
  dsimp only [result9503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9505_agree_conditional : tree9505 = literal9505 := by
  rw [tree9505_def]
  rfl
theorem node9505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9505 live9505 coloured9505 = result9505 := by
  rw [tree9505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9506_agree_conditional
    (child0 : tree9504 = literal9504)
    (child1 : tree9505 = literal9505) : tree9506 = literal9506 := by
  rw [tree9506_def, child0, child1]
  rfl
theorem node9506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9504 live9504 coloured9504 = result9504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9505 live9505 coloured9505 = result9505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9506 live9506 coloured9506 = result9506 := by
  rw [tree9506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9504 coloured9504 at child
  try dsimp only [live9506, coloured9506]
  rw [child]
  dsimp only [result9504]
  have child := child1
  unfold live9505 coloured9505 at child
  try dsimp only [live9506, coloured9506]
  rw [child]
  dsimp only [result9505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9507_agree_conditional : tree9507 = literal9507 := by
  rw [tree9507_def]
  rfl
theorem node9507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9507 live9507 coloured9507 = result9507 := by
  rw [tree9507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9508_agree_conditional
    (child0 : tree9506 = literal9506)
    (child1 : tree9507 = literal9507) : tree9508 = literal9508 := by
  rw [tree9508_def, child0, child1]
  rfl
theorem node9508_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9506 live9506 coloured9506 = result9506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9507 live9507 coloured9507 = result9507) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9508 live9508 coloured9508 = result9508 := by
  rw [tree9508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9506 coloured9506 at child
  try dsimp only [live9508, coloured9508]
  rw [child]
  dsimp only [result9506]
  have child := child1
  unfold live9507 coloured9507 at child
  try dsimp only [live9508, coloured9508]
  rw [child]
  dsimp only [result9507]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9509_agree_conditional : tree9509 = literal9509 := by
  rw [tree9509_def]
  rfl
theorem node9509_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9509 live9509 coloured9509 = result9509 := by
  rw [tree9509_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9510_agree_conditional
    (child0 : tree9508 = literal9508)
    (child1 : tree9509 = literal9509) : tree9510 = literal9510 := by
  rw [tree9510_def, child0, child1]
  rfl
theorem node9510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9508 live9508 coloured9508 = result9508)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9509 live9509 coloured9509 = result9509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9510 live9510 coloured9510 = result9510 := by
  rw [tree9510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9508 coloured9508 at child
  try dsimp only [live9510, coloured9510]
  rw [child]
  dsimp only [result9508]
  have child := child1
  unfold live9509 coloured9509 at child
  try dsimp only [live9510, coloured9510]
  rw [child]
  dsimp only [result9509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9511_agree_conditional : tree9511 = literal9511 := by
  rw [tree9511_def]
  rfl
theorem node9511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9511 live9511 coloured9511 = result9511 := by
  rw [tree9511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9512_agree_conditional
    (child0 : tree9510 = literal9510)
    (child1 : tree9511 = literal9511) : tree9512 = literal9512 := by
  rw [tree9512_def, child0, child1]
  rfl
theorem node9512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9510 live9510 coloured9510 = result9510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9511 live9511 coloured9511 = result9511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9512 live9512 coloured9512 = result9512 := by
  rw [tree9512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9510 coloured9510 at child
  try dsimp only [live9512, coloured9512]
  rw [child]
  dsimp only [result9510]
  have child := child1
  unfold live9511 coloured9511 at child
  try dsimp only [live9512, coloured9512]
  rw [child]
  dsimp only [result9511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9513_agree_conditional : tree9513 = literal9513 := by
  rw [tree9513_def]
  rfl
theorem node9513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9513 live9513 coloured9513 = result9513 := by
  rw [tree9513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9514_agree_conditional
    (child0 : tree9512 = literal9512)
    (child1 : tree9513 = literal9513) : tree9514 = literal9514 := by
  rw [tree9514_def, child0, child1]
  rfl
theorem node9514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9512 live9512 coloured9512 = result9512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9513 live9513 coloured9513 = result9513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9514 live9514 coloured9514 = result9514 := by
  rw [tree9514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9512 coloured9512 at child
  try dsimp only [live9514, coloured9514]
  rw [child]
  dsimp only [result9512]
  have child := child1
  unfold live9513 coloured9513 at child
  try dsimp only [live9514, coloured9514]
  rw [child]
  dsimp only [result9513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9515_agree_conditional : tree9515 = literal9515 := by
  rw [tree9515_def]
  rfl
theorem node9515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9515 live9515 coloured9515 = result9515 := by
  rw [tree9515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9516_agree_conditional
    (child0 : tree9514 = literal9514)
    (child1 : tree9515 = literal9515) : tree9516 = literal9516 := by
  rw [tree9516_def, child0, child1]
  rfl
theorem node9516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9514 live9514 coloured9514 = result9514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9515 live9515 coloured9515 = result9515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9516 live9516 coloured9516 = result9516 := by
  rw [tree9516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9514 coloured9514 at child
  try dsimp only [live9516, coloured9516]
  rw [child]
  dsimp only [result9514]
  have child := child1
  unfold live9515 coloured9515 at child
  try dsimp only [live9516, coloured9516]
  rw [child]
  dsimp only [result9515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9517_agree_conditional : tree9517 = literal9517 := by
  rw [tree9517_def]
  rfl
theorem node9517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9517 live9517 coloured9517 = result9517 := by
  rw [tree9517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9518_agree_conditional
    (child0 : tree9516 = literal9516)
    (child1 : tree9517 = literal9517) : tree9518 = literal9518 := by
  rw [tree9518_def, child0, child1]
  rfl
theorem node9518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9516 live9516 coloured9516 = result9516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9517 live9517 coloured9517 = result9517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9518 live9518 coloured9518 = result9518 := by
  rw [tree9518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9516 coloured9516 at child
  try dsimp only [live9518, coloured9518]
  rw [child]
  dsimp only [result9516]
  have child := child1
  unfold live9517 coloured9517 at child
  try dsimp only [live9518, coloured9518]
  rw [child]
  dsimp only [result9517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9519_agree_conditional : tree9519 = literal9519 := by
  rw [tree9519_def]
  rfl
theorem node9519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9519 live9519 coloured9519 = result9519 := by
  rw [tree9519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9520_agree_conditional
    (child0 : tree9518 = literal9518)
    (child1 : tree9519 = literal9519) : tree9520 = literal9520 := by
  rw [tree9520_def, child0, child1]
  rfl
theorem node9520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9518 live9518 coloured9518 = result9518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9519 live9519 coloured9519 = result9519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9520 live9520 coloured9520 = result9520 := by
  rw [tree9520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9518 coloured9518 at child
  try dsimp only [live9520, coloured9520]
  rw [child]
  dsimp only [result9518]
  have child := child1
  unfold live9519 coloured9519 at child
  try dsimp only [live9520, coloured9520]
  rw [child]
  dsimp only [result9519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9521_agree_conditional : tree9521 = literal9521 := by
  rw [tree9521_def]
  rfl
theorem node9521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9521 live9521 coloured9521 = result9521 := by
  rw [tree9521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9522_agree_conditional
    (child0 : tree9520 = literal9520)
    (child1 : tree9521 = literal9521) : tree9522 = literal9522 := by
  rw [tree9522_def, child0, child1]
  rfl
theorem node9522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9520 live9520 coloured9520 = result9520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9521 live9521 coloured9521 = result9521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9522 live9522 coloured9522 = result9522 := by
  rw [tree9522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9520 coloured9520 at child
  try dsimp only [live9522, coloured9522]
  rw [child]
  dsimp only [result9520]
  have child := child1
  unfold live9521 coloured9521 at child
  try dsimp only [live9522, coloured9522]
  rw [child]
  dsimp only [result9521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9523_agree_conditional : tree9523 = literal9523 := by
  rw [tree9523_def]
  rfl
theorem node9523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9523 live9523 coloured9523 = result9523 := by
  rw [tree9523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9524_agree_conditional
    (child0 : tree9522 = literal9522)
    (child1 : tree9523 = literal9523) : tree9524 = literal9524 := by
  rw [tree9524_def, child0, child1]
  rfl
theorem node9524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9522 live9522 coloured9522 = result9522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9523 live9523 coloured9523 = result9523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9524 live9524 coloured9524 = result9524 := by
  rw [tree9524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9522 coloured9522 at child
  try dsimp only [live9524, coloured9524]
  rw [child]
  dsimp only [result9522]
  have child := child1
  unfold live9523 coloured9523 at child
  try dsimp only [live9524, coloured9524]
  rw [child]
  dsimp only [result9523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9525_agree_conditional : tree9525 = literal9525 := by
  rw [tree9525_def]
  rfl
theorem node9525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9525 live9525 coloured9525 = result9525 := by
  rw [tree9525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9526_agree_conditional
    (child0 : tree9524 = literal9524)
    (child1 : tree9525 = literal9525) : tree9526 = literal9526 := by
  rw [tree9526_def, child0, child1]
  rfl
theorem node9526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9524 live9524 coloured9524 = result9524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9525 live9525 coloured9525 = result9525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9526 live9526 coloured9526 = result9526 := by
  rw [tree9526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9524 coloured9524 at child
  try dsimp only [live9526, coloured9526]
  rw [child]
  dsimp only [result9524]
  have child := child1
  unfold live9525 coloured9525 at child
  try dsimp only [live9526, coloured9526]
  rw [child]
  dsimp only [result9525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9527_agree_conditional : tree9527 = literal9527 := by
  rw [tree9527_def]
  rfl
theorem node9527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9527 live9527 coloured9527 = result9527 := by
  rw [tree9527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9528_agree_conditional
    (child0 : tree9526 = literal9526)
    (child1 : tree9527 = literal9527) : tree9528 = literal9528 := by
  rw [tree9528_def, child0, child1]
  rfl
theorem node9528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9526 live9526 coloured9526 = result9526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9527 live9527 coloured9527 = result9527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9528 live9528 coloured9528 = result9528 := by
  rw [tree9528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9526 coloured9526 at child
  try dsimp only [live9528, coloured9528]
  rw [child]
  dsimp only [result9526]
  have child := child1
  unfold live9527 coloured9527 at child
  try dsimp only [live9528, coloured9528]
  rw [child]
  dsimp only [result9527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9529_agree_conditional : tree9529 = literal9529 := by
  rw [tree9529_def]
  rfl
theorem node9529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9529 live9529 coloured9529 = result9529 := by
  rw [tree9529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9530_agree_conditional
    (child0 : tree9528 = literal9528)
    (child1 : tree9529 = literal9529) : tree9530 = literal9530 := by
  rw [tree9530_def, child0, child1]
  rfl
theorem node9530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9528 live9528 coloured9528 = result9528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9529 live9529 coloured9529 = result9529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9530 live9530 coloured9530 = result9530 := by
  rw [tree9530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9528 coloured9528 at child
  try dsimp only [live9530, coloured9530]
  rw [child]
  dsimp only [result9528]
  have child := child1
  unfold live9529 coloured9529 at child
  try dsimp only [live9530, coloured9530]
  rw [child]
  dsimp only [result9529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9531_agree_conditional : tree9531 = literal9531 := by
  rw [tree9531_def]
  rfl
theorem node9531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9531 live9531 coloured9531 = result9531 := by
  rw [tree9531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9532_agree_conditional
    (child0 : tree9530 = literal9530)
    (child1 : tree9531 = literal9531) : tree9532 = literal9532 := by
  rw [tree9532_def, child0, child1]
  rfl
theorem node9532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9530 live9530 coloured9530 = result9530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9531 live9531 coloured9531 = result9531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9532 live9532 coloured9532 = result9532 := by
  rw [tree9532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9530 coloured9530 at child
  try dsimp only [live9532, coloured9532]
  rw [child]
  dsimp only [result9530]
  have child := child1
  unfold live9531 coloured9531 at child
  try dsimp only [live9532, coloured9532]
  rw [child]
  dsimp only [result9531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9533_agree_conditional : tree9533 = literal9533 := by
  rw [tree9533_def]
  rfl
theorem node9533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9533 live9533 coloured9533 = result9533 := by
  rw [tree9533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9534_agree_conditional
    (child0 : tree9532 = literal9532)
    (child1 : tree9533 = literal9533) : tree9534 = literal9534 := by
  rw [tree9534_def, child0, child1]
  rfl
theorem node9534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9532 live9532 coloured9532 = result9532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9533 live9533 coloured9533 = result9533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9534 live9534 coloured9534 = result9534 := by
  rw [tree9534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9532 coloured9532 at child
  try dsimp only [live9534, coloured9534]
  rw [child]
  dsimp only [result9532]
  have child := child1
  unfold live9533 coloured9533 at child
  try dsimp only [live9534, coloured9534]
  rw [child]
  dsimp only [result9533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9535_agree_conditional : tree9535 = literal9535 := by
  rw [tree9535_def]
  rfl
theorem node9535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9535 live9535 coloured9535 = result9535 := by
  rw [tree9535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9536_agree_conditional
    (child0 : tree9534 = literal9534)
    (child1 : tree9535 = literal9535) : tree9536 = literal9536 := by
  rw [tree9536_def, child0, child1]
  rfl
theorem node9536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9534 live9534 coloured9534 = result9534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9535 live9535 coloured9535 = result9535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9536 live9536 coloured9536 = result9536 := by
  rw [tree9536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9534 coloured9534 at child
  try dsimp only [live9536, coloured9536]
  rw [child]
  dsimp only [result9534]
  have child := child1
  unfold live9535 coloured9535 at child
  try dsimp only [live9536, coloured9536]
  rw [child]
  dsimp only [result9535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9537_agree_conditional : tree9537 = literal9537 := by
  rw [tree9537_def]
  rfl
theorem node9537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9537 live9537 coloured9537 = result9537 := by
  rw [tree9537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9538_agree_conditional
    (child0 : tree9536 = literal9536)
    (child1 : tree9537 = literal9537) : tree9538 = literal9538 := by
  rw [tree9538_def, child0, child1]
  rfl
theorem node9538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9536 live9536 coloured9536 = result9536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9537 live9537 coloured9537 = result9537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9538 live9538 coloured9538 = result9538 := by
  rw [tree9538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9536 coloured9536 at child
  try dsimp only [live9538, coloured9538]
  rw [child]
  dsimp only [result9536]
  have child := child1
  unfold live9537 coloured9537 at child
  try dsimp only [live9538, coloured9538]
  rw [child]
  dsimp only [result9537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9539_agree_conditional : tree9539 = literal9539 := by
  rw [tree9539_def]
  rfl
theorem node9539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9539 live9539 coloured9539 = result9539 := by
  rw [tree9539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9540_agree_conditional
    (child0 : tree9538 = literal9538)
    (child1 : tree9539 = literal9539) : tree9540 = literal9540 := by
  rw [tree9540_def, child0, child1]
  rfl
theorem node9540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9538 live9538 coloured9538 = result9538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9539 live9539 coloured9539 = result9539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9540 live9540 coloured9540 = result9540 := by
  rw [tree9540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9538 coloured9538 at child
  try dsimp only [live9540, coloured9540]
  rw [child]
  dsimp only [result9538]
  have child := child1
  unfold live9539 coloured9539 at child
  try dsimp only [live9540, coloured9540]
  rw [child]
  dsimp only [result9539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9541_agree_conditional : tree9541 = literal9541 := by
  rw [tree9541_def]
  rfl
theorem node9541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9541 live9541 coloured9541 = result9541 := by
  rw [tree9541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9542_agree_conditional
    (child0 : tree9540 = literal9540)
    (child1 : tree9541 = literal9541) : tree9542 = literal9542 := by
  rw [tree9542_def, child0, child1]
  rfl
theorem node9542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9540 live9540 coloured9540 = result9540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9541 live9541 coloured9541 = result9541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9542 live9542 coloured9542 = result9542 := by
  rw [tree9542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9540 coloured9540 at child
  try dsimp only [live9542, coloured9542]
  rw [child]
  dsimp only [result9540]
  have child := child1
  unfold live9541 coloured9541 at child
  try dsimp only [live9542, coloured9542]
  rw [child]
  dsimp only [result9541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9543_agree_conditional : tree9543 = literal9543 := by
  rw [tree9543_def]
  rfl
theorem node9543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9543 live9543 coloured9543 = result9543 := by
  rw [tree9543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9544_agree_conditional
    (child0 : tree9542 = literal9542)
    (child1 : tree9543 = literal9543) : tree9544 = literal9544 := by
  rw [tree9544_def, child0, child1]
  rfl
theorem node9544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9542 live9542 coloured9542 = result9542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9543 live9543 coloured9543 = result9543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9544 live9544 coloured9544 = result9544 := by
  rw [tree9544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9542 coloured9542 at child
  try dsimp only [live9544, coloured9544]
  rw [child]
  dsimp only [result9542]
  have child := child1
  unfold live9543 coloured9543 at child
  try dsimp only [live9544, coloured9544]
  rw [child]
  dsimp only [result9543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9545_agree_conditional : tree9545 = literal9545 := by
  rw [tree9545_def]
  rfl
theorem node9545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9545 live9545 coloured9545 = result9545 := by
  rw [tree9545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9546_agree_conditional
    (child0 : tree9544 = literal9544)
    (child1 : tree9545 = literal9545) : tree9546 = literal9546 := by
  rw [tree9546_def, child0, child1]
  rfl
theorem node9546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9544 live9544 coloured9544 = result9544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9545 live9545 coloured9545 = result9545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9546 live9546 coloured9546 = result9546 := by
  rw [tree9546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9544 coloured9544 at child
  try dsimp only [live9546, coloured9546]
  rw [child]
  dsimp only [result9544]
  have child := child1
  unfold live9545 coloured9545 at child
  try dsimp only [live9546, coloured9546]
  rw [child]
  dsimp only [result9545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9547_agree_conditional : tree9547 = literal9547 := by
  rw [tree9547_def]
  rfl
theorem node9547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9547 live9547 coloured9547 = result9547 := by
  rw [tree9547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9548_agree_conditional
    (child0 : tree9546 = literal9546)
    (child1 : tree9547 = literal9547) : tree9548 = literal9548 := by
  rw [tree9548_def, child0, child1]
  rfl
theorem node9548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9546 live9546 coloured9546 = result9546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9547 live9547 coloured9547 = result9547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9548 live9548 coloured9548 = result9548 := by
  rw [tree9548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9546 coloured9546 at child
  try dsimp only [live9548, coloured9548]
  rw [child]
  dsimp only [result9546]
  have child := child1
  unfold live9547 coloured9547 at child
  try dsimp only [live9548, coloured9548]
  rw [child]
  dsimp only [result9547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9549_agree_conditional : tree9549 = literal9549 := by
  rw [tree9549_def]
  rfl
theorem node9549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9549 live9549 coloured9549 = result9549 := by
  rw [tree9549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9550_agree_conditional
    (child0 : tree9548 = literal9548)
    (child1 : tree9549 = literal9549) : tree9550 = literal9550 := by
  rw [tree9550_def, child0, child1]
  rfl
theorem node9550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9548 live9548 coloured9548 = result9548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9549 live9549 coloured9549 = result9549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9550 live9550 coloured9550 = result9550 := by
  rw [tree9550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9548 coloured9548 at child
  try dsimp only [live9550, coloured9550]
  rw [child]
  dsimp only [result9548]
  have child := child1
  unfold live9549 coloured9549 at child
  try dsimp only [live9550, coloured9550]
  rw [child]
  dsimp only [result9549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9551_agree_conditional : tree9551 = literal9551 := by
  rw [tree9551_def]
  rfl
theorem node9551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9551 live9551 coloured9551 = result9551 := by
  rw [tree9551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9552_agree_conditional
    (child0 : tree9550 = literal9550)
    (child1 : tree9551 = literal9551) : tree9552 = literal9552 := by
  rw [tree9552_def, child0, child1]
  rfl
theorem node9552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9550 live9550 coloured9550 = result9550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9551 live9551 coloured9551 = result9551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9552 live9552 coloured9552 = result9552 := by
  rw [tree9552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9550 coloured9550 at child
  try dsimp only [live9552, coloured9552]
  rw [child]
  dsimp only [result9550]
  have child := child1
  unfold live9551 coloured9551 at child
  try dsimp only [live9552, coloured9552]
  rw [child]
  dsimp only [result9551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9553_agree_conditional : tree9553 = literal9553 := by
  rw [tree9553_def]
  rfl
theorem node9553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9553 live9553 coloured9553 = result9553 := by
  rw [tree9553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9554_agree_conditional
    (child0 : tree9552 = literal9552)
    (child1 : tree9553 = literal9553) : tree9554 = literal9554 := by
  rw [tree9554_def, child0, child1]
  rfl
theorem node9554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9552 live9552 coloured9552 = result9552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9553 live9553 coloured9553 = result9553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9554 live9554 coloured9554 = result9554 := by
  rw [tree9554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9552 coloured9552 at child
  try dsimp only [live9554, coloured9554]
  rw [child]
  dsimp only [result9552]
  have child := child1
  unfold live9553 coloured9553 at child
  try dsimp only [live9554, coloured9554]
  rw [child]
  dsimp only [result9553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9555_agree_conditional : tree9555 = literal9555 := by
  rw [tree9555_def]
  rfl
theorem node9555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9555 live9555 coloured9555 = result9555 := by
  rw [tree9555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9556_agree_conditional
    (child0 : tree9554 = literal9554)
    (child1 : tree9555 = literal9555) : tree9556 = literal9556 := by
  rw [tree9556_def, child0, child1]
  rfl
theorem node9556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9554 live9554 coloured9554 = result9554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9555 live9555 coloured9555 = result9555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9556 live9556 coloured9556 = result9556 := by
  rw [tree9556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9554 coloured9554 at child
  try dsimp only [live9556, coloured9556]
  rw [child]
  dsimp only [result9554]
  have child := child1
  unfold live9555 coloured9555 at child
  try dsimp only [live9556, coloured9556]
  rw [child]
  dsimp only [result9555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9557_agree_conditional : tree9557 = literal9557 := by
  rw [tree9557_def]
  rfl
theorem node9557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9557 live9557 coloured9557 = result9557 := by
  rw [tree9557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9558_agree_conditional
    (child0 : tree9556 = literal9556)
    (child1 : tree9557 = literal9557) : tree9558 = literal9558 := by
  rw [tree9558_def, child0, child1]
  rfl
theorem node9558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9556 live9556 coloured9556 = result9556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9557 live9557 coloured9557 = result9557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9558 live9558 coloured9558 = result9558 := by
  rw [tree9558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9556 coloured9556 at child
  try dsimp only [live9558, coloured9558]
  rw [child]
  dsimp only [result9556]
  have child := child1
  unfold live9557 coloured9557 at child
  try dsimp only [live9558, coloured9558]
  rw [child]
  dsimp only [result9557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9559_agree_conditional : tree9559 = literal9559 := by
  rw [tree9559_def]
  rfl
theorem node9559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9559 live9559 coloured9559 = result9559 := by
  rw [tree9559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9560_agree_conditional
    (child0 : tree9558 = literal9558)
    (child1 : tree9559 = literal9559) : tree9560 = literal9560 := by
  rw [tree9560_def, child0, child1]
  rfl
theorem node9560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9558 live9558 coloured9558 = result9558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9559 live9559 coloured9559 = result9559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9560 live9560 coloured9560 = result9560 := by
  rw [tree9560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9558 coloured9558 at child
  try dsimp only [live9560, coloured9560]
  rw [child]
  dsimp only [result9558]
  have child := child1
  unfold live9559 coloured9559 at child
  try dsimp only [live9560, coloured9560]
  rw [child]
  dsimp only [result9559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9561_agree_conditional : tree9561 = literal9561 := by
  rw [tree9561_def]
  rfl
theorem node9561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9561 live9561 coloured9561 = result9561 := by
  rw [tree9561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9562_agree_conditional
    (child0 : tree9560 = literal9560)
    (child1 : tree9561 = literal9561) : tree9562 = literal9562 := by
  rw [tree9562_def, child0, child1]
  rfl
theorem node9562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9560 live9560 coloured9560 = result9560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9561 live9561 coloured9561 = result9561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9562 live9562 coloured9562 = result9562 := by
  rw [tree9562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9560 coloured9560 at child
  try dsimp only [live9562, coloured9562]
  rw [child]
  dsimp only [result9560]
  have child := child1
  unfold live9561 coloured9561 at child
  try dsimp only [live9562, coloured9562]
  rw [child]
  dsimp only [result9561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9563_agree_conditional : tree9563 = literal9563 := by
  rw [tree9563_def]
  rfl
theorem node9563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9563 live9563 coloured9563 = result9563 := by
  rw [tree9563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9564_agree_conditional
    (child0 : tree9562 = literal9562)
    (child1 : tree9563 = literal9563) : tree9564 = literal9564 := by
  rw [tree9564_def, child0, child1]
  rfl
theorem node9564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9562 live9562 coloured9562 = result9562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9563 live9563 coloured9563 = result9563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9564 live9564 coloured9564 = result9564 := by
  rw [tree9564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9562 coloured9562 at child
  try dsimp only [live9564, coloured9564]
  rw [child]
  dsimp only [result9562]
  have child := child1
  unfold live9563 coloured9563 at child
  try dsimp only [live9564, coloured9564]
  rw [child]
  dsimp only [result9563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9565_agree_conditional : tree9565 = literal9565 := by
  rw [tree9565_def]
  rfl
theorem node9565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9565 live9565 coloured9565 = result9565 := by
  rw [tree9565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9566_agree_conditional
    (child0 : tree9564 = literal9564)
    (child1 : tree9565 = literal9565) : tree9566 = literal9566 := by
  rw [tree9566_def, child0, child1]
  rfl
theorem node9566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9564 live9564 coloured9564 = result9564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9565 live9565 coloured9565 = result9565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9566 live9566 coloured9566 = result9566 := by
  rw [tree9566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9564 coloured9564 at child
  try dsimp only [live9566, coloured9566]
  rw [child]
  dsimp only [result9564]
  have child := child1
  unfold live9565 coloured9565 at child
  try dsimp only [live9566, coloured9566]
  rw [child]
  dsimp only [result9565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9567_agree_conditional : tree9567 = literal9567 := by
  rw [tree9567_def]
  rfl
theorem node9567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9567 live9567 coloured9567 = result9567 := by
  rw [tree9567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9568_agree_conditional
    (child0 : tree9566 = literal9566)
    (child1 : tree9567 = literal9567) : tree9568 = literal9568 := by
  rw [tree9568_def, child0, child1]
  rfl
theorem node9568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9566 live9566 coloured9566 = result9566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9567 live9567 coloured9567 = result9567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9568 live9568 coloured9568 = result9568 := by
  rw [tree9568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9566 coloured9566 at child
  try dsimp only [live9568, coloured9568]
  rw [child]
  dsimp only [result9566]
  have child := child1
  unfold live9567 coloured9567 at child
  try dsimp only [live9568, coloured9568]
  rw [child]
  dsimp only [result9567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9569_agree_conditional : tree9569 = literal9569 := by
  rw [tree9569_def]
  rfl
theorem node9569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9569 live9569 coloured9569 = result9569 := by
  rw [tree9569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9570_agree_conditional
    (child0 : tree9568 = literal9568)
    (child1 : tree9569 = literal9569) : tree9570 = literal9570 := by
  rw [tree9570_def, child0, child1]
  rfl
theorem node9570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9568 live9568 coloured9568 = result9568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9569 live9569 coloured9569 = result9569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9570 live9570 coloured9570 = result9570 := by
  rw [tree9570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9568 coloured9568 at child
  try dsimp only [live9570, coloured9570]
  rw [child]
  dsimp only [result9568]
  have child := child1
  unfold live9569 coloured9569 at child
  try dsimp only [live9570, coloured9570]
  rw [child]
  dsimp only [result9569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9571_agree_conditional : tree9571 = literal9571 := by
  rw [tree9571_def]
  rfl
theorem node9571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9571 live9571 coloured9571 = result9571 := by
  rw [tree9571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9572_agree_conditional
    (child0 : tree9570 = literal9570)
    (child1 : tree9571 = literal9571) : tree9572 = literal9572 := by
  rw [tree9572_def, child0, child1]
  rfl
theorem node9572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9570 live9570 coloured9570 = result9570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9571 live9571 coloured9571 = result9571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9572 live9572 coloured9572 = result9572 := by
  rw [tree9572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9570 coloured9570 at child
  try dsimp only [live9572, coloured9572]
  rw [child]
  dsimp only [result9570]
  have child := child1
  unfold live9571 coloured9571 at child
  try dsimp only [live9572, coloured9572]
  rw [child]
  dsimp only [result9571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9573_agree_conditional : tree9573 = literal9573 := by
  rw [tree9573_def]
  rfl
theorem node9573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9573 live9573 coloured9573 = result9573 := by
  rw [tree9573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9574_agree_conditional
    (child0 : tree9572 = literal9572)
    (child1 : tree9573 = literal9573) : tree9574 = literal9574 := by
  rw [tree9574_def, child0, child1]
  rfl
theorem node9574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9572 live9572 coloured9572 = result9572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9573 live9573 coloured9573 = result9573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9574 live9574 coloured9574 = result9574 := by
  rw [tree9574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9572 coloured9572 at child
  try dsimp only [live9574, coloured9574]
  rw [child]
  dsimp only [result9572]
  have child := child1
  unfold live9573 coloured9573 at child
  try dsimp only [live9574, coloured9574]
  rw [child]
  dsimp only [result9573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9575_agree_conditional : tree9575 = literal9575 := by
  rw [tree9575_def]
  rfl
theorem node9575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9575 live9575 coloured9575 = result9575 := by
  rw [tree9575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9576_agree_conditional
    (child0 : tree9574 = literal9574)
    (child1 : tree9575 = literal9575) : tree9576 = literal9576 := by
  rw [tree9576_def, child0, child1]
  rfl
theorem node9576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9574 live9574 coloured9574 = result9574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9575 live9575 coloured9575 = result9575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9576 live9576 coloured9576 = result9576 := by
  rw [tree9576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9574 coloured9574 at child
  try dsimp only [live9576, coloured9576]
  rw [child]
  dsimp only [result9574]
  have child := child1
  unfold live9575 coloured9575 at child
  try dsimp only [live9576, coloured9576]
  rw [child]
  dsimp only [result9575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9577_agree_conditional : tree9577 = literal9577 := by
  rw [tree9577_def]
  rfl
theorem node9577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9577 live9577 coloured9577 = result9577 := by
  rw [tree9577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9578_agree_conditional
    (child0 : tree9576 = literal9576)
    (child1 : tree9577 = literal9577) : tree9578 = literal9578 := by
  rw [tree9578_def, child0, child1]
  rfl
theorem node9578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9576 live9576 coloured9576 = result9576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9577 live9577 coloured9577 = result9577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9578 live9578 coloured9578 = result9578 := by
  rw [tree9578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9576 coloured9576 at child
  try dsimp only [live9578, coloured9578]
  rw [child]
  dsimp only [result9576]
  have child := child1
  unfold live9577 coloured9577 at child
  try dsimp only [live9578, coloured9578]
  rw [child]
  dsimp only [result9577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9579_agree_conditional : tree9579 = literal9579 := by
  rw [tree9579_def]
  rfl
theorem node9579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9579 live9579 coloured9579 = result9579 := by
  rw [tree9579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9580_agree_conditional
    (child0 : tree9578 = literal9578)
    (child1 : tree9579 = literal9579) : tree9580 = literal9580 := by
  rw [tree9580_def, child0, child1]
  rfl
theorem node9580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9578 live9578 coloured9578 = result9578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9579 live9579 coloured9579 = result9579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9580 live9580 coloured9580 = result9580 := by
  rw [tree9580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9578 coloured9578 at child
  try dsimp only [live9580, coloured9580]
  rw [child]
  dsimp only [result9578]
  have child := child1
  unfold live9579 coloured9579 at child
  try dsimp only [live9580, coloured9580]
  rw [child]
  dsimp only [result9579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9581_agree_conditional : tree9581 = literal9581 := by
  rw [tree9581_def]
  rfl
theorem node9581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9581 live9581 coloured9581 = result9581 := by
  rw [tree9581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9582_agree_conditional
    (child0 : tree9580 = literal9580)
    (child1 : tree9581 = literal9581) : tree9582 = literal9582 := by
  rw [tree9582_def, child0, child1]
  rfl
theorem node9582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9580 live9580 coloured9580 = result9580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9581 live9581 coloured9581 = result9581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9582 live9582 coloured9582 = result9582 := by
  rw [tree9582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9580 coloured9580 at child
  try dsimp only [live9582, coloured9582]
  rw [child]
  dsimp only [result9580]
  have child := child1
  unfold live9581 coloured9581 at child
  try dsimp only [live9582, coloured9582]
  rw [child]
  dsimp only [result9581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9583_agree_conditional : tree9583 = literal9583 := by
  rw [tree9583_def]
  rfl
theorem node9583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9583 live9583 coloured9583 = result9583 := by
  rw [tree9583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9584_agree_conditional
    (child0 : tree9582 = literal9582)
    (child1 : tree9583 = literal9583) : tree9584 = literal9584 := by
  rw [tree9584_def, child0, child1]
  rfl
theorem node9584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9582 live9582 coloured9582 = result9582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9583 live9583 coloured9583 = result9583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9584 live9584 coloured9584 = result9584 := by
  rw [tree9584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9582 coloured9582 at child
  try dsimp only [live9584, coloured9584]
  rw [child]
  dsimp only [result9582]
  have child := child1
  unfold live9583 coloured9583 at child
  try dsimp only [live9584, coloured9584]
  rw [child]
  dsimp only [result9583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9585_agree_conditional : tree9585 = literal9585 := by
  rw [tree9585_def]
  rfl
theorem node9585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9585 live9585 coloured9585 = result9585 := by
  rw [tree9585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9586_agree_conditional
    (child0 : tree9584 = literal9584)
    (child1 : tree9585 = literal9585) : tree9586 = literal9586 := by
  rw [tree9586_def, child0, child1]
  rfl
theorem node9586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9584 live9584 coloured9584 = result9584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9585 live9585 coloured9585 = result9585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9586 live9586 coloured9586 = result9586 := by
  rw [tree9586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9584 coloured9584 at child
  try dsimp only [live9586, coloured9586]
  rw [child]
  dsimp only [result9584]
  have child := child1
  unfold live9585 coloured9585 at child
  try dsimp only [live9586, coloured9586]
  rw [child]
  dsimp only [result9585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9587_agree_conditional : tree9587 = literal9587 := by
  rw [tree9587_def]
  rfl
theorem node9587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9587 live9587 coloured9587 = result9587 := by
  rw [tree9587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9588_agree_conditional
    (child0 : tree9586 = literal9586)
    (child1 : tree9587 = literal9587) : tree9588 = literal9588 := by
  rw [tree9588_def, child0, child1]
  rfl
theorem node9588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9586 live9586 coloured9586 = result9586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9587 live9587 coloured9587 = result9587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9588 live9588 coloured9588 = result9588 := by
  rw [tree9588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9586 coloured9586 at child
  try dsimp only [live9588, coloured9588]
  rw [child]
  dsimp only [result9586]
  have child := child1
  unfold live9587 coloured9587 at child
  try dsimp only [live9588, coloured9588]
  rw [child]
  dsimp only [result9587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9589_agree_conditional : tree9589 = literal9589 := by
  rw [tree9589_def]
  rfl
theorem node9589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9589 live9589 coloured9589 = result9589 := by
  rw [tree9589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9590_agree_conditional
    (child0 : tree9588 = literal9588)
    (child1 : tree9589 = literal9589) : tree9590 = literal9590 := by
  rw [tree9590_def, child0, child1]
  rfl
theorem node9590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9588 live9588 coloured9588 = result9588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9589 live9589 coloured9589 = result9589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9590 live9590 coloured9590 = result9590 := by
  rw [tree9590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9588 coloured9588 at child
  try dsimp only [live9590, coloured9590]
  rw [child]
  dsimp only [result9588]
  have child := child1
  unfold live9589 coloured9589 at child
  try dsimp only [live9590, coloured9590]
  rw [child]
  dsimp only [result9589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9591_agree_conditional : tree9591 = literal9591 := by
  rw [tree9591_def]
  rfl
theorem node9591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9591 live9591 coloured9591 = result9591 := by
  rw [tree9591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9592_agree_conditional
    (child0 : tree9590 = literal9590)
    (child1 : tree9591 = literal9591) : tree9592 = literal9592 := by
  rw [tree9592_def, child0, child1]
  rfl
theorem node9592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9590 live9590 coloured9590 = result9590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9591 live9591 coloured9591 = result9591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9592 live9592 coloured9592 = result9592 := by
  rw [tree9592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9590 coloured9590 at child
  try dsimp only [live9592, coloured9592]
  rw [child]
  dsimp only [result9590]
  have child := child1
  unfold live9591 coloured9591 at child
  try dsimp only [live9592, coloured9592]
  rw [child]
  dsimp only [result9591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9593_agree_conditional : tree9593 = literal9593 := by
  rw [tree9593_def]
  rfl
theorem node9593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9593 live9593 coloured9593 = result9593 := by
  rw [tree9593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9594_agree_conditional
    (child0 : tree9592 = literal9592)
    (child1 : tree9593 = literal9593) : tree9594 = literal9594 := by
  rw [tree9594_def, child0, child1]
  rfl
theorem node9594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9592 live9592 coloured9592 = result9592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9593 live9593 coloured9593 = result9593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9594 live9594 coloured9594 = result9594 := by
  rw [tree9594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9592 coloured9592 at child
  try dsimp only [live9594, coloured9594]
  rw [child]
  dsimp only [result9592]
  have child := child1
  unfold live9593 coloured9593 at child
  try dsimp only [live9594, coloured9594]
  rw [child]
  dsimp only [result9593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9595_agree_conditional : tree9595 = literal9595 := by
  rw [tree9595_def]
  rfl
theorem node9595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9595 live9595 coloured9595 = result9595 := by
  rw [tree9595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9596_agree_conditional
    (child0 : tree9594 = literal9594)
    (child1 : tree9595 = literal9595) : tree9596 = literal9596 := by
  rw [tree9596_def, child0, child1]
  rfl
theorem node9596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9594 live9594 coloured9594 = result9594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9595 live9595 coloured9595 = result9595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9596 live9596 coloured9596 = result9596 := by
  rw [tree9596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9594 coloured9594 at child
  try dsimp only [live9596, coloured9596]
  rw [child]
  dsimp only [result9594]
  have child := child1
  unfold live9595 coloured9595 at child
  try dsimp only [live9596, coloured9596]
  rw [child]
  dsimp only [result9595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9597_agree_conditional : tree9597 = literal9597 := by
  rw [tree9597_def]
  rfl
theorem node9597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9597 live9597 coloured9597 = result9597 := by
  rw [tree9597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9598_agree_conditional
    (child0 : tree9596 = literal9596)
    (child1 : tree9597 = literal9597) : tree9598 = literal9598 := by
  rw [tree9598_def, child0, child1]
  rfl
theorem node9598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9596 live9596 coloured9596 = result9596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9597 live9597 coloured9597 = result9597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9598 live9598 coloured9598 = result9598 := by
  rw [tree9598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9596 coloured9596 at child
  try dsimp only [live9598, coloured9598]
  rw [child]
  dsimp only [result9596]
  have child := child1
  unfold live9597 coloured9597 at child
  try dsimp only [live9598, coloured9598]
  rw [child]
  dsimp only [result9597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9599_agree_conditional : tree9599 = literal9599 := by
  rw [tree9599_def]
  rfl
theorem node9599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9599 live9599 coloured9599 = result9599 := by
  rw [tree9599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
