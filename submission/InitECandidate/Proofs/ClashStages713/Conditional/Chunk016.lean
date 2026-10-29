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
theorem tree1536_agree_conditional
    (child0 : tree1534 = literal1534)
    (child1 : tree1535 = literal1535) : tree1536 = literal1536 := by
  rw [tree1536_def, child0, child1]
  rfl
theorem node1536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1534 live1534 coloured1534 = result1534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1535 live1535 coloured1535 = result1535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1536 live1536 coloured1536 = result1536 := by
  rw [tree1536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1534 coloured1534 at child
  try dsimp only [live1536, coloured1536]
  rw [child]
  dsimp only [result1534]
  have child := child1
  unfold live1535 coloured1535 at child
  try dsimp only [live1536, coloured1536]
  rw [child]
  dsimp only [result1535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1537_agree_conditional : tree1537 = literal1537 := by
  rw [tree1537_def]
  rfl
theorem node1537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1537 live1537 coloured1537 = result1537 := by
  rw [tree1537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1538_agree_conditional
    (child0 : tree1536 = literal1536)
    (child1 : tree1537 = literal1537) : tree1538 = literal1538 := by
  rw [tree1538_def, child0, child1]
  rfl
theorem node1538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1536 live1536 coloured1536 = result1536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1537 live1537 coloured1537 = result1537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1538 live1538 coloured1538 = result1538 := by
  rw [tree1538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1536 coloured1536 at child
  try dsimp only [live1538, coloured1538]
  rw [child]
  dsimp only [result1536]
  have child := child1
  unfold live1537 coloured1537 at child
  try dsimp only [live1538, coloured1538]
  rw [child]
  dsimp only [result1537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1539_agree_conditional : tree1539 = literal1539 := by
  rw [tree1539_def]
  rfl
theorem node1539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1539 live1539 coloured1539 = result1539 := by
  rw [tree1539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1540_agree_conditional
    (child0 : tree1538 = literal1538)
    (child1 : tree1539 = literal1539) : tree1540 = literal1540 := by
  rw [tree1540_def, child0, child1]
  rfl
theorem node1540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1538 live1538 coloured1538 = result1538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1539 live1539 coloured1539 = result1539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1540 live1540 coloured1540 = result1540 := by
  rw [tree1540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1538 coloured1538 at child
  try dsimp only [live1540, coloured1540]
  rw [child]
  dsimp only [result1538]
  have child := child1
  unfold live1539 coloured1539 at child
  try dsimp only [live1540, coloured1540]
  rw [child]
  dsimp only [result1539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1541_agree_conditional : tree1541 = literal1541 := by
  rw [tree1541_def]
  rfl
theorem node1541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1541 live1541 coloured1541 = result1541 := by
  rw [tree1541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1542_agree_conditional
    (child0 : tree1540 = literal1540)
    (child1 : tree1541 = literal1541) : tree1542 = literal1542 := by
  rw [tree1542_def, child0, child1]
  rfl
theorem node1542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1540 live1540 coloured1540 = result1540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1541 live1541 coloured1541 = result1541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1542 live1542 coloured1542 = result1542 := by
  rw [tree1542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1540 coloured1540 at child
  try dsimp only [live1542, coloured1542]
  rw [child]
  dsimp only [result1540]
  have child := child1
  unfold live1541 coloured1541 at child
  try dsimp only [live1542, coloured1542]
  rw [child]
  dsimp only [result1541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1543_agree_conditional : tree1543 = literal1543 := by
  rw [tree1543_def]
  rfl
theorem node1543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1543 live1543 coloured1543 = result1543 := by
  rw [tree1543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1544_agree_conditional
    (child0 : tree1542 = literal1542)
    (child1 : tree1543 = literal1543) : tree1544 = literal1544 := by
  rw [tree1544_def, child0, child1]
  rfl
theorem node1544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1542 live1542 coloured1542 = result1542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1543 live1543 coloured1543 = result1543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1544 live1544 coloured1544 = result1544 := by
  rw [tree1544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1542 coloured1542 at child
  try dsimp only [live1544, coloured1544]
  rw [child]
  dsimp only [result1542]
  have child := child1
  unfold live1543 coloured1543 at child
  try dsimp only [live1544, coloured1544]
  rw [child]
  dsimp only [result1543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1545_agree_conditional : tree1545 = literal1545 := by
  rw [tree1545_def]
  rfl
theorem node1545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1545 live1545 coloured1545 = result1545 := by
  rw [tree1545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1546_agree_conditional
    (child0 : tree1544 = literal1544)
    (child1 : tree1545 = literal1545) : tree1546 = literal1546 := by
  rw [tree1546_def, child0, child1]
  rfl
theorem node1546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1544 live1544 coloured1544 = result1544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1545 live1545 coloured1545 = result1545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1546 live1546 coloured1546 = result1546 := by
  rw [tree1546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1544 coloured1544 at child
  try dsimp only [live1546, coloured1546]
  rw [child]
  dsimp only [result1544]
  have child := child1
  unfold live1545 coloured1545 at child
  try dsimp only [live1546, coloured1546]
  rw [child]
  dsimp only [result1545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1547_agree_conditional : tree1547 = literal1547 := by
  rw [tree1547_def]
  rfl
theorem node1547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1547 live1547 coloured1547 = result1547 := by
  rw [tree1547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1548_agree_conditional
    (child0 : tree1546 = literal1546)
    (child1 : tree1547 = literal1547) : tree1548 = literal1548 := by
  rw [tree1548_def, child0, child1]
  rfl
theorem node1548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1546 live1546 coloured1546 = result1546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1547 live1547 coloured1547 = result1547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1548 live1548 coloured1548 = result1548 := by
  rw [tree1548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1546 coloured1546 at child
  try dsimp only [live1548, coloured1548]
  rw [child]
  dsimp only [result1546]
  have child := child1
  unfold live1547 coloured1547 at child
  try dsimp only [live1548, coloured1548]
  rw [child]
  dsimp only [result1547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1549_agree_conditional : tree1549 = literal1549 := by
  rw [tree1549_def]
  rfl
theorem node1549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1549 live1549 coloured1549 = result1549 := by
  rw [tree1549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1550_agree_conditional
    (child0 : tree1548 = literal1548)
    (child1 : tree1549 = literal1549) : tree1550 = literal1550 := by
  rw [tree1550_def, child0, child1]
  rfl
theorem node1550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1548 live1548 coloured1548 = result1548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1549 live1549 coloured1549 = result1549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1550 live1550 coloured1550 = result1550 := by
  rw [tree1550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1548 coloured1548 at child
  try dsimp only [live1550, coloured1550]
  rw [child]
  dsimp only [result1548]
  have child := child1
  unfold live1549 coloured1549 at child
  try dsimp only [live1550, coloured1550]
  rw [child]
  dsimp only [result1549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1551_agree_conditional : tree1551 = literal1551 := by
  rw [tree1551_def]
  rfl
theorem node1551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1551 live1551 coloured1551 = result1551 := by
  rw [tree1551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1552_agree_conditional
    (child0 : tree1550 = literal1550)
    (child1 : tree1551 = literal1551) : tree1552 = literal1552 := by
  rw [tree1552_def, child0, child1]
  rfl
theorem node1552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1550 live1550 coloured1550 = result1550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1551 live1551 coloured1551 = result1551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1552 live1552 coloured1552 = result1552 := by
  rw [tree1552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1550 coloured1550 at child
  try dsimp only [live1552, coloured1552]
  rw [child]
  dsimp only [result1550]
  have child := child1
  unfold live1551 coloured1551 at child
  try dsimp only [live1552, coloured1552]
  rw [child]
  dsimp only [result1551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1553_agree_conditional : tree1553 = literal1553 := by
  rw [tree1553_def]
  rfl
theorem node1553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1553 live1553 coloured1553 = result1553 := by
  rw [tree1553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1554_agree_conditional
    (child0 : tree1552 = literal1552)
    (child1 : tree1553 = literal1553) : tree1554 = literal1554 := by
  rw [tree1554_def, child0, child1]
  rfl
theorem node1554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1552 live1552 coloured1552 = result1552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1553 live1553 coloured1553 = result1553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1554 live1554 coloured1554 = result1554 := by
  rw [tree1554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1552 coloured1552 at child
  try dsimp only [live1554, coloured1554]
  rw [child]
  dsimp only [result1552]
  have child := child1
  unfold live1553 coloured1553 at child
  try dsimp only [live1554, coloured1554]
  rw [child]
  dsimp only [result1553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1555_agree_conditional : tree1555 = literal1555 := by
  rw [tree1555_def]
  rfl
theorem node1555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1555 live1555 coloured1555 = result1555 := by
  rw [tree1555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1556_agree_conditional
    (child0 : tree1554 = literal1554)
    (child1 : tree1555 = literal1555) : tree1556 = literal1556 := by
  rw [tree1556_def, child0, child1]
  rfl
theorem node1556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1554 live1554 coloured1554 = result1554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1555 live1555 coloured1555 = result1555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1556 live1556 coloured1556 = result1556 := by
  rw [tree1556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1554 coloured1554 at child
  try dsimp only [live1556, coloured1556]
  rw [child]
  dsimp only [result1554]
  have child := child1
  unfold live1555 coloured1555 at child
  try dsimp only [live1556, coloured1556]
  rw [child]
  dsimp only [result1555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1557_agree_conditional : tree1557 = literal1557 := by
  rw [tree1557_def]
  rfl
theorem node1557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1557 live1557 coloured1557 = result1557 := by
  rw [tree1557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1558_agree_conditional
    (child0 : tree1556 = literal1556)
    (child1 : tree1557 = literal1557) : tree1558 = literal1558 := by
  rw [tree1558_def, child0, child1]
  rfl
theorem node1558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1556 live1556 coloured1556 = result1556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1557 live1557 coloured1557 = result1557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1558 live1558 coloured1558 = result1558 := by
  rw [tree1558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1556 coloured1556 at child
  try dsimp only [live1558, coloured1558]
  rw [child]
  dsimp only [result1556]
  have child := child1
  unfold live1557 coloured1557 at child
  try dsimp only [live1558, coloured1558]
  rw [child]
  dsimp only [result1557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1559_agree_conditional : tree1559 = literal1559 := by
  rw [tree1559_def]
  rfl
theorem node1559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1559 live1559 coloured1559 = result1559 := by
  rw [tree1559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1560_agree_conditional
    (child0 : tree1558 = literal1558)
    (child1 : tree1559 = literal1559) : tree1560 = literal1560 := by
  rw [tree1560_def, child0, child1]
  rfl
theorem node1560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1558 live1558 coloured1558 = result1558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1559 live1559 coloured1559 = result1559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1560 live1560 coloured1560 = result1560 := by
  rw [tree1560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1558 coloured1558 at child
  try dsimp only [live1560, coloured1560]
  rw [child]
  dsimp only [result1558]
  have child := child1
  unfold live1559 coloured1559 at child
  try dsimp only [live1560, coloured1560]
  rw [child]
  dsimp only [result1559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1561_agree_conditional : tree1561 = literal1561 := by
  rw [tree1561_def]
  rfl
theorem node1561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1561 live1561 coloured1561 = result1561 := by
  rw [tree1561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1562_agree_conditional
    (child0 : tree1560 = literal1560)
    (child1 : tree1561 = literal1561) : tree1562 = literal1562 := by
  rw [tree1562_def, child0, child1]
  rfl
theorem node1562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1560 live1560 coloured1560 = result1560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1561 live1561 coloured1561 = result1561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1562 live1562 coloured1562 = result1562 := by
  rw [tree1562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1560 coloured1560 at child
  try dsimp only [live1562, coloured1562]
  rw [child]
  dsimp only [result1560]
  have child := child1
  unfold live1561 coloured1561 at child
  try dsimp only [live1562, coloured1562]
  rw [child]
  dsimp only [result1561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1563_agree_conditional : tree1563 = literal1563 := by
  rw [tree1563_def]
  rfl
theorem node1563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1563 live1563 coloured1563 = result1563 := by
  rw [tree1563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1564_agree_conditional
    (child0 : tree1562 = literal1562)
    (child1 : tree1563 = literal1563) : tree1564 = literal1564 := by
  rw [tree1564_def, child0, child1]
  rfl
theorem node1564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1562 live1562 coloured1562 = result1562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1563 live1563 coloured1563 = result1563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1564 live1564 coloured1564 = result1564 := by
  rw [tree1564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1562 coloured1562 at child
  try dsimp only [live1564, coloured1564]
  rw [child]
  dsimp only [result1562]
  have child := child1
  unfold live1563 coloured1563 at child
  try dsimp only [live1564, coloured1564]
  rw [child]
  dsimp only [result1563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1565_agree_conditional : tree1565 = literal1565 := by
  rw [tree1565_def]
  rfl
theorem node1565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1565 live1565 coloured1565 = result1565 := by
  rw [tree1565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1566_agree_conditional
    (child0 : tree1564 = literal1564)
    (child1 : tree1565 = literal1565) : tree1566 = literal1566 := by
  rw [tree1566_def, child0, child1]
  rfl
theorem node1566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1564 live1564 coloured1564 = result1564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1565 live1565 coloured1565 = result1565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1566 live1566 coloured1566 = result1566 := by
  rw [tree1566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1564 coloured1564 at child
  try dsimp only [live1566, coloured1566]
  rw [child]
  dsimp only [result1564]
  have child := child1
  unfold live1565 coloured1565 at child
  try dsimp only [live1566, coloured1566]
  rw [child]
  dsimp only [result1565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1567_agree_conditional : tree1567 = literal1567 := by
  rw [tree1567_def]
  rfl
theorem node1567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1567 live1567 coloured1567 = result1567 := by
  rw [tree1567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1568_agree_conditional
    (child0 : tree1566 = literal1566)
    (child1 : tree1567 = literal1567) : tree1568 = literal1568 := by
  rw [tree1568_def, child0, child1]
  rfl
theorem node1568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1566 live1566 coloured1566 = result1566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1567 live1567 coloured1567 = result1567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1568 live1568 coloured1568 = result1568 := by
  rw [tree1568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1566 coloured1566 at child
  try dsimp only [live1568, coloured1568]
  rw [child]
  dsimp only [result1566]
  have child := child1
  unfold live1567 coloured1567 at child
  try dsimp only [live1568, coloured1568]
  rw [child]
  dsimp only [result1567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1569_agree_conditional : tree1569 = literal1569 := by
  rw [tree1569_def]
  rfl
theorem node1569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1569 live1569 coloured1569 = result1569 := by
  rw [tree1569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1570_agree_conditional
    (child0 : tree1568 = literal1568)
    (child1 : tree1569 = literal1569) : tree1570 = literal1570 := by
  rw [tree1570_def, child0, child1]
  rfl
theorem node1570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1568 live1568 coloured1568 = result1568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1569 live1569 coloured1569 = result1569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1570 live1570 coloured1570 = result1570 := by
  rw [tree1570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1568 coloured1568 at child
  try dsimp only [live1570, coloured1570]
  rw [child]
  dsimp only [result1568]
  have child := child1
  unfold live1569 coloured1569 at child
  try dsimp only [live1570, coloured1570]
  rw [child]
  dsimp only [result1569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1571_agree_conditional : tree1571 = literal1571 := by
  rw [tree1571_def]
  rfl
theorem node1571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1571 live1571 coloured1571 = result1571 := by
  rw [tree1571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1572_agree_conditional
    (child0 : tree1570 = literal1570)
    (child1 : tree1571 = literal1571) : tree1572 = literal1572 := by
  rw [tree1572_def, child0, child1]
  rfl
theorem node1572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1570 live1570 coloured1570 = result1570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1571 live1571 coloured1571 = result1571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1572 live1572 coloured1572 = result1572 := by
  rw [tree1572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1570 coloured1570 at child
  try dsimp only [live1572, coloured1572]
  rw [child]
  dsimp only [result1570]
  have child := child1
  unfold live1571 coloured1571 at child
  try dsimp only [live1572, coloured1572]
  rw [child]
  dsimp only [result1571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1573_agree_conditional : tree1573 = literal1573 := by
  rw [tree1573_def]
  rfl
theorem node1573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1573 live1573 coloured1573 = result1573 := by
  rw [tree1573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1574_agree_conditional
    (child0 : tree1572 = literal1572)
    (child1 : tree1573 = literal1573) : tree1574 = literal1574 := by
  rw [tree1574_def, child0, child1]
  rfl
theorem node1574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1572 live1572 coloured1572 = result1572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1573 live1573 coloured1573 = result1573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1574 live1574 coloured1574 = result1574 := by
  rw [tree1574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1572 coloured1572 at child
  try dsimp only [live1574, coloured1574]
  rw [child]
  dsimp only [result1572]
  have child := child1
  unfold live1573 coloured1573 at child
  try dsimp only [live1574, coloured1574]
  rw [child]
  dsimp only [result1573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1575_agree_conditional : tree1575 = literal1575 := by
  rw [tree1575_def]
  rfl
theorem node1575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1575 live1575 coloured1575 = result1575 := by
  rw [tree1575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1576_agree_conditional
    (child0 : tree1574 = literal1574)
    (child1 : tree1575 = literal1575) : tree1576 = literal1576 := by
  rw [tree1576_def, child0, child1]
  rfl
theorem node1576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1574 live1574 coloured1574 = result1574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1575 live1575 coloured1575 = result1575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1576 live1576 coloured1576 = result1576 := by
  rw [tree1576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1574 coloured1574 at child
  try dsimp only [live1576, coloured1576]
  rw [child]
  dsimp only [result1574]
  have child := child1
  unfold live1575 coloured1575 at child
  try dsimp only [live1576, coloured1576]
  rw [child]
  dsimp only [result1575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1577_agree_conditional : tree1577 = literal1577 := by
  rw [tree1577_def]
  rfl
theorem node1577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1577 live1577 coloured1577 = result1577 := by
  rw [tree1577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1578_agree_conditional
    (child0 : tree1576 = literal1576)
    (child1 : tree1577 = literal1577) : tree1578 = literal1578 := by
  rw [tree1578_def, child0, child1]
  rfl
theorem node1578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1576 live1576 coloured1576 = result1576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1577 live1577 coloured1577 = result1577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1578 live1578 coloured1578 = result1578 := by
  rw [tree1578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1576 coloured1576 at child
  try dsimp only [live1578, coloured1578]
  rw [child]
  dsimp only [result1576]
  have child := child1
  unfold live1577 coloured1577 at child
  try dsimp only [live1578, coloured1578]
  rw [child]
  dsimp only [result1577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1579_agree_conditional : tree1579 = literal1579 := by
  rw [tree1579_def]
  rfl
theorem node1579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1579 live1579 coloured1579 = result1579 := by
  rw [tree1579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1580_agree_conditional
    (child0 : tree1578 = literal1578)
    (child1 : tree1579 = literal1579) : tree1580 = literal1580 := by
  rw [tree1580_def, child0, child1]
  rfl
theorem node1580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1578 live1578 coloured1578 = result1578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1579 live1579 coloured1579 = result1579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1580 live1580 coloured1580 = result1580 := by
  rw [tree1580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1578 coloured1578 at child
  try dsimp only [live1580, coloured1580]
  rw [child]
  dsimp only [result1578]
  have child := child1
  unfold live1579 coloured1579 at child
  try dsimp only [live1580, coloured1580]
  rw [child]
  dsimp only [result1579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1581_agree_conditional : tree1581 = literal1581 := by
  rw [tree1581_def]
  rfl
theorem node1581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1581 live1581 coloured1581 = result1581 := by
  rw [tree1581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1582_agree_conditional
    (child0 : tree1580 = literal1580)
    (child1 : tree1581 = literal1581) : tree1582 = literal1582 := by
  rw [tree1582_def, child0, child1]
  rfl
theorem node1582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1580 live1580 coloured1580 = result1580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1581 live1581 coloured1581 = result1581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1582 live1582 coloured1582 = result1582 := by
  rw [tree1582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1580 coloured1580 at child
  try dsimp only [live1582, coloured1582]
  rw [child]
  dsimp only [result1580]
  have child := child1
  unfold live1581 coloured1581 at child
  try dsimp only [live1582, coloured1582]
  rw [child]
  dsimp only [result1581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1583_agree_conditional : tree1583 = literal1583 := by
  rw [tree1583_def]
  rfl
theorem node1583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1583 live1583 coloured1583 = result1583 := by
  rw [tree1583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1584_agree_conditional
    (child0 : tree1582 = literal1582)
    (child1 : tree1583 = literal1583) : tree1584 = literal1584 := by
  rw [tree1584_def, child0, child1]
  rfl
theorem node1584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1582 live1582 coloured1582 = result1582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1583 live1583 coloured1583 = result1583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1584 live1584 coloured1584 = result1584 := by
  rw [tree1584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1582 coloured1582 at child
  try dsimp only [live1584, coloured1584]
  rw [child]
  dsimp only [result1582]
  have child := child1
  unfold live1583 coloured1583 at child
  try dsimp only [live1584, coloured1584]
  rw [child]
  dsimp only [result1583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1585_agree_conditional : tree1585 = literal1585 := by
  rw [tree1585_def]
  rfl
theorem node1585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1585 live1585 coloured1585 = result1585 := by
  rw [tree1585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1586_agree_conditional
    (child0 : tree1584 = literal1584)
    (child1 : tree1585 = literal1585) : tree1586 = literal1586 := by
  rw [tree1586_def, child0, child1]
  rfl
theorem node1586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1584 live1584 coloured1584 = result1584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1585 live1585 coloured1585 = result1585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1586 live1586 coloured1586 = result1586 := by
  rw [tree1586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1584 coloured1584 at child
  try dsimp only [live1586, coloured1586]
  rw [child]
  dsimp only [result1584]
  have child := child1
  unfold live1585 coloured1585 at child
  try dsimp only [live1586, coloured1586]
  rw [child]
  dsimp only [result1585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1587_agree_conditional : tree1587 = literal1587 := by
  rw [tree1587_def]
  rfl
theorem node1587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1587 live1587 coloured1587 = result1587 := by
  rw [tree1587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1588_agree_conditional
    (child0 : tree1586 = literal1586)
    (child1 : tree1587 = literal1587) : tree1588 = literal1588 := by
  rw [tree1588_def, child0, child1]
  rfl
theorem node1588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1586 live1586 coloured1586 = result1586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1587 live1587 coloured1587 = result1587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1588 live1588 coloured1588 = result1588 := by
  rw [tree1588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1586 coloured1586 at child
  try dsimp only [live1588, coloured1588]
  rw [child]
  dsimp only [result1586]
  have child := child1
  unfold live1587 coloured1587 at child
  try dsimp only [live1588, coloured1588]
  rw [child]
  dsimp only [result1587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1589_agree_conditional : tree1589 = literal1589 := by
  rw [tree1589_def]
  rfl
theorem node1589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1589 live1589 coloured1589 = result1589 := by
  rw [tree1589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1590_agree_conditional
    (child0 : tree1588 = literal1588)
    (child1 : tree1589 = literal1589) : tree1590 = literal1590 := by
  rw [tree1590_def, child0, child1]
  rfl
theorem node1590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1588 live1588 coloured1588 = result1588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1589 live1589 coloured1589 = result1589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1590 live1590 coloured1590 = result1590 := by
  rw [tree1590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1588 coloured1588 at child
  try dsimp only [live1590, coloured1590]
  rw [child]
  dsimp only [result1588]
  have child := child1
  unfold live1589 coloured1589 at child
  try dsimp only [live1590, coloured1590]
  rw [child]
  dsimp only [result1589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1591_agree_conditional : tree1591 = literal1591 := by
  rw [tree1591_def]
  rfl
theorem node1591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1591 live1591 coloured1591 = result1591 := by
  rw [tree1591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1592_agree_conditional
    (child0 : tree1590 = literal1590)
    (child1 : tree1591 = literal1591) : tree1592 = literal1592 := by
  rw [tree1592_def, child0, child1]
  rfl
theorem node1592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1590 live1590 coloured1590 = result1590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1591 live1591 coloured1591 = result1591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1592 live1592 coloured1592 = result1592 := by
  rw [tree1592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1590 coloured1590 at child
  try dsimp only [live1592, coloured1592]
  rw [child]
  dsimp only [result1590]
  have child := child1
  unfold live1591 coloured1591 at child
  try dsimp only [live1592, coloured1592]
  rw [child]
  dsimp only [result1591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1593_agree_conditional : tree1593 = literal1593 := by
  rw [tree1593_def]
  rfl
theorem node1593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1593 live1593 coloured1593 = result1593 := by
  rw [tree1593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1594_agree_conditional
    (child0 : tree1592 = literal1592)
    (child1 : tree1593 = literal1593) : tree1594 = literal1594 := by
  rw [tree1594_def, child0, child1]
  rfl
theorem node1594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1592 live1592 coloured1592 = result1592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1593 live1593 coloured1593 = result1593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1594 live1594 coloured1594 = result1594 := by
  rw [tree1594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1592 coloured1592 at child
  try dsimp only [live1594, coloured1594]
  rw [child]
  dsimp only [result1592]
  have child := child1
  unfold live1593 coloured1593 at child
  try dsimp only [live1594, coloured1594]
  rw [child]
  dsimp only [result1593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1595_agree_conditional : tree1595 = literal1595 := by
  rw [tree1595_def]
  rfl
theorem node1595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1595 live1595 coloured1595 = result1595 := by
  rw [tree1595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1596_agree_conditional
    (child0 : tree1594 = literal1594)
    (child1 : tree1595 = literal1595) : tree1596 = literal1596 := by
  rw [tree1596_def, child0, child1]
  rfl
theorem node1596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1594 live1594 coloured1594 = result1594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1595 live1595 coloured1595 = result1595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1596 live1596 coloured1596 = result1596 := by
  rw [tree1596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1594 coloured1594 at child
  try dsimp only [live1596, coloured1596]
  rw [child]
  dsimp only [result1594]
  have child := child1
  unfold live1595 coloured1595 at child
  try dsimp only [live1596, coloured1596]
  rw [child]
  dsimp only [result1595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1597_agree_conditional : tree1597 = literal1597 := by
  rw [tree1597_def]
  rfl
theorem node1597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1597 live1597 coloured1597 = result1597 := by
  rw [tree1597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1598_agree_conditional
    (child0 : tree1596 = literal1596)
    (child1 : tree1597 = literal1597) : tree1598 = literal1598 := by
  rw [tree1598_def, child0, child1]
  rfl
theorem node1598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1596 live1596 coloured1596 = result1596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1597 live1597 coloured1597 = result1597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1598 live1598 coloured1598 = result1598 := by
  rw [tree1598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1596 coloured1596 at child
  try dsimp only [live1598, coloured1598]
  rw [child]
  dsimp only [result1596]
  have child := child1
  unfold live1597 coloured1597 at child
  try dsimp only [live1598, coloured1598]
  rw [child]
  dsimp only [result1597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1599_agree_conditional : tree1599 = literal1599 := by
  rw [tree1599_def]
  rfl
theorem node1599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1599 live1599 coloured1599 = result1599 := by
  rw [tree1599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1600_agree_conditional
    (child0 : tree1598 = literal1598)
    (child1 : tree1599 = literal1599) : tree1600 = literal1600 := by
  rw [tree1600_def, child0, child1]
  rfl
theorem node1600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1598 live1598 coloured1598 = result1598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1599 live1599 coloured1599 = result1599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1600 live1600 coloured1600 = result1600 := by
  rw [tree1600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1598 coloured1598 at child
  try dsimp only [live1600, coloured1600]
  rw [child]
  dsimp only [result1598]
  have child := child1
  unfold live1599 coloured1599 at child
  try dsimp only [live1600, coloured1600]
  rw [child]
  dsimp only [result1599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1601_agree_conditional : tree1601 = literal1601 := by
  rw [tree1601_def]
  rfl
theorem node1601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1601 live1601 coloured1601 = result1601 := by
  rw [tree1601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1602_agree_conditional
    (child0 : tree1600 = literal1600)
    (child1 : tree1601 = literal1601) : tree1602 = literal1602 := by
  rw [tree1602_def, child0, child1]
  rfl
theorem node1602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1600 live1600 coloured1600 = result1600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1601 live1601 coloured1601 = result1601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1602 live1602 coloured1602 = result1602 := by
  rw [tree1602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1600 coloured1600 at child
  try dsimp only [live1602, coloured1602]
  rw [child]
  dsimp only [result1600]
  have child := child1
  unfold live1601 coloured1601 at child
  try dsimp only [live1602, coloured1602]
  rw [child]
  dsimp only [result1601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1603_agree_conditional : tree1603 = literal1603 := by
  rw [tree1603_def]
  rfl
theorem node1603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1603 live1603 coloured1603 = result1603 := by
  rw [tree1603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1604_agree_conditional
    (child0 : tree1602 = literal1602)
    (child1 : tree1603 = literal1603) : tree1604 = literal1604 := by
  rw [tree1604_def, child0, child1]
  rfl
theorem node1604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1602 live1602 coloured1602 = result1602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1603 live1603 coloured1603 = result1603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1604 live1604 coloured1604 = result1604 := by
  rw [tree1604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1602 coloured1602 at child
  try dsimp only [live1604, coloured1604]
  rw [child]
  dsimp only [result1602]
  have child := child1
  unfold live1603 coloured1603 at child
  try dsimp only [live1604, coloured1604]
  rw [child]
  dsimp only [result1603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1605_agree_conditional : tree1605 = literal1605 := by
  rw [tree1605_def]
  rfl
theorem node1605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1605 live1605 coloured1605 = result1605 := by
  rw [tree1605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1606_agree_conditional
    (child0 : tree1604 = literal1604)
    (child1 : tree1605 = literal1605) : tree1606 = literal1606 := by
  rw [tree1606_def, child0, child1]
  rfl
theorem node1606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1604 live1604 coloured1604 = result1604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1605 live1605 coloured1605 = result1605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1606 live1606 coloured1606 = result1606 := by
  rw [tree1606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1604 coloured1604 at child
  try dsimp only [live1606, coloured1606]
  rw [child]
  dsimp only [result1604]
  have child := child1
  unfold live1605 coloured1605 at child
  try dsimp only [live1606, coloured1606]
  rw [child]
  dsimp only [result1605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1607_agree_conditional : tree1607 = literal1607 := by
  rw [tree1607_def]
  rfl
theorem node1607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1607 live1607 coloured1607 = result1607 := by
  rw [tree1607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1608_agree_conditional
    (child0 : tree1606 = literal1606)
    (child1 : tree1607 = literal1607) : tree1608 = literal1608 := by
  rw [tree1608_def, child0, child1]
  rfl
theorem node1608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1606 live1606 coloured1606 = result1606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1607 live1607 coloured1607 = result1607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1608 live1608 coloured1608 = result1608 := by
  rw [tree1608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1606 coloured1606 at child
  try dsimp only [live1608, coloured1608]
  rw [child]
  dsimp only [result1606]
  have child := child1
  unfold live1607 coloured1607 at child
  try dsimp only [live1608, coloured1608]
  rw [child]
  dsimp only [result1607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1609_agree_conditional : tree1609 = literal1609 := by
  rw [tree1609_def]
  rfl
theorem node1609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1609 live1609 coloured1609 = result1609 := by
  rw [tree1609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1610_agree_conditional
    (child0 : tree1608 = literal1608)
    (child1 : tree1609 = literal1609) : tree1610 = literal1610 := by
  rw [tree1610_def, child0, child1]
  rfl
theorem node1610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1608 live1608 coloured1608 = result1608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1609 live1609 coloured1609 = result1609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1610 live1610 coloured1610 = result1610 := by
  rw [tree1610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1608 coloured1608 at child
  try dsimp only [live1610, coloured1610]
  rw [child]
  dsimp only [result1608]
  have child := child1
  unfold live1609 coloured1609 at child
  try dsimp only [live1610, coloured1610]
  rw [child]
  dsimp only [result1609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1611_agree_conditional : tree1611 = literal1611 := by
  rw [tree1611_def]
  rfl
theorem node1611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1611 live1611 coloured1611 = result1611 := by
  rw [tree1611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1612_agree_conditional
    (child0 : tree1610 = literal1610)
    (child1 : tree1611 = literal1611) : tree1612 = literal1612 := by
  rw [tree1612_def, child0, child1]
  rfl
theorem node1612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1610 live1610 coloured1610 = result1610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1611 live1611 coloured1611 = result1611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1612 live1612 coloured1612 = result1612 := by
  rw [tree1612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1610 coloured1610 at child
  try dsimp only [live1612, coloured1612]
  rw [child]
  dsimp only [result1610]
  have child := child1
  unfold live1611 coloured1611 at child
  try dsimp only [live1612, coloured1612]
  rw [child]
  dsimp only [result1611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1613_agree_conditional : tree1613 = literal1613 := by
  rw [tree1613_def]
  rfl
theorem node1613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1613 live1613 coloured1613 = result1613 := by
  rw [tree1613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1614_agree_conditional
    (child0 : tree1612 = literal1612)
    (child1 : tree1613 = literal1613) : tree1614 = literal1614 := by
  rw [tree1614_def, child0, child1]
  rfl
theorem node1614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1612 live1612 coloured1612 = result1612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1613 live1613 coloured1613 = result1613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1614 live1614 coloured1614 = result1614 := by
  rw [tree1614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1612 coloured1612 at child
  try dsimp only [live1614, coloured1614]
  rw [child]
  dsimp only [result1612]
  have child := child1
  unfold live1613 coloured1613 at child
  try dsimp only [live1614, coloured1614]
  rw [child]
  dsimp only [result1613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1615_agree_conditional : tree1615 = literal1615 := by
  rw [tree1615_def]
  rfl
theorem node1615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1615 live1615 coloured1615 = result1615 := by
  rw [tree1615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1616_agree_conditional
    (child0 : tree1614 = literal1614)
    (child1 : tree1615 = literal1615) : tree1616 = literal1616 := by
  rw [tree1616_def, child0, child1]
  rfl
theorem node1616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1614 live1614 coloured1614 = result1614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1615 live1615 coloured1615 = result1615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1616 live1616 coloured1616 = result1616 := by
  rw [tree1616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1614 coloured1614 at child
  try dsimp only [live1616, coloured1616]
  rw [child]
  dsimp only [result1614]
  have child := child1
  unfold live1615 coloured1615 at child
  try dsimp only [live1616, coloured1616]
  rw [child]
  dsimp only [result1615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1617_agree_conditional : tree1617 = literal1617 := by
  rw [tree1617_def]
  rfl
theorem node1617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1617 live1617 coloured1617 = result1617 := by
  rw [tree1617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1618_agree_conditional
    (child0 : tree1616 = literal1616)
    (child1 : tree1617 = literal1617) : tree1618 = literal1618 := by
  rw [tree1618_def, child0, child1]
  rfl
theorem node1618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1616 live1616 coloured1616 = result1616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1617 live1617 coloured1617 = result1617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1618 live1618 coloured1618 = result1618 := by
  rw [tree1618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1616 coloured1616 at child
  try dsimp only [live1618, coloured1618]
  rw [child]
  dsimp only [result1616]
  have child := child1
  unfold live1617 coloured1617 at child
  try dsimp only [live1618, coloured1618]
  rw [child]
  dsimp only [result1617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1619_agree_conditional : tree1619 = literal1619 := by
  rw [tree1619_def]
  rfl
theorem node1619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1619 live1619 coloured1619 = result1619 := by
  rw [tree1619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1620_agree_conditional
    (child0 : tree1618 = literal1618)
    (child1 : tree1619 = literal1619) : tree1620 = literal1620 := by
  rw [tree1620_def, child0, child1]
  rfl
theorem node1620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1618 live1618 coloured1618 = result1618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1619 live1619 coloured1619 = result1619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1620 live1620 coloured1620 = result1620 := by
  rw [tree1620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1618 coloured1618 at child
  try dsimp only [live1620, coloured1620]
  rw [child]
  dsimp only [result1618]
  have child := child1
  unfold live1619 coloured1619 at child
  try dsimp only [live1620, coloured1620]
  rw [child]
  dsimp only [result1619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1621_agree_conditional : tree1621 = literal1621 := by
  rw [tree1621_def]
  rfl
theorem node1621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1621 live1621 coloured1621 = result1621 := by
  rw [tree1621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1622_agree_conditional
    (child0 : tree1620 = literal1620)
    (child1 : tree1621 = literal1621) : tree1622 = literal1622 := by
  rw [tree1622_def, child0, child1]
  rfl
theorem node1622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1620 live1620 coloured1620 = result1620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1621 live1621 coloured1621 = result1621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1622 live1622 coloured1622 = result1622 := by
  rw [tree1622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1620 coloured1620 at child
  try dsimp only [live1622, coloured1622]
  rw [child]
  dsimp only [result1620]
  have child := child1
  unfold live1621 coloured1621 at child
  try dsimp only [live1622, coloured1622]
  rw [child]
  dsimp only [result1621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1623_agree_conditional : tree1623 = literal1623 := by
  rw [tree1623_def]
  rfl
theorem node1623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1623 live1623 coloured1623 = result1623 := by
  rw [tree1623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1624_agree_conditional
    (child0 : tree1622 = literal1622)
    (child1 : tree1623 = literal1623) : tree1624 = literal1624 := by
  rw [tree1624_def, child0, child1]
  rfl
theorem node1624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1622 live1622 coloured1622 = result1622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1623 live1623 coloured1623 = result1623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1624 live1624 coloured1624 = result1624 := by
  rw [tree1624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1622 coloured1622 at child
  try dsimp only [live1624, coloured1624]
  rw [child]
  dsimp only [result1622]
  have child := child1
  unfold live1623 coloured1623 at child
  try dsimp only [live1624, coloured1624]
  rw [child]
  dsimp only [result1623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1625_agree_conditional : tree1625 = literal1625 := by
  rw [tree1625_def]
  rfl
theorem node1625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1625 live1625 coloured1625 = result1625 := by
  rw [tree1625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1626_agree_conditional
    (child0 : tree1624 = literal1624)
    (child1 : tree1625 = literal1625) : tree1626 = literal1626 := by
  rw [tree1626_def, child0, child1]
  rfl
theorem node1626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1624 live1624 coloured1624 = result1624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1625 live1625 coloured1625 = result1625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1626 live1626 coloured1626 = result1626 := by
  rw [tree1626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1624 coloured1624 at child
  try dsimp only [live1626, coloured1626]
  rw [child]
  dsimp only [result1624]
  have child := child1
  unfold live1625 coloured1625 at child
  try dsimp only [live1626, coloured1626]
  rw [child]
  dsimp only [result1625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1627_agree_conditional : tree1627 = literal1627 := by
  rw [tree1627_def]
  rfl
theorem node1627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1627 live1627 coloured1627 = result1627 := by
  rw [tree1627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1628_agree_conditional
    (child0 : tree1626 = literal1626)
    (child1 : tree1627 = literal1627) : tree1628 = literal1628 := by
  rw [tree1628_def, child0, child1]
  rfl
theorem node1628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1626 live1626 coloured1626 = result1626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1627 live1627 coloured1627 = result1627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1628 live1628 coloured1628 = result1628 := by
  rw [tree1628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1626 coloured1626 at child
  try dsimp only [live1628, coloured1628]
  rw [child]
  dsimp only [result1626]
  have child := child1
  unfold live1627 coloured1627 at child
  try dsimp only [live1628, coloured1628]
  rw [child]
  dsimp only [result1627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1629_agree_conditional : tree1629 = literal1629 := by
  rw [tree1629_def]
  rfl
theorem node1629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1629 live1629 coloured1629 = result1629 := by
  rw [tree1629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1630_agree_conditional
    (child0 : tree1628 = literal1628)
    (child1 : tree1629 = literal1629) : tree1630 = literal1630 := by
  rw [tree1630_def, child0, child1]
  rfl
theorem node1630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1628 live1628 coloured1628 = result1628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1629 live1629 coloured1629 = result1629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1630 live1630 coloured1630 = result1630 := by
  rw [tree1630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1628 coloured1628 at child
  try dsimp only [live1630, coloured1630]
  rw [child]
  dsimp only [result1628]
  have child := child1
  unfold live1629 coloured1629 at child
  try dsimp only [live1630, coloured1630]
  rw [child]
  dsimp only [result1629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1631_agree_conditional : tree1631 = literal1631 := by
  rw [tree1631_def]
  rfl
theorem node1631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1631 live1631 coloured1631 = result1631 := by
  rw [tree1631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
