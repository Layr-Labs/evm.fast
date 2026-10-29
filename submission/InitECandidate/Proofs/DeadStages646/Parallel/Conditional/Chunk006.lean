import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages646.Parallel.Data.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages646.Parallel
theorem node1536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1536 value849 value1 value2 = (output1536, value850, value1) := by
  rw [input1536_def, output1536_def]
  kernel_rfl

theorem node1537_cond_eq
    (child1535 : Flapjack.WordAlloc.removeDeadStructural input1535 value848 value1 value2 = (output1535, value849, value1))
    (child1536 : Flapjack.WordAlloc.removeDeadStructural input1536 value849 value1 value2 = (output1536, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input1537 value848 value1 value2 = (output1537, value850, value1) := by
  rw [input1537_def, output1537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1535]
  try dsimp only
  rw [child1536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1535_skip, output1536_skip]
  kernel_rfl

theorem node1538_cond_eq
    (child1534 : Flapjack.WordAlloc.removeDeadStructural input1534 value846 value1 value2 = (output1534, value848, value1))
    (child1537 : Flapjack.WordAlloc.removeDeadStructural input1537 value848 value1 value2 = (output1537, value850, value1)) : Flapjack.WordAlloc.removeDeadStructural input1538 value846 value1 value2 = (output1538, value850, value1) := by
  rw [input1538_def, output1538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1534]
  try dsimp only
  rw [child1537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1534_skip, output1537_skip]
  kernel_rfl

theorem node1539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1539 value850 value1 value2 = (output1539, value851, value1) := by
  rw [input1539_def, output1539_def]
  kernel_rfl

theorem node1540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1540 value851 value1 value2 = (output1540, value852, value1) := by
  rw [input1540_def, output1540_def]
  kernel_rfl

theorem node1541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1541 value852 value1 value2 = (output1541, value853, value1) := by
  rw [input1541_def, output1541_def]
  kernel_rfl

theorem node1542_cond_eq
    (child1540 : Flapjack.WordAlloc.removeDeadStructural input1540 value851 value1 value2 = (output1540, value852, value1))
    (child1541 : Flapjack.WordAlloc.removeDeadStructural input1541 value852 value1 value2 = (output1541, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input1542 value851 value1 value2 = (output1542, value853, value1) := by
  rw [input1542_def, output1542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1540]
  try dsimp only
  rw [child1541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1540_skip, output1541_skip]
  kernel_rfl

theorem node1543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1543 value853 value1 value2 = (output1543, value854, value1) := by
  rw [input1543_def, output1543_def]
  kernel_rfl

theorem node1544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1544 value854 value1 value2 = (output1544, value855, value1) := by
  rw [input1544_def, output1544_def]
  kernel_rfl

theorem node1545_cond_eq
    (child1543 : Flapjack.WordAlloc.removeDeadStructural input1543 value853 value1 value2 = (output1543, value854, value1))
    (child1544 : Flapjack.WordAlloc.removeDeadStructural input1544 value854 value1 value2 = (output1544, value855, value1)) : Flapjack.WordAlloc.removeDeadStructural input1545 value853 value1 value2 = (output1545, value855, value1) := by
  rw [input1545_def, output1545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1543]
  try dsimp only
  rw [child1544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1543_skip, output1544_skip]
  kernel_rfl

theorem node1546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1546 value855 value1 value2 = (output1546, value856, value1) := by
  rw [input1546_def, output1546_def]
  kernel_rfl

theorem node1547_cond_eq
    (child1545 : Flapjack.WordAlloc.removeDeadStructural input1545 value853 value1 value2 = (output1545, value855, value1))
    (child1546 : Flapjack.WordAlloc.removeDeadStructural input1546 value855 value1 value2 = (output1546, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1547 value853 value1 value2 = (output1547, value856, value1) := by
  rw [input1547_def, output1547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1545]
  try dsimp only
  rw [child1546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1545_skip, output1546_skip]
  kernel_rfl

theorem node1548_cond_eq
    (child1542 : Flapjack.WordAlloc.removeDeadStructural input1542 value851 value1 value2 = (output1542, value853, value1))
    (child1547 : Flapjack.WordAlloc.removeDeadStructural input1547 value853 value1 value2 = (output1547, value856, value1)) : Flapjack.WordAlloc.removeDeadStructural input1548 value851 value1 value2 = (output1548, value856, value1) := by
  rw [input1548_def, output1548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1542]
  try dsimp only
  rw [child1547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1542_skip, output1547_skip]
  kernel_rfl

theorem node1549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1549 value856 value1 value2 = (output1549, value857, value1) := by
  rw [input1549_def, output1549_def]
  kernel_rfl

theorem node1550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1550 value857 value1 value2 = (output1550, value858, value1) := by
  rw [input1550_def, output1550_def]
  kernel_rfl

theorem node1551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1551 value858 value1 value2 = (output1551, value859, value1) := by
  rw [input1551_def, output1551_def]
  kernel_rfl

theorem node1552_cond_eq
    (child1550 : Flapjack.WordAlloc.removeDeadStructural input1550 value857 value1 value2 = (output1550, value858, value1))
    (child1551 : Flapjack.WordAlloc.removeDeadStructural input1551 value858 value1 value2 = (output1551, value859, value1)) : Flapjack.WordAlloc.removeDeadStructural input1552 value857 value1 value2 = (output1552, value859, value1) := by
  rw [input1552_def, output1552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1550]
  try dsimp only
  rw [child1551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1550_skip, output1551_skip]
  kernel_rfl

theorem node1553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1553 value859 value1 value2 = (output1553, value860, value1) := by
  rw [input1553_def, output1553_def]
  kernel_rfl

theorem node1554_cond_eq
    (child1552 : Flapjack.WordAlloc.removeDeadStructural input1552 value857 value1 value2 = (output1552, value859, value1))
    (child1553 : Flapjack.WordAlloc.removeDeadStructural input1553 value859 value1 value2 = (output1553, value860, value1)) : Flapjack.WordAlloc.removeDeadStructural input1554 value857 value1 value2 = (output1554, value860, value1) := by
  rw [input1554_def, output1554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1552]
  try dsimp only
  rw [child1553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1552_skip, output1553_skip]
  kernel_rfl

theorem node1555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1555 value860 value1 value2 = (output1555, value861, value1) := by
  rw [input1555_def, output1555_def]
  kernel_rfl

theorem node1556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1556 value861 value1 value2 = (output1556, value862, value1) := by
  rw [input1556_def, output1556_def]
  kernel_rfl

theorem node1557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1557 value862 value1 value2 = (output1557, value863, value1) := by
  rw [input1557_def, output1557_def]
  kernel_rfl

theorem node1558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1558 value863 value1 value2 = (output1558, value864, value1) := by
  rw [input1558_def, output1558_def]
  kernel_rfl

theorem node1559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1559 value864 value1 value2 = (output1559, value865, value1) := by
  rw [input1559_def, output1559_def]
  kernel_rfl

theorem node1560_cond_eq
    (child1558 : Flapjack.WordAlloc.removeDeadStructural input1558 value863 value1 value2 = (output1558, value864, value1))
    (child1559 : Flapjack.WordAlloc.removeDeadStructural input1559 value864 value1 value2 = (output1559, value865, value1)) : Flapjack.WordAlloc.removeDeadStructural input1560 value863 value1 value2 = (output1560, value865, value1) := by
  rw [input1560_def, output1560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1558]
  try dsimp only
  rw [child1559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1558_skip, output1559_skip]
  kernel_rfl

theorem node1561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1561 value865 value1 value2 = (output1561, value866, value1) := by
  rw [input1561_def, output1561_def]
  kernel_rfl

theorem node1562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1562 value866 value1 value2 = (output1562, value867, value1) := by
  rw [input1562_def, output1562_def]
  kernel_rfl

theorem node1563_cond_eq
    (child1561 : Flapjack.WordAlloc.removeDeadStructural input1561 value865 value1 value2 = (output1561, value866, value1))
    (child1562 : Flapjack.WordAlloc.removeDeadStructural input1562 value866 value1 value2 = (output1562, value867, value1)) : Flapjack.WordAlloc.removeDeadStructural input1563 value865 value1 value2 = (output1563, value867, value1) := by
  rw [input1563_def, output1563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1561]
  try dsimp only
  rw [child1562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1561_skip, output1562_skip]
  kernel_rfl

theorem node1564_cond_eq
    (child1560 : Flapjack.WordAlloc.removeDeadStructural input1560 value863 value1 value2 = (output1560, value865, value1))
    (child1563 : Flapjack.WordAlloc.removeDeadStructural input1563 value865 value1 value2 = (output1563, value867, value1)) : Flapjack.WordAlloc.removeDeadStructural input1564 value863 value1 value2 = (output1564, value867, value1) := by
  rw [input1564_def, output1564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1560]
  try dsimp only
  rw [child1563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1560_skip, output1563_skip]
  kernel_rfl

theorem node1565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1565 value867 value1 value2 = (output1565, value868, value1) := by
  rw [input1565_def, output1565_def]
  kernel_rfl

theorem node1566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1566 value868 value1 value2 = (output1566, value869, value1) := by
  rw [input1566_def, output1566_def]
  kernel_rfl

theorem node1567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1567 value869 value1 value2 = (output1567, value870, value1) := by
  rw [input1567_def, output1567_def]
  kernel_rfl

theorem node1568_cond_eq
    (child1566 : Flapjack.WordAlloc.removeDeadStructural input1566 value868 value1 value2 = (output1566, value869, value1))
    (child1567 : Flapjack.WordAlloc.removeDeadStructural input1567 value869 value1 value2 = (output1567, value870, value1)) : Flapjack.WordAlloc.removeDeadStructural input1568 value868 value1 value2 = (output1568, value870, value1) := by
  rw [input1568_def, output1568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1566]
  try dsimp only
  rw [child1567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1566_skip, output1567_skip]
  kernel_rfl

theorem node1569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1569 value870 value1 value2 = (output1569, value871, value1) := by
  rw [input1569_def, output1569_def]
  kernel_rfl

theorem node1570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1570 value871 value1 value2 = (output1570, value872, value1) := by
  rw [input1570_def, output1570_def]
  kernel_rfl

theorem node1571_cond_eq
    (child1569 : Flapjack.WordAlloc.removeDeadStructural input1569 value870 value1 value2 = (output1569, value871, value1))
    (child1570 : Flapjack.WordAlloc.removeDeadStructural input1570 value871 value1 value2 = (output1570, value872, value1)) : Flapjack.WordAlloc.removeDeadStructural input1571 value870 value1 value2 = (output1571, value872, value1) := by
  rw [input1571_def, output1571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1569]
  try dsimp only
  rw [child1570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1569_skip, output1570_skip]
  kernel_rfl

theorem node1572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1572 value872 value1 value2 = (output1572, value873, value1) := by
  rw [input1572_def, output1572_def]
  kernel_rfl

theorem node1573_cond_eq
    (child1571 : Flapjack.WordAlloc.removeDeadStructural input1571 value870 value1 value2 = (output1571, value872, value1))
    (child1572 : Flapjack.WordAlloc.removeDeadStructural input1572 value872 value1 value2 = (output1572, value873, value1)) : Flapjack.WordAlloc.removeDeadStructural input1573 value870 value1 value2 = (output1573, value873, value1) := by
  rw [input1573_def, output1573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1571]
  try dsimp only
  rw [child1572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1571_skip, output1572_skip]
  kernel_rfl

theorem node1574_cond_eq
    (child1568 : Flapjack.WordAlloc.removeDeadStructural input1568 value868 value1 value2 = (output1568, value870, value1))
    (child1573 : Flapjack.WordAlloc.removeDeadStructural input1573 value870 value1 value2 = (output1573, value873, value1)) : Flapjack.WordAlloc.removeDeadStructural input1574 value868 value1 value2 = (output1574, value873, value1) := by
  rw [input1574_def, output1574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1568]
  try dsimp only
  rw [child1573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1568_skip, output1573_skip]
  kernel_rfl

theorem node1575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1575 value873 value1 value2 = (output1575, value874, value1) := by
  rw [input1575_def, output1575_def]
  kernel_rfl

theorem node1576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1576 value874 value1 value2 = (output1576, value875, value1) := by
  rw [input1576_def, output1576_def]
  kernel_rfl

theorem node1577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1577 value875 value1 value2 = (output1577, value876, value1) := by
  rw [input1577_def, output1577_def]
  kernel_rfl

theorem node1578_cond_eq
    (child1576 : Flapjack.WordAlloc.removeDeadStructural input1576 value874 value1 value2 = (output1576, value875, value1))
    (child1577 : Flapjack.WordAlloc.removeDeadStructural input1577 value875 value1 value2 = (output1577, value876, value1)) : Flapjack.WordAlloc.removeDeadStructural input1578 value874 value1 value2 = (output1578, value876, value1) := by
  rw [input1578_def, output1578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1576]
  try dsimp only
  rw [child1577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1576_skip, output1577_skip]
  kernel_rfl

theorem node1579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1579 value876 value1 value2 = (output1579, value877, value1) := by
  rw [input1579_def, output1579_def]
  kernel_rfl

theorem node1580_cond_eq
    (child1578 : Flapjack.WordAlloc.removeDeadStructural input1578 value874 value1 value2 = (output1578, value876, value1))
    (child1579 : Flapjack.WordAlloc.removeDeadStructural input1579 value876 value1 value2 = (output1579, value877, value1)) : Flapjack.WordAlloc.removeDeadStructural input1580 value874 value1 value2 = (output1580, value877, value1) := by
  rw [input1580_def, output1580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1578]
  try dsimp only
  rw [child1579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1578_skip, output1579_skip]
  kernel_rfl

theorem node1581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1581 value877 value1 value2 = (output1581, value878, value1) := by
  rw [input1581_def, output1581_def]
  kernel_rfl

theorem node1582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1582 value878 value1 value2 = (output1582, value879, value1) := by
  rw [input1582_def, output1582_def]
  kernel_rfl

theorem node1583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1583 value879 value1 value2 = (output1583, value880, value1) := by
  rw [input1583_def, output1583_def]
  kernel_rfl

theorem node1584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1584 value880 value1 value2 = (output1584, value881, value1) := by
  rw [input1584_def, output1584_def]
  kernel_rfl

theorem node1585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1585 value881 value1 value2 = (output1585, value882, value1) := by
  rw [input1585_def, output1585_def]
  kernel_rfl

theorem node1586_cond_eq
    (child1584 : Flapjack.WordAlloc.removeDeadStructural input1584 value880 value1 value2 = (output1584, value881, value1))
    (child1585 : Flapjack.WordAlloc.removeDeadStructural input1585 value881 value1 value2 = (output1585, value882, value1)) : Flapjack.WordAlloc.removeDeadStructural input1586 value880 value1 value2 = (output1586, value882, value1) := by
  rw [input1586_def, output1586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1584]
  try dsimp only
  rw [child1585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1584_skip, output1585_skip]
  kernel_rfl

theorem node1587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1587 value882 value1 value2 = (output1587, value883, value1) := by
  rw [input1587_def, output1587_def]
  kernel_rfl

theorem node1588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1588 value883 value1 value2 = (output1588, value884, value1) := by
  rw [input1588_def, output1588_def]
  kernel_rfl

theorem node1589_cond_eq
    (child1587 : Flapjack.WordAlloc.removeDeadStructural input1587 value882 value1 value2 = (output1587, value883, value1))
    (child1588 : Flapjack.WordAlloc.removeDeadStructural input1588 value883 value1 value2 = (output1588, value884, value1)) : Flapjack.WordAlloc.removeDeadStructural input1589 value882 value1 value2 = (output1589, value884, value1) := by
  rw [input1589_def, output1589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1587]
  try dsimp only
  rw [child1588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1587_skip, output1588_skip]
  kernel_rfl

theorem node1590_cond_eq
    (child1586 : Flapjack.WordAlloc.removeDeadStructural input1586 value880 value1 value2 = (output1586, value882, value1))
    (child1589 : Flapjack.WordAlloc.removeDeadStructural input1589 value882 value1 value2 = (output1589, value884, value1)) : Flapjack.WordAlloc.removeDeadStructural input1590 value880 value1 value2 = (output1590, value884, value1) := by
  rw [input1590_def, output1590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1586]
  try dsimp only
  rw [child1589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1586_skip, output1589_skip]
  kernel_rfl

theorem node1591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1591 value884 value1 value2 = (output1591, value885, value1) := by
  rw [input1591_def, output1591_def]
  kernel_rfl

theorem node1592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1592 value885 value1 value2 = (output1592, value886, value1) := by
  rw [input1592_def, output1592_def]
  kernel_rfl

theorem node1593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1593 value886 value1 value2 = (output1593, value887, value1) := by
  rw [input1593_def, output1593_def]
  kernel_rfl

theorem node1594_cond_eq
    (child1592 : Flapjack.WordAlloc.removeDeadStructural input1592 value885 value1 value2 = (output1592, value886, value1))
    (child1593 : Flapjack.WordAlloc.removeDeadStructural input1593 value886 value1 value2 = (output1593, value887, value1)) : Flapjack.WordAlloc.removeDeadStructural input1594 value885 value1 value2 = (output1594, value887, value1) := by
  rw [input1594_def, output1594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1592]
  try dsimp only
  rw [child1593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1592_skip, output1593_skip]
  kernel_rfl

theorem node1595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1595 value887 value1 value2 = (output1595, value888, value1) := by
  rw [input1595_def, output1595_def]
  kernel_rfl

theorem node1596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1596 value888 value1 value2 = (output1596, value889, value1) := by
  rw [input1596_def, output1596_def]
  kernel_rfl

theorem node1597_cond_eq
    (child1595 : Flapjack.WordAlloc.removeDeadStructural input1595 value887 value1 value2 = (output1595, value888, value1))
    (child1596 : Flapjack.WordAlloc.removeDeadStructural input1596 value888 value1 value2 = (output1596, value889, value1)) : Flapjack.WordAlloc.removeDeadStructural input1597 value887 value1 value2 = (output1597, value889, value1) := by
  rw [input1597_def, output1597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1595]
  try dsimp only
  rw [child1596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1595_skip, output1596_skip]
  kernel_rfl

theorem node1598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1598 value889 value1 value2 = (output1598, value890, value1) := by
  rw [input1598_def, output1598_def]
  kernel_rfl

theorem node1599_cond_eq
    (child1597 : Flapjack.WordAlloc.removeDeadStructural input1597 value887 value1 value2 = (output1597, value889, value1))
    (child1598 : Flapjack.WordAlloc.removeDeadStructural input1598 value889 value1 value2 = (output1598, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input1599 value887 value1 value2 = (output1599, value890, value1) := by
  rw [input1599_def, output1599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1597]
  try dsimp only
  rw [child1598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1597_skip, output1598_skip]
  kernel_rfl

theorem node1600_cond_eq
    (child1594 : Flapjack.WordAlloc.removeDeadStructural input1594 value885 value1 value2 = (output1594, value887, value1))
    (child1599 : Flapjack.WordAlloc.removeDeadStructural input1599 value887 value1 value2 = (output1599, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input1600 value885 value1 value2 = (output1600, value890, value1) := by
  rw [input1600_def, output1600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1594]
  try dsimp only
  rw [child1599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1594_skip, output1599_skip]
  kernel_rfl

theorem node1601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1601 value890 value1 value2 = (output1601, value891, value1) := by
  rw [input1601_def, output1601_def]
  kernel_rfl

theorem node1602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1602 value891 value1 value2 = (output1602, value892, value1) := by
  rw [input1602_def, output1602_def]
  kernel_rfl

theorem node1603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1603 value892 value1 value2 = (output1603, value893, value1) := by
  rw [input1603_def, output1603_def]
  kernel_rfl

theorem node1604_cond_eq
    (child1602 : Flapjack.WordAlloc.removeDeadStructural input1602 value891 value1 value2 = (output1602, value892, value1))
    (child1603 : Flapjack.WordAlloc.removeDeadStructural input1603 value892 value1 value2 = (output1603, value893, value1)) : Flapjack.WordAlloc.removeDeadStructural input1604 value891 value1 value2 = (output1604, value893, value1) := by
  rw [input1604_def, output1604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1602]
  try dsimp only
  rw [child1603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1602_skip, output1603_skip]
  kernel_rfl

theorem node1605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1605 value893 value1 value2 = (output1605, value894, value1) := by
  rw [input1605_def, output1605_def]
  kernel_rfl

theorem node1606_cond_eq
    (child1604 : Flapjack.WordAlloc.removeDeadStructural input1604 value891 value1 value2 = (output1604, value893, value1))
    (child1605 : Flapjack.WordAlloc.removeDeadStructural input1605 value893 value1 value2 = (output1605, value894, value1)) : Flapjack.WordAlloc.removeDeadStructural input1606 value891 value1 value2 = (output1606, value894, value1) := by
  rw [input1606_def, output1606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1604]
  try dsimp only
  rw [child1605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1604_skip, output1605_skip]
  kernel_rfl

theorem node1607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1607 value894 value1 value2 = (output1607, value895, value1) := by
  rw [input1607_def, output1607_def]
  kernel_rfl

theorem node1608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1608 value895 value1 value2 = (output1608, value896, value1) := by
  rw [input1608_def, output1608_def]
  kernel_rfl

theorem node1609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1609 value896 value1 value2 = (output1609, value897, value1) := by
  rw [input1609_def, output1609_def]
  kernel_rfl

theorem node1610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1610 value897 value1 value2 = (output1610, value898, value1) := by
  rw [input1610_def, output1610_def]
  kernel_rfl

theorem node1611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1611 value898 value1 value2 = (output1611, value899, value1) := by
  rw [input1611_def, output1611_def]
  kernel_rfl

theorem node1612_cond_eq
    (child1610 : Flapjack.WordAlloc.removeDeadStructural input1610 value897 value1 value2 = (output1610, value898, value1))
    (child1611 : Flapjack.WordAlloc.removeDeadStructural input1611 value898 value1 value2 = (output1611, value899, value1)) : Flapjack.WordAlloc.removeDeadStructural input1612 value897 value1 value2 = (output1612, value899, value1) := by
  rw [input1612_def, output1612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1610]
  try dsimp only
  rw [child1611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1610_skip, output1611_skip]
  kernel_rfl

theorem node1613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1613 value899 value1 value2 = (output1613, value900, value1) := by
  rw [input1613_def, output1613_def]
  kernel_rfl

theorem node1614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1614 value900 value1 value2 = (output1614, value901, value1) := by
  rw [input1614_def, output1614_def]
  kernel_rfl

theorem node1615_cond_eq
    (child1613 : Flapjack.WordAlloc.removeDeadStructural input1613 value899 value1 value2 = (output1613, value900, value1))
    (child1614 : Flapjack.WordAlloc.removeDeadStructural input1614 value900 value1 value2 = (output1614, value901, value1)) : Flapjack.WordAlloc.removeDeadStructural input1615 value899 value1 value2 = (output1615, value901, value1) := by
  rw [input1615_def, output1615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1613]
  try dsimp only
  rw [child1614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1613_skip, output1614_skip]
  kernel_rfl

theorem node1616_cond_eq
    (child1612 : Flapjack.WordAlloc.removeDeadStructural input1612 value897 value1 value2 = (output1612, value899, value1))
    (child1615 : Flapjack.WordAlloc.removeDeadStructural input1615 value899 value1 value2 = (output1615, value901, value1)) : Flapjack.WordAlloc.removeDeadStructural input1616 value897 value1 value2 = (output1616, value901, value1) := by
  rw [input1616_def, output1616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1612]
  try dsimp only
  rw [child1615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1612_skip, output1615_skip]
  kernel_rfl

theorem node1617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1617 value901 value1 value2 = (output1617, value902, value1) := by
  rw [input1617_def, output1617_def]
  kernel_rfl

theorem node1618_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1618 value902 value1 value2 = (output1618, value903, value1) := by
  rw [input1618_def, output1618_def]
  kernel_rfl

theorem node1619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1619 value903 value1 value2 = (output1619, value904, value1) := by
  rw [input1619_def, output1619_def]
  kernel_rfl

theorem node1620_cond_eq
    (child1618 : Flapjack.WordAlloc.removeDeadStructural input1618 value902 value1 value2 = (output1618, value903, value1))
    (child1619 : Flapjack.WordAlloc.removeDeadStructural input1619 value903 value1 value2 = (output1619, value904, value1)) : Flapjack.WordAlloc.removeDeadStructural input1620 value902 value1 value2 = (output1620, value904, value1) := by
  rw [input1620_def, output1620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1618]
  try dsimp only
  rw [child1619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1618_skip, output1619_skip]
  kernel_rfl

theorem node1621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1621 value904 value1 value2 = (output1621, value905, value1) := by
  rw [input1621_def, output1621_def]
  kernel_rfl

theorem node1622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1622 value905 value1 value2 = (output1622, value906, value1) := by
  rw [input1622_def, output1622_def]
  kernel_rfl

theorem node1623_cond_eq
    (child1621 : Flapjack.WordAlloc.removeDeadStructural input1621 value904 value1 value2 = (output1621, value905, value1))
    (child1622 : Flapjack.WordAlloc.removeDeadStructural input1622 value905 value1 value2 = (output1622, value906, value1)) : Flapjack.WordAlloc.removeDeadStructural input1623 value904 value1 value2 = (output1623, value906, value1) := by
  rw [input1623_def, output1623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1621]
  try dsimp only
  rw [child1622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1621_skip, output1622_skip]
  kernel_rfl

theorem node1624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1624 value906 value1 value2 = (output1624, value907, value1) := by
  rw [input1624_def, output1624_def]
  kernel_rfl

theorem node1625_cond_eq
    (child1623 : Flapjack.WordAlloc.removeDeadStructural input1623 value904 value1 value2 = (output1623, value906, value1))
    (child1624 : Flapjack.WordAlloc.removeDeadStructural input1624 value906 value1 value2 = (output1624, value907, value1)) : Flapjack.WordAlloc.removeDeadStructural input1625 value904 value1 value2 = (output1625, value907, value1) := by
  rw [input1625_def, output1625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1623]
  try dsimp only
  rw [child1624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1623_skip, output1624_skip]
  kernel_rfl

theorem node1626_cond_eq
    (child1620 : Flapjack.WordAlloc.removeDeadStructural input1620 value902 value1 value2 = (output1620, value904, value1))
    (child1625 : Flapjack.WordAlloc.removeDeadStructural input1625 value904 value1 value2 = (output1625, value907, value1)) : Flapjack.WordAlloc.removeDeadStructural input1626 value902 value1 value2 = (output1626, value907, value1) := by
  rw [input1626_def, output1626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1620]
  try dsimp only
  rw [child1625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1620_skip, output1625_skip]
  kernel_rfl

theorem node1627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1627 value907 value1 value2 = (output1627, value908, value1) := by
  rw [input1627_def, output1627_def]
  kernel_rfl

theorem node1628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1628 value908 value1 value2 = (output1628, value909, value1) := by
  rw [input1628_def, output1628_def]
  kernel_rfl

theorem node1629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1629 value909 value1 value2 = (output1629, value910, value1) := by
  rw [input1629_def, output1629_def]
  kernel_rfl

theorem node1630_cond_eq
    (child1628 : Flapjack.WordAlloc.removeDeadStructural input1628 value908 value1 value2 = (output1628, value909, value1))
    (child1629 : Flapjack.WordAlloc.removeDeadStructural input1629 value909 value1 value2 = (output1629, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1630 value908 value1 value2 = (output1630, value910, value1) := by
  rw [input1630_def, output1630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1628]
  try dsimp only
  rw [child1629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1628_skip, output1629_skip]
  kernel_rfl

theorem node1631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1631 value910 value1 value2 = (output1631, value911, value1) := by
  rw [input1631_def, output1631_def]
  kernel_rfl

theorem node1632_cond_eq
    (child1630 : Flapjack.WordAlloc.removeDeadStructural input1630 value908 value1 value2 = (output1630, value910, value1))
    (child1631 : Flapjack.WordAlloc.removeDeadStructural input1631 value910 value1 value2 = (output1631, value911, value1)) : Flapjack.WordAlloc.removeDeadStructural input1632 value908 value1 value2 = (output1632, value911, value1) := by
  rw [input1632_def, output1632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1630]
  try dsimp only
  rw [child1631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1630_skip, output1631_skip]
  kernel_rfl

theorem node1633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1633 value911 value1 value2 = (output1633, value912, value1) := by
  rw [input1633_def, output1633_def]
  kernel_rfl

theorem node1634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1634 value912 value1 value2 = (output1634, value913, value1) := by
  rw [input1634_def, output1634_def]
  kernel_rfl

theorem node1635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1635 value913 value1 value2 = (output1635, value914, value1) := by
  rw [input1635_def, output1635_def]
  kernel_rfl

theorem node1636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1636 value914 value1 value2 = (output1636, value915, value1) := by
  rw [input1636_def, output1636_def]
  kernel_rfl

theorem node1637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1637 value915 value1 value2 = (output1637, value916, value1) := by
  rw [input1637_def, output1637_def]
  kernel_rfl

theorem node1638_cond_eq
    (child1636 : Flapjack.WordAlloc.removeDeadStructural input1636 value914 value1 value2 = (output1636, value915, value1))
    (child1637 : Flapjack.WordAlloc.removeDeadStructural input1637 value915 value1 value2 = (output1637, value916, value1)) : Flapjack.WordAlloc.removeDeadStructural input1638 value914 value1 value2 = (output1638, value916, value1) := by
  rw [input1638_def, output1638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1636]
  try dsimp only
  rw [child1637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1636_skip, output1637_skip]
  kernel_rfl

theorem node1639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1639 value916 value1 value2 = (output1639, value917, value1) := by
  rw [input1639_def, output1639_def]
  kernel_rfl

theorem node1640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1640 value917 value1 value2 = (output1640, value918, value1) := by
  rw [input1640_def, output1640_def]
  kernel_rfl

theorem node1641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1641 value918 value1 value2 = (output1641, value919, value1) := by
  rw [input1641_def, output1641_def]
  kernel_rfl

theorem node1642_cond_eq
    (child1640 : Flapjack.WordAlloc.removeDeadStructural input1640 value917 value1 value2 = (output1640, value918, value1))
    (child1641 : Flapjack.WordAlloc.removeDeadStructural input1641 value918 value1 value2 = (output1641, value919, value1)) : Flapjack.WordAlloc.removeDeadStructural input1642 value917 value1 value2 = (output1642, value919, value1) := by
  rw [input1642_def, output1642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1640]
  try dsimp only
  rw [child1641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1640_skip, output1641_skip]
  kernel_rfl

theorem node1643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1643 value919 value1 value2 = (output1643, value920, value1) := by
  rw [input1643_def, output1643_def]
  kernel_rfl

theorem node1644_cond_eq
    (child1642 : Flapjack.WordAlloc.removeDeadStructural input1642 value917 value1 value2 = (output1642, value919, value1))
    (child1643 : Flapjack.WordAlloc.removeDeadStructural input1643 value919 value1 value2 = (output1643, value920, value1)) : Flapjack.WordAlloc.removeDeadStructural input1644 value917 value1 value2 = (output1644, value920, value1) := by
  rw [input1644_def, output1644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1642]
  try dsimp only
  rw [child1643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1642_skip, output1643_skip]
  kernel_rfl

theorem node1645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1645 value920 value1 value2 = (output1645, value921, value1) := by
  rw [input1645_def, output1645_def]
  kernel_rfl

theorem node1646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1646 value921 value1 value2 = (output1646, value922, value1) := by
  rw [input1646_def, output1646_def]
  kernel_rfl

theorem node1647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1647 value922 value1 value2 = (output1647, value923, value1) := by
  rw [input1647_def, output1647_def]
  kernel_rfl

theorem node1648_cond_eq
    (child1646 : Flapjack.WordAlloc.removeDeadStructural input1646 value921 value1 value2 = (output1646, value922, value1))
    (child1647 : Flapjack.WordAlloc.removeDeadStructural input1647 value922 value1 value2 = (output1647, value923, value1)) : Flapjack.WordAlloc.removeDeadStructural input1648 value921 value1 value2 = (output1648, value923, value1) := by
  rw [input1648_def, output1648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1646]
  try dsimp only
  rw [child1647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1646_skip, output1647_skip]
  kernel_rfl

theorem node1649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1649 value923 value1 value2 = (output1649, value924, value1) := by
  rw [input1649_def, output1649_def]
  kernel_rfl

theorem node1650_cond_eq
    (child1648 : Flapjack.WordAlloc.removeDeadStructural input1648 value921 value1 value2 = (output1648, value923, value1))
    (child1649 : Flapjack.WordAlloc.removeDeadStructural input1649 value923 value1 value2 = (output1649, value924, value1)) : Flapjack.WordAlloc.removeDeadStructural input1650 value921 value1 value2 = (output1650, value924, value1) := by
  rw [input1650_def, output1650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1648]
  try dsimp only
  rw [child1649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1648_skip, output1649_skip]
  kernel_rfl

theorem node1651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1651 value924 value1 value2 = (output1651, value925, value1) := by
  rw [input1651_def, output1651_def]
  kernel_rfl

theorem node1652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1652 value925 value1 value2 = (output1652, value926, value1) := by
  rw [input1652_def, output1652_def]
  kernel_rfl

theorem node1653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1653 value926 value1 value2 = (output1653, value926, value1) := by
  rw [input1653_def, output1653_def]
  kernel_rfl

theorem node1654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1654 value926 value1 value2 = (output1654, value926, value1) := by
  rw [input1654_def, output1654_def]
  kernel_rfl

theorem node1655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1655 value926 value1 value2 = (output1655, value927, value1) := by
  rw [input1655_def, output1655_def]
  kernel_rfl

theorem node1656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1656 value927 value1 value2 = (output1656, value928, value1) := by
  rw [input1656_def, output1656_def]
  kernel_rfl

theorem node1657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1657 value928 value1 value2 = (output1657, value929, value1) := by
  rw [input1657_def, output1657_def]
  kernel_rfl

theorem node1658_cond_eq
    (child1656 : Flapjack.WordAlloc.removeDeadStructural input1656 value927 value1 value2 = (output1656, value928, value1))
    (child1657 : Flapjack.WordAlloc.removeDeadStructural input1657 value928 value1 value2 = (output1657, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input1658 value927 value1 value2 = (output1658, value929, value1) := by
  rw [input1658_def, output1658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1656]
  try dsimp only
  rw [child1657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1656_skip, output1657_skip]
  kernel_rfl

theorem node1659_cond_eq
    (child1655 : Flapjack.WordAlloc.removeDeadStructural input1655 value926 value1 value2 = (output1655, value927, value1))
    (child1658 : Flapjack.WordAlloc.removeDeadStructural input1658 value927 value1 value2 = (output1658, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input1659 value926 value1 value2 = (output1659, value929, value1) := by
  rw [input1659_def, output1659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1655]
  try dsimp only
  rw [child1658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1655_skip, output1658_skip]
  kernel_rfl

theorem node1660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1660 value929 value1 value2 = (output1660, value930, value1) := by
  rw [input1660_def, output1660_def]
  kernel_rfl

theorem node1661_cond_eq
    (child1659 : Flapjack.WordAlloc.removeDeadStructural input1659 value926 value1 value2 = (output1659, value929, value1))
    (child1660 : Flapjack.WordAlloc.removeDeadStructural input1660 value929 value1 value2 = (output1660, value930, value1)) : Flapjack.WordAlloc.removeDeadStructural input1661 value926 value1 value2 = (output1661, value930, value1) := by
  rw [input1661_def, output1661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1659]
  try dsimp only
  rw [child1660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1659_skip, output1660_skip]
  kernel_rfl

theorem node1662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1662 value930 value1 value2 = (output1662, value931, value1) := by
  rw [input1662_def, output1662_def]
  kernel_rfl

theorem node1663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1663 value931 value1 value2 = (output1663, value932, value1) := by
  rw [input1663_def, output1663_def]
  kernel_rfl

theorem node1664_cond_eq
    (child1662 : Flapjack.WordAlloc.removeDeadStructural input1662 value930 value1 value2 = (output1662, value931, value1))
    (child1663 : Flapjack.WordAlloc.removeDeadStructural input1663 value931 value1 value2 = (output1663, value932, value1)) : Flapjack.WordAlloc.removeDeadStructural input1664 value930 value1 value2 = (output1664, value932, value1) := by
  rw [input1664_def, output1664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1662]
  try dsimp only
  rw [child1663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1662_skip, output1663_skip]
  kernel_rfl

theorem node1665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1665 value932 value1 value2 = (output1665, value933, value1) := by
  rw [input1665_def, output1665_def]
  kernel_rfl

theorem node1666_cond_eq
    (child1664 : Flapjack.WordAlloc.removeDeadStructural input1664 value930 value1 value2 = (output1664, value932, value1))
    (child1665 : Flapjack.WordAlloc.removeDeadStructural input1665 value932 value1 value2 = (output1665, value933, value1)) : Flapjack.WordAlloc.removeDeadStructural input1666 value930 value1 value2 = (output1666, value933, value1) := by
  rw [input1666_def, output1666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1664]
  try dsimp only
  rw [child1665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1664_skip, output1665_skip]
  kernel_rfl

theorem node1667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1667 value933 value1 value2 = (output1667, value934, value1) := by
  rw [input1667_def, output1667_def]
  kernel_rfl

theorem node1668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1668 value934 value1 value2 = (output1668, value935, value1) := by
  rw [input1668_def, output1668_def]
  kernel_rfl

theorem node1669_cond_eq
    (child1667 : Flapjack.WordAlloc.removeDeadStructural input1667 value933 value1 value2 = (output1667, value934, value1))
    (child1668 : Flapjack.WordAlloc.removeDeadStructural input1668 value934 value1 value2 = (output1668, value935, value1)) : Flapjack.WordAlloc.removeDeadStructural input1669 value933 value1 value2 = (output1669, value935, value1) := by
  rw [input1669_def, output1669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1667]
  try dsimp only
  rw [child1668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1667_skip, output1668_skip]
  kernel_rfl

theorem node1670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1670 value935 value1 value2 = (output1670, value936, value1) := by
  rw [input1670_def, output1670_def]
  kernel_rfl

theorem node1671_cond_eq
    (child1669 : Flapjack.WordAlloc.removeDeadStructural input1669 value933 value1 value2 = (output1669, value935, value1))
    (child1670 : Flapjack.WordAlloc.removeDeadStructural input1670 value935 value1 value2 = (output1670, value936, value1)) : Flapjack.WordAlloc.removeDeadStructural input1671 value933 value1 value2 = (output1671, value936, value1) := by
  rw [input1671_def, output1671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1669]
  try dsimp only
  rw [child1670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1669_skip, output1670_skip]
  kernel_rfl

theorem node1672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1672 value936 value1 value2 = (output1672, value937, value1) := by
  rw [input1672_def, output1672_def]
  kernel_rfl

theorem node1673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1673 value937 value1 value2 = (output1673, value938, value1) := by
  rw [input1673_def, output1673_def]
  kernel_rfl

theorem node1674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1674 value938 value1 value2 = (output1674, value939, value1) := by
  rw [input1674_def, output1674_def]
  kernel_rfl

theorem node1675_cond_eq
    (child1673 : Flapjack.WordAlloc.removeDeadStructural input1673 value937 value1 value2 = (output1673, value938, value1))
    (child1674 : Flapjack.WordAlloc.removeDeadStructural input1674 value938 value1 value2 = (output1674, value939, value1)) : Flapjack.WordAlloc.removeDeadStructural input1675 value937 value1 value2 = (output1675, value939, value1) := by
  rw [input1675_def, output1675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1673]
  try dsimp only
  rw [child1674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1673_skip, output1674_skip]
  kernel_rfl

theorem node1676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1676 value939 value1 value2 = (output1676, value940, value1) := by
  rw [input1676_def, output1676_def]
  kernel_rfl

theorem node1677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1677 value940 value1 value2 = (output1677, value941, value1) := by
  rw [input1677_def, output1677_def]
  kernel_rfl

theorem node1678_cond_eq
    (child1676 : Flapjack.WordAlloc.removeDeadStructural input1676 value939 value1 value2 = (output1676, value940, value1))
    (child1677 : Flapjack.WordAlloc.removeDeadStructural input1677 value940 value1 value2 = (output1677, value941, value1)) : Flapjack.WordAlloc.removeDeadStructural input1678 value939 value1 value2 = (output1678, value941, value1) := by
  rw [input1678_def, output1678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1676]
  try dsimp only
  rw [child1677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1676_skip, output1677_skip]
  kernel_rfl

theorem node1679_cond_eq
    (child1675 : Flapjack.WordAlloc.removeDeadStructural input1675 value937 value1 value2 = (output1675, value939, value1))
    (child1678 : Flapjack.WordAlloc.removeDeadStructural input1678 value939 value1 value2 = (output1678, value941, value1)) : Flapjack.WordAlloc.removeDeadStructural input1679 value937 value1 value2 = (output1679, value941, value1) := by
  rw [input1679_def, output1679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1675]
  try dsimp only
  rw [child1678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1675_skip, output1678_skip]
  kernel_rfl

theorem node1680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1680 value941 value1 value2 = (output1680, value942, value1) := by
  rw [input1680_def, output1680_def]
  kernel_rfl

theorem node1681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1681 value942 value1 value2 = (output1681, value943, value1) := by
  rw [input1681_def, output1681_def]
  kernel_rfl

theorem node1682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1682 value943 value1 value2 = (output1682, value944, value1) := by
  rw [input1682_def, output1682_def]
  kernel_rfl

theorem node1683_cond_eq
    (child1681 : Flapjack.WordAlloc.removeDeadStructural input1681 value942 value1 value2 = (output1681, value943, value1))
    (child1682 : Flapjack.WordAlloc.removeDeadStructural input1682 value943 value1 value2 = (output1682, value944, value1)) : Flapjack.WordAlloc.removeDeadStructural input1683 value942 value1 value2 = (output1683, value944, value1) := by
  rw [input1683_def, output1683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1681]
  try dsimp only
  rw [child1682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1681_skip, output1682_skip]
  kernel_rfl

theorem node1684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1684 value944 value1 value2 = (output1684, value945, value1) := by
  rw [input1684_def, output1684_def]
  kernel_rfl

theorem node1685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1685 value945 value1 value2 = (output1685, value946, value1) := by
  rw [input1685_def, output1685_def]
  kernel_rfl

theorem node1686_cond_eq
    (child1684 : Flapjack.WordAlloc.removeDeadStructural input1684 value944 value1 value2 = (output1684, value945, value1))
    (child1685 : Flapjack.WordAlloc.removeDeadStructural input1685 value945 value1 value2 = (output1685, value946, value1)) : Flapjack.WordAlloc.removeDeadStructural input1686 value944 value1 value2 = (output1686, value946, value1) := by
  rw [input1686_def, output1686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1684]
  try dsimp only
  rw [child1685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1684_skip, output1685_skip]
  kernel_rfl

theorem node1687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1687 value946 value1 value2 = (output1687, value947, value1) := by
  rw [input1687_def, output1687_def]
  kernel_rfl

theorem node1688_cond_eq
    (child1686 : Flapjack.WordAlloc.removeDeadStructural input1686 value944 value1 value2 = (output1686, value946, value1))
    (child1687 : Flapjack.WordAlloc.removeDeadStructural input1687 value946 value1 value2 = (output1687, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1688 value944 value1 value2 = (output1688, value947, value1) := by
  rw [input1688_def, output1688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1686]
  try dsimp only
  rw [child1687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1686_skip, output1687_skip]
  kernel_rfl

theorem node1689_cond_eq
    (child1683 : Flapjack.WordAlloc.removeDeadStructural input1683 value942 value1 value2 = (output1683, value944, value1))
    (child1688 : Flapjack.WordAlloc.removeDeadStructural input1688 value944 value1 value2 = (output1688, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1689 value942 value1 value2 = (output1689, value947, value1) := by
  rw [input1689_def, output1689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1683]
  try dsimp only
  rw [child1688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1683_skip, output1688_skip]
  kernel_rfl

theorem node1690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1690 value947 value1 value2 = (output1690, value948, value1) := by
  rw [input1690_def, output1690_def]
  kernel_rfl

theorem node1691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1691 value948 value1 value2 = (output1691, value949, value1) := by
  rw [input1691_def, output1691_def]
  kernel_rfl

theorem node1692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1692 value949 value1 value2 = (output1692, value950, value1) := by
  rw [input1692_def, output1692_def]
  kernel_rfl

theorem node1693_cond_eq
    (child1691 : Flapjack.WordAlloc.removeDeadStructural input1691 value948 value1 value2 = (output1691, value949, value1))
    (child1692 : Flapjack.WordAlloc.removeDeadStructural input1692 value949 value1 value2 = (output1692, value950, value1)) : Flapjack.WordAlloc.removeDeadStructural input1693 value948 value1 value2 = (output1693, value950, value1) := by
  rw [input1693_def, output1693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1691]
  try dsimp only
  rw [child1692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1691_skip, output1692_skip]
  kernel_rfl

theorem node1694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1694 value950 value1 value2 = (output1694, value951, value1) := by
  rw [input1694_def, output1694_def]
  kernel_rfl

theorem node1695_cond_eq
    (child1693 : Flapjack.WordAlloc.removeDeadStructural input1693 value948 value1 value2 = (output1693, value950, value1))
    (child1694 : Flapjack.WordAlloc.removeDeadStructural input1694 value950 value1 value2 = (output1694, value951, value1)) : Flapjack.WordAlloc.removeDeadStructural input1695 value948 value1 value2 = (output1695, value951, value1) := by
  rw [input1695_def, output1695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1693]
  try dsimp only
  rw [child1694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1693_skip, output1694_skip]
  kernel_rfl

theorem node1696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1696 value951 value1 value2 = (output1696, value952, value1) := by
  rw [input1696_def, output1696_def]
  kernel_rfl

theorem node1697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1697 value952 value1 value2 = (output1697, value953, value1) := by
  rw [input1697_def, output1697_def]
  kernel_rfl

theorem node1698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1698 value953 value1 value2 = (output1698, value954, value1) := by
  rw [input1698_def, output1698_def]
  kernel_rfl

theorem node1699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1699 value954 value1 value2 = (output1699, value955, value1) := by
  rw [input1699_def, output1699_def]
  kernel_rfl

theorem node1700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1700 value955 value1 value2 = (output1700, value956, value1) := by
  rw [input1700_def, output1700_def]
  kernel_rfl

theorem node1701_cond_eq
    (child1699 : Flapjack.WordAlloc.removeDeadStructural input1699 value954 value1 value2 = (output1699, value955, value1))
    (child1700 : Flapjack.WordAlloc.removeDeadStructural input1700 value955 value1 value2 = (output1700, value956, value1)) : Flapjack.WordAlloc.removeDeadStructural input1701 value954 value1 value2 = (output1701, value956, value1) := by
  rw [input1701_def, output1701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1699]
  try dsimp only
  rw [child1700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1699_skip, output1700_skip]
  kernel_rfl

theorem node1702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1702 value956 value1 value2 = (output1702, value957, value1) := by
  rw [input1702_def, output1702_def]
  kernel_rfl

theorem node1703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1703 value957 value1 value2 = (output1703, value958, value1) := by
  rw [input1703_def, output1703_def]
  kernel_rfl

theorem node1704_cond_eq
    (child1702 : Flapjack.WordAlloc.removeDeadStructural input1702 value956 value1 value2 = (output1702, value957, value1))
    (child1703 : Flapjack.WordAlloc.removeDeadStructural input1703 value957 value1 value2 = (output1703, value958, value1)) : Flapjack.WordAlloc.removeDeadStructural input1704 value956 value1 value2 = (output1704, value958, value1) := by
  rw [input1704_def, output1704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1702]
  try dsimp only
  rw [child1703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1702_skip, output1703_skip]
  kernel_rfl

theorem node1705_cond_eq
    (child1701 : Flapjack.WordAlloc.removeDeadStructural input1701 value954 value1 value2 = (output1701, value956, value1))
    (child1704 : Flapjack.WordAlloc.removeDeadStructural input1704 value956 value1 value2 = (output1704, value958, value1)) : Flapjack.WordAlloc.removeDeadStructural input1705 value954 value1 value2 = (output1705, value958, value1) := by
  rw [input1705_def, output1705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1701]
  try dsimp only
  rw [child1704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1701_skip, output1704_skip]
  kernel_rfl

theorem node1706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1706 value958 value1 value2 = (output1706, value959, value1) := by
  rw [input1706_def, output1706_def]
  kernel_rfl

theorem node1707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1707 value959 value1 value2 = (output1707, value960, value1) := by
  rw [input1707_def, output1707_def]
  kernel_rfl

theorem node1708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1708 value960 value1 value2 = (output1708, value961, value1) := by
  rw [input1708_def, output1708_def]
  kernel_rfl

theorem node1709_cond_eq
    (child1707 : Flapjack.WordAlloc.removeDeadStructural input1707 value959 value1 value2 = (output1707, value960, value1))
    (child1708 : Flapjack.WordAlloc.removeDeadStructural input1708 value960 value1 value2 = (output1708, value961, value1)) : Flapjack.WordAlloc.removeDeadStructural input1709 value959 value1 value2 = (output1709, value961, value1) := by
  rw [input1709_def, output1709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1707]
  try dsimp only
  rw [child1708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1707_skip, output1708_skip]
  kernel_rfl

theorem node1710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1710 value961 value1 value2 = (output1710, value962, value1) := by
  rw [input1710_def, output1710_def]
  kernel_rfl

theorem node1711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1711 value962 value1 value2 = (output1711, value963, value1) := by
  rw [input1711_def, output1711_def]
  kernel_rfl

theorem node1712_cond_eq
    (child1710 : Flapjack.WordAlloc.removeDeadStructural input1710 value961 value1 value2 = (output1710, value962, value1))
    (child1711 : Flapjack.WordAlloc.removeDeadStructural input1711 value962 value1 value2 = (output1711, value963, value1)) : Flapjack.WordAlloc.removeDeadStructural input1712 value961 value1 value2 = (output1712, value963, value1) := by
  rw [input1712_def, output1712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1710]
  try dsimp only
  rw [child1711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1710_skip, output1711_skip]
  kernel_rfl

theorem node1713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1713 value963 value1 value2 = (output1713, value964, value1) := by
  rw [input1713_def, output1713_def]
  kernel_rfl

theorem node1714_cond_eq
    (child1712 : Flapjack.WordAlloc.removeDeadStructural input1712 value961 value1 value2 = (output1712, value963, value1))
    (child1713 : Flapjack.WordAlloc.removeDeadStructural input1713 value963 value1 value2 = (output1713, value964, value1)) : Flapjack.WordAlloc.removeDeadStructural input1714 value961 value1 value2 = (output1714, value964, value1) := by
  rw [input1714_def, output1714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1712]
  try dsimp only
  rw [child1713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1712_skip, output1713_skip]
  kernel_rfl

theorem node1715_cond_eq
    (child1709 : Flapjack.WordAlloc.removeDeadStructural input1709 value959 value1 value2 = (output1709, value961, value1))
    (child1714 : Flapjack.WordAlloc.removeDeadStructural input1714 value961 value1 value2 = (output1714, value964, value1)) : Flapjack.WordAlloc.removeDeadStructural input1715 value959 value1 value2 = (output1715, value964, value1) := by
  rw [input1715_def, output1715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1709]
  try dsimp only
  rw [child1714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1709_skip, output1714_skip]
  kernel_rfl

theorem node1716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1716 value964 value1 value2 = (output1716, value965, value1) := by
  rw [input1716_def, output1716_def]
  kernel_rfl

theorem node1717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1717 value965 value1 value2 = (output1717, value966, value1) := by
  rw [input1717_def, output1717_def]
  kernel_rfl

theorem node1718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1718 value966 value1 value2 = (output1718, value967, value1) := by
  rw [input1718_def, output1718_def]
  kernel_rfl

theorem node1719_cond_eq
    (child1717 : Flapjack.WordAlloc.removeDeadStructural input1717 value965 value1 value2 = (output1717, value966, value1))
    (child1718 : Flapjack.WordAlloc.removeDeadStructural input1718 value966 value1 value2 = (output1718, value967, value1)) : Flapjack.WordAlloc.removeDeadStructural input1719 value965 value1 value2 = (output1719, value967, value1) := by
  rw [input1719_def, output1719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1717]
  try dsimp only
  rw [child1718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1717_skip, output1718_skip]
  kernel_rfl

theorem node1720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1720 value967 value1 value2 = (output1720, value968, value1) := by
  rw [input1720_def, output1720_def]
  kernel_rfl

theorem node1721_cond_eq
    (child1719 : Flapjack.WordAlloc.removeDeadStructural input1719 value965 value1 value2 = (output1719, value967, value1))
    (child1720 : Flapjack.WordAlloc.removeDeadStructural input1720 value967 value1 value2 = (output1720, value968, value1)) : Flapjack.WordAlloc.removeDeadStructural input1721 value965 value1 value2 = (output1721, value968, value1) := by
  rw [input1721_def, output1721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1719]
  try dsimp only
  rw [child1720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1719_skip, output1720_skip]
  kernel_rfl

theorem node1722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1722 value968 value1 value2 = (output1722, value969, value1) := by
  rw [input1722_def, output1722_def]
  kernel_rfl

theorem node1723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1723 value969 value1 value2 = (output1723, value970, value1) := by
  rw [input1723_def, output1723_def]
  kernel_rfl

theorem node1724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1724 value970 value1 value2 = (output1724, value971, value1) := by
  rw [input1724_def, output1724_def]
  kernel_rfl

theorem node1725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1725 value971 value1 value2 = (output1725, value972, value1) := by
  rw [input1725_def, output1725_def]
  kernel_rfl

theorem node1726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1726 value972 value1 value2 = (output1726, value973, value1) := by
  rw [input1726_def, output1726_def]
  kernel_rfl

theorem node1727_cond_eq
    (child1725 : Flapjack.WordAlloc.removeDeadStructural input1725 value971 value1 value2 = (output1725, value972, value1))
    (child1726 : Flapjack.WordAlloc.removeDeadStructural input1726 value972 value1 value2 = (output1726, value973, value1)) : Flapjack.WordAlloc.removeDeadStructural input1727 value971 value1 value2 = (output1727, value973, value1) := by
  rw [input1727_def, output1727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1725]
  try dsimp only
  rw [child1726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1725_skip, output1726_skip]
  kernel_rfl

theorem node1728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1728 value973 value1 value2 = (output1728, value974, value1) := by
  rw [input1728_def, output1728_def]
  kernel_rfl

theorem node1729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1729 value974 value1 value2 = (output1729, value975, value1) := by
  rw [input1729_def, output1729_def]
  kernel_rfl

theorem node1730_cond_eq
    (child1728 : Flapjack.WordAlloc.removeDeadStructural input1728 value973 value1 value2 = (output1728, value974, value1))
    (child1729 : Flapjack.WordAlloc.removeDeadStructural input1729 value974 value1 value2 = (output1729, value975, value1)) : Flapjack.WordAlloc.removeDeadStructural input1730 value973 value1 value2 = (output1730, value975, value1) := by
  rw [input1730_def, output1730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1728]
  try dsimp only
  rw [child1729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1728_skip, output1729_skip]
  kernel_rfl

theorem node1731_cond_eq
    (child1727 : Flapjack.WordAlloc.removeDeadStructural input1727 value971 value1 value2 = (output1727, value973, value1))
    (child1730 : Flapjack.WordAlloc.removeDeadStructural input1730 value973 value1 value2 = (output1730, value975, value1)) : Flapjack.WordAlloc.removeDeadStructural input1731 value971 value1 value2 = (output1731, value975, value1) := by
  rw [input1731_def, output1731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1727]
  try dsimp only
  rw [child1730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1727_skip, output1730_skip]
  kernel_rfl

theorem node1732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1732 value975 value1 value2 = (output1732, value976, value1) := by
  rw [input1732_def, output1732_def]
  kernel_rfl

theorem node1733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1733 value976 value1 value2 = (output1733, value977, value1) := by
  rw [input1733_def, output1733_def]
  kernel_rfl

theorem node1734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1734 value977 value1 value2 = (output1734, value978, value1) := by
  rw [input1734_def, output1734_def]
  kernel_rfl

theorem node1735_cond_eq
    (child1733 : Flapjack.WordAlloc.removeDeadStructural input1733 value976 value1 value2 = (output1733, value977, value1))
    (child1734 : Flapjack.WordAlloc.removeDeadStructural input1734 value977 value1 value2 = (output1734, value978, value1)) : Flapjack.WordAlloc.removeDeadStructural input1735 value976 value1 value2 = (output1735, value978, value1) := by
  rw [input1735_def, output1735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1733]
  try dsimp only
  rw [child1734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1733_skip, output1734_skip]
  kernel_rfl

theorem node1736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1736 value978 value1 value2 = (output1736, value979, value1) := by
  rw [input1736_def, output1736_def]
  kernel_rfl

theorem node1737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1737 value979 value1 value2 = (output1737, value980, value1) := by
  rw [input1737_def, output1737_def]
  kernel_rfl

theorem node1738_cond_eq
    (child1736 : Flapjack.WordAlloc.removeDeadStructural input1736 value978 value1 value2 = (output1736, value979, value1))
    (child1737 : Flapjack.WordAlloc.removeDeadStructural input1737 value979 value1 value2 = (output1737, value980, value1)) : Flapjack.WordAlloc.removeDeadStructural input1738 value978 value1 value2 = (output1738, value980, value1) := by
  rw [input1738_def, output1738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1736]
  try dsimp only
  rw [child1737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1736_skip, output1737_skip]
  kernel_rfl

theorem node1739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1739 value980 value1 value2 = (output1739, value981, value1) := by
  rw [input1739_def, output1739_def]
  kernel_rfl

theorem node1740_cond_eq
    (child1738 : Flapjack.WordAlloc.removeDeadStructural input1738 value978 value1 value2 = (output1738, value980, value1))
    (child1739 : Flapjack.WordAlloc.removeDeadStructural input1739 value980 value1 value2 = (output1739, value981, value1)) : Flapjack.WordAlloc.removeDeadStructural input1740 value978 value1 value2 = (output1740, value981, value1) := by
  rw [input1740_def, output1740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1738]
  try dsimp only
  rw [child1739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1738_skip, output1739_skip]
  kernel_rfl

theorem node1741_cond_eq
    (child1735 : Flapjack.WordAlloc.removeDeadStructural input1735 value976 value1 value2 = (output1735, value978, value1))
    (child1740 : Flapjack.WordAlloc.removeDeadStructural input1740 value978 value1 value2 = (output1740, value981, value1)) : Flapjack.WordAlloc.removeDeadStructural input1741 value976 value1 value2 = (output1741, value981, value1) := by
  rw [input1741_def, output1741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1735]
  try dsimp only
  rw [child1740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1735_skip, output1740_skip]
  kernel_rfl

theorem node1742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1742 value981 value1 value2 = (output1742, value982, value1) := by
  rw [input1742_def, output1742_def]
  kernel_rfl

theorem node1743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1743 value982 value1 value2 = (output1743, value983, value1) := by
  rw [input1743_def, output1743_def]
  kernel_rfl

theorem node1744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1744 value983 value1 value2 = (output1744, value984, value1) := by
  rw [input1744_def, output1744_def]
  kernel_rfl

theorem node1745_cond_eq
    (child1743 : Flapjack.WordAlloc.removeDeadStructural input1743 value982 value1 value2 = (output1743, value983, value1))
    (child1744 : Flapjack.WordAlloc.removeDeadStructural input1744 value983 value1 value2 = (output1744, value984, value1)) : Flapjack.WordAlloc.removeDeadStructural input1745 value982 value1 value2 = (output1745, value984, value1) := by
  rw [input1745_def, output1745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1743]
  try dsimp only
  rw [child1744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1743_skip, output1744_skip]
  kernel_rfl

theorem node1746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1746 value984 value1 value2 = (output1746, value985, value1) := by
  rw [input1746_def, output1746_def]
  kernel_rfl

theorem node1747_cond_eq
    (child1745 : Flapjack.WordAlloc.removeDeadStructural input1745 value982 value1 value2 = (output1745, value984, value1))
    (child1746 : Flapjack.WordAlloc.removeDeadStructural input1746 value984 value1 value2 = (output1746, value985, value1)) : Flapjack.WordAlloc.removeDeadStructural input1747 value982 value1 value2 = (output1747, value985, value1) := by
  rw [input1747_def, output1747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1745]
  try dsimp only
  rw [child1746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1745_skip, output1746_skip]
  kernel_rfl

theorem node1748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1748 value985 value1 value2 = (output1748, value986, value1) := by
  rw [input1748_def, output1748_def]
  kernel_rfl

theorem node1749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1749 value986 value1 value2 = (output1749, value987, value1) := by
  rw [input1749_def, output1749_def]
  kernel_rfl

theorem node1750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1750 value987 value1 value2 = (output1750, value988, value1) := by
  rw [input1750_def, output1750_def]
  kernel_rfl

theorem node1751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1751 value988 value1 value2 = (output1751, value989, value1) := by
  rw [input1751_def, output1751_def]
  kernel_rfl

theorem node1752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1752 value989 value1 value2 = (output1752, value990, value1) := by
  rw [input1752_def, output1752_def]
  kernel_rfl

theorem node1753_cond_eq
    (child1751 : Flapjack.WordAlloc.removeDeadStructural input1751 value988 value1 value2 = (output1751, value989, value1))
    (child1752 : Flapjack.WordAlloc.removeDeadStructural input1752 value989 value1 value2 = (output1752, value990, value1)) : Flapjack.WordAlloc.removeDeadStructural input1753 value988 value1 value2 = (output1753, value990, value1) := by
  rw [input1753_def, output1753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1751]
  try dsimp only
  rw [child1752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1751_skip, output1752_skip]
  kernel_rfl

theorem node1754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1754 value990 value1 value2 = (output1754, value991, value1) := by
  rw [input1754_def, output1754_def]
  kernel_rfl

theorem node1755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1755 value991 value1 value2 = (output1755, value992, value1) := by
  rw [input1755_def, output1755_def]
  kernel_rfl

theorem node1756_cond_eq
    (child1754 : Flapjack.WordAlloc.removeDeadStructural input1754 value990 value1 value2 = (output1754, value991, value1))
    (child1755 : Flapjack.WordAlloc.removeDeadStructural input1755 value991 value1 value2 = (output1755, value992, value1)) : Flapjack.WordAlloc.removeDeadStructural input1756 value990 value1 value2 = (output1756, value992, value1) := by
  rw [input1756_def, output1756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1754]
  try dsimp only
  rw [child1755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1754_skip, output1755_skip]
  kernel_rfl

theorem node1757_cond_eq
    (child1753 : Flapjack.WordAlloc.removeDeadStructural input1753 value988 value1 value2 = (output1753, value990, value1))
    (child1756 : Flapjack.WordAlloc.removeDeadStructural input1756 value990 value1 value2 = (output1756, value992, value1)) : Flapjack.WordAlloc.removeDeadStructural input1757 value988 value1 value2 = (output1757, value992, value1) := by
  rw [input1757_def, output1757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1753]
  try dsimp only
  rw [child1756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1753_skip, output1756_skip]
  kernel_rfl

theorem node1758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1758 value992 value1 value2 = (output1758, value993, value1) := by
  rw [input1758_def, output1758_def]
  kernel_rfl

theorem node1759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1759 value993 value1 value2 = (output1759, value994, value1) := by
  rw [input1759_def, output1759_def]
  kernel_rfl

theorem node1760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1760 value994 value1 value2 = (output1760, value995, value1) := by
  rw [input1760_def, output1760_def]
  kernel_rfl

theorem node1761_cond_eq
    (child1759 : Flapjack.WordAlloc.removeDeadStructural input1759 value993 value1 value2 = (output1759, value994, value1))
    (child1760 : Flapjack.WordAlloc.removeDeadStructural input1760 value994 value1 value2 = (output1760, value995, value1)) : Flapjack.WordAlloc.removeDeadStructural input1761 value993 value1 value2 = (output1761, value995, value1) := by
  rw [input1761_def, output1761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1759]
  try dsimp only
  rw [child1760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1759_skip, output1760_skip]
  kernel_rfl

theorem node1762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1762 value995 value1 value2 = (output1762, value996, value1) := by
  rw [input1762_def, output1762_def]
  kernel_rfl

theorem node1763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1763 value996 value1 value2 = (output1763, value997, value1) := by
  rw [input1763_def, output1763_def]
  kernel_rfl

theorem node1764_cond_eq
    (child1762 : Flapjack.WordAlloc.removeDeadStructural input1762 value995 value1 value2 = (output1762, value996, value1))
    (child1763 : Flapjack.WordAlloc.removeDeadStructural input1763 value996 value1 value2 = (output1763, value997, value1)) : Flapjack.WordAlloc.removeDeadStructural input1764 value995 value1 value2 = (output1764, value997, value1) := by
  rw [input1764_def, output1764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1762]
  try dsimp only
  rw [child1763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1762_skip, output1763_skip]
  kernel_rfl

theorem node1765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1765 value997 value1 value2 = (output1765, value998, value1) := by
  rw [input1765_def, output1765_def]
  kernel_rfl

theorem node1766_cond_eq
    (child1764 : Flapjack.WordAlloc.removeDeadStructural input1764 value995 value1 value2 = (output1764, value997, value1))
    (child1765 : Flapjack.WordAlloc.removeDeadStructural input1765 value997 value1 value2 = (output1765, value998, value1)) : Flapjack.WordAlloc.removeDeadStructural input1766 value995 value1 value2 = (output1766, value998, value1) := by
  rw [input1766_def, output1766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1764]
  try dsimp only
  rw [child1765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1764_skip, output1765_skip]
  kernel_rfl

theorem node1767_cond_eq
    (child1761 : Flapjack.WordAlloc.removeDeadStructural input1761 value993 value1 value2 = (output1761, value995, value1))
    (child1766 : Flapjack.WordAlloc.removeDeadStructural input1766 value995 value1 value2 = (output1766, value998, value1)) : Flapjack.WordAlloc.removeDeadStructural input1767 value993 value1 value2 = (output1767, value998, value1) := by
  rw [input1767_def, output1767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1761]
  try dsimp only
  rw [child1766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1761_skip, output1766_skip]
  kernel_rfl

theorem node1768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1768 value998 value1 value2 = (output1768, value999, value1) := by
  rw [input1768_def, output1768_def]
  kernel_rfl

theorem node1769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1769 value999 value1 value2 = (output1769, value1000, value1) := by
  rw [input1769_def, output1769_def]
  kernel_rfl

theorem node1770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1770 value1000 value1 value2 = (output1770, value1001, value1) := by
  rw [input1770_def, output1770_def]
  kernel_rfl

theorem node1771_cond_eq
    (child1769 : Flapjack.WordAlloc.removeDeadStructural input1769 value999 value1 value2 = (output1769, value1000, value1))
    (child1770 : Flapjack.WordAlloc.removeDeadStructural input1770 value1000 value1 value2 = (output1770, value1001, value1)) : Flapjack.WordAlloc.removeDeadStructural input1771 value999 value1 value2 = (output1771, value1001, value1) := by
  rw [input1771_def, output1771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1769]
  try dsimp only
  rw [child1770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1769_skip, output1770_skip]
  kernel_rfl

theorem node1772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1772 value1001 value1 value2 = (output1772, value1002, value1) := by
  rw [input1772_def, output1772_def]
  kernel_rfl

theorem node1773_cond_eq
    (child1771 : Flapjack.WordAlloc.removeDeadStructural input1771 value999 value1 value2 = (output1771, value1001, value1))
    (child1772 : Flapjack.WordAlloc.removeDeadStructural input1772 value1001 value1 value2 = (output1772, value1002, value1)) : Flapjack.WordAlloc.removeDeadStructural input1773 value999 value1 value2 = (output1773, value1002, value1) := by
  rw [input1773_def, output1773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1771]
  try dsimp only
  rw [child1772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1771_skip, output1772_skip]
  kernel_rfl

theorem node1774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1774 value1002 value1 value2 = (output1774, value1003, value1) := by
  rw [input1774_def, output1774_def]
  kernel_rfl

theorem node1775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1775 value1003 value1 value2 = (output1775, value1004, value1) := by
  rw [input1775_def, output1775_def]
  kernel_rfl

theorem node1776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1776 value1004 value1 value2 = (output1776, value1005, value1) := by
  rw [input1776_def, output1776_def]
  kernel_rfl

theorem node1777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1777 value1005 value1 value2 = (output1777, value1006, value1) := by
  rw [input1777_def, output1777_def]
  kernel_rfl

theorem node1778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1778 value1006 value1 value2 = (output1778, value1007, value1) := by
  rw [input1778_def, output1778_def]
  kernel_rfl

theorem node1779_cond_eq
    (child1777 : Flapjack.WordAlloc.removeDeadStructural input1777 value1005 value1 value2 = (output1777, value1006, value1))
    (child1778 : Flapjack.WordAlloc.removeDeadStructural input1778 value1006 value1 value2 = (output1778, value1007, value1)) : Flapjack.WordAlloc.removeDeadStructural input1779 value1005 value1 value2 = (output1779, value1007, value1) := by
  rw [input1779_def, output1779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1777]
  try dsimp only
  rw [child1778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1777_skip, output1778_skip]
  kernel_rfl

theorem node1780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1780 value1007 value1 value2 = (output1780, value1008, value1) := by
  rw [input1780_def, output1780_def]
  kernel_rfl

theorem node1781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1781 value1008 value1 value2 = (output1781, value1009, value1) := by
  rw [input1781_def, output1781_def]
  kernel_rfl

theorem node1782_cond_eq
    (child1780 : Flapjack.WordAlloc.removeDeadStructural input1780 value1007 value1 value2 = (output1780, value1008, value1))
    (child1781 : Flapjack.WordAlloc.removeDeadStructural input1781 value1008 value1 value2 = (output1781, value1009, value1)) : Flapjack.WordAlloc.removeDeadStructural input1782 value1007 value1 value2 = (output1782, value1009, value1) := by
  rw [input1782_def, output1782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1780]
  try dsimp only
  rw [child1781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1780_skip, output1781_skip]
  kernel_rfl

theorem node1783_cond_eq
    (child1779 : Flapjack.WordAlloc.removeDeadStructural input1779 value1005 value1 value2 = (output1779, value1007, value1))
    (child1782 : Flapjack.WordAlloc.removeDeadStructural input1782 value1007 value1 value2 = (output1782, value1009, value1)) : Flapjack.WordAlloc.removeDeadStructural input1783 value1005 value1 value2 = (output1783, value1009, value1) := by
  rw [input1783_def, output1783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1779]
  try dsimp only
  rw [child1782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1779_skip, output1782_skip]
  kernel_rfl

theorem node1784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1784 value1009 value1 value2 = (output1784, value1010, value1) := by
  rw [input1784_def, output1784_def]
  kernel_rfl

theorem node1785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1785 value1010 value1 value2 = (output1785, value1011, value1) := by
  rw [input1785_def, output1785_def]
  kernel_rfl

theorem node1786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1786 value1011 value1 value2 = (output1786, value1012, value1) := by
  rw [input1786_def, output1786_def]
  kernel_rfl

theorem node1787_cond_eq
    (child1785 : Flapjack.WordAlloc.removeDeadStructural input1785 value1010 value1 value2 = (output1785, value1011, value1))
    (child1786 : Flapjack.WordAlloc.removeDeadStructural input1786 value1011 value1 value2 = (output1786, value1012, value1)) : Flapjack.WordAlloc.removeDeadStructural input1787 value1010 value1 value2 = (output1787, value1012, value1) := by
  rw [input1787_def, output1787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1785]
  try dsimp only
  rw [child1786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1785_skip, output1786_skip]
  kernel_rfl

theorem node1788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1788 value1012 value1 value2 = (output1788, value1013, value1) := by
  rw [input1788_def, output1788_def]
  kernel_rfl

theorem node1789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1789 value1013 value1 value2 = (output1789, value1014, value1) := by
  rw [input1789_def, output1789_def]
  kernel_rfl

theorem node1790_cond_eq
    (child1788 : Flapjack.WordAlloc.removeDeadStructural input1788 value1012 value1 value2 = (output1788, value1013, value1))
    (child1789 : Flapjack.WordAlloc.removeDeadStructural input1789 value1013 value1 value2 = (output1789, value1014, value1)) : Flapjack.WordAlloc.removeDeadStructural input1790 value1012 value1 value2 = (output1790, value1014, value1) := by
  rw [input1790_def, output1790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1788]
  try dsimp only
  rw [child1789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1788_skip, output1789_skip]
  kernel_rfl

theorem node1791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1791 value1014 value1 value2 = (output1791, value1015, value1) := by
  rw [input1791_def, output1791_def]
  kernel_rfl

#print axioms node1791_cond_eq
end InitECandidate.Proofs.DeadStages646.Parallel
