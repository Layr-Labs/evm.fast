import InitECandidate.Proofs.ClashStages713.Proof15
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree1536_agree : tree1536 = literal1536 := by
  rw [tree1536_def, tree1534_agree, tree1535_agree]
  rfl
theorem node1536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1536 live1536 coloured1536 = result1536 := by
  rw [tree1536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1534_eq
  unfold live1534 coloured1534 at child
  try dsimp only [live1536, coloured1536]
  rw [child]
  dsimp only [result1534]
  have child := node1535_eq
  unfold live1535 coloured1535 at child
  try dsimp only [live1536, coloured1536]
  rw [child]
  dsimp only [result1535]
  try dsimp only [colour, result1536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1537_agree : tree1537 = literal1537 := by
  rw [tree1537_def]
  rfl
theorem node1537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1537 live1537 coloured1537 = result1537 := by
  rw [tree1537_def]
  try dsimp only [colour, result1537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1538_agree : tree1538 = literal1538 := by
  rw [tree1538_def, tree1536_agree, tree1537_agree]
  rfl
theorem node1538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1538 live1538 coloured1538 = result1538 := by
  rw [tree1538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1536_eq
  unfold live1536 coloured1536 at child
  try dsimp only [live1538, coloured1538]
  rw [child]
  dsimp only [result1536]
  have child := node1537_eq
  unfold live1537 coloured1537 at child
  try dsimp only [live1538, coloured1538]
  rw [child]
  dsimp only [result1537]
  try dsimp only [colour, result1538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1539_agree : tree1539 = literal1539 := by
  rw [tree1539_def]
  rfl
theorem node1539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1539 live1539 coloured1539 = result1539 := by
  rw [tree1539_def]
  try dsimp only [colour, result1539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1540_agree : tree1540 = literal1540 := by
  rw [tree1540_def, tree1538_agree, tree1539_agree]
  rfl
theorem node1540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1540 live1540 coloured1540 = result1540 := by
  rw [tree1540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1538_eq
  unfold live1538 coloured1538 at child
  try dsimp only [live1540, coloured1540]
  rw [child]
  dsimp only [result1538]
  have child := node1539_eq
  unfold live1539 coloured1539 at child
  try dsimp only [live1540, coloured1540]
  rw [child]
  dsimp only [result1539]
  try dsimp only [colour, result1540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1541_agree : tree1541 = literal1541 := by
  rw [tree1541_def]
  rfl
theorem node1541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1541 live1541 coloured1541 = result1541 := by
  rw [tree1541_def]
  try dsimp only [colour, result1541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1542_agree : tree1542 = literal1542 := by
  rw [tree1542_def, tree1540_agree, tree1541_agree]
  rfl
theorem node1542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1542 live1542 coloured1542 = result1542 := by
  rw [tree1542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1540_eq
  unfold live1540 coloured1540 at child
  try dsimp only [live1542, coloured1542]
  rw [child]
  dsimp only [result1540]
  have child := node1541_eq
  unfold live1541 coloured1541 at child
  try dsimp only [live1542, coloured1542]
  rw [child]
  dsimp only [result1541]
  try dsimp only [colour, result1542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1543_agree : tree1543 = literal1543 := by
  rw [tree1543_def]
  rfl
theorem node1543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1543 live1543 coloured1543 = result1543 := by
  rw [tree1543_def]
  try dsimp only [colour, result1543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1544_agree : tree1544 = literal1544 := by
  rw [tree1544_def, tree1542_agree, tree1543_agree]
  rfl
theorem node1544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1544 live1544 coloured1544 = result1544 := by
  rw [tree1544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1542_eq
  unfold live1542 coloured1542 at child
  try dsimp only [live1544, coloured1544]
  rw [child]
  dsimp only [result1542]
  have child := node1543_eq
  unfold live1543 coloured1543 at child
  try dsimp only [live1544, coloured1544]
  rw [child]
  dsimp only [result1543]
  try dsimp only [colour, result1544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1545_agree : tree1545 = literal1545 := by
  rw [tree1545_def]
  rfl
theorem node1545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1545 live1545 coloured1545 = result1545 := by
  rw [tree1545_def]
  try dsimp only [colour, result1545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1546_agree : tree1546 = literal1546 := by
  rw [tree1546_def, tree1544_agree, tree1545_agree]
  rfl
theorem node1546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1546 live1546 coloured1546 = result1546 := by
  rw [tree1546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1544_eq
  unfold live1544 coloured1544 at child
  try dsimp only [live1546, coloured1546]
  rw [child]
  dsimp only [result1544]
  have child := node1545_eq
  unfold live1545 coloured1545 at child
  try dsimp only [live1546, coloured1546]
  rw [child]
  dsimp only [result1545]
  try dsimp only [colour, result1546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1547_agree : tree1547 = literal1547 := by
  rw [tree1547_def]
  rfl
theorem node1547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1547 live1547 coloured1547 = result1547 := by
  rw [tree1547_def]
  try dsimp only [colour, result1547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1548_agree : tree1548 = literal1548 := by
  rw [tree1548_def, tree1546_agree, tree1547_agree]
  rfl
theorem node1548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1548 live1548 coloured1548 = result1548 := by
  rw [tree1548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1546_eq
  unfold live1546 coloured1546 at child
  try dsimp only [live1548, coloured1548]
  rw [child]
  dsimp only [result1546]
  have child := node1547_eq
  unfold live1547 coloured1547 at child
  try dsimp only [live1548, coloured1548]
  rw [child]
  dsimp only [result1547]
  try dsimp only [colour, result1548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1549_agree : tree1549 = literal1549 := by
  rw [tree1549_def]
  rfl
theorem node1549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1549 live1549 coloured1549 = result1549 := by
  rw [tree1549_def]
  try dsimp only [colour, result1549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1550_agree : tree1550 = literal1550 := by
  rw [tree1550_def, tree1548_agree, tree1549_agree]
  rfl
theorem node1550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1550 live1550 coloured1550 = result1550 := by
  rw [tree1550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1548_eq
  unfold live1548 coloured1548 at child
  try dsimp only [live1550, coloured1550]
  rw [child]
  dsimp only [result1548]
  have child := node1549_eq
  unfold live1549 coloured1549 at child
  try dsimp only [live1550, coloured1550]
  rw [child]
  dsimp only [result1549]
  try dsimp only [colour, result1550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1551_agree : tree1551 = literal1551 := by
  rw [tree1551_def]
  rfl
theorem node1551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1551 live1551 coloured1551 = result1551 := by
  rw [tree1551_def]
  try dsimp only [colour, result1551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1552_agree : tree1552 = literal1552 := by
  rw [tree1552_def, tree1550_agree, tree1551_agree]
  rfl
theorem node1552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1552 live1552 coloured1552 = result1552 := by
  rw [tree1552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1550_eq
  unfold live1550 coloured1550 at child
  try dsimp only [live1552, coloured1552]
  rw [child]
  dsimp only [result1550]
  have child := node1551_eq
  unfold live1551 coloured1551 at child
  try dsimp only [live1552, coloured1552]
  rw [child]
  dsimp only [result1551]
  try dsimp only [colour, result1552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1553_agree : tree1553 = literal1553 := by
  rw [tree1553_def]
  rfl
theorem node1553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1553 live1553 coloured1553 = result1553 := by
  rw [tree1553_def]
  try dsimp only [colour, result1553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1554_agree : tree1554 = literal1554 := by
  rw [tree1554_def, tree1552_agree, tree1553_agree]
  rfl
theorem node1554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1554 live1554 coloured1554 = result1554 := by
  rw [tree1554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1552_eq
  unfold live1552 coloured1552 at child
  try dsimp only [live1554, coloured1554]
  rw [child]
  dsimp only [result1552]
  have child := node1553_eq
  unfold live1553 coloured1553 at child
  try dsimp only [live1554, coloured1554]
  rw [child]
  dsimp only [result1553]
  try dsimp only [colour, result1554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1555_agree : tree1555 = literal1555 := by
  rw [tree1555_def]
  rfl
theorem node1555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1555 live1555 coloured1555 = result1555 := by
  rw [tree1555_def]
  try dsimp only [colour, result1555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1556_agree : tree1556 = literal1556 := by
  rw [tree1556_def, tree1554_agree, tree1555_agree]
  rfl
theorem node1556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1556 live1556 coloured1556 = result1556 := by
  rw [tree1556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1554_eq
  unfold live1554 coloured1554 at child
  try dsimp only [live1556, coloured1556]
  rw [child]
  dsimp only [result1554]
  have child := node1555_eq
  unfold live1555 coloured1555 at child
  try dsimp only [live1556, coloured1556]
  rw [child]
  dsimp only [result1555]
  try dsimp only [colour, result1556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1557_agree : tree1557 = literal1557 := by
  rw [tree1557_def]
  rfl
theorem node1557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1557 live1557 coloured1557 = result1557 := by
  rw [tree1557_def]
  try dsimp only [colour, result1557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1558_agree : tree1558 = literal1558 := by
  rw [tree1558_def, tree1556_agree, tree1557_agree]
  rfl
theorem node1558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1558 live1558 coloured1558 = result1558 := by
  rw [tree1558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1556_eq
  unfold live1556 coloured1556 at child
  try dsimp only [live1558, coloured1558]
  rw [child]
  dsimp only [result1556]
  have child := node1557_eq
  unfold live1557 coloured1557 at child
  try dsimp only [live1558, coloured1558]
  rw [child]
  dsimp only [result1557]
  try dsimp only [colour, result1558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1559_agree : tree1559 = literal1559 := by
  rw [tree1559_def]
  rfl
theorem node1559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1559 live1559 coloured1559 = result1559 := by
  rw [tree1559_def]
  try dsimp only [colour, result1559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1560_agree : tree1560 = literal1560 := by
  rw [tree1560_def, tree1558_agree, tree1559_agree]
  rfl
theorem node1560_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1560 live1560 coloured1560 = result1560 := by
  rw [tree1560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1558_eq
  unfold live1558 coloured1558 at child
  try dsimp only [live1560, coloured1560]
  rw [child]
  dsimp only [result1558]
  have child := node1559_eq
  unfold live1559 coloured1559 at child
  try dsimp only [live1560, coloured1560]
  rw [child]
  dsimp only [result1559]
  try dsimp only [colour, result1560]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1561_agree : tree1561 = literal1561 := by
  rw [tree1561_def]
  rfl
theorem node1561_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1561 live1561 coloured1561 = result1561 := by
  rw [tree1561_def]
  try dsimp only [colour, result1561]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1562_agree : tree1562 = literal1562 := by
  rw [tree1562_def, tree1560_agree, tree1561_agree]
  rfl
theorem node1562_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1562 live1562 coloured1562 = result1562 := by
  rw [tree1562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1560_eq
  unfold live1560 coloured1560 at child
  try dsimp only [live1562, coloured1562]
  rw [child]
  dsimp only [result1560]
  have child := node1561_eq
  unfold live1561 coloured1561 at child
  try dsimp only [live1562, coloured1562]
  rw [child]
  dsimp only [result1561]
  try dsimp only [colour, result1562]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1563_agree : tree1563 = literal1563 := by
  rw [tree1563_def]
  rfl
theorem node1563_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1563 live1563 coloured1563 = result1563 := by
  rw [tree1563_def]
  try dsimp only [colour, result1563]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1564_agree : tree1564 = literal1564 := by
  rw [tree1564_def, tree1562_agree, tree1563_agree]
  rfl
theorem node1564_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1564 live1564 coloured1564 = result1564 := by
  rw [tree1564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1562_eq
  unfold live1562 coloured1562 at child
  try dsimp only [live1564, coloured1564]
  rw [child]
  dsimp only [result1562]
  have child := node1563_eq
  unfold live1563 coloured1563 at child
  try dsimp only [live1564, coloured1564]
  rw [child]
  dsimp only [result1563]
  try dsimp only [colour, result1564]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1565_agree : tree1565 = literal1565 := by
  rw [tree1565_def]
  rfl
theorem node1565_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1565 live1565 coloured1565 = result1565 := by
  rw [tree1565_def]
  try dsimp only [colour, result1565]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1566_agree : tree1566 = literal1566 := by
  rw [tree1566_def, tree1564_agree, tree1565_agree]
  rfl
theorem node1566_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1566 live1566 coloured1566 = result1566 := by
  rw [tree1566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1564_eq
  unfold live1564 coloured1564 at child
  try dsimp only [live1566, coloured1566]
  rw [child]
  dsimp only [result1564]
  have child := node1565_eq
  unfold live1565 coloured1565 at child
  try dsimp only [live1566, coloured1566]
  rw [child]
  dsimp only [result1565]
  try dsimp only [colour, result1566]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1567_agree : tree1567 = literal1567 := by
  rw [tree1567_def]
  rfl
theorem node1567_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1567 live1567 coloured1567 = result1567 := by
  rw [tree1567_def]
  try dsimp only [colour, result1567]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1568_agree : tree1568 = literal1568 := by
  rw [tree1568_def, tree1566_agree, tree1567_agree]
  rfl
theorem node1568_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1568 live1568 coloured1568 = result1568 := by
  rw [tree1568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1566_eq
  unfold live1566 coloured1566 at child
  try dsimp only [live1568, coloured1568]
  rw [child]
  dsimp only [result1566]
  have child := node1567_eq
  unfold live1567 coloured1567 at child
  try dsimp only [live1568, coloured1568]
  rw [child]
  dsimp only [result1567]
  try dsimp only [colour, result1568]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1569_agree : tree1569 = literal1569 := by
  rw [tree1569_def]
  rfl
theorem node1569_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1569 live1569 coloured1569 = result1569 := by
  rw [tree1569_def]
  try dsimp only [colour, result1569]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1570_agree : tree1570 = literal1570 := by
  rw [tree1570_def, tree1568_agree, tree1569_agree]
  rfl
theorem node1570_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1570 live1570 coloured1570 = result1570 := by
  rw [tree1570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1568_eq
  unfold live1568 coloured1568 at child
  try dsimp only [live1570, coloured1570]
  rw [child]
  dsimp only [result1568]
  have child := node1569_eq
  unfold live1569 coloured1569 at child
  try dsimp only [live1570, coloured1570]
  rw [child]
  dsimp only [result1569]
  try dsimp only [colour, result1570]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1571_agree : tree1571 = literal1571 := by
  rw [tree1571_def]
  rfl
theorem node1571_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1571 live1571 coloured1571 = result1571 := by
  rw [tree1571_def]
  try dsimp only [colour, result1571]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1572_agree : tree1572 = literal1572 := by
  rw [tree1572_def, tree1570_agree, tree1571_agree]
  rfl
theorem node1572_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1572 live1572 coloured1572 = result1572 := by
  rw [tree1572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1570_eq
  unfold live1570 coloured1570 at child
  try dsimp only [live1572, coloured1572]
  rw [child]
  dsimp only [result1570]
  have child := node1571_eq
  unfold live1571 coloured1571 at child
  try dsimp only [live1572, coloured1572]
  rw [child]
  dsimp only [result1571]
  try dsimp only [colour, result1572]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1573_agree : tree1573 = literal1573 := by
  rw [tree1573_def]
  rfl
theorem node1573_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1573 live1573 coloured1573 = result1573 := by
  rw [tree1573_def]
  try dsimp only [colour, result1573]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1574_agree : tree1574 = literal1574 := by
  rw [tree1574_def, tree1572_agree, tree1573_agree]
  rfl
theorem node1574_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1574 live1574 coloured1574 = result1574 := by
  rw [tree1574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1572_eq
  unfold live1572 coloured1572 at child
  try dsimp only [live1574, coloured1574]
  rw [child]
  dsimp only [result1572]
  have child := node1573_eq
  unfold live1573 coloured1573 at child
  try dsimp only [live1574, coloured1574]
  rw [child]
  dsimp only [result1573]
  try dsimp only [colour, result1574]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1575_agree : tree1575 = literal1575 := by
  rw [tree1575_def]
  rfl
theorem node1575_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1575 live1575 coloured1575 = result1575 := by
  rw [tree1575_def]
  try dsimp only [colour, result1575]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1576_agree : tree1576 = literal1576 := by
  rw [tree1576_def, tree1574_agree, tree1575_agree]
  rfl
theorem node1576_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1576 live1576 coloured1576 = result1576 := by
  rw [tree1576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1574_eq
  unfold live1574 coloured1574 at child
  try dsimp only [live1576, coloured1576]
  rw [child]
  dsimp only [result1574]
  have child := node1575_eq
  unfold live1575 coloured1575 at child
  try dsimp only [live1576, coloured1576]
  rw [child]
  dsimp only [result1575]
  try dsimp only [colour, result1576]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1577_agree : tree1577 = literal1577 := by
  rw [tree1577_def]
  rfl
theorem node1577_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1577 live1577 coloured1577 = result1577 := by
  rw [tree1577_def]
  try dsimp only [colour, result1577]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1578_agree : tree1578 = literal1578 := by
  rw [tree1578_def, tree1576_agree, tree1577_agree]
  rfl
theorem node1578_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1578 live1578 coloured1578 = result1578 := by
  rw [tree1578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1576_eq
  unfold live1576 coloured1576 at child
  try dsimp only [live1578, coloured1578]
  rw [child]
  dsimp only [result1576]
  have child := node1577_eq
  unfold live1577 coloured1577 at child
  try dsimp only [live1578, coloured1578]
  rw [child]
  dsimp only [result1577]
  try dsimp only [colour, result1578]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1579_agree : tree1579 = literal1579 := by
  rw [tree1579_def]
  rfl
theorem node1579_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1579 live1579 coloured1579 = result1579 := by
  rw [tree1579_def]
  try dsimp only [colour, result1579]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1580_agree : tree1580 = literal1580 := by
  rw [tree1580_def, tree1578_agree, tree1579_agree]
  rfl
theorem node1580_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1580 live1580 coloured1580 = result1580 := by
  rw [tree1580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1578_eq
  unfold live1578 coloured1578 at child
  try dsimp only [live1580, coloured1580]
  rw [child]
  dsimp only [result1578]
  have child := node1579_eq
  unfold live1579 coloured1579 at child
  try dsimp only [live1580, coloured1580]
  rw [child]
  dsimp only [result1579]
  try dsimp only [colour, result1580]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1581_agree : tree1581 = literal1581 := by
  rw [tree1581_def]
  rfl
theorem node1581_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1581 live1581 coloured1581 = result1581 := by
  rw [tree1581_def]
  try dsimp only [colour, result1581]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1582_agree : tree1582 = literal1582 := by
  rw [tree1582_def, tree1580_agree, tree1581_agree]
  rfl
theorem node1582_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1582 live1582 coloured1582 = result1582 := by
  rw [tree1582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1580_eq
  unfold live1580 coloured1580 at child
  try dsimp only [live1582, coloured1582]
  rw [child]
  dsimp only [result1580]
  have child := node1581_eq
  unfold live1581 coloured1581 at child
  try dsimp only [live1582, coloured1582]
  rw [child]
  dsimp only [result1581]
  try dsimp only [colour, result1582]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1583_agree : tree1583 = literal1583 := by
  rw [tree1583_def]
  rfl
theorem node1583_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1583 live1583 coloured1583 = result1583 := by
  rw [tree1583_def]
  try dsimp only [colour, result1583]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1584_agree : tree1584 = literal1584 := by
  rw [tree1584_def, tree1582_agree, tree1583_agree]
  rfl
theorem node1584_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1584 live1584 coloured1584 = result1584 := by
  rw [tree1584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1582_eq
  unfold live1582 coloured1582 at child
  try dsimp only [live1584, coloured1584]
  rw [child]
  dsimp only [result1582]
  have child := node1583_eq
  unfold live1583 coloured1583 at child
  try dsimp only [live1584, coloured1584]
  rw [child]
  dsimp only [result1583]
  try dsimp only [colour, result1584]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1585_agree : tree1585 = literal1585 := by
  rw [tree1585_def]
  rfl
theorem node1585_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1585 live1585 coloured1585 = result1585 := by
  rw [tree1585_def]
  try dsimp only [colour, result1585]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1586_agree : tree1586 = literal1586 := by
  rw [tree1586_def, tree1584_agree, tree1585_agree]
  rfl
theorem node1586_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1586 live1586 coloured1586 = result1586 := by
  rw [tree1586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1584_eq
  unfold live1584 coloured1584 at child
  try dsimp only [live1586, coloured1586]
  rw [child]
  dsimp only [result1584]
  have child := node1585_eq
  unfold live1585 coloured1585 at child
  try dsimp only [live1586, coloured1586]
  rw [child]
  dsimp only [result1585]
  try dsimp only [colour, result1586]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1587_agree : tree1587 = literal1587 := by
  rw [tree1587_def]
  rfl
theorem node1587_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1587 live1587 coloured1587 = result1587 := by
  rw [tree1587_def]
  try dsimp only [colour, result1587]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1588_agree : tree1588 = literal1588 := by
  rw [tree1588_def, tree1586_agree, tree1587_agree]
  rfl
theorem node1588_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1588 live1588 coloured1588 = result1588 := by
  rw [tree1588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1586_eq
  unfold live1586 coloured1586 at child
  try dsimp only [live1588, coloured1588]
  rw [child]
  dsimp only [result1586]
  have child := node1587_eq
  unfold live1587 coloured1587 at child
  try dsimp only [live1588, coloured1588]
  rw [child]
  dsimp only [result1587]
  try dsimp only [colour, result1588]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1589_agree : tree1589 = literal1589 := by
  rw [tree1589_def]
  rfl
theorem node1589_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1589 live1589 coloured1589 = result1589 := by
  rw [tree1589_def]
  try dsimp only [colour, result1589]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1590_agree : tree1590 = literal1590 := by
  rw [tree1590_def, tree1588_agree, tree1589_agree]
  rfl
theorem node1590_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1590 live1590 coloured1590 = result1590 := by
  rw [tree1590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1588_eq
  unfold live1588 coloured1588 at child
  try dsimp only [live1590, coloured1590]
  rw [child]
  dsimp only [result1588]
  have child := node1589_eq
  unfold live1589 coloured1589 at child
  try dsimp only [live1590, coloured1590]
  rw [child]
  dsimp only [result1589]
  try dsimp only [colour, result1590]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1591_agree : tree1591 = literal1591 := by
  rw [tree1591_def]
  rfl
theorem node1591_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1591 live1591 coloured1591 = result1591 := by
  rw [tree1591_def]
  try dsimp only [colour, result1591]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1592_agree : tree1592 = literal1592 := by
  rw [tree1592_def, tree1590_agree, tree1591_agree]
  rfl
theorem node1592_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1592 live1592 coloured1592 = result1592 := by
  rw [tree1592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1590_eq
  unfold live1590 coloured1590 at child
  try dsimp only [live1592, coloured1592]
  rw [child]
  dsimp only [result1590]
  have child := node1591_eq
  unfold live1591 coloured1591 at child
  try dsimp only [live1592, coloured1592]
  rw [child]
  dsimp only [result1591]
  try dsimp only [colour, result1592]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1593_agree : tree1593 = literal1593 := by
  rw [tree1593_def]
  rfl
theorem node1593_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1593 live1593 coloured1593 = result1593 := by
  rw [tree1593_def]
  try dsimp only [colour, result1593]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1594_agree : tree1594 = literal1594 := by
  rw [tree1594_def, tree1592_agree, tree1593_agree]
  rfl
theorem node1594_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1594 live1594 coloured1594 = result1594 := by
  rw [tree1594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1592_eq
  unfold live1592 coloured1592 at child
  try dsimp only [live1594, coloured1594]
  rw [child]
  dsimp only [result1592]
  have child := node1593_eq
  unfold live1593 coloured1593 at child
  try dsimp only [live1594, coloured1594]
  rw [child]
  dsimp only [result1593]
  try dsimp only [colour, result1594]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1595_agree : tree1595 = literal1595 := by
  rw [tree1595_def]
  rfl
theorem node1595_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1595 live1595 coloured1595 = result1595 := by
  rw [tree1595_def]
  try dsimp only [colour, result1595]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1596_agree : tree1596 = literal1596 := by
  rw [tree1596_def, tree1594_agree, tree1595_agree]
  rfl
theorem node1596_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1596 live1596 coloured1596 = result1596 := by
  rw [tree1596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1594_eq
  unfold live1594 coloured1594 at child
  try dsimp only [live1596, coloured1596]
  rw [child]
  dsimp only [result1594]
  have child := node1595_eq
  unfold live1595 coloured1595 at child
  try dsimp only [live1596, coloured1596]
  rw [child]
  dsimp only [result1595]
  try dsimp only [colour, result1596]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1597_agree : tree1597 = literal1597 := by
  rw [tree1597_def]
  rfl
theorem node1597_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1597 live1597 coloured1597 = result1597 := by
  rw [tree1597_def]
  try dsimp only [colour, result1597]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1598_agree : tree1598 = literal1598 := by
  rw [tree1598_def, tree1596_agree, tree1597_agree]
  rfl
theorem node1598_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1598 live1598 coloured1598 = result1598 := by
  rw [tree1598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1596_eq
  unfold live1596 coloured1596 at child
  try dsimp only [live1598, coloured1598]
  rw [child]
  dsimp only [result1596]
  have child := node1597_eq
  unfold live1597 coloured1597 at child
  try dsimp only [live1598, coloured1598]
  rw [child]
  dsimp only [result1597]
  try dsimp only [colour, result1598]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1599_agree : tree1599 = literal1599 := by
  rw [tree1599_def]
  rfl
theorem node1599_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1599 live1599 coloured1599 = result1599 := by
  rw [tree1599_def]
  try dsimp only [colour, result1599]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1600_agree : tree1600 = literal1600 := by
  rw [tree1600_def, tree1598_agree, tree1599_agree]
  rfl
theorem node1600_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1600 live1600 coloured1600 = result1600 := by
  rw [tree1600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1598_eq
  unfold live1598 coloured1598 at child
  try dsimp only [live1600, coloured1600]
  rw [child]
  dsimp only [result1598]
  have child := node1599_eq
  unfold live1599 coloured1599 at child
  try dsimp only [live1600, coloured1600]
  rw [child]
  dsimp only [result1599]
  try dsimp only [colour, result1600]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1601_agree : tree1601 = literal1601 := by
  rw [tree1601_def]
  rfl
theorem node1601_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1601 live1601 coloured1601 = result1601 := by
  rw [tree1601_def]
  try dsimp only [colour, result1601]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1602_agree : tree1602 = literal1602 := by
  rw [tree1602_def, tree1600_agree, tree1601_agree]
  rfl
theorem node1602_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1602 live1602 coloured1602 = result1602 := by
  rw [tree1602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1600_eq
  unfold live1600 coloured1600 at child
  try dsimp only [live1602, coloured1602]
  rw [child]
  dsimp only [result1600]
  have child := node1601_eq
  unfold live1601 coloured1601 at child
  try dsimp only [live1602, coloured1602]
  rw [child]
  dsimp only [result1601]
  try dsimp only [colour, result1602]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1603_agree : tree1603 = literal1603 := by
  rw [tree1603_def]
  rfl
theorem node1603_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1603 live1603 coloured1603 = result1603 := by
  rw [tree1603_def]
  try dsimp only [colour, result1603]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1604_agree : tree1604 = literal1604 := by
  rw [tree1604_def, tree1602_agree, tree1603_agree]
  rfl
theorem node1604_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1604 live1604 coloured1604 = result1604 := by
  rw [tree1604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1602_eq
  unfold live1602 coloured1602 at child
  try dsimp only [live1604, coloured1604]
  rw [child]
  dsimp only [result1602]
  have child := node1603_eq
  unfold live1603 coloured1603 at child
  try dsimp only [live1604, coloured1604]
  rw [child]
  dsimp only [result1603]
  try dsimp only [colour, result1604]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1605_agree : tree1605 = literal1605 := by
  rw [tree1605_def]
  rfl
theorem node1605_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1605 live1605 coloured1605 = result1605 := by
  rw [tree1605_def]
  try dsimp only [colour, result1605]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1606_agree : tree1606 = literal1606 := by
  rw [tree1606_def, tree1604_agree, tree1605_agree]
  rfl
theorem node1606_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1606 live1606 coloured1606 = result1606 := by
  rw [tree1606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1604_eq
  unfold live1604 coloured1604 at child
  try dsimp only [live1606, coloured1606]
  rw [child]
  dsimp only [result1604]
  have child := node1605_eq
  unfold live1605 coloured1605 at child
  try dsimp only [live1606, coloured1606]
  rw [child]
  dsimp only [result1605]
  try dsimp only [colour, result1606]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1607_agree : tree1607 = literal1607 := by
  rw [tree1607_def]
  rfl
theorem node1607_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1607 live1607 coloured1607 = result1607 := by
  rw [tree1607_def]
  try dsimp only [colour, result1607]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1608_agree : tree1608 = literal1608 := by
  rw [tree1608_def, tree1606_agree, tree1607_agree]
  rfl
theorem node1608_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1608 live1608 coloured1608 = result1608 := by
  rw [tree1608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1606_eq
  unfold live1606 coloured1606 at child
  try dsimp only [live1608, coloured1608]
  rw [child]
  dsimp only [result1606]
  have child := node1607_eq
  unfold live1607 coloured1607 at child
  try dsimp only [live1608, coloured1608]
  rw [child]
  dsimp only [result1607]
  try dsimp only [colour, result1608]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1609_agree : tree1609 = literal1609 := by
  rw [tree1609_def]
  rfl
theorem node1609_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1609 live1609 coloured1609 = result1609 := by
  rw [tree1609_def]
  try dsimp only [colour, result1609]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1610_agree : tree1610 = literal1610 := by
  rw [tree1610_def, tree1608_agree, tree1609_agree]
  rfl
theorem node1610_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1610 live1610 coloured1610 = result1610 := by
  rw [tree1610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1608_eq
  unfold live1608 coloured1608 at child
  try dsimp only [live1610, coloured1610]
  rw [child]
  dsimp only [result1608]
  have child := node1609_eq
  unfold live1609 coloured1609 at child
  try dsimp only [live1610, coloured1610]
  rw [child]
  dsimp only [result1609]
  try dsimp only [colour, result1610]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1611_agree : tree1611 = literal1611 := by
  rw [tree1611_def]
  rfl
theorem node1611_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1611 live1611 coloured1611 = result1611 := by
  rw [tree1611_def]
  try dsimp only [colour, result1611]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1612_agree : tree1612 = literal1612 := by
  rw [tree1612_def, tree1610_agree, tree1611_agree]
  rfl
theorem node1612_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1612 live1612 coloured1612 = result1612 := by
  rw [tree1612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1610_eq
  unfold live1610 coloured1610 at child
  try dsimp only [live1612, coloured1612]
  rw [child]
  dsimp only [result1610]
  have child := node1611_eq
  unfold live1611 coloured1611 at child
  try dsimp only [live1612, coloured1612]
  rw [child]
  dsimp only [result1611]
  try dsimp only [colour, result1612]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1613_agree : tree1613 = literal1613 := by
  rw [tree1613_def]
  rfl
theorem node1613_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1613 live1613 coloured1613 = result1613 := by
  rw [tree1613_def]
  try dsimp only [colour, result1613]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1614_agree : tree1614 = literal1614 := by
  rw [tree1614_def, tree1612_agree, tree1613_agree]
  rfl
theorem node1614_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1614 live1614 coloured1614 = result1614 := by
  rw [tree1614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1612_eq
  unfold live1612 coloured1612 at child
  try dsimp only [live1614, coloured1614]
  rw [child]
  dsimp only [result1612]
  have child := node1613_eq
  unfold live1613 coloured1613 at child
  try dsimp only [live1614, coloured1614]
  rw [child]
  dsimp only [result1613]
  try dsimp only [colour, result1614]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1615_agree : tree1615 = literal1615 := by
  rw [tree1615_def]
  rfl
theorem node1615_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1615 live1615 coloured1615 = result1615 := by
  rw [tree1615_def]
  try dsimp only [colour, result1615]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1616_agree : tree1616 = literal1616 := by
  rw [tree1616_def, tree1614_agree, tree1615_agree]
  rfl
theorem node1616_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1616 live1616 coloured1616 = result1616 := by
  rw [tree1616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1614_eq
  unfold live1614 coloured1614 at child
  try dsimp only [live1616, coloured1616]
  rw [child]
  dsimp only [result1614]
  have child := node1615_eq
  unfold live1615 coloured1615 at child
  try dsimp only [live1616, coloured1616]
  rw [child]
  dsimp only [result1615]
  try dsimp only [colour, result1616]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1617_agree : tree1617 = literal1617 := by
  rw [tree1617_def]
  rfl
theorem node1617_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1617 live1617 coloured1617 = result1617 := by
  rw [tree1617_def]
  try dsimp only [colour, result1617]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1618_agree : tree1618 = literal1618 := by
  rw [tree1618_def, tree1616_agree, tree1617_agree]
  rfl
theorem node1618_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1618 live1618 coloured1618 = result1618 := by
  rw [tree1618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1616_eq
  unfold live1616 coloured1616 at child
  try dsimp only [live1618, coloured1618]
  rw [child]
  dsimp only [result1616]
  have child := node1617_eq
  unfold live1617 coloured1617 at child
  try dsimp only [live1618, coloured1618]
  rw [child]
  dsimp only [result1617]
  try dsimp only [colour, result1618]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1619_agree : tree1619 = literal1619 := by
  rw [tree1619_def]
  rfl
theorem node1619_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1619 live1619 coloured1619 = result1619 := by
  rw [tree1619_def]
  try dsimp only [colour, result1619]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1620_agree : tree1620 = literal1620 := by
  rw [tree1620_def, tree1618_agree, tree1619_agree]
  rfl
theorem node1620_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1620 live1620 coloured1620 = result1620 := by
  rw [tree1620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1618_eq
  unfold live1618 coloured1618 at child
  try dsimp only [live1620, coloured1620]
  rw [child]
  dsimp only [result1618]
  have child := node1619_eq
  unfold live1619 coloured1619 at child
  try dsimp only [live1620, coloured1620]
  rw [child]
  dsimp only [result1619]
  try dsimp only [colour, result1620]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1621_agree : tree1621 = literal1621 := by
  rw [tree1621_def]
  rfl
theorem node1621_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1621 live1621 coloured1621 = result1621 := by
  rw [tree1621_def]
  try dsimp only [colour, result1621]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1622_agree : tree1622 = literal1622 := by
  rw [tree1622_def, tree1620_agree, tree1621_agree]
  rfl
theorem node1622_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1622 live1622 coloured1622 = result1622 := by
  rw [tree1622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1620_eq
  unfold live1620 coloured1620 at child
  try dsimp only [live1622, coloured1622]
  rw [child]
  dsimp only [result1620]
  have child := node1621_eq
  unfold live1621 coloured1621 at child
  try dsimp only [live1622, coloured1622]
  rw [child]
  dsimp only [result1621]
  try dsimp only [colour, result1622]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1623_agree : tree1623 = literal1623 := by
  rw [tree1623_def]
  rfl
theorem node1623_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1623 live1623 coloured1623 = result1623 := by
  rw [tree1623_def]
  try dsimp only [colour, result1623]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1624_agree : tree1624 = literal1624 := by
  rw [tree1624_def, tree1622_agree, tree1623_agree]
  rfl
theorem node1624_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1624 live1624 coloured1624 = result1624 := by
  rw [tree1624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1622_eq
  unfold live1622 coloured1622 at child
  try dsimp only [live1624, coloured1624]
  rw [child]
  dsimp only [result1622]
  have child := node1623_eq
  unfold live1623 coloured1623 at child
  try dsimp only [live1624, coloured1624]
  rw [child]
  dsimp only [result1623]
  try dsimp only [colour, result1624]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1625_agree : tree1625 = literal1625 := by
  rw [tree1625_def]
  rfl
theorem node1625_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1625 live1625 coloured1625 = result1625 := by
  rw [tree1625_def]
  try dsimp only [colour, result1625]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1626_agree : tree1626 = literal1626 := by
  rw [tree1626_def, tree1624_agree, tree1625_agree]
  rfl
theorem node1626_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1626 live1626 coloured1626 = result1626 := by
  rw [tree1626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1624_eq
  unfold live1624 coloured1624 at child
  try dsimp only [live1626, coloured1626]
  rw [child]
  dsimp only [result1624]
  have child := node1625_eq
  unfold live1625 coloured1625 at child
  try dsimp only [live1626, coloured1626]
  rw [child]
  dsimp only [result1625]
  try dsimp only [colour, result1626]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1627_agree : tree1627 = literal1627 := by
  rw [tree1627_def]
  rfl
theorem node1627_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1627 live1627 coloured1627 = result1627 := by
  rw [tree1627_def]
  try dsimp only [colour, result1627]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1628_agree : tree1628 = literal1628 := by
  rw [tree1628_def, tree1626_agree, tree1627_agree]
  rfl
theorem node1628_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1628 live1628 coloured1628 = result1628 := by
  rw [tree1628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1626_eq
  unfold live1626 coloured1626 at child
  try dsimp only [live1628, coloured1628]
  rw [child]
  dsimp only [result1626]
  have child := node1627_eq
  unfold live1627 coloured1627 at child
  try dsimp only [live1628, coloured1628]
  rw [child]
  dsimp only [result1627]
  try dsimp only [colour, result1628]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1629_agree : tree1629 = literal1629 := by
  rw [tree1629_def]
  rfl
theorem node1629_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1629 live1629 coloured1629 = result1629 := by
  rw [tree1629_def]
  try dsimp only [colour, result1629]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1630_agree : tree1630 = literal1630 := by
  rw [tree1630_def, tree1628_agree, tree1629_agree]
  rfl
theorem node1630_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1630 live1630 coloured1630 = result1630 := by
  rw [tree1630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1628_eq
  unfold live1628 coloured1628 at child
  try dsimp only [live1630, coloured1630]
  rw [child]
  dsimp only [result1628]
  have child := node1629_eq
  unfold live1629 coloured1629 at child
  try dsimp only [live1630, coloured1630]
  rw [child]
  dsimp only [result1629]
  try dsimp only [colour, result1630]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1631_agree : tree1631 = literal1631 := by
  rw [tree1631_def]
  rfl
theorem node1631_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1631 live1631 coloured1631 = result1631 := by
  rw [tree1631_def]
  try dsimp only [colour, result1631]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
