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
theorem tree11424_agree_conditional
    (child0 : tree11422 = literal11422)
    (child1 : tree11423 = literal11423) : tree11424 = literal11424 := by
  rw [tree11424_def, child0, child1]
  rfl
theorem node11424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11422 live11422 coloured11422 = result11422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11423 live11423 coloured11423 = result11423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11424 live11424 coloured11424 = result11424 := by
  rw [tree11424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11422 coloured11422 at child
  try dsimp only [live11424, coloured11424]
  rw [child]
  dsimp only [result11422]
  have child := child1
  unfold live11423 coloured11423 at child
  try dsimp only [live11424, coloured11424]
  rw [child]
  dsimp only [result11423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11425_agree_conditional : tree11425 = literal11425 := by
  rw [tree11425_def]
  rfl
theorem node11425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11425 live11425 coloured11425 = result11425 := by
  rw [tree11425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11426_agree_conditional
    (child0 : tree11424 = literal11424)
    (child1 : tree11425 = literal11425) : tree11426 = literal11426 := by
  rw [tree11426_def, child0, child1]
  rfl
theorem node11426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11424 live11424 coloured11424 = result11424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11425 live11425 coloured11425 = result11425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11426 live11426 coloured11426 = result11426 := by
  rw [tree11426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11424 coloured11424 at child
  try dsimp only [live11426, coloured11426]
  rw [child]
  dsimp only [result11424]
  have child := child1
  unfold live11425 coloured11425 at child
  try dsimp only [live11426, coloured11426]
  rw [child]
  dsimp only [result11425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11427_agree_conditional : tree11427 = literal11427 := by
  rw [tree11427_def]
  rfl
theorem node11427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11427 live11427 coloured11427 = result11427 := by
  rw [tree11427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11428_agree_conditional
    (child0 : tree11426 = literal11426)
    (child1 : tree11427 = literal11427) : tree11428 = literal11428 := by
  rw [tree11428_def, child0, child1]
  rfl
theorem node11428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11426 live11426 coloured11426 = result11426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11427 live11427 coloured11427 = result11427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11428 live11428 coloured11428 = result11428 := by
  rw [tree11428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11426 coloured11426 at child
  try dsimp only [live11428, coloured11428]
  rw [child]
  dsimp only [result11426]
  have child := child1
  unfold live11427 coloured11427 at child
  try dsimp only [live11428, coloured11428]
  rw [child]
  dsimp only [result11427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11429_agree_conditional : tree11429 = literal11429 := by
  rw [tree11429_def]
  rfl
theorem node11429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11429 live11429 coloured11429 = result11429 := by
  rw [tree11429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11430_agree_conditional
    (child0 : tree11428 = literal11428)
    (child1 : tree11429 = literal11429) : tree11430 = literal11430 := by
  rw [tree11430_def, child0, child1]
  rfl
theorem node11430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11428 live11428 coloured11428 = result11428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11429 live11429 coloured11429 = result11429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11430 live11430 coloured11430 = result11430 := by
  rw [tree11430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11428 coloured11428 at child
  try dsimp only [live11430, coloured11430]
  rw [child]
  dsimp only [result11428]
  have child := child1
  unfold live11429 coloured11429 at child
  try dsimp only [live11430, coloured11430]
  rw [child]
  dsimp only [result11429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11431_agree_conditional : tree11431 = literal11431 := by
  rw [tree11431_def]
  rfl
theorem node11431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11431 live11431 coloured11431 = result11431 := by
  rw [tree11431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11432_agree_conditional
    (child0 : tree11430 = literal11430)
    (child1 : tree11431 = literal11431) : tree11432 = literal11432 := by
  rw [tree11432_def, child0, child1]
  rfl
theorem node11432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11430 live11430 coloured11430 = result11430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11431 live11431 coloured11431 = result11431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11432 live11432 coloured11432 = result11432 := by
  rw [tree11432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11430 coloured11430 at child
  try dsimp only [live11432, coloured11432]
  rw [child]
  dsimp only [result11430]
  have child := child1
  unfold live11431 coloured11431 at child
  try dsimp only [live11432, coloured11432]
  rw [child]
  dsimp only [result11431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11433_agree_conditional : tree11433 = literal11433 := by
  rw [tree11433_def]
  rfl
theorem node11433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11433 live11433 coloured11433 = result11433 := by
  rw [tree11433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11434_agree_conditional
    (child0 : tree11432 = literal11432)
    (child1 : tree11433 = literal11433) : tree11434 = literal11434 := by
  rw [tree11434_def, child0, child1]
  rfl
theorem node11434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11432 live11432 coloured11432 = result11432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11433 live11433 coloured11433 = result11433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11434 live11434 coloured11434 = result11434 := by
  rw [tree11434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11432 coloured11432 at child
  try dsimp only [live11434, coloured11434]
  rw [child]
  dsimp only [result11432]
  have child := child1
  unfold live11433 coloured11433 at child
  try dsimp only [live11434, coloured11434]
  rw [child]
  dsimp only [result11433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11435_agree_conditional : tree11435 = literal11435 := by
  rw [tree11435_def]
  rfl
theorem node11435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11435 live11435 coloured11435 = result11435 := by
  rw [tree11435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11436_agree_conditional
    (child0 : tree11434 = literal11434)
    (child1 : tree11435 = literal11435) : tree11436 = literal11436 := by
  rw [tree11436_def, child0, child1]
  rfl
theorem node11436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11434 live11434 coloured11434 = result11434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11435 live11435 coloured11435 = result11435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11436 live11436 coloured11436 = result11436 := by
  rw [tree11436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11434 coloured11434 at child
  try dsimp only [live11436, coloured11436]
  rw [child]
  dsimp only [result11434]
  have child := child1
  unfold live11435 coloured11435 at child
  try dsimp only [live11436, coloured11436]
  rw [child]
  dsimp only [result11435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11437_agree_conditional : tree11437 = literal11437 := by
  rw [tree11437_def]
  rfl
theorem node11437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11437 live11437 coloured11437 = result11437 := by
  rw [tree11437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11438_agree_conditional
    (child0 : tree11436 = literal11436)
    (child1 : tree11437 = literal11437) : tree11438 = literal11438 := by
  rw [tree11438_def, child0, child1]
  rfl
theorem node11438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11436 live11436 coloured11436 = result11436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11437 live11437 coloured11437 = result11437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11438 live11438 coloured11438 = result11438 := by
  rw [tree11438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11436 coloured11436 at child
  try dsimp only [live11438, coloured11438]
  rw [child]
  dsimp only [result11436]
  have child := child1
  unfold live11437 coloured11437 at child
  try dsimp only [live11438, coloured11438]
  rw [child]
  dsimp only [result11437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11439_agree_conditional : tree11439 = literal11439 := by
  rw [tree11439_def]
  rfl
theorem node11439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11439 live11439 coloured11439 = result11439 := by
  rw [tree11439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11440_agree_conditional
    (child0 : tree11438 = literal11438)
    (child1 : tree11439 = literal11439) : tree11440 = literal11440 := by
  rw [tree11440_def, child0, child1]
  rfl
theorem node11440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11438 live11438 coloured11438 = result11438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11439 live11439 coloured11439 = result11439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11440 live11440 coloured11440 = result11440 := by
  rw [tree11440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11438 coloured11438 at child
  try dsimp only [live11440, coloured11440]
  rw [child]
  dsimp only [result11438]
  have child := child1
  unfold live11439 coloured11439 at child
  try dsimp only [live11440, coloured11440]
  rw [child]
  dsimp only [result11439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11441_agree_conditional : tree11441 = literal11441 := by
  rw [tree11441_def]
  rfl
theorem node11441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11441 live11441 coloured11441 = result11441 := by
  rw [tree11441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11442_agree_conditional
    (child0 : tree11440 = literal11440)
    (child1 : tree11441 = literal11441) : tree11442 = literal11442 := by
  rw [tree11442_def, child0, child1]
  rfl
theorem node11442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11440 live11440 coloured11440 = result11440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11441 live11441 coloured11441 = result11441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11442 live11442 coloured11442 = result11442 := by
  rw [tree11442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11440 coloured11440 at child
  try dsimp only [live11442, coloured11442]
  rw [child]
  dsimp only [result11440]
  have child := child1
  unfold live11441 coloured11441 at child
  try dsimp only [live11442, coloured11442]
  rw [child]
  dsimp only [result11441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11443_agree_conditional : tree11443 = literal11443 := by
  rw [tree11443_def]
  rfl
theorem node11443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11443 live11443 coloured11443 = result11443 := by
  rw [tree11443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11444_agree_conditional
    (child0 : tree11442 = literal11442)
    (child1 : tree11443 = literal11443) : tree11444 = literal11444 := by
  rw [tree11444_def, child0, child1]
  rfl
theorem node11444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11442 live11442 coloured11442 = result11442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11443 live11443 coloured11443 = result11443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11444 live11444 coloured11444 = result11444 := by
  rw [tree11444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11442 coloured11442 at child
  try dsimp only [live11444, coloured11444]
  rw [child]
  dsimp only [result11442]
  have child := child1
  unfold live11443 coloured11443 at child
  try dsimp only [live11444, coloured11444]
  rw [child]
  dsimp only [result11443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11445_agree_conditional : tree11445 = literal11445 := by
  rw [tree11445_def]
  rfl
theorem node11445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11445 live11445 coloured11445 = result11445 := by
  rw [tree11445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11446_agree_conditional
    (child0 : tree11444 = literal11444)
    (child1 : tree11445 = literal11445) : tree11446 = literal11446 := by
  rw [tree11446_def, child0, child1]
  rfl
theorem node11446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11444 live11444 coloured11444 = result11444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11445 live11445 coloured11445 = result11445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11446 live11446 coloured11446 = result11446 := by
  rw [tree11446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11444 coloured11444 at child
  try dsimp only [live11446, coloured11446]
  rw [child]
  dsimp only [result11444]
  have child := child1
  unfold live11445 coloured11445 at child
  try dsimp only [live11446, coloured11446]
  rw [child]
  dsimp only [result11445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11447_agree_conditional : tree11447 = literal11447 := by
  rw [tree11447_def]
  rfl
theorem node11447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11447 live11447 coloured11447 = result11447 := by
  rw [tree11447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11448_agree_conditional
    (child0 : tree11446 = literal11446)
    (child1 : tree11447 = literal11447) : tree11448 = literal11448 := by
  rw [tree11448_def, child0, child1]
  rfl
theorem node11448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11446 live11446 coloured11446 = result11446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11447 live11447 coloured11447 = result11447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11448 live11448 coloured11448 = result11448 := by
  rw [tree11448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11446 coloured11446 at child
  try dsimp only [live11448, coloured11448]
  rw [child]
  dsimp only [result11446]
  have child := child1
  unfold live11447 coloured11447 at child
  try dsimp only [live11448, coloured11448]
  rw [child]
  dsimp only [result11447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11449_agree_conditional : tree11449 = literal11449 := by
  rw [tree11449_def]
  rfl
theorem node11449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11449 live11449 coloured11449 = result11449 := by
  rw [tree11449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11450_agree_conditional
    (child0 : tree11448 = literal11448)
    (child1 : tree11449 = literal11449) : tree11450 = literal11450 := by
  rw [tree11450_def, child0, child1]
  rfl
theorem node11450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11448 live11448 coloured11448 = result11448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11449 live11449 coloured11449 = result11449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11450 live11450 coloured11450 = result11450 := by
  rw [tree11450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11448 coloured11448 at child
  try dsimp only [live11450, coloured11450]
  rw [child]
  dsimp only [result11448]
  have child := child1
  unfold live11449 coloured11449 at child
  try dsimp only [live11450, coloured11450]
  rw [child]
  dsimp only [result11449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11451_agree_conditional : tree11451 = literal11451 := by
  rw [tree11451_def]
  rfl
theorem node11451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11451 live11451 coloured11451 = result11451 := by
  rw [tree11451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11452_agree_conditional
    (child0 : tree11450 = literal11450)
    (child1 : tree11451 = literal11451) : tree11452 = literal11452 := by
  rw [tree11452_def, child0, child1]
  rfl
theorem node11452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11450 live11450 coloured11450 = result11450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11451 live11451 coloured11451 = result11451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11452 live11452 coloured11452 = result11452 := by
  rw [tree11452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11450 coloured11450 at child
  try dsimp only [live11452, coloured11452]
  rw [child]
  dsimp only [result11450]
  have child := child1
  unfold live11451 coloured11451 at child
  try dsimp only [live11452, coloured11452]
  rw [child]
  dsimp only [result11451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11453_agree_conditional : tree11453 = literal11453 := by
  rw [tree11453_def]
  rfl
theorem node11453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11453 live11453 coloured11453 = result11453 := by
  rw [tree11453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11454_agree_conditional
    (child0 : tree11452 = literal11452)
    (child1 : tree11453 = literal11453) : tree11454 = literal11454 := by
  rw [tree11454_def, child0, child1]
  rfl
theorem node11454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11452 live11452 coloured11452 = result11452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11453 live11453 coloured11453 = result11453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11454 live11454 coloured11454 = result11454 := by
  rw [tree11454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11452 coloured11452 at child
  try dsimp only [live11454, coloured11454]
  rw [child]
  dsimp only [result11452]
  have child := child1
  unfold live11453 coloured11453 at child
  try dsimp only [live11454, coloured11454]
  rw [child]
  dsimp only [result11453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11455_agree_conditional : tree11455 = literal11455 := by
  rw [tree11455_def]
  rfl
theorem node11455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11455 live11455 coloured11455 = result11455 := by
  rw [tree11455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11456_agree_conditional
    (child0 : tree11454 = literal11454)
    (child1 : tree11455 = literal11455) : tree11456 = literal11456 := by
  rw [tree11456_def, child0, child1]
  rfl
theorem node11456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11454 live11454 coloured11454 = result11454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11455 live11455 coloured11455 = result11455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11456 live11456 coloured11456 = result11456 := by
  rw [tree11456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11454 coloured11454 at child
  try dsimp only [live11456, coloured11456]
  rw [child]
  dsimp only [result11454]
  have child := child1
  unfold live11455 coloured11455 at child
  try dsimp only [live11456, coloured11456]
  rw [child]
  dsimp only [result11455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11457_agree_conditional : tree11457 = literal11457 := by
  rw [tree11457_def]
  rfl
theorem node11457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11457 live11457 coloured11457 = result11457 := by
  rw [tree11457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11458_agree_conditional
    (child0 : tree11456 = literal11456)
    (child1 : tree11457 = literal11457) : tree11458 = literal11458 := by
  rw [tree11458_def, child0, child1]
  rfl
theorem node11458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11456 live11456 coloured11456 = result11456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11457 live11457 coloured11457 = result11457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11458 live11458 coloured11458 = result11458 := by
  rw [tree11458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11456 coloured11456 at child
  try dsimp only [live11458, coloured11458]
  rw [child]
  dsimp only [result11456]
  have child := child1
  unfold live11457 coloured11457 at child
  try dsimp only [live11458, coloured11458]
  rw [child]
  dsimp only [result11457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11459_agree_conditional : tree11459 = literal11459 := by
  rw [tree11459_def]
  rfl
theorem node11459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11459 live11459 coloured11459 = result11459 := by
  rw [tree11459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11460_agree_conditional
    (child0 : tree11458 = literal11458)
    (child1 : tree11459 = literal11459) : tree11460 = literal11460 := by
  rw [tree11460_def, child0, child1]
  rfl
theorem node11460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11458 live11458 coloured11458 = result11458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11459 live11459 coloured11459 = result11459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11460 live11460 coloured11460 = result11460 := by
  rw [tree11460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11458 coloured11458 at child
  try dsimp only [live11460, coloured11460]
  rw [child]
  dsimp only [result11458]
  have child := child1
  unfold live11459 coloured11459 at child
  try dsimp only [live11460, coloured11460]
  rw [child]
  dsimp only [result11459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11461_agree_conditional : tree11461 = literal11461 := by
  rw [tree11461_def]
  rfl
theorem node11461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11461 live11461 coloured11461 = result11461 := by
  rw [tree11461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11462_agree_conditional
    (child0 : tree11460 = literal11460)
    (child1 : tree11461 = literal11461) : tree11462 = literal11462 := by
  rw [tree11462_def, child0, child1]
  rfl
theorem node11462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11460 live11460 coloured11460 = result11460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11461 live11461 coloured11461 = result11461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11462 live11462 coloured11462 = result11462 := by
  rw [tree11462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11460 coloured11460 at child
  try dsimp only [live11462, coloured11462]
  rw [child]
  dsimp only [result11460]
  have child := child1
  unfold live11461 coloured11461 at child
  try dsimp only [live11462, coloured11462]
  rw [child]
  dsimp only [result11461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11463_agree_conditional : tree11463 = literal11463 := by
  rw [tree11463_def]
  rfl
theorem node11463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11463 live11463 coloured11463 = result11463 := by
  rw [tree11463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11464_agree_conditional
    (child0 : tree11462 = literal11462)
    (child1 : tree11463 = literal11463) : tree11464 = literal11464 := by
  rw [tree11464_def, child0, child1]
  rfl
theorem node11464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11462 live11462 coloured11462 = result11462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11463 live11463 coloured11463 = result11463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11464 live11464 coloured11464 = result11464 := by
  rw [tree11464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11462 coloured11462 at child
  try dsimp only [live11464, coloured11464]
  rw [child]
  dsimp only [result11462]
  have child := child1
  unfold live11463 coloured11463 at child
  try dsimp only [live11464, coloured11464]
  rw [child]
  dsimp only [result11463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11465_agree_conditional : tree11465 = literal11465 := by
  rw [tree11465_def]
  rfl
theorem node11465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11465 live11465 coloured11465 = result11465 := by
  rw [tree11465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11466_agree_conditional
    (child0 : tree11464 = literal11464)
    (child1 : tree11465 = literal11465) : tree11466 = literal11466 := by
  rw [tree11466_def, child0, child1]
  rfl
theorem node11466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11464 live11464 coloured11464 = result11464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11465 live11465 coloured11465 = result11465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11466 live11466 coloured11466 = result11466 := by
  rw [tree11466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11464 coloured11464 at child
  try dsimp only [live11466, coloured11466]
  rw [child]
  dsimp only [result11464]
  have child := child1
  unfold live11465 coloured11465 at child
  try dsimp only [live11466, coloured11466]
  rw [child]
  dsimp only [result11465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11467_agree_conditional : tree11467 = literal11467 := by
  rw [tree11467_def]
  rfl
theorem node11467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11467 live11467 coloured11467 = result11467 := by
  rw [tree11467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11468_agree_conditional
    (child0 : tree11466 = literal11466)
    (child1 : tree11467 = literal11467) : tree11468 = literal11468 := by
  rw [tree11468_def, child0, child1]
  rfl
theorem node11468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11466 live11466 coloured11466 = result11466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11467 live11467 coloured11467 = result11467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11468 live11468 coloured11468 = result11468 := by
  rw [tree11468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11466 coloured11466 at child
  try dsimp only [live11468, coloured11468]
  rw [child]
  dsimp only [result11466]
  have child := child1
  unfold live11467 coloured11467 at child
  try dsimp only [live11468, coloured11468]
  rw [child]
  dsimp only [result11467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11469_agree_conditional : tree11469 = literal11469 := by
  rw [tree11469_def]
  rfl
theorem node11469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11469 live11469 coloured11469 = result11469 := by
  rw [tree11469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11470_agree_conditional
    (child0 : tree11468 = literal11468)
    (child1 : tree11469 = literal11469) : tree11470 = literal11470 := by
  rw [tree11470_def, child0, child1]
  rfl
theorem node11470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11468 live11468 coloured11468 = result11468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11469 live11469 coloured11469 = result11469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11470 live11470 coloured11470 = result11470 := by
  rw [tree11470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11468 coloured11468 at child
  try dsimp only [live11470, coloured11470]
  rw [child]
  dsimp only [result11468]
  have child := child1
  unfold live11469 coloured11469 at child
  try dsimp only [live11470, coloured11470]
  rw [child]
  dsimp only [result11469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11471_agree_conditional : tree11471 = literal11471 := by
  rw [tree11471_def]
  rfl
theorem node11471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11471 live11471 coloured11471 = result11471 := by
  rw [tree11471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11472_agree_conditional
    (child0 : tree11470 = literal11470)
    (child1 : tree11471 = literal11471) : tree11472 = literal11472 := by
  rw [tree11472_def, child0, child1]
  rfl
theorem node11472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11470 live11470 coloured11470 = result11470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11471 live11471 coloured11471 = result11471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11472 live11472 coloured11472 = result11472 := by
  rw [tree11472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11470 coloured11470 at child
  try dsimp only [live11472, coloured11472]
  rw [child]
  dsimp only [result11470]
  have child := child1
  unfold live11471 coloured11471 at child
  try dsimp only [live11472, coloured11472]
  rw [child]
  dsimp only [result11471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11473_agree_conditional : tree11473 = literal11473 := by
  rw [tree11473_def]
  rfl
theorem node11473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11473 live11473 coloured11473 = result11473 := by
  rw [tree11473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11474_agree_conditional
    (child0 : tree11472 = literal11472)
    (child1 : tree11473 = literal11473) : tree11474 = literal11474 := by
  rw [tree11474_def, child0, child1]
  rfl
theorem node11474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11472 live11472 coloured11472 = result11472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11473 live11473 coloured11473 = result11473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11474 live11474 coloured11474 = result11474 := by
  rw [tree11474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11472 coloured11472 at child
  try dsimp only [live11474, coloured11474]
  rw [child]
  dsimp only [result11472]
  have child := child1
  unfold live11473 coloured11473 at child
  try dsimp only [live11474, coloured11474]
  rw [child]
  dsimp only [result11473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11475_agree_conditional : tree11475 = literal11475 := by
  rw [tree11475_def]
  rfl
theorem node11475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11475 live11475 coloured11475 = result11475 := by
  rw [tree11475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11476_agree_conditional
    (child0 : tree11474 = literal11474)
    (child1 : tree11475 = literal11475) : tree11476 = literal11476 := by
  rw [tree11476_def, child0, child1]
  rfl
theorem node11476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11474 live11474 coloured11474 = result11474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11475 live11475 coloured11475 = result11475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11476 live11476 coloured11476 = result11476 := by
  rw [tree11476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11474 coloured11474 at child
  try dsimp only [live11476, coloured11476]
  rw [child]
  dsimp only [result11474]
  have child := child1
  unfold live11475 coloured11475 at child
  try dsimp only [live11476, coloured11476]
  rw [child]
  dsimp only [result11475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11477_agree_conditional : tree11477 = literal11477 := by
  rw [tree11477_def]
  rfl
theorem node11477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11477 live11477 coloured11477 = result11477 := by
  rw [tree11477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11478_agree_conditional
    (child0 : tree11476 = literal11476)
    (child1 : tree11477 = literal11477) : tree11478 = literal11478 := by
  rw [tree11478_def, child0, child1]
  rfl
theorem node11478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11476 live11476 coloured11476 = result11476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11477 live11477 coloured11477 = result11477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11478 live11478 coloured11478 = result11478 := by
  rw [tree11478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11476 coloured11476 at child
  try dsimp only [live11478, coloured11478]
  rw [child]
  dsimp only [result11476]
  have child := child1
  unfold live11477 coloured11477 at child
  try dsimp only [live11478, coloured11478]
  rw [child]
  dsimp only [result11477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11479_agree_conditional : tree11479 = literal11479 := by
  rw [tree11479_def]
  rfl
theorem node11479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11479 live11479 coloured11479 = result11479 := by
  rw [tree11479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11480_agree_conditional
    (child0 : tree11478 = literal11478)
    (child1 : tree11479 = literal11479) : tree11480 = literal11480 := by
  rw [tree11480_def, child0, child1]
  rfl
theorem node11480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11478 live11478 coloured11478 = result11478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11479 live11479 coloured11479 = result11479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11480 live11480 coloured11480 = result11480 := by
  rw [tree11480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11478 coloured11478 at child
  try dsimp only [live11480, coloured11480]
  rw [child]
  dsimp only [result11478]
  have child := child1
  unfold live11479 coloured11479 at child
  try dsimp only [live11480, coloured11480]
  rw [child]
  dsimp only [result11479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11481_agree_conditional : tree11481 = literal11481 := by
  rw [tree11481_def]
  rfl
theorem node11481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11481 live11481 coloured11481 = result11481 := by
  rw [tree11481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11482_agree_conditional
    (child0 : tree11480 = literal11480)
    (child1 : tree11481 = literal11481) : tree11482 = literal11482 := by
  rw [tree11482_def, child0, child1]
  rfl
theorem node11482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11480 live11480 coloured11480 = result11480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11481 live11481 coloured11481 = result11481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11482 live11482 coloured11482 = result11482 := by
  rw [tree11482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11480 coloured11480 at child
  try dsimp only [live11482, coloured11482]
  rw [child]
  dsimp only [result11480]
  have child := child1
  unfold live11481 coloured11481 at child
  try dsimp only [live11482, coloured11482]
  rw [child]
  dsimp only [result11481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11483_agree_conditional : tree11483 = literal11483 := by
  rw [tree11483_def]
  rfl
theorem node11483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11483 live11483 coloured11483 = result11483 := by
  rw [tree11483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11484_agree_conditional
    (child0 : tree11482 = literal11482)
    (child1 : tree11483 = literal11483) : tree11484 = literal11484 := by
  rw [tree11484_def, child0, child1]
  rfl
theorem node11484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11482 live11482 coloured11482 = result11482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11483 live11483 coloured11483 = result11483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11484 live11484 coloured11484 = result11484 := by
  rw [tree11484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11482 coloured11482 at child
  try dsimp only [live11484, coloured11484]
  rw [child]
  dsimp only [result11482]
  have child := child1
  unfold live11483 coloured11483 at child
  try dsimp only [live11484, coloured11484]
  rw [child]
  dsimp only [result11483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11485_agree_conditional : tree11485 = literal11485 := by
  rw [tree11485_def]
  rfl
theorem node11485_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11485 live11485 coloured11485 = result11485 := by
  rw [tree11485_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11486_agree_conditional
    (child0 : tree11484 = literal11484)
    (child1 : tree11485 = literal11485) : tree11486 = literal11486 := by
  rw [tree11486_def, child0, child1]
  rfl
theorem node11486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11484 live11484 coloured11484 = result11484)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11485 live11485 coloured11485 = result11485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11486 live11486 coloured11486 = result11486 := by
  rw [tree11486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11484 coloured11484 at child
  try dsimp only [live11486, coloured11486]
  rw [child]
  dsimp only [result11484]
  have child := child1
  unfold live11485 coloured11485 at child
  try dsimp only [live11486, coloured11486]
  rw [child]
  dsimp only [result11485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11487_agree_conditional : tree11487 = literal11487 := by
  rw [tree11487_def]
  rfl
theorem node11487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11487 live11487 coloured11487 = result11487 := by
  rw [tree11487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11488_agree_conditional
    (child0 : tree11486 = literal11486)
    (child1 : tree11487 = literal11487) : tree11488 = literal11488 := by
  rw [tree11488_def, child0, child1]
  rfl
theorem node11488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11486 live11486 coloured11486 = result11486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11487 live11487 coloured11487 = result11487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11488 live11488 coloured11488 = result11488 := by
  rw [tree11488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11486 coloured11486 at child
  try dsimp only [live11488, coloured11488]
  rw [child]
  dsimp only [result11486]
  have child := child1
  unfold live11487 coloured11487 at child
  try dsimp only [live11488, coloured11488]
  rw [child]
  dsimp only [result11487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11489_agree_conditional : tree11489 = literal11489 := by
  rw [tree11489_def]
  rfl
theorem node11489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11489 live11489 coloured11489 = result11489 := by
  rw [tree11489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11490_agree_conditional
    (child0 : tree11488 = literal11488)
    (child1 : tree11489 = literal11489) : tree11490 = literal11490 := by
  rw [tree11490_def, child0, child1]
  rfl
theorem node11490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11488 live11488 coloured11488 = result11488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11489 live11489 coloured11489 = result11489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11490 live11490 coloured11490 = result11490 := by
  rw [tree11490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11488 coloured11488 at child
  try dsimp only [live11490, coloured11490]
  rw [child]
  dsimp only [result11488]
  have child := child1
  unfold live11489 coloured11489 at child
  try dsimp only [live11490, coloured11490]
  rw [child]
  dsimp only [result11489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11491_agree_conditional : tree11491 = literal11491 := by
  rw [tree11491_def]
  rfl
theorem node11491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11491 live11491 coloured11491 = result11491 := by
  rw [tree11491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11492_agree_conditional
    (child0 : tree11490 = literal11490)
    (child1 : tree11491 = literal11491) : tree11492 = literal11492 := by
  rw [tree11492_def, child0, child1]
  rfl
theorem node11492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11490 live11490 coloured11490 = result11490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11491 live11491 coloured11491 = result11491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11492 live11492 coloured11492 = result11492 := by
  rw [tree11492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11490 coloured11490 at child
  try dsimp only [live11492, coloured11492]
  rw [child]
  dsimp only [result11490]
  have child := child1
  unfold live11491 coloured11491 at child
  try dsimp only [live11492, coloured11492]
  rw [child]
  dsimp only [result11491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11493_agree_conditional : tree11493 = literal11493 := by
  rw [tree11493_def]
  rfl
theorem node11493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11493 live11493 coloured11493 = result11493 := by
  rw [tree11493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11494_agree_conditional
    (child0 : tree11492 = literal11492)
    (child1 : tree11493 = literal11493) : tree11494 = literal11494 := by
  rw [tree11494_def, child0, child1]
  rfl
theorem node11494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11492 live11492 coloured11492 = result11492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11493 live11493 coloured11493 = result11493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11494 live11494 coloured11494 = result11494 := by
  rw [tree11494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11492 coloured11492 at child
  try dsimp only [live11494, coloured11494]
  rw [child]
  dsimp only [result11492]
  have child := child1
  unfold live11493 coloured11493 at child
  try dsimp only [live11494, coloured11494]
  rw [child]
  dsimp only [result11493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11495_agree_conditional : tree11495 = literal11495 := by
  rw [tree11495_def]
  rfl
theorem node11495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11495 live11495 coloured11495 = result11495 := by
  rw [tree11495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11496_agree_conditional
    (child0 : tree11494 = literal11494)
    (child1 : tree11495 = literal11495) : tree11496 = literal11496 := by
  rw [tree11496_def, child0, child1]
  rfl
theorem node11496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11494 live11494 coloured11494 = result11494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11495 live11495 coloured11495 = result11495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11496 live11496 coloured11496 = result11496 := by
  rw [tree11496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11494 coloured11494 at child
  try dsimp only [live11496, coloured11496]
  rw [child]
  dsimp only [result11494]
  have child := child1
  unfold live11495 coloured11495 at child
  try dsimp only [live11496, coloured11496]
  rw [child]
  dsimp only [result11495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11497_agree_conditional : tree11497 = literal11497 := by
  rw [tree11497_def]
  rfl
theorem node11497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11497 live11497 coloured11497 = result11497 := by
  rw [tree11497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11498_agree_conditional
    (child0 : tree11496 = literal11496)
    (child1 : tree11497 = literal11497) : tree11498 = literal11498 := by
  rw [tree11498_def, child0, child1]
  rfl
theorem node11498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11496 live11496 coloured11496 = result11496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11497 live11497 coloured11497 = result11497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11498 live11498 coloured11498 = result11498 := by
  rw [tree11498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11496 coloured11496 at child
  try dsimp only [live11498, coloured11498]
  rw [child]
  dsimp only [result11496]
  have child := child1
  unfold live11497 coloured11497 at child
  try dsimp only [live11498, coloured11498]
  rw [child]
  dsimp only [result11497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11499_agree_conditional : tree11499 = literal11499 := by
  rw [tree11499_def]
  rfl
theorem node11499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11499 live11499 coloured11499 = result11499 := by
  rw [tree11499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11500_agree_conditional
    (child0 : tree11498 = literal11498)
    (child1 : tree11499 = literal11499) : tree11500 = literal11500 := by
  rw [tree11500_def, child0, child1]
  rfl
theorem node11500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11498 live11498 coloured11498 = result11498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11499 live11499 coloured11499 = result11499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11500 live11500 coloured11500 = result11500 := by
  rw [tree11500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11498 coloured11498 at child
  try dsimp only [live11500, coloured11500]
  rw [child]
  dsimp only [result11498]
  have child := child1
  unfold live11499 coloured11499 at child
  try dsimp only [live11500, coloured11500]
  rw [child]
  dsimp only [result11499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11501_agree_conditional : tree11501 = literal11501 := by
  rw [tree11501_def]
  rfl
theorem node11501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11501 live11501 coloured11501 = result11501 := by
  rw [tree11501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11502_agree_conditional
    (child0 : tree11500 = literal11500)
    (child1 : tree11501 = literal11501) : tree11502 = literal11502 := by
  rw [tree11502_def, child0, child1]
  rfl
theorem node11502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11500 live11500 coloured11500 = result11500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11501 live11501 coloured11501 = result11501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11502 live11502 coloured11502 = result11502 := by
  rw [tree11502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11500 coloured11500 at child
  try dsimp only [live11502, coloured11502]
  rw [child]
  dsimp only [result11500]
  have child := child1
  unfold live11501 coloured11501 at child
  try dsimp only [live11502, coloured11502]
  rw [child]
  dsimp only [result11501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11503_agree_conditional : tree11503 = literal11503 := by
  rw [tree11503_def]
  rfl
theorem node11503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11503 live11503 coloured11503 = result11503 := by
  rw [tree11503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11504_agree_conditional
    (child0 : tree11502 = literal11502)
    (child1 : tree11503 = literal11503) : tree11504 = literal11504 := by
  rw [tree11504_def, child0, child1]
  rfl
theorem node11504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11502 live11502 coloured11502 = result11502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11503 live11503 coloured11503 = result11503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11504 live11504 coloured11504 = result11504 := by
  rw [tree11504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11502 coloured11502 at child
  try dsimp only [live11504, coloured11504]
  rw [child]
  dsimp only [result11502]
  have child := child1
  unfold live11503 coloured11503 at child
  try dsimp only [live11504, coloured11504]
  rw [child]
  dsimp only [result11503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11505_agree_conditional : tree11505 = literal11505 := by
  rw [tree11505_def]
  rfl
theorem node11505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11505 live11505 coloured11505 = result11505 := by
  rw [tree11505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11506_agree_conditional
    (child0 : tree11504 = literal11504)
    (child1 : tree11505 = literal11505) : tree11506 = literal11506 := by
  rw [tree11506_def, child0, child1]
  rfl
theorem node11506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11504 live11504 coloured11504 = result11504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11505 live11505 coloured11505 = result11505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11506 live11506 coloured11506 = result11506 := by
  rw [tree11506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11504 coloured11504 at child
  try dsimp only [live11506, coloured11506]
  rw [child]
  dsimp only [result11504]
  have child := child1
  unfold live11505 coloured11505 at child
  try dsimp only [live11506, coloured11506]
  rw [child]
  dsimp only [result11505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11507_agree_conditional : tree11507 = literal11507 := by
  rw [tree11507_def]
  rfl
theorem node11507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11507 live11507 coloured11507 = result11507 := by
  rw [tree11507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11508_agree_conditional
    (child0 : tree11506 = literal11506)
    (child1 : tree11507 = literal11507) : tree11508 = literal11508 := by
  rw [tree11508_def, child0, child1]
  rfl
theorem node11508_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11506 live11506 coloured11506 = result11506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11507 live11507 coloured11507 = result11507) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11508 live11508 coloured11508 = result11508 := by
  rw [tree11508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11506 coloured11506 at child
  try dsimp only [live11508, coloured11508]
  rw [child]
  dsimp only [result11506]
  have child := child1
  unfold live11507 coloured11507 at child
  try dsimp only [live11508, coloured11508]
  rw [child]
  dsimp only [result11507]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11509_agree_conditional : tree11509 = literal11509 := by
  rw [tree11509_def]
  rfl
theorem node11509_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11509 live11509 coloured11509 = result11509 := by
  rw [tree11509_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11510_agree_conditional
    (child0 : tree11508 = literal11508)
    (child1 : tree11509 = literal11509) : tree11510 = literal11510 := by
  rw [tree11510_def, child0, child1]
  rfl
theorem node11510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11508 live11508 coloured11508 = result11508)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11509 live11509 coloured11509 = result11509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11510 live11510 coloured11510 = result11510 := by
  rw [tree11510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11508 coloured11508 at child
  try dsimp only [live11510, coloured11510]
  rw [child]
  dsimp only [result11508]
  have child := child1
  unfold live11509 coloured11509 at child
  try dsimp only [live11510, coloured11510]
  rw [child]
  dsimp only [result11509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11511_agree_conditional : tree11511 = literal11511 := by
  rw [tree11511_def]
  rfl
theorem node11511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11511 live11511 coloured11511 = result11511 := by
  rw [tree11511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11512_agree_conditional
    (child0 : tree11510 = literal11510)
    (child1 : tree11511 = literal11511) : tree11512 = literal11512 := by
  rw [tree11512_def, child0, child1]
  rfl
theorem node11512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11510 live11510 coloured11510 = result11510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11511 live11511 coloured11511 = result11511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11512 live11512 coloured11512 = result11512 := by
  rw [tree11512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11510 coloured11510 at child
  try dsimp only [live11512, coloured11512]
  rw [child]
  dsimp only [result11510]
  have child := child1
  unfold live11511 coloured11511 at child
  try dsimp only [live11512, coloured11512]
  rw [child]
  dsimp only [result11511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11513_agree_conditional : tree11513 = literal11513 := by
  rw [tree11513_def]
  rfl
theorem node11513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11513 live11513 coloured11513 = result11513 := by
  rw [tree11513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11514_agree_conditional
    (child0 : tree11512 = literal11512)
    (child1 : tree11513 = literal11513) : tree11514 = literal11514 := by
  rw [tree11514_def, child0, child1]
  rfl
theorem node11514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11512 live11512 coloured11512 = result11512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11513 live11513 coloured11513 = result11513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11514 live11514 coloured11514 = result11514 := by
  rw [tree11514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11512 coloured11512 at child
  try dsimp only [live11514, coloured11514]
  rw [child]
  dsimp only [result11512]
  have child := child1
  unfold live11513 coloured11513 at child
  try dsimp only [live11514, coloured11514]
  rw [child]
  dsimp only [result11513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11515_agree_conditional : tree11515 = literal11515 := by
  rw [tree11515_def]
  rfl
theorem node11515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11515 live11515 coloured11515 = result11515 := by
  rw [tree11515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11516_agree_conditional
    (child0 : tree11514 = literal11514)
    (child1 : tree11515 = literal11515) : tree11516 = literal11516 := by
  rw [tree11516_def, child0, child1]
  rfl
theorem node11516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11514 live11514 coloured11514 = result11514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11515 live11515 coloured11515 = result11515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11516 live11516 coloured11516 = result11516 := by
  rw [tree11516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11514 coloured11514 at child
  try dsimp only [live11516, coloured11516]
  rw [child]
  dsimp only [result11514]
  have child := child1
  unfold live11515 coloured11515 at child
  try dsimp only [live11516, coloured11516]
  rw [child]
  dsimp only [result11515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11517_agree_conditional : tree11517 = literal11517 := by
  rw [tree11517_def]
  rfl
theorem node11517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11517 live11517 coloured11517 = result11517 := by
  rw [tree11517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11518_agree_conditional
    (child0 : tree11516 = literal11516)
    (child1 : tree11517 = literal11517) : tree11518 = literal11518 := by
  rw [tree11518_def, child0, child1]
  rfl
theorem node11518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11516 live11516 coloured11516 = result11516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11517 live11517 coloured11517 = result11517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11518 live11518 coloured11518 = result11518 := by
  rw [tree11518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11516 coloured11516 at child
  try dsimp only [live11518, coloured11518]
  rw [child]
  dsimp only [result11516]
  have child := child1
  unfold live11517 coloured11517 at child
  try dsimp only [live11518, coloured11518]
  rw [child]
  dsimp only [result11517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11519_agree_conditional : tree11519 = literal11519 := by
  rw [tree11519_def]
  rfl
theorem node11519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11519 live11519 coloured11519 = result11519 := by
  rw [tree11519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
