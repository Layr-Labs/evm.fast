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
theorem tree8544_agree_conditional
    (child0 : tree8542 = literal8542)
    (child1 : tree8543 = literal8543) : tree8544 = literal8544 := by
  rw [tree8544_def, child0, child1]
  rfl
theorem node8544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8542 live8542 coloured8542 = result8542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8543 live8543 coloured8543 = result8543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8544 live8544 coloured8544 = result8544 := by
  rw [tree8544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8542 coloured8542 at child
  try dsimp only [live8544, coloured8544]
  rw [child]
  dsimp only [result8542]
  have child := child1
  unfold live8543 coloured8543 at child
  try dsimp only [live8544, coloured8544]
  rw [child]
  dsimp only [result8543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8545_agree_conditional : tree8545 = literal8545 := by
  rw [tree8545_def]
  rfl
theorem node8545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8545 live8545 coloured8545 = result8545 := by
  rw [tree8545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8546_agree_conditional
    (child0 : tree8544 = literal8544)
    (child1 : tree8545 = literal8545) : tree8546 = literal8546 := by
  rw [tree8546_def, child0, child1]
  rfl
theorem node8546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8544 live8544 coloured8544 = result8544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8545 live8545 coloured8545 = result8545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8546 live8546 coloured8546 = result8546 := by
  rw [tree8546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8544 coloured8544 at child
  try dsimp only [live8546, coloured8546]
  rw [child]
  dsimp only [result8544]
  have child := child1
  unfold live8545 coloured8545 at child
  try dsimp only [live8546, coloured8546]
  rw [child]
  dsimp only [result8545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8547_agree_conditional : tree8547 = literal8547 := by
  rw [tree8547_def]
  rfl
theorem node8547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8547 live8547 coloured8547 = result8547 := by
  rw [tree8547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8548_agree_conditional
    (child0 : tree8546 = literal8546)
    (child1 : tree8547 = literal8547) : tree8548 = literal8548 := by
  rw [tree8548_def, child0, child1]
  rfl
theorem node8548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8546 live8546 coloured8546 = result8546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8547 live8547 coloured8547 = result8547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8548 live8548 coloured8548 = result8548 := by
  rw [tree8548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8546 coloured8546 at child
  try dsimp only [live8548, coloured8548]
  rw [child]
  dsimp only [result8546]
  have child := child1
  unfold live8547 coloured8547 at child
  try dsimp only [live8548, coloured8548]
  rw [child]
  dsimp only [result8547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8549_agree_conditional : tree8549 = literal8549 := by
  rw [tree8549_def]
  rfl
theorem node8549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8549 live8549 coloured8549 = result8549 := by
  rw [tree8549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8550_agree_conditional
    (child0 : tree8548 = literal8548)
    (child1 : tree8549 = literal8549) : tree8550 = literal8550 := by
  rw [tree8550_def, child0, child1]
  rfl
theorem node8550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8548 live8548 coloured8548 = result8548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8549 live8549 coloured8549 = result8549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8550 live8550 coloured8550 = result8550 := by
  rw [tree8550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8548 coloured8548 at child
  try dsimp only [live8550, coloured8550]
  rw [child]
  dsimp only [result8548]
  have child := child1
  unfold live8549 coloured8549 at child
  try dsimp only [live8550, coloured8550]
  rw [child]
  dsimp only [result8549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8551_agree_conditional : tree8551 = literal8551 := by
  rw [tree8551_def]
  rfl
theorem node8551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8551 live8551 coloured8551 = result8551 := by
  rw [tree8551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8552_agree_conditional
    (child0 : tree8550 = literal8550)
    (child1 : tree8551 = literal8551) : tree8552 = literal8552 := by
  rw [tree8552_def, child0, child1]
  rfl
theorem node8552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8550 live8550 coloured8550 = result8550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8551 live8551 coloured8551 = result8551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8552 live8552 coloured8552 = result8552 := by
  rw [tree8552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8550 coloured8550 at child
  try dsimp only [live8552, coloured8552]
  rw [child]
  dsimp only [result8550]
  have child := child1
  unfold live8551 coloured8551 at child
  try dsimp only [live8552, coloured8552]
  rw [child]
  dsimp only [result8551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8553_agree_conditional : tree8553 = literal8553 := by
  rw [tree8553_def]
  rfl
theorem node8553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8553 live8553 coloured8553 = result8553 := by
  rw [tree8553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8554_agree_conditional
    (child0 : tree8552 = literal8552)
    (child1 : tree8553 = literal8553) : tree8554 = literal8554 := by
  rw [tree8554_def, child0, child1]
  rfl
theorem node8554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8552 live8552 coloured8552 = result8552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8553 live8553 coloured8553 = result8553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8554 live8554 coloured8554 = result8554 := by
  rw [tree8554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8552 coloured8552 at child
  try dsimp only [live8554, coloured8554]
  rw [child]
  dsimp only [result8552]
  have child := child1
  unfold live8553 coloured8553 at child
  try dsimp only [live8554, coloured8554]
  rw [child]
  dsimp only [result8553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8555_agree_conditional : tree8555 = literal8555 := by
  rw [tree8555_def]
  rfl
theorem node8555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8555 live8555 coloured8555 = result8555 := by
  rw [tree8555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8556_agree_conditional
    (child0 : tree8554 = literal8554)
    (child1 : tree8555 = literal8555) : tree8556 = literal8556 := by
  rw [tree8556_def, child0, child1]
  rfl
theorem node8556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8554 live8554 coloured8554 = result8554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8555 live8555 coloured8555 = result8555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8556 live8556 coloured8556 = result8556 := by
  rw [tree8556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8554 coloured8554 at child
  try dsimp only [live8556, coloured8556]
  rw [child]
  dsimp only [result8554]
  have child := child1
  unfold live8555 coloured8555 at child
  try dsimp only [live8556, coloured8556]
  rw [child]
  dsimp only [result8555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8557_agree_conditional : tree8557 = literal8557 := by
  rw [tree8557_def]
  rfl
theorem node8557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8557 live8557 coloured8557 = result8557 := by
  rw [tree8557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8558_agree_conditional
    (child0 : tree8556 = literal8556)
    (child1 : tree8557 = literal8557) : tree8558 = literal8558 := by
  rw [tree8558_def, child0, child1]
  rfl
theorem node8558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8556 live8556 coloured8556 = result8556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8557 live8557 coloured8557 = result8557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8558 live8558 coloured8558 = result8558 := by
  rw [tree8558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8556 coloured8556 at child
  try dsimp only [live8558, coloured8558]
  rw [child]
  dsimp only [result8556]
  have child := child1
  unfold live8557 coloured8557 at child
  try dsimp only [live8558, coloured8558]
  rw [child]
  dsimp only [result8557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8559_agree_conditional : tree8559 = literal8559 := by
  rw [tree8559_def]
  rfl
theorem node8559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8559 live8559 coloured8559 = result8559 := by
  rw [tree8559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8560_agree_conditional
    (child0 : tree8558 = literal8558)
    (child1 : tree8559 = literal8559) : tree8560 = literal8560 := by
  rw [tree8560_def, child0, child1]
  rfl
theorem node8560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8558 live8558 coloured8558 = result8558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8559 live8559 coloured8559 = result8559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8560 live8560 coloured8560 = result8560 := by
  rw [tree8560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8558 coloured8558 at child
  try dsimp only [live8560, coloured8560]
  rw [child]
  dsimp only [result8558]
  have child := child1
  unfold live8559 coloured8559 at child
  try dsimp only [live8560, coloured8560]
  rw [child]
  dsimp only [result8559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8561_agree_conditional : tree8561 = literal8561 := by
  rw [tree8561_def]
  rfl
theorem node8561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8561 live8561 coloured8561 = result8561 := by
  rw [tree8561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8562_agree_conditional
    (child0 : tree8560 = literal8560)
    (child1 : tree8561 = literal8561) : tree8562 = literal8562 := by
  rw [tree8562_def, child0, child1]
  rfl
theorem node8562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8560 live8560 coloured8560 = result8560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8561 live8561 coloured8561 = result8561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8562 live8562 coloured8562 = result8562 := by
  rw [tree8562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8560 coloured8560 at child
  try dsimp only [live8562, coloured8562]
  rw [child]
  dsimp only [result8560]
  have child := child1
  unfold live8561 coloured8561 at child
  try dsimp only [live8562, coloured8562]
  rw [child]
  dsimp only [result8561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8563_agree_conditional : tree8563 = literal8563 := by
  rw [tree8563_def]
  rfl
theorem node8563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8563 live8563 coloured8563 = result8563 := by
  rw [tree8563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8564_agree_conditional
    (child0 : tree8562 = literal8562)
    (child1 : tree8563 = literal8563) : tree8564 = literal8564 := by
  rw [tree8564_def, child0, child1]
  rfl
theorem node8564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8562 live8562 coloured8562 = result8562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8563 live8563 coloured8563 = result8563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8564 live8564 coloured8564 = result8564 := by
  rw [tree8564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8562 coloured8562 at child
  try dsimp only [live8564, coloured8564]
  rw [child]
  dsimp only [result8562]
  have child := child1
  unfold live8563 coloured8563 at child
  try dsimp only [live8564, coloured8564]
  rw [child]
  dsimp only [result8563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8565_agree_conditional : tree8565 = literal8565 := by
  rw [tree8565_def]
  rfl
theorem node8565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8565 live8565 coloured8565 = result8565 := by
  rw [tree8565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8566_agree_conditional
    (child0 : tree8564 = literal8564)
    (child1 : tree8565 = literal8565) : tree8566 = literal8566 := by
  rw [tree8566_def, child0, child1]
  rfl
theorem node8566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8564 live8564 coloured8564 = result8564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8565 live8565 coloured8565 = result8565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8566 live8566 coloured8566 = result8566 := by
  rw [tree8566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8564 coloured8564 at child
  try dsimp only [live8566, coloured8566]
  rw [child]
  dsimp only [result8564]
  have child := child1
  unfold live8565 coloured8565 at child
  try dsimp only [live8566, coloured8566]
  rw [child]
  dsimp only [result8565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8567_agree_conditional : tree8567 = literal8567 := by
  rw [tree8567_def]
  rfl
theorem node8567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8567 live8567 coloured8567 = result8567 := by
  rw [tree8567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8568_agree_conditional
    (child0 : tree8566 = literal8566)
    (child1 : tree8567 = literal8567) : tree8568 = literal8568 := by
  rw [tree8568_def, child0, child1]
  rfl
theorem node8568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8566 live8566 coloured8566 = result8566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8567 live8567 coloured8567 = result8567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8568 live8568 coloured8568 = result8568 := by
  rw [tree8568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8566 coloured8566 at child
  try dsimp only [live8568, coloured8568]
  rw [child]
  dsimp only [result8566]
  have child := child1
  unfold live8567 coloured8567 at child
  try dsimp only [live8568, coloured8568]
  rw [child]
  dsimp only [result8567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8569_agree_conditional : tree8569 = literal8569 := by
  rw [tree8569_def]
  rfl
theorem node8569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8569 live8569 coloured8569 = result8569 := by
  rw [tree8569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8570_agree_conditional
    (child0 : tree8568 = literal8568)
    (child1 : tree8569 = literal8569) : tree8570 = literal8570 := by
  rw [tree8570_def, child0, child1]
  rfl
theorem node8570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8568 live8568 coloured8568 = result8568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8569 live8569 coloured8569 = result8569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8570 live8570 coloured8570 = result8570 := by
  rw [tree8570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8568 coloured8568 at child
  try dsimp only [live8570, coloured8570]
  rw [child]
  dsimp only [result8568]
  have child := child1
  unfold live8569 coloured8569 at child
  try dsimp only [live8570, coloured8570]
  rw [child]
  dsimp only [result8569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8571_agree_conditional : tree8571 = literal8571 := by
  rw [tree8571_def]
  rfl
theorem node8571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8571 live8571 coloured8571 = result8571 := by
  rw [tree8571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8572_agree_conditional
    (child0 : tree8570 = literal8570)
    (child1 : tree8571 = literal8571) : tree8572 = literal8572 := by
  rw [tree8572_def, child0, child1]
  rfl
theorem node8572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8570 live8570 coloured8570 = result8570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8571 live8571 coloured8571 = result8571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8572 live8572 coloured8572 = result8572 := by
  rw [tree8572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8570 coloured8570 at child
  try dsimp only [live8572, coloured8572]
  rw [child]
  dsimp only [result8570]
  have child := child1
  unfold live8571 coloured8571 at child
  try dsimp only [live8572, coloured8572]
  rw [child]
  dsimp only [result8571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8573_agree_conditional : tree8573 = literal8573 := by
  rw [tree8573_def]
  rfl
theorem node8573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8573 live8573 coloured8573 = result8573 := by
  rw [tree8573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8574_agree_conditional
    (child0 : tree8572 = literal8572)
    (child1 : tree8573 = literal8573) : tree8574 = literal8574 := by
  rw [tree8574_def, child0, child1]
  rfl
theorem node8574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8572 live8572 coloured8572 = result8572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8573 live8573 coloured8573 = result8573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8574 live8574 coloured8574 = result8574 := by
  rw [tree8574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8572 coloured8572 at child
  try dsimp only [live8574, coloured8574]
  rw [child]
  dsimp only [result8572]
  have child := child1
  unfold live8573 coloured8573 at child
  try dsimp only [live8574, coloured8574]
  rw [child]
  dsimp only [result8573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8575_agree_conditional : tree8575 = literal8575 := by
  rw [tree8575_def]
  rfl
theorem node8575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8575 live8575 coloured8575 = result8575 := by
  rw [tree8575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8576_agree_conditional
    (child0 : tree8574 = literal8574)
    (child1 : tree8575 = literal8575) : tree8576 = literal8576 := by
  rw [tree8576_def, child0, child1]
  rfl
theorem node8576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8574 live8574 coloured8574 = result8574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8575 live8575 coloured8575 = result8575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8576 live8576 coloured8576 = result8576 := by
  rw [tree8576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8574 coloured8574 at child
  try dsimp only [live8576, coloured8576]
  rw [child]
  dsimp only [result8574]
  have child := child1
  unfold live8575 coloured8575 at child
  try dsimp only [live8576, coloured8576]
  rw [child]
  dsimp only [result8575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8577_agree_conditional : tree8577 = literal8577 := by
  rw [tree8577_def]
  rfl
theorem node8577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8577 live8577 coloured8577 = result8577 := by
  rw [tree8577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8578_agree_conditional
    (child0 : tree8576 = literal8576)
    (child1 : tree8577 = literal8577) : tree8578 = literal8578 := by
  rw [tree8578_def, child0, child1]
  rfl
theorem node8578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8576 live8576 coloured8576 = result8576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8577 live8577 coloured8577 = result8577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8578 live8578 coloured8578 = result8578 := by
  rw [tree8578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8576 coloured8576 at child
  try dsimp only [live8578, coloured8578]
  rw [child]
  dsimp only [result8576]
  have child := child1
  unfold live8577 coloured8577 at child
  try dsimp only [live8578, coloured8578]
  rw [child]
  dsimp only [result8577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8579_agree_conditional : tree8579 = literal8579 := by
  rw [tree8579_def]
  rfl
theorem node8579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8579 live8579 coloured8579 = result8579 := by
  rw [tree8579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8580_agree_conditional
    (child0 : tree8578 = literal8578)
    (child1 : tree8579 = literal8579) : tree8580 = literal8580 := by
  rw [tree8580_def, child0, child1]
  rfl
theorem node8580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8578 live8578 coloured8578 = result8578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8579 live8579 coloured8579 = result8579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8580 live8580 coloured8580 = result8580 := by
  rw [tree8580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8578 coloured8578 at child
  try dsimp only [live8580, coloured8580]
  rw [child]
  dsimp only [result8578]
  have child := child1
  unfold live8579 coloured8579 at child
  try dsimp only [live8580, coloured8580]
  rw [child]
  dsimp only [result8579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8581_agree_conditional : tree8581 = literal8581 := by
  rw [tree8581_def]
  rfl
theorem node8581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8581 live8581 coloured8581 = result8581 := by
  rw [tree8581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8582_agree_conditional
    (child0 : tree8580 = literal8580)
    (child1 : tree8581 = literal8581) : tree8582 = literal8582 := by
  rw [tree8582_def, child0, child1]
  rfl
theorem node8582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8580 live8580 coloured8580 = result8580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8581 live8581 coloured8581 = result8581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8582 live8582 coloured8582 = result8582 := by
  rw [tree8582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8580 coloured8580 at child
  try dsimp only [live8582, coloured8582]
  rw [child]
  dsimp only [result8580]
  have child := child1
  unfold live8581 coloured8581 at child
  try dsimp only [live8582, coloured8582]
  rw [child]
  dsimp only [result8581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8583_agree_conditional : tree8583 = literal8583 := by
  rw [tree8583_def]
  rfl
theorem node8583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8583 live8583 coloured8583 = result8583 := by
  rw [tree8583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8584_agree_conditional
    (child0 : tree8582 = literal8582)
    (child1 : tree8583 = literal8583) : tree8584 = literal8584 := by
  rw [tree8584_def, child0, child1]
  rfl
theorem node8584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8582 live8582 coloured8582 = result8582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8583 live8583 coloured8583 = result8583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8584 live8584 coloured8584 = result8584 := by
  rw [tree8584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8582 coloured8582 at child
  try dsimp only [live8584, coloured8584]
  rw [child]
  dsimp only [result8582]
  have child := child1
  unfold live8583 coloured8583 at child
  try dsimp only [live8584, coloured8584]
  rw [child]
  dsimp only [result8583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8585_agree_conditional : tree8585 = literal8585 := by
  rw [tree8585_def]
  rfl
theorem node8585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8585 live8585 coloured8585 = result8585 := by
  rw [tree8585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8586_agree_conditional
    (child0 : tree8584 = literal8584)
    (child1 : tree8585 = literal8585) : tree8586 = literal8586 := by
  rw [tree8586_def, child0, child1]
  rfl
theorem node8586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8584 live8584 coloured8584 = result8584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8585 live8585 coloured8585 = result8585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8586 live8586 coloured8586 = result8586 := by
  rw [tree8586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8584 coloured8584 at child
  try dsimp only [live8586, coloured8586]
  rw [child]
  dsimp only [result8584]
  have child := child1
  unfold live8585 coloured8585 at child
  try dsimp only [live8586, coloured8586]
  rw [child]
  dsimp only [result8585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8587_agree_conditional : tree8587 = literal8587 := by
  rw [tree8587_def]
  rfl
theorem node8587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8587 live8587 coloured8587 = result8587 := by
  rw [tree8587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8588_agree_conditional
    (child0 : tree8586 = literal8586)
    (child1 : tree8587 = literal8587) : tree8588 = literal8588 := by
  rw [tree8588_def, child0, child1]
  rfl
theorem node8588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8586 live8586 coloured8586 = result8586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8587 live8587 coloured8587 = result8587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8588 live8588 coloured8588 = result8588 := by
  rw [tree8588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8586 coloured8586 at child
  try dsimp only [live8588, coloured8588]
  rw [child]
  dsimp only [result8586]
  have child := child1
  unfold live8587 coloured8587 at child
  try dsimp only [live8588, coloured8588]
  rw [child]
  dsimp only [result8587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8589_agree_conditional : tree8589 = literal8589 := by
  rw [tree8589_def]
  rfl
theorem node8589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8589 live8589 coloured8589 = result8589 := by
  rw [tree8589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8590_agree_conditional
    (child0 : tree8588 = literal8588)
    (child1 : tree8589 = literal8589) : tree8590 = literal8590 := by
  rw [tree8590_def, child0, child1]
  rfl
theorem node8590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8588 live8588 coloured8588 = result8588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8589 live8589 coloured8589 = result8589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8590 live8590 coloured8590 = result8590 := by
  rw [tree8590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8588 coloured8588 at child
  try dsimp only [live8590, coloured8590]
  rw [child]
  dsimp only [result8588]
  have child := child1
  unfold live8589 coloured8589 at child
  try dsimp only [live8590, coloured8590]
  rw [child]
  dsimp only [result8589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8591_agree_conditional : tree8591 = literal8591 := by
  rw [tree8591_def]
  rfl
theorem node8591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8591 live8591 coloured8591 = result8591 := by
  rw [tree8591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8592_agree_conditional
    (child0 : tree8590 = literal8590)
    (child1 : tree8591 = literal8591) : tree8592 = literal8592 := by
  rw [tree8592_def, child0, child1]
  rfl
theorem node8592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8590 live8590 coloured8590 = result8590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8591 live8591 coloured8591 = result8591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8592 live8592 coloured8592 = result8592 := by
  rw [tree8592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8590 coloured8590 at child
  try dsimp only [live8592, coloured8592]
  rw [child]
  dsimp only [result8590]
  have child := child1
  unfold live8591 coloured8591 at child
  try dsimp only [live8592, coloured8592]
  rw [child]
  dsimp only [result8591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8593_agree_conditional : tree8593 = literal8593 := by
  rw [tree8593_def]
  rfl
theorem node8593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8593 live8593 coloured8593 = result8593 := by
  rw [tree8593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8594_agree_conditional
    (child0 : tree8592 = literal8592)
    (child1 : tree8593 = literal8593) : tree8594 = literal8594 := by
  rw [tree8594_def, child0, child1]
  rfl
theorem node8594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8592 live8592 coloured8592 = result8592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8593 live8593 coloured8593 = result8593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8594 live8594 coloured8594 = result8594 := by
  rw [tree8594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8592 coloured8592 at child
  try dsimp only [live8594, coloured8594]
  rw [child]
  dsimp only [result8592]
  have child := child1
  unfold live8593 coloured8593 at child
  try dsimp only [live8594, coloured8594]
  rw [child]
  dsimp only [result8593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8595_agree_conditional : tree8595 = literal8595 := by
  rw [tree8595_def]
  rfl
theorem node8595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8595 live8595 coloured8595 = result8595 := by
  rw [tree8595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8596_agree_conditional
    (child0 : tree8594 = literal8594)
    (child1 : tree8595 = literal8595) : tree8596 = literal8596 := by
  rw [tree8596_def, child0, child1]
  rfl
theorem node8596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8594 live8594 coloured8594 = result8594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8595 live8595 coloured8595 = result8595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8596 live8596 coloured8596 = result8596 := by
  rw [tree8596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8594 coloured8594 at child
  try dsimp only [live8596, coloured8596]
  rw [child]
  dsimp only [result8594]
  have child := child1
  unfold live8595 coloured8595 at child
  try dsimp only [live8596, coloured8596]
  rw [child]
  dsimp only [result8595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8597_agree_conditional : tree8597 = literal8597 := by
  rw [tree8597_def]
  rfl
theorem node8597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8597 live8597 coloured8597 = result8597 := by
  rw [tree8597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8598_agree_conditional
    (child0 : tree8596 = literal8596)
    (child1 : tree8597 = literal8597) : tree8598 = literal8598 := by
  rw [tree8598_def, child0, child1]
  rfl
theorem node8598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8596 live8596 coloured8596 = result8596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8597 live8597 coloured8597 = result8597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8598 live8598 coloured8598 = result8598 := by
  rw [tree8598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8596 coloured8596 at child
  try dsimp only [live8598, coloured8598]
  rw [child]
  dsimp only [result8596]
  have child := child1
  unfold live8597 coloured8597 at child
  try dsimp only [live8598, coloured8598]
  rw [child]
  dsimp only [result8597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8599_agree_conditional : tree8599 = literal8599 := by
  rw [tree8599_def]
  rfl
theorem node8599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8599 live8599 coloured8599 = result8599 := by
  rw [tree8599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8600_agree_conditional
    (child0 : tree8598 = literal8598)
    (child1 : tree8599 = literal8599) : tree8600 = literal8600 := by
  rw [tree8600_def, child0, child1]
  rfl
theorem node8600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8598 live8598 coloured8598 = result8598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8599 live8599 coloured8599 = result8599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8600 live8600 coloured8600 = result8600 := by
  rw [tree8600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8598 coloured8598 at child
  try dsimp only [live8600, coloured8600]
  rw [child]
  dsimp only [result8598]
  have child := child1
  unfold live8599 coloured8599 at child
  try dsimp only [live8600, coloured8600]
  rw [child]
  dsimp only [result8599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8601_agree_conditional : tree8601 = literal8601 := by
  rw [tree8601_def]
  rfl
theorem node8601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8601 live8601 coloured8601 = result8601 := by
  rw [tree8601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8602_agree_conditional
    (child0 : tree8600 = literal8600)
    (child1 : tree8601 = literal8601) : tree8602 = literal8602 := by
  rw [tree8602_def, child0, child1]
  rfl
theorem node8602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8600 live8600 coloured8600 = result8600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8601 live8601 coloured8601 = result8601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8602 live8602 coloured8602 = result8602 := by
  rw [tree8602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8600 coloured8600 at child
  try dsimp only [live8602, coloured8602]
  rw [child]
  dsimp only [result8600]
  have child := child1
  unfold live8601 coloured8601 at child
  try dsimp only [live8602, coloured8602]
  rw [child]
  dsimp only [result8601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8603_agree_conditional : tree8603 = literal8603 := by
  rw [tree8603_def]
  rfl
theorem node8603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8603 live8603 coloured8603 = result8603 := by
  rw [tree8603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8604_agree_conditional
    (child0 : tree8602 = literal8602)
    (child1 : tree8603 = literal8603) : tree8604 = literal8604 := by
  rw [tree8604_def, child0, child1]
  rfl
theorem node8604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8602 live8602 coloured8602 = result8602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8603 live8603 coloured8603 = result8603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8604 live8604 coloured8604 = result8604 := by
  rw [tree8604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8602 coloured8602 at child
  try dsimp only [live8604, coloured8604]
  rw [child]
  dsimp only [result8602]
  have child := child1
  unfold live8603 coloured8603 at child
  try dsimp only [live8604, coloured8604]
  rw [child]
  dsimp only [result8603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8605_agree_conditional : tree8605 = literal8605 := by
  rw [tree8605_def]
  rfl
theorem node8605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8605 live8605 coloured8605 = result8605 := by
  rw [tree8605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8606_agree_conditional
    (child0 : tree8604 = literal8604)
    (child1 : tree8605 = literal8605) : tree8606 = literal8606 := by
  rw [tree8606_def, child0, child1]
  rfl
theorem node8606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8604 live8604 coloured8604 = result8604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8605 live8605 coloured8605 = result8605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8606 live8606 coloured8606 = result8606 := by
  rw [tree8606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8604 coloured8604 at child
  try dsimp only [live8606, coloured8606]
  rw [child]
  dsimp only [result8604]
  have child := child1
  unfold live8605 coloured8605 at child
  try dsimp only [live8606, coloured8606]
  rw [child]
  dsimp only [result8605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8607_agree_conditional : tree8607 = literal8607 := by
  rw [tree8607_def]
  rfl
theorem node8607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8607 live8607 coloured8607 = result8607 := by
  rw [tree8607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8608_agree_conditional
    (child0 : tree8606 = literal8606)
    (child1 : tree8607 = literal8607) : tree8608 = literal8608 := by
  rw [tree8608_def, child0, child1]
  rfl
theorem node8608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8606 live8606 coloured8606 = result8606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8607 live8607 coloured8607 = result8607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8608 live8608 coloured8608 = result8608 := by
  rw [tree8608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8606 coloured8606 at child
  try dsimp only [live8608, coloured8608]
  rw [child]
  dsimp only [result8606]
  have child := child1
  unfold live8607 coloured8607 at child
  try dsimp only [live8608, coloured8608]
  rw [child]
  dsimp only [result8607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8609_agree_conditional : tree8609 = literal8609 := by
  rw [tree8609_def]
  rfl
theorem node8609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8609 live8609 coloured8609 = result8609 := by
  rw [tree8609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8610_agree_conditional
    (child0 : tree8608 = literal8608)
    (child1 : tree8609 = literal8609) : tree8610 = literal8610 := by
  rw [tree8610_def, child0, child1]
  rfl
theorem node8610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8608 live8608 coloured8608 = result8608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8609 live8609 coloured8609 = result8609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8610 live8610 coloured8610 = result8610 := by
  rw [tree8610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8608 coloured8608 at child
  try dsimp only [live8610, coloured8610]
  rw [child]
  dsimp only [result8608]
  have child := child1
  unfold live8609 coloured8609 at child
  try dsimp only [live8610, coloured8610]
  rw [child]
  dsimp only [result8609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8611_agree_conditional : tree8611 = literal8611 := by
  rw [tree8611_def]
  rfl
theorem node8611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8611 live8611 coloured8611 = result8611 := by
  rw [tree8611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8612_agree_conditional
    (child0 : tree8610 = literal8610)
    (child1 : tree8611 = literal8611) : tree8612 = literal8612 := by
  rw [tree8612_def, child0, child1]
  rfl
theorem node8612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8610 live8610 coloured8610 = result8610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8611 live8611 coloured8611 = result8611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8612 live8612 coloured8612 = result8612 := by
  rw [tree8612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8610 coloured8610 at child
  try dsimp only [live8612, coloured8612]
  rw [child]
  dsimp only [result8610]
  have child := child1
  unfold live8611 coloured8611 at child
  try dsimp only [live8612, coloured8612]
  rw [child]
  dsimp only [result8611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8613_agree_conditional : tree8613 = literal8613 := by
  rw [tree8613_def]
  rfl
theorem node8613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8613 live8613 coloured8613 = result8613 := by
  rw [tree8613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8614_agree_conditional
    (child0 : tree8612 = literal8612)
    (child1 : tree8613 = literal8613) : tree8614 = literal8614 := by
  rw [tree8614_def, child0, child1]
  rfl
theorem node8614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8612 live8612 coloured8612 = result8612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8613 live8613 coloured8613 = result8613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8614 live8614 coloured8614 = result8614 := by
  rw [tree8614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8612 coloured8612 at child
  try dsimp only [live8614, coloured8614]
  rw [child]
  dsimp only [result8612]
  have child := child1
  unfold live8613 coloured8613 at child
  try dsimp only [live8614, coloured8614]
  rw [child]
  dsimp only [result8613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8615_agree_conditional : tree8615 = literal8615 := by
  rw [tree8615_def]
  rfl
theorem node8615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8615 live8615 coloured8615 = result8615 := by
  rw [tree8615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8616_agree_conditional
    (child0 : tree8614 = literal8614)
    (child1 : tree8615 = literal8615) : tree8616 = literal8616 := by
  rw [tree8616_def, child0, child1]
  rfl
theorem node8616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8614 live8614 coloured8614 = result8614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8615 live8615 coloured8615 = result8615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8616 live8616 coloured8616 = result8616 := by
  rw [tree8616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8614 coloured8614 at child
  try dsimp only [live8616, coloured8616]
  rw [child]
  dsimp only [result8614]
  have child := child1
  unfold live8615 coloured8615 at child
  try dsimp only [live8616, coloured8616]
  rw [child]
  dsimp only [result8615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8617_agree_conditional : tree8617 = literal8617 := by
  rw [tree8617_def]
  rfl
theorem node8617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8617 live8617 coloured8617 = result8617 := by
  rw [tree8617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8618_agree_conditional
    (child0 : tree8616 = literal8616)
    (child1 : tree8617 = literal8617) : tree8618 = literal8618 := by
  rw [tree8618_def, child0, child1]
  rfl
theorem node8618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8616 live8616 coloured8616 = result8616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8617 live8617 coloured8617 = result8617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8618 live8618 coloured8618 = result8618 := by
  rw [tree8618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8616 coloured8616 at child
  try dsimp only [live8618, coloured8618]
  rw [child]
  dsimp only [result8616]
  have child := child1
  unfold live8617 coloured8617 at child
  try dsimp only [live8618, coloured8618]
  rw [child]
  dsimp only [result8617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8619_agree_conditional : tree8619 = literal8619 := by
  rw [tree8619_def]
  rfl
theorem node8619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8619 live8619 coloured8619 = result8619 := by
  rw [tree8619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8620_agree_conditional
    (child0 : tree8618 = literal8618)
    (child1 : tree8619 = literal8619) : tree8620 = literal8620 := by
  rw [tree8620_def, child0, child1]
  rfl
theorem node8620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8618 live8618 coloured8618 = result8618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8619 live8619 coloured8619 = result8619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8620 live8620 coloured8620 = result8620 := by
  rw [tree8620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8618 coloured8618 at child
  try dsimp only [live8620, coloured8620]
  rw [child]
  dsimp only [result8618]
  have child := child1
  unfold live8619 coloured8619 at child
  try dsimp only [live8620, coloured8620]
  rw [child]
  dsimp only [result8619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8621_agree_conditional : tree8621 = literal8621 := by
  rw [tree8621_def]
  rfl
theorem node8621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8621 live8621 coloured8621 = result8621 := by
  rw [tree8621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8622_agree_conditional
    (child0 : tree8620 = literal8620)
    (child1 : tree8621 = literal8621) : tree8622 = literal8622 := by
  rw [tree8622_def, child0, child1]
  rfl
theorem node8622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8620 live8620 coloured8620 = result8620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8621 live8621 coloured8621 = result8621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8622 live8622 coloured8622 = result8622 := by
  rw [tree8622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8620 coloured8620 at child
  try dsimp only [live8622, coloured8622]
  rw [child]
  dsimp only [result8620]
  have child := child1
  unfold live8621 coloured8621 at child
  try dsimp only [live8622, coloured8622]
  rw [child]
  dsimp only [result8621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8623_agree_conditional : tree8623 = literal8623 := by
  rw [tree8623_def]
  rfl
theorem node8623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8623 live8623 coloured8623 = result8623 := by
  rw [tree8623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8624_agree_conditional
    (child0 : tree8622 = literal8622)
    (child1 : tree8623 = literal8623) : tree8624 = literal8624 := by
  rw [tree8624_def, child0, child1]
  rfl
theorem node8624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8622 live8622 coloured8622 = result8622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8623 live8623 coloured8623 = result8623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8624 live8624 coloured8624 = result8624 := by
  rw [tree8624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8622 coloured8622 at child
  try dsimp only [live8624, coloured8624]
  rw [child]
  dsimp only [result8622]
  have child := child1
  unfold live8623 coloured8623 at child
  try dsimp only [live8624, coloured8624]
  rw [child]
  dsimp only [result8623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8625_agree_conditional : tree8625 = literal8625 := by
  rw [tree8625_def]
  rfl
theorem node8625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8625 live8625 coloured8625 = result8625 := by
  rw [tree8625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8626_agree_conditional
    (child0 : tree8624 = literal8624)
    (child1 : tree8625 = literal8625) : tree8626 = literal8626 := by
  rw [tree8626_def, child0, child1]
  rfl
theorem node8626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8624 live8624 coloured8624 = result8624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8625 live8625 coloured8625 = result8625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8626 live8626 coloured8626 = result8626 := by
  rw [tree8626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8624 coloured8624 at child
  try dsimp only [live8626, coloured8626]
  rw [child]
  dsimp only [result8624]
  have child := child1
  unfold live8625 coloured8625 at child
  try dsimp only [live8626, coloured8626]
  rw [child]
  dsimp only [result8625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8627_agree_conditional : tree8627 = literal8627 := by
  rw [tree8627_def]
  rfl
theorem node8627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8627 live8627 coloured8627 = result8627 := by
  rw [tree8627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8628_agree_conditional
    (child0 : tree8626 = literal8626)
    (child1 : tree8627 = literal8627) : tree8628 = literal8628 := by
  rw [tree8628_def, child0, child1]
  rfl
theorem node8628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8626 live8626 coloured8626 = result8626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8627 live8627 coloured8627 = result8627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8628 live8628 coloured8628 = result8628 := by
  rw [tree8628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8626 coloured8626 at child
  try dsimp only [live8628, coloured8628]
  rw [child]
  dsimp only [result8626]
  have child := child1
  unfold live8627 coloured8627 at child
  try dsimp only [live8628, coloured8628]
  rw [child]
  dsimp only [result8627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8629_agree_conditional : tree8629 = literal8629 := by
  rw [tree8629_def]
  rfl
theorem node8629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8629 live8629 coloured8629 = result8629 := by
  rw [tree8629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8630_agree_conditional
    (child0 : tree8628 = literal8628)
    (child1 : tree8629 = literal8629) : tree8630 = literal8630 := by
  rw [tree8630_def, child0, child1]
  rfl
theorem node8630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8628 live8628 coloured8628 = result8628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8629 live8629 coloured8629 = result8629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8630 live8630 coloured8630 = result8630 := by
  rw [tree8630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8628 coloured8628 at child
  try dsimp only [live8630, coloured8630]
  rw [child]
  dsimp only [result8628]
  have child := child1
  unfold live8629 coloured8629 at child
  try dsimp only [live8630, coloured8630]
  rw [child]
  dsimp only [result8629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8631_agree_conditional : tree8631 = literal8631 := by
  rw [tree8631_def]
  rfl
theorem node8631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8631 live8631 coloured8631 = result8631 := by
  rw [tree8631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8632_agree_conditional
    (child0 : tree8630 = literal8630)
    (child1 : tree8631 = literal8631) : tree8632 = literal8632 := by
  rw [tree8632_def, child0, child1]
  rfl
theorem node8632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8630 live8630 coloured8630 = result8630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8631 live8631 coloured8631 = result8631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8632 live8632 coloured8632 = result8632 := by
  rw [tree8632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8630 coloured8630 at child
  try dsimp only [live8632, coloured8632]
  rw [child]
  dsimp only [result8630]
  have child := child1
  unfold live8631 coloured8631 at child
  try dsimp only [live8632, coloured8632]
  rw [child]
  dsimp only [result8631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8633_agree_conditional : tree8633 = literal8633 := by
  rw [tree8633_def]
  rfl
theorem node8633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8633 live8633 coloured8633 = result8633 := by
  rw [tree8633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8634_agree_conditional
    (child0 : tree8632 = literal8632)
    (child1 : tree8633 = literal8633) : tree8634 = literal8634 := by
  rw [tree8634_def, child0, child1]
  rfl
theorem node8634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8632 live8632 coloured8632 = result8632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8633 live8633 coloured8633 = result8633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8634 live8634 coloured8634 = result8634 := by
  rw [tree8634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8632 coloured8632 at child
  try dsimp only [live8634, coloured8634]
  rw [child]
  dsimp only [result8632]
  have child := child1
  unfold live8633 coloured8633 at child
  try dsimp only [live8634, coloured8634]
  rw [child]
  dsimp only [result8633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8635_agree_conditional : tree8635 = literal8635 := by
  rw [tree8635_def]
  rfl
theorem node8635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8635 live8635 coloured8635 = result8635 := by
  rw [tree8635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8636_agree_conditional
    (child0 : tree8634 = literal8634)
    (child1 : tree8635 = literal8635) : tree8636 = literal8636 := by
  rw [tree8636_def, child0, child1]
  rfl
theorem node8636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8634 live8634 coloured8634 = result8634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8635 live8635 coloured8635 = result8635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8636 live8636 coloured8636 = result8636 := by
  rw [tree8636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8634 coloured8634 at child
  try dsimp only [live8636, coloured8636]
  rw [child]
  dsimp only [result8634]
  have child := child1
  unfold live8635 coloured8635 at child
  try dsimp only [live8636, coloured8636]
  rw [child]
  dsimp only [result8635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8637_agree_conditional : tree8637 = literal8637 := by
  rw [tree8637_def]
  rfl
theorem node8637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8637 live8637 coloured8637 = result8637 := by
  rw [tree8637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8638_agree_conditional
    (child0 : tree8636 = literal8636)
    (child1 : tree8637 = literal8637) : tree8638 = literal8638 := by
  rw [tree8638_def, child0, child1]
  rfl
theorem node8638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8636 live8636 coloured8636 = result8636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8637 live8637 coloured8637 = result8637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8638 live8638 coloured8638 = result8638 := by
  rw [tree8638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8636 coloured8636 at child
  try dsimp only [live8638, coloured8638]
  rw [child]
  dsimp only [result8636]
  have child := child1
  unfold live8637 coloured8637 at child
  try dsimp only [live8638, coloured8638]
  rw [child]
  dsimp only [result8637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8639_agree_conditional : tree8639 = literal8639 := by
  rw [tree8639_def]
  rfl
theorem node8639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8639 live8639 coloured8639 = result8639 := by
  rw [tree8639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
