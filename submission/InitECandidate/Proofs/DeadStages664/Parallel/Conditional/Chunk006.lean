import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages664.Parallel.Data.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages664.Parallel
theorem node1536_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value5 value1 value2 = (output272, value140, value1))
    (child1535 : Flapjack.WordAlloc.removeDeadStructural input1535 value140 value1 value2 = (output1535, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1536 value5 value1 value2 = (output1536, value615, value1) := by
  rw [input1536_def, output1536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child1535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output1535_skip]
  kernel_rfl

theorem node1537_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value134 value1 value2 = (output269, value5, value1))
    (child1536 : Flapjack.WordAlloc.removeDeadStructural input1536 value5 value1 value2 = (output1536, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1537 value134 value1 value2 = (output1537, value615, value1) := by
  rw [input1537_def, output1537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child1536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output1536_skip]
  kernel_rfl

theorem node1538_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value134 value1 value2 = (output260, value134, value1))
    (child1537 : Flapjack.WordAlloc.removeDeadStructural input1537 value134 value1 value2 = (output1537, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1538 value134 value1 value2 = (output1538, value615, value1) := by
  rw [input1538_def, output1538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child1537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output1537_skip]
  kernel_rfl

theorem node1539_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value133 value1 value2 = (output259, value134, value1))
    (child1538 : Flapjack.WordAlloc.removeDeadStructural input1538 value134 value1 value2 = (output1538, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1539 value133 value1 value2 = (output1539, value615, value1) := by
  rw [input1539_def, output1539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child1538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output1538_skip]
  kernel_rfl

theorem node1540_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value5 value1 value2 = (output258, value133, value1))
    (child1539 : Flapjack.WordAlloc.removeDeadStructural input1539 value133 value1 value2 = (output1539, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1540 value5 value1 value2 = (output1540, value615, value1) := by
  rw [input1540_def, output1540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child1539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output1539_skip]
  kernel_rfl

theorem node1541_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value127 value1 value2 = (output255, value5, value1))
    (child1540 : Flapjack.WordAlloc.removeDeadStructural input1540 value5 value1 value2 = (output1540, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1541 value127 value1 value2 = (output1541, value615, value1) := by
  rw [input1541_def, output1541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child1540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output1540_skip]
  kernel_rfl

theorem node1542_cond_eq
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value127 value1 value2 = (output246, value127, value1))
    (child1541 : Flapjack.WordAlloc.removeDeadStructural input1541 value127 value1 value2 = (output1541, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1542 value127 value1 value2 = (output1542, value615, value1) := by
  rw [input1542_def, output1542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child246]
  try dsimp only
  rw [child1541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output246_skip, output1541_skip]
  kernel_rfl

theorem node1543_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value126 value1 value2 = (output245, value127, value1))
    (child1542 : Flapjack.WordAlloc.removeDeadStructural input1542 value127 value1 value2 = (output1542, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1543 value126 value1 value2 = (output1543, value615, value1) := by
  rw [input1543_def, output1543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child1542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output1542_skip]
  kernel_rfl

theorem node1544_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value5 value1 value2 = (output244, value126, value1))
    (child1543 : Flapjack.WordAlloc.removeDeadStructural input1543 value126 value1 value2 = (output1543, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1544 value5 value1 value2 = (output1544, value615, value1) := by
  rw [input1544_def, output1544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child1543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output1543_skip]
  kernel_rfl

theorem node1545_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value120 value1 value2 = (output241, value5, value1))
    (child1544 : Flapjack.WordAlloc.removeDeadStructural input1544 value5 value1 value2 = (output1544, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1545 value120 value1 value2 = (output1545, value615, value1) := by
  rw [input1545_def, output1545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child1544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output1544_skip]
  kernel_rfl

theorem node1546_cond_eq
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value120 value1 value2 = (output232, value120, value1))
    (child1545 : Flapjack.WordAlloc.removeDeadStructural input1545 value120 value1 value2 = (output1545, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1546 value120 value1 value2 = (output1546, value615, value1) := by
  rw [input1546_def, output1546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child232]
  try dsimp only
  rw [child1545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output232_skip, output1545_skip]
  kernel_rfl

theorem node1547_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value119 value1 value2 = (output231, value120, value1))
    (child1546 : Flapjack.WordAlloc.removeDeadStructural input1546 value120 value1 value2 = (output1546, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1547 value119 value1 value2 = (output1547, value615, value1) := by
  rw [input1547_def, output1547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child1546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output1546_skip]
  kernel_rfl

theorem node1548_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value5 value1 value2 = (output230, value119, value1))
    (child1547 : Flapjack.WordAlloc.removeDeadStructural input1547 value119 value1 value2 = (output1547, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1548 value5 value1 value2 = (output1548, value615, value1) := by
  rw [input1548_def, output1548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child1547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output1547_skip]
  kernel_rfl

theorem node1549_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value113 value1 value2 = (output227, value5, value1))
    (child1548 : Flapjack.WordAlloc.removeDeadStructural input1548 value5 value1 value2 = (output1548, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1549 value113 value1 value2 = (output1549, value615, value1) := by
  rw [input1549_def, output1549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child1548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output1548_skip]
  kernel_rfl

theorem node1550_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value113 value1 value2 = (output218, value113, value1))
    (child1549 : Flapjack.WordAlloc.removeDeadStructural input1549 value113 value1 value2 = (output1549, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1550 value113 value1 value2 = (output1550, value615, value1) := by
  rw [input1550_def, output1550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child1549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output1549_skip]
  kernel_rfl

theorem node1551_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value112 value1 value2 = (output217, value113, value1))
    (child1550 : Flapjack.WordAlloc.removeDeadStructural input1550 value113 value1 value2 = (output1550, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1551 value112 value1 value2 = (output1551, value615, value1) := by
  rw [input1551_def, output1551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child1550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output1550_skip]
  kernel_rfl

theorem node1552_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value5 value1 value2 = (output216, value112, value1))
    (child1551 : Flapjack.WordAlloc.removeDeadStructural input1551 value112 value1 value2 = (output1551, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1552 value5 value1 value2 = (output1552, value615, value1) := by
  rw [input1552_def, output1552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child1551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output1551_skip]
  kernel_rfl

theorem node1553_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value106 value1 value2 = (output213, value5, value1))
    (child1552 : Flapjack.WordAlloc.removeDeadStructural input1552 value5 value1 value2 = (output1552, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1553 value106 value1 value2 = (output1553, value615, value1) := by
  rw [input1553_def, output1553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child1552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output1552_skip]
  kernel_rfl

theorem node1554_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value106 value1 value2 = (output204, value106, value1))
    (child1553 : Flapjack.WordAlloc.removeDeadStructural input1553 value106 value1 value2 = (output1553, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1554 value106 value1 value2 = (output1554, value615, value1) := by
  rw [input1554_def, output1554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child1553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output1553_skip]
  kernel_rfl

theorem node1555_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value105 value1 value2 = (output203, value106, value1))
    (child1554 : Flapjack.WordAlloc.removeDeadStructural input1554 value106 value1 value2 = (output1554, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1555 value105 value1 value2 = (output1555, value615, value1) := by
  rw [input1555_def, output1555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child1554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output1554_skip]
  kernel_rfl

theorem node1556_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value5 value1 value2 = (output202, value105, value1))
    (child1555 : Flapjack.WordAlloc.removeDeadStructural input1555 value105 value1 value2 = (output1555, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1556 value5 value1 value2 = (output1556, value615, value1) := by
  rw [input1556_def, output1556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child1555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output1555_skip]
  kernel_rfl

theorem node1557_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value99 value1 value2 = (output199, value5, value1))
    (child1556 : Flapjack.WordAlloc.removeDeadStructural input1556 value5 value1 value2 = (output1556, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1557 value99 value1 value2 = (output1557, value615, value1) := by
  rw [input1557_def, output1557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child1556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output1556_skip]
  kernel_rfl

theorem node1558_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value99 value1 value2 = (output190, value99, value1))
    (child1557 : Flapjack.WordAlloc.removeDeadStructural input1557 value99 value1 value2 = (output1557, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1558 value99 value1 value2 = (output1558, value615, value1) := by
  rw [input1558_def, output1558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child1557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output1557_skip]
  kernel_rfl

theorem node1559_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value98 value1 value2 = (output189, value99, value1))
    (child1558 : Flapjack.WordAlloc.removeDeadStructural input1558 value99 value1 value2 = (output1558, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1559 value98 value1 value2 = (output1559, value615, value1) := by
  rw [input1559_def, output1559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child1558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output1558_skip]
  kernel_rfl

theorem node1560_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value5 value1 value2 = (output188, value98, value1))
    (child1559 : Flapjack.WordAlloc.removeDeadStructural input1559 value98 value1 value2 = (output1559, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1560 value5 value1 value2 = (output1560, value615, value1) := by
  rw [input1560_def, output1560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child1559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output1559_skip]
  kernel_rfl

theorem node1561_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value92 value1 value2 = (output185, value5, value1))
    (child1560 : Flapjack.WordAlloc.removeDeadStructural input1560 value5 value1 value2 = (output1560, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1561 value92 value1 value2 = (output1561, value615, value1) := by
  rw [input1561_def, output1561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child1560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output1560_skip]
  kernel_rfl

theorem node1562_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value92 value1 value2 = (output176, value92, value1))
    (child1561 : Flapjack.WordAlloc.removeDeadStructural input1561 value92 value1 value2 = (output1561, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1562 value92 value1 value2 = (output1562, value615, value1) := by
  rw [input1562_def, output1562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child1561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output1561_skip]
  kernel_rfl

theorem node1563_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value91 value1 value2 = (output175, value92, value1))
    (child1562 : Flapjack.WordAlloc.removeDeadStructural input1562 value92 value1 value2 = (output1562, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1563 value91 value1 value2 = (output1563, value615, value1) := by
  rw [input1563_def, output1563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child1562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output1562_skip]
  kernel_rfl

theorem node1564_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value5 value1 value2 = (output174, value91, value1))
    (child1563 : Flapjack.WordAlloc.removeDeadStructural input1563 value91 value1 value2 = (output1563, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1564 value5 value1 value2 = (output1564, value615, value1) := by
  rw [input1564_def, output1564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child1563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output1563_skip]
  kernel_rfl

theorem node1565_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value85 value1 value2 = (output171, value5, value1))
    (child1564 : Flapjack.WordAlloc.removeDeadStructural input1564 value5 value1 value2 = (output1564, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1565 value85 value1 value2 = (output1565, value615, value1) := by
  rw [input1565_def, output1565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  try dsimp only
  rw [child1564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output1564_skip]
  kernel_rfl

theorem node1566_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value85 value1 value2 = (output162, value85, value1))
    (child1565 : Flapjack.WordAlloc.removeDeadStructural input1565 value85 value1 value2 = (output1565, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1566 value85 value1 value2 = (output1566, value615, value1) := by
  rw [input1566_def, output1566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child1565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output1565_skip]
  kernel_rfl

theorem node1567_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value84 value1 value2 = (output161, value85, value1))
    (child1566 : Flapjack.WordAlloc.removeDeadStructural input1566 value85 value1 value2 = (output1566, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1567 value84 value1 value2 = (output1567, value615, value1) := by
  rw [input1567_def, output1567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child1566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output1566_skip]
  kernel_rfl

theorem node1568_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value5 value1 value2 = (output160, value84, value1))
    (child1567 : Flapjack.WordAlloc.removeDeadStructural input1567 value84 value1 value2 = (output1567, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1568 value5 value1 value2 = (output1568, value615, value1) := by
  rw [input1568_def, output1568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child1567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output1567_skip]
  kernel_rfl

theorem node1569_cond_eq
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value78 value1 value2 = (output157, value5, value1))
    (child1568 : Flapjack.WordAlloc.removeDeadStructural input1568 value5 value1 value2 = (output1568, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1569 value78 value1 value2 = (output1569, value615, value1) := by
  rw [input1569_def, output1569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child157]
  try dsimp only
  rw [child1568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output157_skip, output1568_skip]
  kernel_rfl

theorem node1570_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value78 value1 value2 = (output148, value78, value1))
    (child1569 : Flapjack.WordAlloc.removeDeadStructural input1569 value78 value1 value2 = (output1569, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1570 value78 value1 value2 = (output1570, value615, value1) := by
  rw [input1570_def, output1570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child1569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output1569_skip]
  kernel_rfl

theorem node1571_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value77 value1 value2 = (output147, value78, value1))
    (child1570 : Flapjack.WordAlloc.removeDeadStructural input1570 value78 value1 value2 = (output1570, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1571 value77 value1 value2 = (output1571, value615, value1) := by
  rw [input1571_def, output1571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child1570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output1570_skip]
  kernel_rfl

theorem node1572_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value5 value1 value2 = (output146, value77, value1))
    (child1571 : Flapjack.WordAlloc.removeDeadStructural input1571 value77 value1 value2 = (output1571, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1572 value5 value1 value2 = (output1572, value615, value1) := by
  rw [input1572_def, output1572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child1571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output1571_skip]
  kernel_rfl

theorem node1573_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value71 value1 value2 = (output143, value5, value1))
    (child1572 : Flapjack.WordAlloc.removeDeadStructural input1572 value5 value1 value2 = (output1572, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1573 value71 value1 value2 = (output1573, value615, value1) := by
  rw [input1573_def, output1573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child1572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output1572_skip]
  kernel_rfl

theorem node1574_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value71 value1 value2 = (output134, value71, value1))
    (child1573 : Flapjack.WordAlloc.removeDeadStructural input1573 value71 value1 value2 = (output1573, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1574 value71 value1 value2 = (output1574, value615, value1) := by
  rw [input1574_def, output1574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child1573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output1573_skip]
  kernel_rfl

theorem node1575_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value70 value1 value2 = (output133, value71, value1))
    (child1574 : Flapjack.WordAlloc.removeDeadStructural input1574 value71 value1 value2 = (output1574, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1575 value70 value1 value2 = (output1575, value615, value1) := by
  rw [input1575_def, output1575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child1574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output1574_skip]
  kernel_rfl

theorem node1576_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value5 value1 value2 = (output132, value70, value1))
    (child1575 : Flapjack.WordAlloc.removeDeadStructural input1575 value70 value1 value2 = (output1575, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1576 value5 value1 value2 = (output1576, value615, value1) := by
  rw [input1576_def, output1576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child1575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output1575_skip]
  kernel_rfl

theorem node1577_cond_eq
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value64 value1 value2 = (output129, value5, value1))
    (child1576 : Flapjack.WordAlloc.removeDeadStructural input1576 value5 value1 value2 = (output1576, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1577 value64 value1 value2 = (output1577, value615, value1) := by
  rw [input1577_def, output1577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child129]
  try dsimp only
  rw [child1576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output129_skip, output1576_skip]
  kernel_rfl

theorem node1578_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value64 value1 value2 = (output120, value64, value1))
    (child1577 : Flapjack.WordAlloc.removeDeadStructural input1577 value64 value1 value2 = (output1577, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1578 value64 value1 value2 = (output1578, value615, value1) := by
  rw [input1578_def, output1578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child1577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output1577_skip]
  kernel_rfl

theorem node1579_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value63 value1 value2 = (output119, value64, value1))
    (child1578 : Flapjack.WordAlloc.removeDeadStructural input1578 value64 value1 value2 = (output1578, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1579 value63 value1 value2 = (output1579, value615, value1) := by
  rw [input1579_def, output1579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child1578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output1578_skip]
  kernel_rfl

theorem node1580_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value5 value1 value2 = (output118, value63, value1))
    (child1579 : Flapjack.WordAlloc.removeDeadStructural input1579 value63 value1 value2 = (output1579, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1580 value5 value1 value2 = (output1580, value615, value1) := by
  rw [input1580_def, output1580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child1579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output1579_skip]
  kernel_rfl

theorem node1581_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value57 value1 value2 = (output115, value5, value1))
    (child1580 : Flapjack.WordAlloc.removeDeadStructural input1580 value5 value1 value2 = (output1580, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1581 value57 value1 value2 = (output1581, value615, value1) := by
  rw [input1581_def, output1581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child1580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output1580_skip]
  kernel_rfl

theorem node1582_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value57 value1 value2 = (output106, value57, value1))
    (child1581 : Flapjack.WordAlloc.removeDeadStructural input1581 value57 value1 value2 = (output1581, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1582 value57 value1 value2 = (output1582, value615, value1) := by
  rw [input1582_def, output1582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child1581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output1581_skip]
  kernel_rfl

theorem node1583_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value56 value1 value2 = (output105, value57, value1))
    (child1582 : Flapjack.WordAlloc.removeDeadStructural input1582 value57 value1 value2 = (output1582, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1583 value56 value1 value2 = (output1583, value615, value1) := by
  rw [input1583_def, output1583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child1582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output1582_skip]
  kernel_rfl

theorem node1584_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value5 value1 value2 = (output104, value56, value1))
    (child1583 : Flapjack.WordAlloc.removeDeadStructural input1583 value56 value1 value2 = (output1583, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1584 value5 value1 value2 = (output1584, value615, value1) := by
  rw [input1584_def, output1584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child1583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output1583_skip]
  kernel_rfl

theorem node1585_cond_eq
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value50 value1 value2 = (output101, value5, value1))
    (child1584 : Flapjack.WordAlloc.removeDeadStructural input1584 value5 value1 value2 = (output1584, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1585 value50 value1 value2 = (output1585, value615, value1) := by
  rw [input1585_def, output1585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child101]
  try dsimp only
  rw [child1584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output101_skip, output1584_skip]
  kernel_rfl

theorem node1586_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value50 value1 value2 = (output92, value50, value1))
    (child1585 : Flapjack.WordAlloc.removeDeadStructural input1585 value50 value1 value2 = (output1585, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1586 value50 value1 value2 = (output1586, value615, value1) := by
  rw [input1586_def, output1586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child1585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output1585_skip]
  kernel_rfl

theorem node1587_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value49 value1 value2 = (output91, value50, value1))
    (child1586 : Flapjack.WordAlloc.removeDeadStructural input1586 value50 value1 value2 = (output1586, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1587 value49 value1 value2 = (output1587, value615, value1) := by
  rw [input1587_def, output1587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  try dsimp only
  rw [child1586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output91_skip, output1586_skip]
  kernel_rfl

theorem node1588_cond_eq
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value5 value1 value2 = (output90, value49, value1))
    (child1587 : Flapjack.WordAlloc.removeDeadStructural input1587 value49 value1 value2 = (output1587, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1588 value5 value1 value2 = (output1588, value615, value1) := by
  rw [input1588_def, output1588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child90]
  try dsimp only
  rw [child1587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output90_skip, output1587_skip]
  kernel_rfl

theorem node1589_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value43 value1 value2 = (output87, value5, value1))
    (child1588 : Flapjack.WordAlloc.removeDeadStructural input1588 value5 value1 value2 = (output1588, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1589 value43 value1 value2 = (output1589, value615, value1) := by
  rw [input1589_def, output1589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  try dsimp only
  rw [child1588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output1588_skip]
  kernel_rfl

theorem node1590_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value43 value1 value2 = (output78, value43, value1))
    (child1589 : Flapjack.WordAlloc.removeDeadStructural input1589 value43 value1 value2 = (output1589, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1590 value43 value1 value2 = (output1590, value615, value1) := by
  rw [input1590_def, output1590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child1589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output1589_skip]
  kernel_rfl

theorem node1591_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value42 value1 value2 = (output77, value43, value1))
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value43 value1 value2 = (output1590, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1591 value42 value1 value2 = (output1591, value615, value1) := by
  rw [input1591_def, output1591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child1590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output1590_skip]
  kernel_rfl

theorem node1592_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value5 value1 value2 = (output76, value42, value1))
    (child1591 : Flapjack.WordAlloc.removeDeadStructural input1591 value42 value1 value2 = (output1591, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1592 value5 value1 value2 = (output1592, value615, value1) := by
  rw [input1592_def, output1592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child1591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output1591_skip]
  kernel_rfl

theorem node1593_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value36 value1 value2 = (output73, value5, value1))
    (child1592 : Flapjack.WordAlloc.removeDeadStructural input1592 value5 value1 value2 = (output1592, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1593 value36 value1 value2 = (output1593, value615, value1) := by
  rw [input1593_def, output1593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child1592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output1592_skip]
  kernel_rfl

theorem node1594_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value36 value1 value2 = (output64, value36, value1))
    (child1593 : Flapjack.WordAlloc.removeDeadStructural input1593 value36 value1 value2 = (output1593, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1594 value36 value1 value2 = (output1594, value615, value1) := by
  rw [input1594_def, output1594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child1593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output1593_skip]
  kernel_rfl

theorem node1595_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value35 value1 value2 = (output63, value36, value1))
    (child1594 : Flapjack.WordAlloc.removeDeadStructural input1594 value36 value1 value2 = (output1594, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1595 value35 value1 value2 = (output1595, value615, value1) := by
  rw [input1595_def, output1595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child1594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output1594_skip]
  kernel_rfl

theorem node1596_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value5 value1 value2 = (output62, value35, value1))
    (child1595 : Flapjack.WordAlloc.removeDeadStructural input1595 value35 value1 value2 = (output1595, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1596 value5 value1 value2 = (output1596, value615, value1) := by
  rw [input1596_def, output1596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child1595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output62_skip, output1595_skip]
  kernel_rfl

theorem node1597_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value29 value1 value2 = (output59, value5, value1))
    (child1596 : Flapjack.WordAlloc.removeDeadStructural input1596 value5 value1 value2 = (output1596, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1597 value29 value1 value2 = (output1597, value615, value1) := by
  rw [input1597_def, output1597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child1596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output1596_skip]
  kernel_rfl

theorem node1598_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value29 value1 value2 = (output50, value29, value1))
    (child1597 : Flapjack.WordAlloc.removeDeadStructural input1597 value29 value1 value2 = (output1597, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1598 value29 value1 value2 = (output1598, value615, value1) := by
  rw [input1598_def, output1598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child1597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output1597_skip]
  kernel_rfl

theorem node1599_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value28 value1 value2 = (output49, value29, value1))
    (child1598 : Flapjack.WordAlloc.removeDeadStructural input1598 value29 value1 value2 = (output1598, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1599 value28 value1 value2 = (output1599, value615, value1) := by
  rw [input1599_def, output1599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child1598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output49_skip, output1598_skip]
  kernel_rfl

theorem node1600_cond_eq
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value5 value1 value2 = (output48, value28, value1))
    (child1599 : Flapjack.WordAlloc.removeDeadStructural input1599 value28 value1 value2 = (output1599, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1600 value5 value1 value2 = (output1600, value615, value1) := by
  rw [input1600_def, output1600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child48]
  try dsimp only
  rw [child1599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output48_skip, output1599_skip]
  kernel_rfl

theorem node1601_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value22 value1 value2 = (output45, value5, value1))
    (child1600 : Flapjack.WordAlloc.removeDeadStructural input1600 value5 value1 value2 = (output1600, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1601 value22 value1 value2 = (output1601, value615, value1) := by
  rw [input1601_def, output1601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child45]
  try dsimp only
  rw [child1600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output1600_skip]
  kernel_rfl

theorem node1602_cond_eq
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value22 value1 value2 = (output36, value22, value1))
    (child1601 : Flapjack.WordAlloc.removeDeadStructural input1601 value22 value1 value2 = (output1601, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1602 value22 value1 value2 = (output1602, value615, value1) := by
  rw [input1602_def, output1602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child36]
  try dsimp only
  rw [child1601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output36_skip, output1601_skip]
  kernel_rfl

theorem node1603_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value21 value1 value2 = (output35, value22, value1))
    (child1602 : Flapjack.WordAlloc.removeDeadStructural input1602 value22 value1 value2 = (output1602, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1603 value21 value1 value2 = (output1603, value615, value1) := by
  rw [input1603_def, output1603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child1602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output1602_skip]
  kernel_rfl

theorem node1604_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value5 value1 value2 = (output34, value21, value1))
    (child1603 : Flapjack.WordAlloc.removeDeadStructural input1603 value21 value1 value2 = (output1603, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1604 value5 value1 value2 = (output1604, value615, value1) := by
  rw [input1604_def, output1604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child1603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output1603_skip]
  kernel_rfl

theorem node1605_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value15 value1 value2 = (output31, value5, value1))
    (child1604 : Flapjack.WordAlloc.removeDeadStructural input1604 value5 value1 value2 = (output1604, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1605 value15 value1 value2 = (output1605, value615, value1) := by
  rw [input1605_def, output1605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child1604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output1604_skip]
  kernel_rfl

theorem node1606_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value15 value1 value2 = (output22, value15, value1))
    (child1605 : Flapjack.WordAlloc.removeDeadStructural input1605 value15 value1 value2 = (output1605, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1606 value15 value1 value2 = (output1606, value615, value1) := by
  rw [input1606_def, output1606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child1605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output1605_skip]
  kernel_rfl

theorem node1607_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value14 value1 value2 = (output21, value15, value1))
    (child1606 : Flapjack.WordAlloc.removeDeadStructural input1606 value15 value1 value2 = (output1606, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1607 value14 value1 value2 = (output1607, value615, value1) := by
  rw [input1607_def, output1607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child1606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output1606_skip]
  kernel_rfl

theorem node1608_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value5 value1 value2 = (output20, value14, value1))
    (child1607 : Flapjack.WordAlloc.removeDeadStructural input1607 value14 value1 value2 = (output1607, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1608 value5 value1 value2 = (output1608, value615, value1) := by
  rw [input1608_def, output1608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  try dsimp only
  rw [child1607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output20_skip, output1607_skip]
  kernel_rfl

theorem node1609_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value8 value1 value2 = (output17, value5, value1))
    (child1608 : Flapjack.WordAlloc.removeDeadStructural input1608 value5 value1 value2 = (output1608, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1609 value8 value1 value2 = (output1609, value615, value1) := by
  rw [input1609_def, output1609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child1608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17_skip, output1608_skip]
  kernel_rfl

theorem node1610_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value8 value1 value2 = (output8, value8, value1))
    (child1609 : Flapjack.WordAlloc.removeDeadStructural input1609 value8 value1 value2 = (output1609, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1610 value8 value1 value2 = (output1610, value615, value1) := by
  rw [input1610_def, output1610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  try dsimp only
  rw [child1609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output1609_skip]
  kernel_rfl

theorem node1611_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child1610 : Flapjack.WordAlloc.removeDeadStructural input1610 value8 value1 value2 = (output1610, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1611 value7 value1 value2 = (output1611, value615, value1) := by
  rw [input1611_def, output1611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child1610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output1610_skip]
  kernel_rfl

theorem node1612_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child1611 : Flapjack.WordAlloc.removeDeadStructural input1611 value7 value1 value2 = (output1611, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1612 value5 value1 value2 = (output1612, value615, value1) := by
  rw [input1612_def, output1612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child1611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output1611_skip]
  kernel_rfl

theorem node1613_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1612 : Flapjack.WordAlloc.removeDeadStructural input1612 value5 value1 value2 = (output1612, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1613 value4 value1 value2 = (output1613, value615, value1) := by
  rw [input1613_def, output1613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1612_skip]
  kernel_rfl

theorem node1614_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1613 : Flapjack.WordAlloc.removeDeadStructural input1613 value4 value1 value2 = (output1613, value615, value1)) : Flapjack.WordAlloc.removeDeadStructural input1614 value0 value1 value2 = (output1614, value615, value1) := by
  rw [input1614_def, output1614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1613_skip]
  kernel_rfl

theorem node1615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1615 value615 value1 value2 = (output1615, value625, value1) := by
  rw [input1615_def, output1615_def]
  kernel_rfl

theorem node1616_cond_eq
    (child1614 : Flapjack.WordAlloc.removeDeadStructural input1614 value0 value1 value2 = (output1614, value615, value1))
    (child1615 : Flapjack.WordAlloc.removeDeadStructural input1615 value615 value1 value2 = (output1615, value625, value1)) : Flapjack.WordAlloc.removeDeadStructural input1616 value0 value1 value2 = (output1616, value625, value1) := by
  rw [input1616_def, output1616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1614]
  try dsimp only
  rw [child1615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1614_skip, output1615_skip]
  kernel_rfl

#print axioms node1616_cond_eq
end InitECandidate.Proofs.DeadStages664.Parallel
