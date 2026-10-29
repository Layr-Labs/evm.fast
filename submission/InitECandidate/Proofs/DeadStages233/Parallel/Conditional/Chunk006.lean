import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages233.Parallel.Data.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages233.Parallel
theorem node1536_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value291 value1 value2 = (output698, value293, value1))
    (child1535 : Flapjack.WordAlloc.removeDeadStructural input1535 value293 value1 value2 = (output1535, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1536 value291 value1 value2 = (output1536, value667, value1) := by
  rw [input1536_def, output1536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child1535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output698_skip, output1535_skip]
  kernel_rfl

theorem node1537_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value289 value1 value2 = (output695, value291, value1))
    (child1536 : Flapjack.WordAlloc.removeDeadStructural input1536 value291 value1 value2 = (output1536, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1537 value289 value1 value2 = (output1537, value667, value1) := by
  rw [input1537_def, output1537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child1536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output1536_skip]
  kernel_rfl

theorem node1538_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value287 value1 value2 = (output692, value289, value1))
    (child1537 : Flapjack.WordAlloc.removeDeadStructural input1537 value289 value1 value2 = (output1537, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1538 value287 value1 value2 = (output1538, value667, value1) := by
  rw [input1538_def, output1538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child1537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output1537_skip]
  kernel_rfl

theorem node1539_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value285 value1 value2 = (output689, value287, value1))
    (child1538 : Flapjack.WordAlloc.removeDeadStructural input1538 value287 value1 value2 = (output1538, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1539 value285 value1 value2 = (output1539, value667, value1) := by
  rw [input1539_def, output1539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child1538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output1538_skip]
  kernel_rfl

theorem node1540_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value283 value1 value2 = (output686, value285, value1))
    (child1539 : Flapjack.WordAlloc.removeDeadStructural input1539 value285 value1 value2 = (output1539, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1540 value283 value1 value2 = (output1540, value667, value1) := by
  rw [input1540_def, output1540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child1539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output1539_skip]
  kernel_rfl

theorem node1541_cond_eq
    (child683 : Flapjack.WordAlloc.removeDeadStructural input683 value281 value1 value2 = (output683, value283, value1))
    (child1540 : Flapjack.WordAlloc.removeDeadStructural input1540 value283 value1 value2 = (output1540, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1541 value281 value1 value2 = (output1541, value667, value1) := by
  rw [input1541_def, output1541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child683]
  try dsimp only
  rw [child1540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output683_skip, output1540_skip]
  kernel_rfl

theorem node1542_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value279 value1 value2 = (output680, value281, value1))
    (child1541 : Flapjack.WordAlloc.removeDeadStructural input1541 value281 value1 value2 = (output1541, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1542 value279 value1 value2 = (output1542, value667, value1) := by
  rw [input1542_def, output1542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child1541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output1541_skip]
  kernel_rfl

theorem node1543_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value277 value1 value2 = (output677, value279, value1))
    (child1542 : Flapjack.WordAlloc.removeDeadStructural input1542 value279 value1 value2 = (output1542, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1543 value277 value1 value2 = (output1543, value667, value1) := by
  rw [input1543_def, output1543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  try dsimp only
  rw [child1542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output677_skip, output1542_skip]
  kernel_rfl

theorem node1544_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value274 value1 value2 = (output674, value277, value1))
    (child1543 : Flapjack.WordAlloc.removeDeadStructural input1543 value277 value1 value2 = (output1543, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1544 value274 value1 value2 = (output1544, value667, value1) := by
  rw [input1544_def, output1544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child1543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output1543_skip]
  kernel_rfl

theorem node1545_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value274 value1 value2 = (output669, value274, value1))
    (child1544 : Flapjack.WordAlloc.removeDeadStructural input1544 value274 value1 value2 = (output1544, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1545 value274 value1 value2 = (output1545, value667, value1) := by
  rw [input1545_def, output1545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child1544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output1544_skip]
  kernel_rfl

theorem node1546_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value272 value1 value2 = (output668, value274, value1))
    (child1545 : Flapjack.WordAlloc.removeDeadStructural input1545 value274 value1 value2 = (output1545, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1546 value272 value1 value2 = (output1546, value667, value1) := by
  rw [input1546_def, output1546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child1545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output1545_skip]
  kernel_rfl

theorem node1547_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value270 value1 value2 = (output665, value272, value1))
    (child1546 : Flapjack.WordAlloc.removeDeadStructural input1546 value272 value1 value2 = (output1546, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1547 value270 value1 value2 = (output1547, value667, value1) := by
  rw [input1547_def, output1547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child1546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output1546_skip]
  kernel_rfl

theorem node1548_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value268 value1 value2 = (output662, value270, value1))
    (child1547 : Flapjack.WordAlloc.removeDeadStructural input1547 value270 value1 value2 = (output1547, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1548 value268 value1 value2 = (output1548, value667, value1) := by
  rw [input1548_def, output1548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child1547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output1547_skip]
  kernel_rfl

theorem node1549_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value266 value1 value2 = (output659, value268, value1))
    (child1548 : Flapjack.WordAlloc.removeDeadStructural input1548 value268 value1 value2 = (output1548, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1549 value266 value1 value2 = (output1549, value667, value1) := by
  rw [input1549_def, output1549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child1548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output1548_skip]
  kernel_rfl

theorem node1550_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value264 value1 value2 = (output656, value266, value1))
    (child1549 : Flapjack.WordAlloc.removeDeadStructural input1549 value266 value1 value2 = (output1549, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1550 value264 value1 value2 = (output1550, value667, value1) := by
  rw [input1550_def, output1550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child1549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output1549_skip]
  kernel_rfl

theorem node1551_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value262 value1 value2 = (output653, value264, value1))
    (child1550 : Flapjack.WordAlloc.removeDeadStructural input1550 value264 value1 value2 = (output1550, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1551 value262 value1 value2 = (output1551, value667, value1) := by
  rw [input1551_def, output1551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child1550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output1550_skip]
  kernel_rfl

theorem node1552_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value260 value1 value2 = (output650, value262, value1))
    (child1551 : Flapjack.WordAlloc.removeDeadStructural input1551 value262 value1 value2 = (output1551, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1552 value260 value1 value2 = (output1552, value667, value1) := by
  rw [input1552_def, output1552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child1551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output1551_skip]
  kernel_rfl

theorem node1553_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value258 value1 value2 = (output647, value260, value1))
    (child1552 : Flapjack.WordAlloc.removeDeadStructural input1552 value260 value1 value2 = (output1552, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1553 value258 value1 value2 = (output1553, value667, value1) := by
  rw [input1553_def, output1553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child1552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output1552_skip]
  kernel_rfl

theorem node1554_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value256 value1 value2 = (output644, value258, value1))
    (child1553 : Flapjack.WordAlloc.removeDeadStructural input1553 value258 value1 value2 = (output1553, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1554 value256 value1 value2 = (output1554, value667, value1) := by
  rw [input1554_def, output1554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  try dsimp only
  rw [child1553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output1553_skip]
  kernel_rfl

theorem node1555_cond_eq
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value253 value1 value2 = (output641, value256, value1))
    (child1554 : Flapjack.WordAlloc.removeDeadStructural input1554 value256 value1 value2 = (output1554, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1555 value253 value1 value2 = (output1555, value667, value1) := by
  rw [input1555_def, output1555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child641]
  try dsimp only
  rw [child1554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output641_skip, output1554_skip]
  kernel_rfl

theorem node1556_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value253 value1 value2 = (output636, value253, value1))
    (child1555 : Flapjack.WordAlloc.removeDeadStructural input1555 value253 value1 value2 = (output1555, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1556 value253 value1 value2 = (output1556, value667, value1) := by
  rw [input1556_def, output1556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child1555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output1555_skip]
  kernel_rfl

theorem node1557_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value251 value1 value2 = (output635, value253, value1))
    (child1556 : Flapjack.WordAlloc.removeDeadStructural input1556 value253 value1 value2 = (output1556, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1557 value251 value1 value2 = (output1557, value667, value1) := by
  rw [input1557_def, output1557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child1556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output1556_skip]
  kernel_rfl

theorem node1558_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value249 value1 value2 = (output632, value251, value1))
    (child1557 : Flapjack.WordAlloc.removeDeadStructural input1557 value251 value1 value2 = (output1557, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1558 value249 value1 value2 = (output1558, value667, value1) := by
  rw [input1558_def, output1558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child1557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output1557_skip]
  kernel_rfl

theorem node1559_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value247 value1 value2 = (output629, value249, value1))
    (child1558 : Flapjack.WordAlloc.removeDeadStructural input1558 value249 value1 value2 = (output1558, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1559 value247 value1 value2 = (output1559, value667, value1) := by
  rw [input1559_def, output1559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child1558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output1558_skip]
  kernel_rfl

theorem node1560_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value245 value1 value2 = (output626, value247, value1))
    (child1559 : Flapjack.WordAlloc.removeDeadStructural input1559 value247 value1 value2 = (output1559, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1560 value245 value1 value2 = (output1560, value667, value1) := by
  rw [input1560_def, output1560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child1559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output1559_skip]
  kernel_rfl

theorem node1561_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value243 value1 value2 = (output623, value245, value1))
    (child1560 : Flapjack.WordAlloc.removeDeadStructural input1560 value245 value1 value2 = (output1560, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1561 value243 value1 value2 = (output1561, value667, value1) := by
  rw [input1561_def, output1561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child1560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output1560_skip]
  kernel_rfl

theorem node1562_cond_eq
    (child620 : Flapjack.WordAlloc.removeDeadStructural input620 value241 value1 value2 = (output620, value243, value1))
    (child1561 : Flapjack.WordAlloc.removeDeadStructural input1561 value243 value1 value2 = (output1561, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1562 value241 value1 value2 = (output1562, value667, value1) := by
  rw [input1562_def, output1562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child620]
  try dsimp only
  rw [child1561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output620_skip, output1561_skip]
  kernel_rfl

theorem node1563_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value239 value1 value2 = (output617, value241, value1))
    (child1562 : Flapjack.WordAlloc.removeDeadStructural input1562 value241 value1 value2 = (output1562, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1563 value239 value1 value2 = (output1563, value667, value1) := by
  rw [input1563_def, output1563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  try dsimp only
  rw [child1562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output617_skip, output1562_skip]
  kernel_rfl

theorem node1564_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value237 value1 value2 = (output614, value239, value1))
    (child1563 : Flapjack.WordAlloc.removeDeadStructural input1563 value239 value1 value2 = (output1563, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1564 value237 value1 value2 = (output1564, value667, value1) := by
  rw [input1564_def, output1564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  try dsimp only
  rw [child1563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output614_skip, output1563_skip]
  kernel_rfl

theorem node1565_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value235 value1 value2 = (output611, value237, value1))
    (child1564 : Flapjack.WordAlloc.removeDeadStructural input1564 value237 value1 value2 = (output1564, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1565 value235 value1 value2 = (output1565, value667, value1) := by
  rw [input1565_def, output1565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child1564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output1564_skip]
  kernel_rfl

theorem node1566_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value232 value1 value2 = (output608, value235, value1))
    (child1565 : Flapjack.WordAlloc.removeDeadStructural input1565 value235 value1 value2 = (output1565, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1566 value232 value1 value2 = (output1566, value667, value1) := by
  rw [input1566_def, output1566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child1565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output1565_skip]
  kernel_rfl

theorem node1567_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value232 value1 value2 = (output603, value232, value1))
    (child1566 : Flapjack.WordAlloc.removeDeadStructural input1566 value232 value1 value2 = (output1566, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1567 value232 value1 value2 = (output1567, value667, value1) := by
  rw [input1567_def, output1567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  try dsimp only
  rw [child1566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output1566_skip]
  kernel_rfl

theorem node1568_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value230 value1 value2 = (output602, value232, value1))
    (child1567 : Flapjack.WordAlloc.removeDeadStructural input1567 value232 value1 value2 = (output1567, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1568 value230 value1 value2 = (output1568, value667, value1) := by
  rw [input1568_def, output1568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child1567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output1567_skip]
  kernel_rfl

theorem node1569_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value228 value1 value2 = (output599, value230, value1))
    (child1568 : Flapjack.WordAlloc.removeDeadStructural input1568 value230 value1 value2 = (output1568, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1569 value228 value1 value2 = (output1569, value667, value1) := by
  rw [input1569_def, output1569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child1568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output1568_skip]
  kernel_rfl

theorem node1570_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value226 value1 value2 = (output596, value228, value1))
    (child1569 : Flapjack.WordAlloc.removeDeadStructural input1569 value228 value1 value2 = (output1569, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1570 value226 value1 value2 = (output1570, value667, value1) := by
  rw [input1570_def, output1570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child1569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output1569_skip]
  kernel_rfl

theorem node1571_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value224 value1 value2 = (output593, value226, value1))
    (child1570 : Flapjack.WordAlloc.removeDeadStructural input1570 value226 value1 value2 = (output1570, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1571 value224 value1 value2 = (output1571, value667, value1) := by
  rw [input1571_def, output1571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  try dsimp only
  rw [child1570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output593_skip, output1570_skip]
  kernel_rfl

theorem node1572_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value222 value1 value2 = (output590, value224, value1))
    (child1571 : Flapjack.WordAlloc.removeDeadStructural input1571 value224 value1 value2 = (output1571, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1572 value222 value1 value2 = (output1572, value667, value1) := by
  rw [input1572_def, output1572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  try dsimp only
  rw [child1571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output590_skip, output1571_skip]
  kernel_rfl

theorem node1573_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value220 value1 value2 = (output587, value222, value1))
    (child1572 : Flapjack.WordAlloc.removeDeadStructural input1572 value222 value1 value2 = (output1572, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1573 value220 value1 value2 = (output1573, value667, value1) := by
  rw [input1573_def, output1573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child587]
  try dsimp only
  rw [child1572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output587_skip, output1572_skip]
  kernel_rfl

theorem node1574_cond_eq
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value218 value1 value2 = (output584, value220, value1))
    (child1573 : Flapjack.WordAlloc.removeDeadStructural input1573 value220 value1 value2 = (output1573, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1574 value218 value1 value2 = (output1574, value667, value1) := by
  rw [input1574_def, output1574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child584]
  try dsimp only
  rw [child1573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output584_skip, output1573_skip]
  kernel_rfl

theorem node1575_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value216 value1 value2 = (output581, value218, value1))
    (child1574 : Flapjack.WordAlloc.removeDeadStructural input1574 value218 value1 value2 = (output1574, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1575 value216 value1 value2 = (output1575, value667, value1) := by
  rw [input1575_def, output1575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  try dsimp only
  rw [child1574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output581_skip, output1574_skip]
  kernel_rfl

theorem node1576_cond_eq
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value214 value1 value2 = (output578, value216, value1))
    (child1575 : Flapjack.WordAlloc.removeDeadStructural input1575 value216 value1 value2 = (output1575, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1576 value214 value1 value2 = (output1576, value667, value1) := by
  rw [input1576_def, output1576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child578]
  try dsimp only
  rw [child1575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output578_skip, output1575_skip]
  kernel_rfl

theorem node1577_cond_eq
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value211 value1 value2 = (output575, value214, value1))
    (child1576 : Flapjack.WordAlloc.removeDeadStructural input1576 value214 value1 value2 = (output1576, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1577 value211 value1 value2 = (output1577, value667, value1) := by
  rw [input1577_def, output1577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child575]
  try dsimp only
  rw [child1576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output575_skip, output1576_skip]
  kernel_rfl

theorem node1578_cond_eq
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value211 value1 value2 = (output570, value211, value1))
    (child1577 : Flapjack.WordAlloc.removeDeadStructural input1577 value211 value1 value2 = (output1577, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1578 value211 value1 value2 = (output1578, value667, value1) := by
  rw [input1578_def, output1578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child570]
  try dsimp only
  rw [child1577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output570_skip, output1577_skip]
  kernel_rfl

theorem node1579_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value209 value1 value2 = (output569, value211, value1))
    (child1578 : Flapjack.WordAlloc.removeDeadStructural input1578 value211 value1 value2 = (output1578, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1579 value209 value1 value2 = (output1579, value667, value1) := by
  rw [input1579_def, output1579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  try dsimp only
  rw [child1578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output569_skip, output1578_skip]
  kernel_rfl

theorem node1580_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value207 value1 value2 = (output566, value209, value1))
    (child1579 : Flapjack.WordAlloc.removeDeadStructural input1579 value209 value1 value2 = (output1579, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1580 value207 value1 value2 = (output1580, value667, value1) := by
  rw [input1580_def, output1580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child1579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output1579_skip]
  kernel_rfl

theorem node1581_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value205 value1 value2 = (output563, value207, value1))
    (child1580 : Flapjack.WordAlloc.removeDeadStructural input1580 value207 value1 value2 = (output1580, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1581 value205 value1 value2 = (output1581, value667, value1) := by
  rw [input1581_def, output1581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child1580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output1580_skip]
  kernel_rfl

theorem node1582_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value203 value1 value2 = (output560, value205, value1))
    (child1581 : Flapjack.WordAlloc.removeDeadStructural input1581 value205 value1 value2 = (output1581, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1582 value203 value1 value2 = (output1582, value667, value1) := by
  rw [input1582_def, output1582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child1581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output560_skip, output1581_skip]
  kernel_rfl

theorem node1583_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value201 value1 value2 = (output557, value203, value1))
    (child1582 : Flapjack.WordAlloc.removeDeadStructural input1582 value203 value1 value2 = (output1582, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1583 value201 value1 value2 = (output1583, value667, value1) := by
  rw [input1583_def, output1583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child1582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output1582_skip]
  kernel_rfl

theorem node1584_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value199 value1 value2 = (output554, value201, value1))
    (child1583 : Flapjack.WordAlloc.removeDeadStructural input1583 value201 value1 value2 = (output1583, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1584 value199 value1 value2 = (output1584, value667, value1) := by
  rw [input1584_def, output1584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child1583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output1583_skip]
  kernel_rfl

theorem node1585_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value197 value1 value2 = (output551, value199, value1))
    (child1584 : Flapjack.WordAlloc.removeDeadStructural input1584 value199 value1 value2 = (output1584, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1585 value197 value1 value2 = (output1585, value667, value1) := by
  rw [input1585_def, output1585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child1584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output1584_skip]
  kernel_rfl

theorem node1586_cond_eq
    (child548 : Flapjack.WordAlloc.removeDeadStructural input548 value195 value1 value2 = (output548, value197, value1))
    (child1585 : Flapjack.WordAlloc.removeDeadStructural input1585 value197 value1 value2 = (output1585, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1586 value195 value1 value2 = (output1586, value667, value1) := by
  rw [input1586_def, output1586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child548]
  try dsimp only
  rw [child1585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output548_skip, output1585_skip]
  kernel_rfl

theorem node1587_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value193 value1 value2 = (output545, value195, value1))
    (child1586 : Flapjack.WordAlloc.removeDeadStructural input1586 value195 value1 value2 = (output1586, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1587 value193 value1 value2 = (output1587, value667, value1) := by
  rw [input1587_def, output1587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child1586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output1586_skip]
  kernel_rfl

theorem node1588_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value190 value1 value2 = (output542, value193, value1))
    (child1587 : Flapjack.WordAlloc.removeDeadStructural input1587 value193 value1 value2 = (output1587, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1588 value190 value1 value2 = (output1588, value667, value1) := by
  rw [input1588_def, output1588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child1587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output1587_skip]
  kernel_rfl

theorem node1589_cond_eq
    (child537 : Flapjack.WordAlloc.removeDeadStructural input537 value190 value1 value2 = (output537, value190, value1))
    (child1588 : Flapjack.WordAlloc.removeDeadStructural input1588 value190 value1 value2 = (output1588, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1589 value190 value1 value2 = (output1589, value667, value1) := by
  rw [input1589_def, output1589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child537]
  try dsimp only
  rw [child1588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output537_skip, output1588_skip]
  kernel_rfl

theorem node1590_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value188 value1 value2 = (output536, value190, value1))
    (child1589 : Flapjack.WordAlloc.removeDeadStructural input1589 value190 value1 value2 = (output1589, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1590 value188 value1 value2 = (output1590, value667, value1) := by
  rw [input1590_def, output1590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child1589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output1589_skip]
  kernel_rfl

theorem node1591_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value186 value1 value2 = (output533, value188, value1))
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value188 value1 value2 = (output1590, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1591 value186 value1 value2 = (output1591, value667, value1) := by
  rw [input1591_def, output1591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child1590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output1590_skip]
  kernel_rfl

theorem node1592_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value184 value1 value2 = (output530, value186, value1))
    (child1591 : Flapjack.WordAlloc.removeDeadStructural input1591 value186 value1 value2 = (output1591, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1592 value184 value1 value2 = (output1592, value667, value1) := by
  rw [input1592_def, output1592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child1591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output1591_skip]
  kernel_rfl

theorem node1593_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value182 value1 value2 = (output527, value184, value1))
    (child1592 : Flapjack.WordAlloc.removeDeadStructural input1592 value184 value1 value2 = (output1592, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1593 value182 value1 value2 = (output1593, value667, value1) := by
  rw [input1593_def, output1593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child1592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output1592_skip]
  kernel_rfl

theorem node1594_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value180 value1 value2 = (output524, value182, value1))
    (child1593 : Flapjack.WordAlloc.removeDeadStructural input1593 value182 value1 value2 = (output1593, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1594 value180 value1 value2 = (output1594, value667, value1) := by
  rw [input1594_def, output1594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child1593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output1593_skip]
  kernel_rfl

theorem node1595_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value178 value1 value2 = (output521, value180, value1))
    (child1594 : Flapjack.WordAlloc.removeDeadStructural input1594 value180 value1 value2 = (output1594, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1595 value178 value1 value2 = (output1595, value667, value1) := by
  rw [input1595_def, output1595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child1594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output1594_skip]
  kernel_rfl

theorem node1596_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value176 value1 value2 = (output518, value178, value1))
    (child1595 : Flapjack.WordAlloc.removeDeadStructural input1595 value178 value1 value2 = (output1595, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1596 value176 value1 value2 = (output1596, value667, value1) := by
  rw [input1596_def, output1596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child1595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output1595_skip]
  kernel_rfl

theorem node1597_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value174 value1 value2 = (output515, value176, value1))
    (child1596 : Flapjack.WordAlloc.removeDeadStructural input1596 value176 value1 value2 = (output1596, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1597 value174 value1 value2 = (output1597, value667, value1) := by
  rw [input1597_def, output1597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child1596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output1596_skip]
  kernel_rfl

theorem node1598_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value172 value1 value2 = (output512, value174, value1))
    (child1597 : Flapjack.WordAlloc.removeDeadStructural input1597 value174 value1 value2 = (output1597, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1598 value172 value1 value2 = (output1598, value667, value1) := by
  rw [input1598_def, output1598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child1597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output1597_skip]
  kernel_rfl

theorem node1599_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value169 value1 value2 = (output509, value172, value1))
    (child1598 : Flapjack.WordAlloc.removeDeadStructural input1598 value172 value1 value2 = (output1598, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1599 value169 value1 value2 = (output1599, value667, value1) := by
  rw [input1599_def, output1599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child1598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output1598_skip]
  kernel_rfl

theorem node1600_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value169 value1 value2 = (output504, value169, value1))
    (child1599 : Flapjack.WordAlloc.removeDeadStructural input1599 value169 value1 value2 = (output1599, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1600 value169 value1 value2 = (output1600, value667, value1) := by
  rw [input1600_def, output1600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child1599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output1599_skip]
  kernel_rfl

theorem node1601_cond_eq
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value167 value1 value2 = (output503, value169, value1))
    (child1600 : Flapjack.WordAlloc.removeDeadStructural input1600 value169 value1 value2 = (output1600, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1601 value167 value1 value2 = (output1601, value667, value1) := by
  rw [input1601_def, output1601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child503]
  try dsimp only
  rw [child1600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output503_skip, output1600_skip]
  kernel_rfl

theorem node1602_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value165 value1 value2 = (output500, value167, value1))
    (child1601 : Flapjack.WordAlloc.removeDeadStructural input1601 value167 value1 value2 = (output1601, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1602 value165 value1 value2 = (output1602, value667, value1) := by
  rw [input1602_def, output1602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child1601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output1601_skip]
  kernel_rfl

theorem node1603_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value163 value1 value2 = (output497, value165, value1))
    (child1602 : Flapjack.WordAlloc.removeDeadStructural input1602 value165 value1 value2 = (output1602, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1603 value163 value1 value2 = (output1603, value667, value1) := by
  rw [input1603_def, output1603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child1602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output1602_skip]
  kernel_rfl

theorem node1604_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value161 value1 value2 = (output494, value163, value1))
    (child1603 : Flapjack.WordAlloc.removeDeadStructural input1603 value163 value1 value2 = (output1603, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1604 value161 value1 value2 = (output1604, value667, value1) := by
  rw [input1604_def, output1604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child1603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output1603_skip]
  kernel_rfl

theorem node1605_cond_eq
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value159 value1 value2 = (output491, value161, value1))
    (child1604 : Flapjack.WordAlloc.removeDeadStructural input1604 value161 value1 value2 = (output1604, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1605 value159 value1 value2 = (output1605, value667, value1) := by
  rw [input1605_def, output1605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child491]
  try dsimp only
  rw [child1604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output491_skip, output1604_skip]
  kernel_rfl

theorem node1606_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value157 value1 value2 = (output488, value159, value1))
    (child1605 : Flapjack.WordAlloc.removeDeadStructural input1605 value159 value1 value2 = (output1605, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1606 value157 value1 value2 = (output1606, value667, value1) := by
  rw [input1606_def, output1606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child1605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output1605_skip]
  kernel_rfl

theorem node1607_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value155 value1 value2 = (output485, value157, value1))
    (child1606 : Flapjack.WordAlloc.removeDeadStructural input1606 value157 value1 value2 = (output1606, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1607 value155 value1 value2 = (output1607, value667, value1) := by
  rw [input1607_def, output1607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child1606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output1606_skip]
  kernel_rfl

theorem node1608_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value153 value1 value2 = (output482, value155, value1))
    (child1607 : Flapjack.WordAlloc.removeDeadStructural input1607 value155 value1 value2 = (output1607, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1608 value153 value1 value2 = (output1608, value667, value1) := by
  rw [input1608_def, output1608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child1607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output1607_skip]
  kernel_rfl

theorem node1609_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value151 value1 value2 = (output479, value153, value1))
    (child1608 : Flapjack.WordAlloc.removeDeadStructural input1608 value153 value1 value2 = (output1608, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1609 value151 value1 value2 = (output1609, value667, value1) := by
  rw [input1609_def, output1609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child1608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output1608_skip]
  kernel_rfl

theorem node1610_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value148 value1 value2 = (output476, value151, value1))
    (child1609 : Flapjack.WordAlloc.removeDeadStructural input1609 value151 value1 value2 = (output1609, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1610 value148 value1 value2 = (output1610, value667, value1) := by
  rw [input1610_def, output1610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  try dsimp only
  rw [child1609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output476_skip, output1609_skip]
  kernel_rfl

theorem node1611_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value148 value1 value2 = (output471, value148, value1))
    (child1610 : Flapjack.WordAlloc.removeDeadStructural input1610 value148 value1 value2 = (output1610, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1611 value148 value1 value2 = (output1611, value667, value1) := by
  rw [input1611_def, output1611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  try dsimp only
  rw [child1610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output471_skip, output1610_skip]
  kernel_rfl

theorem node1612_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value146 value1 value2 = (output470, value148, value1))
    (child1611 : Flapjack.WordAlloc.removeDeadStructural input1611 value148 value1 value2 = (output1611, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1612 value146 value1 value2 = (output1612, value667, value1) := by
  rw [input1612_def, output1612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child1611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output1611_skip]
  kernel_rfl

theorem node1613_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value144 value1 value2 = (output467, value146, value1))
    (child1612 : Flapjack.WordAlloc.removeDeadStructural input1612 value146 value1 value2 = (output1612, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1613 value144 value1 value2 = (output1613, value667, value1) := by
  rw [input1613_def, output1613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child1612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output1612_skip]
  kernel_rfl

theorem node1614_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value142 value1 value2 = (output464, value144, value1))
    (child1613 : Flapjack.WordAlloc.removeDeadStructural input1613 value144 value1 value2 = (output1613, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1614 value142 value1 value2 = (output1614, value667, value1) := by
  rw [input1614_def, output1614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child1613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output1613_skip]
  kernel_rfl

theorem node1615_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value140 value1 value2 = (output461, value142, value1))
    (child1614 : Flapjack.WordAlloc.removeDeadStructural input1614 value142 value1 value2 = (output1614, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1615 value140 value1 value2 = (output1615, value667, value1) := by
  rw [input1615_def, output1615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child1614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output1614_skip]
  kernel_rfl

theorem node1616_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value138 value1 value2 = (output458, value140, value1))
    (child1615 : Flapjack.WordAlloc.removeDeadStructural input1615 value140 value1 value2 = (output1615, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1616 value138 value1 value2 = (output1616, value667, value1) := by
  rw [input1616_def, output1616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child1615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output1615_skip]
  kernel_rfl

theorem node1617_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value136 value1 value2 = (output455, value138, value1))
    (child1616 : Flapjack.WordAlloc.removeDeadStructural input1616 value138 value1 value2 = (output1616, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1617 value136 value1 value2 = (output1617, value667, value1) := by
  rw [input1617_def, output1617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child1616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output1616_skip]
  kernel_rfl

theorem node1618_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value134 value1 value2 = (output452, value136, value1))
    (child1617 : Flapjack.WordAlloc.removeDeadStructural input1617 value136 value1 value2 = (output1617, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1618 value134 value1 value2 = (output1618, value667, value1) := by
  rw [input1618_def, output1618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child1617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output1617_skip]
  kernel_rfl

theorem node1619_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value132 value1 value2 = (output449, value134, value1))
    (child1618 : Flapjack.WordAlloc.removeDeadStructural input1618 value134 value1 value2 = (output1618, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1619 value132 value1 value2 = (output1619, value667, value1) := by
  rw [input1619_def, output1619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child1618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output1618_skip]
  kernel_rfl

theorem node1620_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value130 value1 value2 = (output446, value132, value1))
    (child1619 : Flapjack.WordAlloc.removeDeadStructural input1619 value132 value1 value2 = (output1619, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1620 value130 value1 value2 = (output1620, value667, value1) := by
  rw [input1620_def, output1620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child1619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output1619_skip]
  kernel_rfl

theorem node1621_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value127 value1 value2 = (output443, value130, value1))
    (child1620 : Flapjack.WordAlloc.removeDeadStructural input1620 value130 value1 value2 = (output1620, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1621 value127 value1 value2 = (output1621, value667, value1) := by
  rw [input1621_def, output1621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child1620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output1620_skip]
  kernel_rfl

theorem node1622_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value127 value1 value2 = (output438, value127, value1))
    (child1621 : Flapjack.WordAlloc.removeDeadStructural input1621 value127 value1 value2 = (output1621, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1622 value127 value1 value2 = (output1622, value667, value1) := by
  rw [input1622_def, output1622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  try dsimp only
  rw [child1621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output438_skip, output1621_skip]
  kernel_rfl

theorem node1623_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value126 value1 value2 = (output437, value127, value1))
    (child1622 : Flapjack.WordAlloc.removeDeadStructural input1622 value127 value1 value2 = (output1622, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1623 value126 value1 value2 = (output1623, value667, value1) := by
  rw [input1623_def, output1623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child1622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output1622_skip]
  kernel_rfl

theorem node1624_cond_eq
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value126 value1 value2 = (output436, value126, value1))
    (child1623 : Flapjack.WordAlloc.removeDeadStructural input1623 value126 value1 value2 = (output1623, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1624 value126 value1 value2 = (output1624, value667, value1) := by
  rw [input1624_def, output1624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child436]
  try dsimp only
  rw [child1623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output436_skip, output1623_skip]
  kernel_rfl

theorem node1625_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value9 value1 value2 = (output435, value126, value1))
    (child1624 : Flapjack.WordAlloc.removeDeadStructural input1624 value126 value1 value2 = (output1624, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1625 value9 value1 value2 = (output1625, value667, value1) := by
  rw [input1625_def, output1625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child1624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output1624_skip]
  kernel_rfl

theorem node1626_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value9 value1 value2 = (output11, value9, value1))
    (child1625 : Flapjack.WordAlloc.removeDeadStructural input1625 value9 value1 value2 = (output1625, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1626 value9 value1 value2 = (output1626, value667, value1) := by
  rw [input1626_def, output1626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child1625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output1625_skip]
  kernel_rfl

theorem node1627_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value9, value1))
    (child1626 : Flapjack.WordAlloc.removeDeadStructural input1626 value9 value1 value2 = (output1626, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1627 value8 value1 value2 = (output1627, value667, value1) := by
  rw [input1627_def, output1627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child1626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output1626_skip]
  kernel_rfl

theorem node1628_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value8, value1))
    (child1627 : Flapjack.WordAlloc.removeDeadStructural input1627 value8 value1 value2 = (output1627, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1628 value5 value1 value2 = (output1628, value667, value1) := by
  rw [input1628_def, output1628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child1627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output1627_skip]
  kernel_rfl

theorem node1629_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1))
    (child1628 : Flapjack.WordAlloc.removeDeadStructural input1628 value5 value1 value2 = (output1628, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1629 value5 value1 value2 = (output1629, value667, value1) := by
  rw [input1629_def, output1629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child1628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output1628_skip]
  kernel_rfl

theorem node1630_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1629 : Flapjack.WordAlloc.removeDeadStructural input1629 value5 value1 value2 = (output1629, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1630 value4 value1 value2 = (output1630, value667, value1) := by
  rw [input1630_def, output1630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1629_skip]
  kernel_rfl

theorem node1631_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1630 : Flapjack.WordAlloc.removeDeadStructural input1630 value4 value1 value2 = (output1630, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1631 value0 value1 value2 = (output1631, value667, value1) := by
  rw [input1631_def, output1631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1630_skip]
  kernel_rfl

theorem node1632_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1632 value667 value1 value2 = (output1632, value668, value1) := by
  rw [input1632_def, output1632_def]
  kernel_rfl

theorem node1633_cond_eq
    (child1631 : Flapjack.WordAlloc.removeDeadStructural input1631 value0 value1 value2 = (output1631, value667, value1))
    (child1632 : Flapjack.WordAlloc.removeDeadStructural input1632 value667 value1 value2 = (output1632, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input1633 value0 value1 value2 = (output1633, value668, value1) := by
  rw [input1633_def, output1633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1631]
  try dsimp only
  rw [child1632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1631_skip, output1632_skip]
  kernel_rfl

#print axioms node1633_cond_eq
end InitECandidate.Proofs.DeadStages233.Parallel
