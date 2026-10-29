import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages783.Parallel.Data.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages783.Parallel
theorem node1536_cond_eq
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value803 value1 value2 = (output1256, value803, value1))
    (child1535 : Flapjack.WordAlloc.removeDeadStructural input1535 value803 value1 value2 = (output1535, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1536 value803 value1 value2 = (output1536, value910, value1) := by
  rw [input1536_def, output1536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1256]
  try dsimp only
  rw [child1535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1256_skip, output1535_skip]
  kernel_rfl

theorem node1537_cond_eq
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value801 value1 value2 = (output1255, value803, value1))
    (child1536 : Flapjack.WordAlloc.removeDeadStructural input1536 value803 value1 value2 = (output1536, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1537 value801 value1 value2 = (output1537, value910, value1) := by
  rw [input1537_def, output1537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1255]
  try dsimp only
  rw [child1536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1255_skip, output1536_skip]
  kernel_rfl

theorem node1538_cond_eq
    (child1250 : Flapjack.WordAlloc.removeDeadStructural input1250 value801 value1 value2 = (output1250, value801, value1))
    (child1537 : Flapjack.WordAlloc.removeDeadStructural input1537 value801 value1 value2 = (output1537, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1538 value801 value1 value2 = (output1538, value910, value1) := by
  rw [input1538_def, output1538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1250]
  try dsimp only
  rw [child1537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1250_skip, output1537_skip]
  kernel_rfl

theorem node1539_cond_eq
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value797 value1 value2 = (output1249, value801, value1))
    (child1538 : Flapjack.WordAlloc.removeDeadStructural input1538 value801 value1 value2 = (output1538, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1539 value797 value1 value2 = (output1539, value910, value1) := by
  rw [input1539_def, output1539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1249]
  try dsimp only
  rw [child1538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1249_skip, output1538_skip]
  kernel_rfl

theorem node1540_cond_eq
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value796 value1 value2 = (output1242, value797, value1))
    (child1539 : Flapjack.WordAlloc.removeDeadStructural input1539 value797 value1 value2 = (output1539, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1540 value796 value1 value2 = (output1540, value910, value1) := by
  rw [input1540_def, output1540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1242]
  try dsimp only
  rw [child1539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1242_skip, output1539_skip]
  kernel_rfl

theorem node1541_cond_eq
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value795 value1 value2 = (output1241, value796, value1))
    (child1540 : Flapjack.WordAlloc.removeDeadStructural input1540 value796 value1 value2 = (output1540, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1541 value795 value1 value2 = (output1541, value910, value1) := by
  rw [input1541_def, output1541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1241]
  try dsimp only
  rw [child1540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1241_skip, output1540_skip]
  kernel_rfl

theorem node1542_cond_eq
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value794 value1 value2 = (output1240, value795, value1))
    (child1541 : Flapjack.WordAlloc.removeDeadStructural input1541 value795 value1 value2 = (output1541, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1542 value794 value1 value2 = (output1542, value910, value1) := by
  rw [input1542_def, output1542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1240]
  try dsimp only
  rw [child1541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1240_skip, output1541_skip]
  kernel_rfl

theorem node1543_cond_eq
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value793 value1 value2 = (output1239, value794, value1))
    (child1542 : Flapjack.WordAlloc.removeDeadStructural input1542 value794 value1 value2 = (output1542, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1543 value793 value1 value2 = (output1543, value910, value1) := by
  rw [input1543_def, output1543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1239]
  try dsimp only
  rw [child1542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1239_skip, output1542_skip]
  kernel_rfl

theorem node1544_cond_eq
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value792 value1 value2 = (output1238, value793, value1))
    (child1543 : Flapjack.WordAlloc.removeDeadStructural input1543 value793 value1 value2 = (output1543, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1544 value792 value1 value2 = (output1544, value910, value1) := by
  rw [input1544_def, output1544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1238]
  try dsimp only
  rw [child1543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1238_skip, output1543_skip]
  kernel_rfl

theorem node1545_cond_eq
    (child1237 : Flapjack.WordAlloc.removeDeadStructural input1237 value791 value1 value2 = (output1237, value792, value1))
    (child1544 : Flapjack.WordAlloc.removeDeadStructural input1544 value792 value1 value2 = (output1544, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1545 value791 value1 value2 = (output1545, value910, value1) := by
  rw [input1545_def, output1545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1237]
  try dsimp only
  rw [child1544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1237_skip, output1544_skip]
  kernel_rfl

theorem node1546_cond_eq
    (child1236 : Flapjack.WordAlloc.removeDeadStructural input1236 value790 value1 value2 = (output1236, value791, value1))
    (child1545 : Flapjack.WordAlloc.removeDeadStructural input1545 value791 value1 value2 = (output1545, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1546 value790 value1 value2 = (output1546, value910, value1) := by
  rw [input1546_def, output1546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1236]
  try dsimp only
  rw [child1545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1236_skip, output1545_skip]
  kernel_rfl

theorem node1547_cond_eq
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value788 value1 value2 = (output1235, value790, value1))
    (child1546 : Flapjack.WordAlloc.removeDeadStructural input1546 value790 value1 value2 = (output1546, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1547 value788 value1 value2 = (output1547, value910, value1) := by
  rw [input1547_def, output1547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1235]
  try dsimp only
  rw [child1546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1235_skip, output1546_skip]
  kernel_rfl

theorem node1548_cond_eq
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value787 value1 value2 = (output1232, value788, value1))
    (child1547 : Flapjack.WordAlloc.removeDeadStructural input1547 value788 value1 value2 = (output1547, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1548 value787 value1 value2 = (output1548, value910, value1) := by
  rw [input1548_def, output1548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1232]
  try dsimp only
  rw [child1547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1232_skip, output1547_skip]
  kernel_rfl

theorem node1549_cond_eq
    (child1231 : Flapjack.WordAlloc.removeDeadStructural input1231 value785 value1 value2 = (output1231, value787, value1))
    (child1548 : Flapjack.WordAlloc.removeDeadStructural input1548 value787 value1 value2 = (output1548, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1549 value785 value1 value2 = (output1549, value910, value1) := by
  rw [input1549_def, output1549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1231]
  try dsimp only
  rw [child1548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1231_skip, output1548_skip]
  kernel_rfl

theorem node1550_cond_eq
    (child1228 : Flapjack.WordAlloc.removeDeadStructural input1228 value784 value1 value2 = (output1228, value785, value1))
    (child1549 : Flapjack.WordAlloc.removeDeadStructural input1549 value785 value1 value2 = (output1549, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1550 value784 value1 value2 = (output1550, value910, value1) := by
  rw [input1550_def, output1550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1228]
  try dsimp only
  rw [child1549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1228_skip, output1549_skip]
  kernel_rfl

theorem node1551_cond_eq
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value782 value1 value2 = (output1227, value784, value1))
    (child1550 : Flapjack.WordAlloc.removeDeadStructural input1550 value784 value1 value2 = (output1550, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1551 value782 value1 value2 = (output1551, value910, value1) := by
  rw [input1551_def, output1551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1227]
  try dsimp only
  rw [child1550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1227_skip, output1550_skip]
  kernel_rfl

theorem node1552_cond_eq
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value781 value1 value2 = (output1224, value782, value1))
    (child1551 : Flapjack.WordAlloc.removeDeadStructural input1551 value782 value1 value2 = (output1551, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1552 value781 value1 value2 = (output1552, value910, value1) := by
  rw [input1552_def, output1552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1224]
  try dsimp only
  rw [child1551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1224_skip, output1551_skip]
  kernel_rfl

theorem node1553_cond_eq
    (child1223 : Flapjack.WordAlloc.removeDeadStructural input1223 value779 value1 value2 = (output1223, value781, value1))
    (child1552 : Flapjack.WordAlloc.removeDeadStructural input1552 value781 value1 value2 = (output1552, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1553 value779 value1 value2 = (output1553, value910, value1) := by
  rw [input1553_def, output1553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1223]
  try dsimp only
  rw [child1552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1223_skip, output1552_skip]
  kernel_rfl

theorem node1554_cond_eq
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value778 value1 value2 = (output1220, value779, value1))
    (child1553 : Flapjack.WordAlloc.removeDeadStructural input1553 value779 value1 value2 = (output1553, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1554 value778 value1 value2 = (output1554, value910, value1) := by
  rw [input1554_def, output1554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1220]
  try dsimp only
  rw [child1553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1220_skip, output1553_skip]
  kernel_rfl

theorem node1555_cond_eq
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value776 value1 value2 = (output1219, value778, value1))
    (child1554 : Flapjack.WordAlloc.removeDeadStructural input1554 value778 value1 value2 = (output1554, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1555 value776 value1 value2 = (output1555, value910, value1) := by
  rw [input1555_def, output1555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1219]
  try dsimp only
  rw [child1554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1219_skip, output1554_skip]
  kernel_rfl

theorem node1556_cond_eq
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value775 value1 value2 = (output1216, value776, value1))
    (child1555 : Flapjack.WordAlloc.removeDeadStructural input1555 value776 value1 value2 = (output1555, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1556 value775 value1 value2 = (output1556, value910, value1) := by
  rw [input1556_def, output1556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1216]
  try dsimp only
  rw [child1555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1216_skip, output1555_skip]
  kernel_rfl

theorem node1557_cond_eq
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value773 value1 value2 = (output1215, value775, value1))
    (child1556 : Flapjack.WordAlloc.removeDeadStructural input1556 value775 value1 value2 = (output1556, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1557 value773 value1 value2 = (output1557, value910, value1) := by
  rw [input1557_def, output1557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1215]
  try dsimp only
  rw [child1556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1215_skip, output1556_skip]
  kernel_rfl

theorem node1558_cond_eq
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value768 value1 value2 = (output1212, value773, value1))
    (child1557 : Flapjack.WordAlloc.removeDeadStructural input1557 value773 value1 value2 = (output1557, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1558 value768 value1 value2 = (output1558, value910, value1) := by
  rw [input1558_def, output1558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1212]
  try dsimp only
  rw [child1557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1212_skip, output1557_skip]
  kernel_rfl

theorem node1559_cond_eq
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value767 value1 value2 = (output1203, value768, value1))
    (child1558 : Flapjack.WordAlloc.removeDeadStructural input1558 value768 value1 value2 = (output1558, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1559 value767 value1 value2 = (output1559, value910, value1) := by
  rw [input1559_def, output1559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1203]
  try dsimp only
  rw [child1558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1203_skip, output1558_skip]
  kernel_rfl

theorem node1560_cond_eq
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value766 value1 value2 = (output1202, value767, value1))
    (child1559 : Flapjack.WordAlloc.removeDeadStructural input1559 value767 value1 value2 = (output1559, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1560 value766 value1 value2 = (output1560, value910, value1) := by
  rw [input1560_def, output1560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1202]
  try dsimp only
  rw [child1559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1202_skip, output1559_skip]
  kernel_rfl

theorem node1561_cond_eq
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value765 value1 value2 = (output1201, value766, value1))
    (child1560 : Flapjack.WordAlloc.removeDeadStructural input1560 value766 value1 value2 = (output1560, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1561 value765 value1 value2 = (output1561, value910, value1) := by
  rw [input1561_def, output1561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1201]
  try dsimp only
  rw [child1560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1201_skip, output1560_skip]
  kernel_rfl

theorem node1562_cond_eq
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value764 value1 value2 = (output1200, value765, value1))
    (child1561 : Flapjack.WordAlloc.removeDeadStructural input1561 value765 value1 value2 = (output1561, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1562 value764 value1 value2 = (output1562, value910, value1) := by
  rw [input1562_def, output1562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1200]
  try dsimp only
  rw [child1561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1200_skip, output1561_skip]
  kernel_rfl

theorem node1563_cond_eq
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value763 value1 value2 = (output1199, value764, value1))
    (child1562 : Flapjack.WordAlloc.removeDeadStructural input1562 value764 value1 value2 = (output1562, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1563 value763 value1 value2 = (output1563, value910, value1) := by
  rw [input1563_def, output1563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1199]
  try dsimp only
  rw [child1562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1199_skip, output1562_skip]
  kernel_rfl

theorem node1564_cond_eq
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value762 value1 value2 = (output1198, value763, value1))
    (child1563 : Flapjack.WordAlloc.removeDeadStructural input1563 value763 value1 value2 = (output1563, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1564 value762 value1 value2 = (output1564, value910, value1) := by
  rw [input1564_def, output1564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1198]
  try dsimp only
  rw [child1563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1198_skip, output1563_skip]
  kernel_rfl

theorem node1565_cond_eq
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value761 value1 value2 = (output1197, value762, value1))
    (child1564 : Flapjack.WordAlloc.removeDeadStructural input1564 value762 value1 value2 = (output1564, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1565 value761 value1 value2 = (output1565, value910, value1) := by
  rw [input1565_def, output1565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1197]
  try dsimp only
  rw [child1564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1197_skip, output1564_skip]
  kernel_rfl

theorem node1566_cond_eq
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value759 value1 value2 = (output1196, value761, value1))
    (child1565 : Flapjack.WordAlloc.removeDeadStructural input1565 value761 value1 value2 = (output1565, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1566 value759 value1 value2 = (output1566, value910, value1) := by
  rw [input1566_def, output1566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1196]
  try dsimp only
  rw [child1565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1196_skip, output1565_skip]
  kernel_rfl

theorem node1567_cond_eq
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value758 value1 value2 = (output1193, value759, value1))
    (child1566 : Flapjack.WordAlloc.removeDeadStructural input1566 value759 value1 value2 = (output1566, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1567 value758 value1 value2 = (output1567, value910, value1) := by
  rw [input1567_def, output1567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1193]
  try dsimp only
  rw [child1566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1193_skip, output1566_skip]
  kernel_rfl

theorem node1568_cond_eq
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value756 value1 value2 = (output1192, value758, value1))
    (child1567 : Flapjack.WordAlloc.removeDeadStructural input1567 value758 value1 value2 = (output1567, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1568 value756 value1 value2 = (output1568, value910, value1) := by
  rw [input1568_def, output1568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1192]
  try dsimp only
  rw [child1567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1192_skip, output1567_skip]
  kernel_rfl

theorem node1569_cond_eq
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value755 value1 value2 = (output1189, value756, value1))
    (child1568 : Flapjack.WordAlloc.removeDeadStructural input1568 value756 value1 value2 = (output1568, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1569 value755 value1 value2 = (output1569, value910, value1) := by
  rw [input1569_def, output1569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1189]
  try dsimp only
  rw [child1568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1189_skip, output1568_skip]
  kernel_rfl

theorem node1570_cond_eq
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value753 value1 value2 = (output1188, value755, value1))
    (child1569 : Flapjack.WordAlloc.removeDeadStructural input1569 value755 value1 value2 = (output1569, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1570 value753 value1 value2 = (output1570, value910, value1) := by
  rw [input1570_def, output1570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1188]
  try dsimp only
  rw [child1569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1188_skip, output1569_skip]
  kernel_rfl

theorem node1571_cond_eq
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value752 value1 value2 = (output1185, value753, value1))
    (child1570 : Flapjack.WordAlloc.removeDeadStructural input1570 value753 value1 value2 = (output1570, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1571 value752 value1 value2 = (output1571, value910, value1) := by
  rw [input1571_def, output1571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1185]
  try dsimp only
  rw [child1570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1185_skip, output1570_skip]
  kernel_rfl

theorem node1572_cond_eq
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value750 value1 value2 = (output1184, value752, value1))
    (child1571 : Flapjack.WordAlloc.removeDeadStructural input1571 value752 value1 value2 = (output1571, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1572 value750 value1 value2 = (output1572, value910, value1) := by
  rw [input1572_def, output1572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1184]
  try dsimp only
  rw [child1571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1184_skip, output1571_skip]
  kernel_rfl

theorem node1573_cond_eq
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value749 value1 value2 = (output1181, value750, value1))
    (child1572 : Flapjack.WordAlloc.removeDeadStructural input1572 value750 value1 value2 = (output1572, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1573 value749 value1 value2 = (output1573, value910, value1) := by
  rw [input1573_def, output1573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1181]
  try dsimp only
  rw [child1572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1181_skip, output1572_skip]
  kernel_rfl

theorem node1574_cond_eq
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value747 value1 value2 = (output1180, value749, value1))
    (child1573 : Flapjack.WordAlloc.removeDeadStructural input1573 value749 value1 value2 = (output1573, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1574 value747 value1 value2 = (output1574, value910, value1) := by
  rw [input1574_def, output1574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1180]
  try dsimp only
  rw [child1573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1180_skip, output1573_skip]
  kernel_rfl

theorem node1575_cond_eq
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value746 value1 value2 = (output1177, value747, value1))
    (child1574 : Flapjack.WordAlloc.removeDeadStructural input1574 value747 value1 value2 = (output1574, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1575 value746 value1 value2 = (output1575, value910, value1) := by
  rw [input1575_def, output1575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1177]
  try dsimp only
  rw [child1574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1177_skip, output1574_skip]
  kernel_rfl

theorem node1576_cond_eq
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value744 value1 value2 = (output1176, value746, value1))
    (child1575 : Flapjack.WordAlloc.removeDeadStructural input1575 value746 value1 value2 = (output1575, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1576 value744 value1 value2 = (output1576, value910, value1) := by
  rw [input1576_def, output1576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1176]
  try dsimp only
  rw [child1575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1176_skip, output1575_skip]
  kernel_rfl

theorem node1577_cond_eq
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value740 value1 value2 = (output1173, value744, value1))
    (child1576 : Flapjack.WordAlloc.removeDeadStructural input1576 value744 value1 value2 = (output1576, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1577 value740 value1 value2 = (output1577, value910, value1) := by
  rw [input1577_def, output1577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1173]
  try dsimp only
  rw [child1576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1173_skip, output1576_skip]
  kernel_rfl

theorem node1578_cond_eq
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value739 value1 value2 = (output1166, value740, value1))
    (child1577 : Flapjack.WordAlloc.removeDeadStructural input1577 value740 value1 value2 = (output1577, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1578 value739 value1 value2 = (output1578, value910, value1) := by
  rw [input1578_def, output1578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1166]
  try dsimp only
  rw [child1577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1166_skip, output1577_skip]
  kernel_rfl

theorem node1579_cond_eq
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value738 value1 value2 = (output1165, value739, value1))
    (child1578 : Flapjack.WordAlloc.removeDeadStructural input1578 value739 value1 value2 = (output1578, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1579 value738 value1 value2 = (output1579, value910, value1) := by
  rw [input1579_def, output1579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1165]
  try dsimp only
  rw [child1578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1165_skip, output1578_skip]
  kernel_rfl

theorem node1580_cond_eq
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value737 value1 value2 = (output1164, value738, value1))
    (child1579 : Flapjack.WordAlloc.removeDeadStructural input1579 value738 value1 value2 = (output1579, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1580 value737 value1 value2 = (output1580, value910, value1) := by
  rw [input1580_def, output1580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1164]
  try dsimp only
  rw [child1579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1164_skip, output1579_skip]
  kernel_rfl

theorem node1581_cond_eq
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value736 value1 value2 = (output1163, value737, value1))
    (child1580 : Flapjack.WordAlloc.removeDeadStructural input1580 value737 value1 value2 = (output1580, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1581 value736 value1 value2 = (output1581, value910, value1) := by
  rw [input1581_def, output1581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1163]
  try dsimp only
  rw [child1580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1163_skip, output1580_skip]
  kernel_rfl

theorem node1582_cond_eq
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value735 value1 value2 = (output1162, value736, value1))
    (child1581 : Flapjack.WordAlloc.removeDeadStructural input1581 value736 value1 value2 = (output1581, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1582 value735 value1 value2 = (output1582, value910, value1) := by
  rw [input1582_def, output1582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1162]
  try dsimp only
  rw [child1581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1162_skip, output1581_skip]
  kernel_rfl

theorem node1583_cond_eq
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value734 value1 value2 = (output1161, value735, value1))
    (child1582 : Flapjack.WordAlloc.removeDeadStructural input1582 value735 value1 value2 = (output1582, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1583 value734 value1 value2 = (output1583, value910, value1) := by
  rw [input1583_def, output1583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1161]
  try dsimp only
  rw [child1582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1161_skip, output1582_skip]
  kernel_rfl

theorem node1584_cond_eq
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value733 value1 value2 = (output1160, value734, value1))
    (child1583 : Flapjack.WordAlloc.removeDeadStructural input1583 value734 value1 value2 = (output1583, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1584 value733 value1 value2 = (output1584, value910, value1) := by
  rw [input1584_def, output1584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1160]
  try dsimp only
  rw [child1583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1160_skip, output1583_skip]
  kernel_rfl

theorem node1585_cond_eq
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value731 value1 value2 = (output1159, value733, value1))
    (child1584 : Flapjack.WordAlloc.removeDeadStructural input1584 value733 value1 value2 = (output1584, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1585 value731 value1 value2 = (output1585, value910, value1) := by
  rw [input1585_def, output1585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1159]
  try dsimp only
  rw [child1584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1159_skip, output1584_skip]
  kernel_rfl

theorem node1586_cond_eq
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value730 value1 value2 = (output1156, value731, value1))
    (child1585 : Flapjack.WordAlloc.removeDeadStructural input1585 value731 value1 value2 = (output1585, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1586 value730 value1 value2 = (output1586, value910, value1) := by
  rw [input1586_def, output1586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1156]
  try dsimp only
  rw [child1585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1156_skip, output1585_skip]
  kernel_rfl

theorem node1587_cond_eq
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value728 value1 value2 = (output1155, value730, value1))
    (child1586 : Flapjack.WordAlloc.removeDeadStructural input1586 value730 value1 value2 = (output1586, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1587 value728 value1 value2 = (output1587, value910, value1) := by
  rw [input1587_def, output1587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1155]
  try dsimp only
  rw [child1586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1155_skip, output1586_skip]
  kernel_rfl

theorem node1588_cond_eq
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value727 value1 value2 = (output1152, value728, value1))
    (child1587 : Flapjack.WordAlloc.removeDeadStructural input1587 value728 value1 value2 = (output1587, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1588 value727 value1 value2 = (output1588, value910, value1) := by
  rw [input1588_def, output1588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1152]
  try dsimp only
  rw [child1587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1152_skip, output1587_skip]
  kernel_rfl

theorem node1589_cond_eq
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value725 value1 value2 = (output1151, value727, value1))
    (child1588 : Flapjack.WordAlloc.removeDeadStructural input1588 value727 value1 value2 = (output1588, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1589 value725 value1 value2 = (output1589, value910, value1) := by
  rw [input1589_def, output1589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1151]
  try dsimp only
  rw [child1588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1151_skip, output1588_skip]
  kernel_rfl

theorem node1590_cond_eq
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value724 value1 value2 = (output1148, value725, value1))
    (child1589 : Flapjack.WordAlloc.removeDeadStructural input1589 value725 value1 value2 = (output1589, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1590 value724 value1 value2 = (output1590, value910, value1) := by
  rw [input1590_def, output1590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1148]
  try dsimp only
  rw [child1589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1148_skip, output1589_skip]
  kernel_rfl

theorem node1591_cond_eq
    (child1147 : Flapjack.WordAlloc.removeDeadStructural input1147 value722 value1 value2 = (output1147, value724, value1))
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value724 value1 value2 = (output1590, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1591 value722 value1 value2 = (output1591, value910, value1) := by
  rw [input1591_def, output1591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1147]
  try dsimp only
  rw [child1590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1147_skip, output1590_skip]
  kernel_rfl

theorem node1592_cond_eq
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value721 value1 value2 = (output1144, value722, value1))
    (child1591 : Flapjack.WordAlloc.removeDeadStructural input1591 value722 value1 value2 = (output1591, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1592 value721 value1 value2 = (output1592, value910, value1) := by
  rw [input1592_def, output1592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1144]
  try dsimp only
  rw [child1591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1144_skip, output1591_skip]
  kernel_rfl

theorem node1593_cond_eq
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value719 value1 value2 = (output1143, value721, value1))
    (child1592 : Flapjack.WordAlloc.removeDeadStructural input1592 value721 value1 value2 = (output1592, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1593 value719 value1 value2 = (output1593, value910, value1) := by
  rw [input1593_def, output1593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1143]
  try dsimp only
  rw [child1592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1143_skip, output1592_skip]
  kernel_rfl

theorem node1594_cond_eq
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value718 value1 value2 = (output1140, value719, value1))
    (child1593 : Flapjack.WordAlloc.removeDeadStructural input1593 value719 value1 value2 = (output1593, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1594 value718 value1 value2 = (output1594, value910, value1) := by
  rw [input1594_def, output1594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1140]
  try dsimp only
  rw [child1593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1140_skip, output1593_skip]
  kernel_rfl

theorem node1595_cond_eq
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value716 value1 value2 = (output1139, value718, value1))
    (child1594 : Flapjack.WordAlloc.removeDeadStructural input1594 value718 value1 value2 = (output1594, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1595 value716 value1 value2 = (output1595, value910, value1) := by
  rw [input1595_def, output1595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1139]
  try dsimp only
  rw [child1594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1139_skip, output1594_skip]
  kernel_rfl

theorem node1596_cond_eq
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value711 value1 value2 = (output1136, value716, value1))
    (child1595 : Flapjack.WordAlloc.removeDeadStructural input1595 value716 value1 value2 = (output1595, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1596 value711 value1 value2 = (output1596, value910, value1) := by
  rw [input1596_def, output1596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1136]
  try dsimp only
  rw [child1595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1136_skip, output1595_skip]
  kernel_rfl

theorem node1597_cond_eq
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value710 value1 value2 = (output1127, value711, value1))
    (child1596 : Flapjack.WordAlloc.removeDeadStructural input1596 value711 value1 value2 = (output1596, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1597 value710 value1 value2 = (output1597, value910, value1) := by
  rw [input1597_def, output1597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1127]
  try dsimp only
  rw [child1596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1127_skip, output1596_skip]
  kernel_rfl

theorem node1598_cond_eq
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value709 value1 value2 = (output1126, value710, value1))
    (child1597 : Flapjack.WordAlloc.removeDeadStructural input1597 value710 value1 value2 = (output1597, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1598 value709 value1 value2 = (output1598, value910, value1) := by
  rw [input1598_def, output1598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1126]
  try dsimp only
  rw [child1597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1126_skip, output1597_skip]
  kernel_rfl

theorem node1599_cond_eq
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value708 value1 value2 = (output1125, value709, value1))
    (child1598 : Flapjack.WordAlloc.removeDeadStructural input1598 value709 value1 value2 = (output1598, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1599 value708 value1 value2 = (output1599, value910, value1) := by
  rw [input1599_def, output1599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1125]
  try dsimp only
  rw [child1598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1125_skip, output1598_skip]
  kernel_rfl

theorem node1600_cond_eq
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value707 value1 value2 = (output1124, value708, value1))
    (child1599 : Flapjack.WordAlloc.removeDeadStructural input1599 value708 value1 value2 = (output1599, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1600 value707 value1 value2 = (output1600, value910, value1) := by
  rw [input1600_def, output1600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1124]
  try dsimp only
  rw [child1599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1124_skip, output1599_skip]
  kernel_rfl

theorem node1601_cond_eq
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value706 value1 value2 = (output1123, value707, value1))
    (child1600 : Flapjack.WordAlloc.removeDeadStructural input1600 value707 value1 value2 = (output1600, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1601 value706 value1 value2 = (output1601, value910, value1) := by
  rw [input1601_def, output1601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1123]
  try dsimp only
  rw [child1600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1123_skip, output1600_skip]
  kernel_rfl

theorem node1602_cond_eq
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value705 value1 value2 = (output1122, value706, value1))
    (child1601 : Flapjack.WordAlloc.removeDeadStructural input1601 value706 value1 value2 = (output1601, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1602 value705 value1 value2 = (output1602, value910, value1) := by
  rw [input1602_def, output1602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1122]
  try dsimp only
  rw [child1601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1122_skip, output1601_skip]
  kernel_rfl

theorem node1603_cond_eq
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value704 value1 value2 = (output1121, value705, value1))
    (child1602 : Flapjack.WordAlloc.removeDeadStructural input1602 value705 value1 value2 = (output1602, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1603 value704 value1 value2 = (output1603, value910, value1) := by
  rw [input1603_def, output1603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1121]
  try dsimp only
  rw [child1602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1121_skip, output1602_skip]
  kernel_rfl

theorem node1604_cond_eq
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value702 value1 value2 = (output1120, value704, value1))
    (child1603 : Flapjack.WordAlloc.removeDeadStructural input1603 value704 value1 value2 = (output1603, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1604 value702 value1 value2 = (output1604, value910, value1) := by
  rw [input1604_def, output1604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1120]
  try dsimp only
  rw [child1603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1120_skip, output1603_skip]
  kernel_rfl

theorem node1605_cond_eq
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value701 value1 value2 = (output1117, value702, value1))
    (child1604 : Flapjack.WordAlloc.removeDeadStructural input1604 value702 value1 value2 = (output1604, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1605 value701 value1 value2 = (output1605, value910, value1) := by
  rw [input1605_def, output1605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1117]
  try dsimp only
  rw [child1604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1117_skip, output1604_skip]
  kernel_rfl

theorem node1606_cond_eq
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value699 value1 value2 = (output1116, value701, value1))
    (child1605 : Flapjack.WordAlloc.removeDeadStructural input1605 value701 value1 value2 = (output1605, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1606 value699 value1 value2 = (output1606, value910, value1) := by
  rw [input1606_def, output1606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1116]
  try dsimp only
  rw [child1605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1116_skip, output1605_skip]
  kernel_rfl

theorem node1607_cond_eq
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value698 value1 value2 = (output1113, value699, value1))
    (child1606 : Flapjack.WordAlloc.removeDeadStructural input1606 value699 value1 value2 = (output1606, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1607 value698 value1 value2 = (output1607, value910, value1) := by
  rw [input1607_def, output1607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1113]
  try dsimp only
  rw [child1606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1113_skip, output1606_skip]
  kernel_rfl

theorem node1608_cond_eq
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value696 value1 value2 = (output1112, value698, value1))
    (child1607 : Flapjack.WordAlloc.removeDeadStructural input1607 value698 value1 value2 = (output1607, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1608 value696 value1 value2 = (output1608, value910, value1) := by
  rw [input1608_def, output1608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1112]
  try dsimp only
  rw [child1607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1112_skip, output1607_skip]
  kernel_rfl

theorem node1609_cond_eq
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value695 value1 value2 = (output1109, value696, value1))
    (child1608 : Flapjack.WordAlloc.removeDeadStructural input1608 value696 value1 value2 = (output1608, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1609 value695 value1 value2 = (output1609, value910, value1) := by
  rw [input1609_def, output1609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1109]
  try dsimp only
  rw [child1608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1109_skip, output1608_skip]
  kernel_rfl

theorem node1610_cond_eq
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value693 value1 value2 = (output1108, value695, value1))
    (child1609 : Flapjack.WordAlloc.removeDeadStructural input1609 value695 value1 value2 = (output1609, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1610 value693 value1 value2 = (output1610, value910, value1) := by
  rw [input1610_def, output1610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1108]
  try dsimp only
  rw [child1609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1108_skip, output1609_skip]
  kernel_rfl

theorem node1611_cond_eq
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value692 value1 value2 = (output1105, value693, value1))
    (child1610 : Flapjack.WordAlloc.removeDeadStructural input1610 value693 value1 value2 = (output1610, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1611 value692 value1 value2 = (output1611, value910, value1) := by
  rw [input1611_def, output1611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1105]
  try dsimp only
  rw [child1610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1105_skip, output1610_skip]
  kernel_rfl

theorem node1612_cond_eq
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value690 value1 value2 = (output1104, value692, value1))
    (child1611 : Flapjack.WordAlloc.removeDeadStructural input1611 value692 value1 value2 = (output1611, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1612 value690 value1 value2 = (output1612, value910, value1) := by
  rw [input1612_def, output1612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1104]
  try dsimp only
  rw [child1611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1104_skip, output1611_skip]
  kernel_rfl

theorem node1613_cond_eq
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value689 value1 value2 = (output1101, value690, value1))
    (child1612 : Flapjack.WordAlloc.removeDeadStructural input1612 value690 value1 value2 = (output1612, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1613 value689 value1 value2 = (output1613, value910, value1) := by
  rw [input1613_def, output1613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1101]
  try dsimp only
  rw [child1612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1101_skip, output1612_skip]
  kernel_rfl

theorem node1614_cond_eq
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value687 value1 value2 = (output1100, value689, value1))
    (child1613 : Flapjack.WordAlloc.removeDeadStructural input1613 value689 value1 value2 = (output1613, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1614 value687 value1 value2 = (output1614, value910, value1) := by
  rw [input1614_def, output1614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1100]
  try dsimp only
  rw [child1613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1100_skip, output1613_skip]
  kernel_rfl

theorem node1615_cond_eq
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value683 value1 value2 = (output1097, value687, value1))
    (child1614 : Flapjack.WordAlloc.removeDeadStructural input1614 value687 value1 value2 = (output1614, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1615 value683 value1 value2 = (output1615, value910, value1) := by
  rw [input1615_def, output1615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1097]
  try dsimp only
  rw [child1614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1097_skip, output1614_skip]
  kernel_rfl

theorem node1616_cond_eq
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value683 value1 value2 = (output1090, value683, value1))
    (child1615 : Flapjack.WordAlloc.removeDeadStructural input1615 value683 value1 value2 = (output1615, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1616 value683 value1 value2 = (output1616, value910, value1) := by
  rw [input1616_def, output1616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1090]
  try dsimp only
  rw [child1615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1090_skip, output1615_skip]
  kernel_rfl

theorem node1617_cond_eq
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value679 value1 value2 = (output1089, value683, value1))
    (child1616 : Flapjack.WordAlloc.removeDeadStructural input1616 value683 value1 value2 = (output1616, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1617 value679 value1 value2 = (output1617, value910, value1) := by
  rw [input1617_def, output1617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1089]
  try dsimp only
  rw [child1616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1089_skip, output1616_skip]
  kernel_rfl

theorem node1618_cond_eq
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value679 value1 value2 = (output1082, value679, value1))
    (child1617 : Flapjack.WordAlloc.removeDeadStructural input1617 value679 value1 value2 = (output1617, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1618 value679 value1 value2 = (output1618, value910, value1) := by
  rw [input1618_def, output1618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1082]
  try dsimp only
  rw [child1617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1082_skip, output1617_skip]
  kernel_rfl

theorem node1619_cond_eq
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value678 value1 value2 = (output1081, value679, value1))
    (child1618 : Flapjack.WordAlloc.removeDeadStructural input1618 value679 value1 value2 = (output1618, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1619 value678 value1 value2 = (output1619, value910, value1) := by
  rw [input1619_def, output1619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1081]
  try dsimp only
  rw [child1618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1081_skip, output1618_skip]
  kernel_rfl

theorem node1620_cond_eq
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value677 value1 value2 = (output1080, value678, value1))
    (child1619 : Flapjack.WordAlloc.removeDeadStructural input1619 value678 value1 value2 = (output1619, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1620 value677 value1 value2 = (output1620, value910, value1) := by
  rw [input1620_def, output1620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1080]
  try dsimp only
  rw [child1619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1080_skip, output1619_skip]
  kernel_rfl

theorem node1621_cond_eq
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value673 value1 value2 = (output1079, value677, value1))
    (child1620 : Flapjack.WordAlloc.removeDeadStructural input1620 value677 value1 value2 = (output1620, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1621 value673 value1 value2 = (output1621, value910, value1) := by
  rw [input1621_def, output1621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1079]
  try dsimp only
  rw [child1620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1079_skip, output1620_skip]
  kernel_rfl

theorem node1622_cond_eq
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value625 value1 value2 = (output1072, value673, value1))
    (child1621 : Flapjack.WordAlloc.removeDeadStructural input1621 value673 value1 value2 = (output1621, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1622 value625 value1 value2 = (output1622, value910, value1) := by
  rw [input1622_def, output1622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1072]
  try dsimp only
  rw [child1621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1072_skip, output1621_skip]
  kernel_rfl

theorem node1623_cond_eq
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value668 value1 value2 = (output1071, value625, value1))
    (child1622 : Flapjack.WordAlloc.removeDeadStructural input1622 value625 value1 value2 = (output1622, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1623 value668 value1 value2 = (output1623, value910, value1) := by
  rw [input1623_def, output1623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1071]
  try dsimp only
  rw [child1622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1071_skip, output1622_skip]
  kernel_rfl

theorem node1624_cond_eq
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value663 value1 value2 = (output1062, value668, value1))
    (child1623 : Flapjack.WordAlloc.removeDeadStructural input1623 value668 value1 value2 = (output1623, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1624 value663 value1 value2 = (output1624, value910, value1) := by
  rw [input1624_def, output1624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1062]
  try dsimp only
  rw [child1623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1062_skip, output1623_skip]
  kernel_rfl

theorem node1625_cond_eq
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value658 value1 value2 = (output1053, value663, value1))
    (child1624 : Flapjack.WordAlloc.removeDeadStructural input1624 value663 value1 value2 = (output1624, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1625 value658 value1 value2 = (output1625, value910, value1) := by
  rw [input1625_def, output1625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1053]
  try dsimp only
  rw [child1624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1053_skip, output1624_skip]
  kernel_rfl

theorem node1626_cond_eq
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value653 value1 value2 = (output1044, value658, value1))
    (child1625 : Flapjack.WordAlloc.removeDeadStructural input1625 value658 value1 value2 = (output1625, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1626 value653 value1 value2 = (output1626, value910, value1) := by
  rw [input1626_def, output1626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1044]
  try dsimp only
  rw [child1625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1044_skip, output1625_skip]
  kernel_rfl

theorem node1627_cond_eq
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value648 value1 value2 = (output1035, value653, value1))
    (child1626 : Flapjack.WordAlloc.removeDeadStructural input1626 value653 value1 value2 = (output1626, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1627 value648 value1 value2 = (output1627, value910, value1) := by
  rw [input1627_def, output1627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1035]
  try dsimp only
  rw [child1626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1035_skip, output1626_skip]
  kernel_rfl

theorem node1628_cond_eq
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value643 value1 value2 = (output1026, value648, value1))
    (child1627 : Flapjack.WordAlloc.removeDeadStructural input1627 value648 value1 value2 = (output1627, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1628 value643 value1 value2 = (output1628, value910, value1) := by
  rw [input1628_def, output1628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1026]
  try dsimp only
  rw [child1627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1026_skip, output1627_skip]
  kernel_rfl

theorem node1629_cond_eq
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value642 value1 value2 = (output1017, value643, value1))
    (child1628 : Flapjack.WordAlloc.removeDeadStructural input1628 value643 value1 value2 = (output1628, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1629 value642 value1 value2 = (output1629, value910, value1) := by
  rw [input1629_def, output1629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1017]
  try dsimp only
  rw [child1628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1017_skip, output1628_skip]
  kernel_rfl

theorem node1630_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value640 value1 value2 = (output1016, value642, value1))
    (child1629 : Flapjack.WordAlloc.removeDeadStructural input1629 value642 value1 value2 = (output1629, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1630 value640 value1 value2 = (output1630, value910, value1) := by
  rw [input1630_def, output1630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  try dsimp only
  rw [child1629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output1629_skip]
  kernel_rfl

theorem node1631_cond_eq
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value639 value1 value2 = (output1013, value640, value1))
    (child1630 : Flapjack.WordAlloc.removeDeadStructural input1630 value640 value1 value2 = (output1630, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1631 value639 value1 value2 = (output1631, value910, value1) := by
  rw [input1631_def, output1631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1013]
  try dsimp only
  rw [child1630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1013_skip, output1630_skip]
  kernel_rfl

theorem node1632_cond_eq
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value637 value1 value2 = (output1012, value639, value1))
    (child1631 : Flapjack.WordAlloc.removeDeadStructural input1631 value639 value1 value2 = (output1631, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1632 value637 value1 value2 = (output1632, value910, value1) := by
  rw [input1632_def, output1632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1012]
  try dsimp only
  rw [child1631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1012_skip, output1631_skip]
  kernel_rfl

theorem node1633_cond_eq
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value636 value1 value2 = (output1009, value637, value1))
    (child1632 : Flapjack.WordAlloc.removeDeadStructural input1632 value637 value1 value2 = (output1632, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1633 value636 value1 value2 = (output1633, value910, value1) := by
  rw [input1633_def, output1633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1009]
  try dsimp only
  rw [child1632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1009_skip, output1632_skip]
  kernel_rfl

theorem node1634_cond_eq
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value634 value1 value2 = (output1008, value636, value1))
    (child1633 : Flapjack.WordAlloc.removeDeadStructural input1633 value636 value1 value2 = (output1633, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1634 value634 value1 value2 = (output1634, value910, value1) := by
  rw [input1634_def, output1634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1008]
  try dsimp only
  rw [child1633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1008_skip, output1633_skip]
  kernel_rfl

theorem node1635_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value633 value1 value2 = (output1005, value634, value1))
    (child1634 : Flapjack.WordAlloc.removeDeadStructural input1634 value634 value1 value2 = (output1634, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1635 value633 value1 value2 = (output1635, value910, value1) := by
  rw [input1635_def, output1635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  try dsimp only
  rw [child1634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1634_skip]
  kernel_rfl

theorem node1636_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value631 value1 value2 = (output1004, value633, value1))
    (child1635 : Flapjack.WordAlloc.removeDeadStructural input1635 value633 value1 value2 = (output1635, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1636 value631 value1 value2 = (output1636, value910, value1) := by
  rw [input1636_def, output1636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  try dsimp only
  rw [child1635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output1635_skip]
  kernel_rfl

theorem node1637_cond_eq
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value630 value1 value2 = (output1001, value631, value1))
    (child1636 : Flapjack.WordAlloc.removeDeadStructural input1636 value631 value1 value2 = (output1636, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1637 value630 value1 value2 = (output1637, value910, value1) := by
  rw [input1637_def, output1637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1001]
  try dsimp only
  rw [child1636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1001_skip, output1636_skip]
  kernel_rfl

theorem node1638_cond_eq
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value628 value1 value2 = (output1000, value630, value1))
    (child1637 : Flapjack.WordAlloc.removeDeadStructural input1637 value630 value1 value2 = (output1637, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1638 value628 value1 value2 = (output1638, value910, value1) := by
  rw [input1638_def, output1638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1000]
  try dsimp only
  rw [child1637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1000_skip, output1637_skip]
  kernel_rfl

theorem node1639_cond_eq
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value627 value1 value2 = (output997, value628, value1))
    (child1638 : Flapjack.WordAlloc.removeDeadStructural input1638 value628 value1 value2 = (output1638, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1639 value627 value1 value2 = (output1639, value910, value1) := by
  rw [input1639_def, output1639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child997]
  try dsimp only
  rw [child1638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output997_skip, output1638_skip]
  kernel_rfl

theorem node1640_cond_eq
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value625 value1 value2 = (output996, value627, value1))
    (child1639 : Flapjack.WordAlloc.removeDeadStructural input1639 value627 value1 value2 = (output1639, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1640 value625 value1 value2 = (output1640, value910, value1) := by
  rw [input1640_def, output1640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child996]
  try dsimp only
  rw [child1639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output996_skip, output1639_skip]
  kernel_rfl

theorem node1641_cond_eq
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value624 value1 value2 = (output993, value625, value1))
    (child1640 : Flapjack.WordAlloc.removeDeadStructural input1640 value625 value1 value2 = (output1640, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1641 value624 value1 value2 = (output1641, value910, value1) := by
  rw [input1641_def, output1641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child993]
  try dsimp only
  rw [child1640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output993_skip, output1640_skip]
  kernel_rfl

theorem node1642_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value619 value1 value2 = (output990, value624, value1))
    (child1641 : Flapjack.WordAlloc.removeDeadStructural input1641 value624 value1 value2 = (output1641, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1642 value619 value1 value2 = (output1642, value910, value1) := by
  rw [input1642_def, output1642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  try dsimp only
  rw [child1641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output990_skip, output1641_skip]
  kernel_rfl

theorem node1643_cond_eq
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value614 value1 value2 = (output981, value619, value1))
    (child1642 : Flapjack.WordAlloc.removeDeadStructural input1642 value619 value1 value2 = (output1642, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1643 value614 value1 value2 = (output1643, value910, value1) := by
  rw [input1643_def, output1643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child981]
  try dsimp only
  rw [child1642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output981_skip, output1642_skip]
  kernel_rfl

theorem node1644_cond_eq
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value609 value1 value2 = (output972, value614, value1))
    (child1643 : Flapjack.WordAlloc.removeDeadStructural input1643 value614 value1 value2 = (output1643, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1644 value609 value1 value2 = (output1644, value910, value1) := by
  rw [input1644_def, output1644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child972]
  try dsimp only
  rw [child1643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output972_skip, output1643_skip]
  kernel_rfl

theorem node1645_cond_eq
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value604 value1 value2 = (output963, value609, value1))
    (child1644 : Flapjack.WordAlloc.removeDeadStructural input1644 value609 value1 value2 = (output1644, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1645 value604 value1 value2 = (output1645, value910, value1) := by
  rw [input1645_def, output1645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child963]
  try dsimp only
  rw [child1644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output963_skip, output1644_skip]
  kernel_rfl

theorem node1646_cond_eq
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value599 value1 value2 = (output954, value604, value1))
    (child1645 : Flapjack.WordAlloc.removeDeadStructural input1645 value604 value1 value2 = (output1645, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1646 value599 value1 value2 = (output1646, value910, value1) := by
  rw [input1646_def, output1646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child954]
  try dsimp only
  rw [child1645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output954_skip, output1645_skip]
  kernel_rfl

theorem node1647_cond_eq
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value594 value1 value2 = (output945, value599, value1))
    (child1646 : Flapjack.WordAlloc.removeDeadStructural input1646 value599 value1 value2 = (output1646, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1647 value594 value1 value2 = (output1647, value910, value1) := by
  rw [input1647_def, output1647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child945]
  try dsimp only
  rw [child1646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output945_skip, output1646_skip]
  kernel_rfl

theorem node1648_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value593 value1 value2 = (output936, value594, value1))
    (child1647 : Flapjack.WordAlloc.removeDeadStructural input1647 value594 value1 value2 = (output1647, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1648 value593 value1 value2 = (output1648, value910, value1) := by
  rw [input1648_def, output1648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child1647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output1647_skip]
  kernel_rfl

theorem node1649_cond_eq
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value591 value1 value2 = (output935, value593, value1))
    (child1648 : Flapjack.WordAlloc.removeDeadStructural input1648 value593 value1 value2 = (output1648, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1649 value591 value1 value2 = (output1649, value910, value1) := by
  rw [input1649_def, output1649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child935]
  try dsimp only
  rw [child1648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output935_skip, output1648_skip]
  kernel_rfl

theorem node1650_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value590 value1 value2 = (output932, value591, value1))
    (child1649 : Flapjack.WordAlloc.removeDeadStructural input1649 value591 value1 value2 = (output1649, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1650 value590 value1 value2 = (output1650, value910, value1) := by
  rw [input1650_def, output1650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  try dsimp only
  rw [child1649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output1649_skip]
  kernel_rfl

theorem node1651_cond_eq
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value588 value1 value2 = (output931, value590, value1))
    (child1650 : Flapjack.WordAlloc.removeDeadStructural input1650 value590 value1 value2 = (output1650, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1651 value588 value1 value2 = (output1651, value910, value1) := by
  rw [input1651_def, output1651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child931]
  try dsimp only
  rw [child1650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output931_skip, output1650_skip]
  kernel_rfl

theorem node1652_cond_eq
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value587 value1 value2 = (output928, value588, value1))
    (child1651 : Flapjack.WordAlloc.removeDeadStructural input1651 value588 value1 value2 = (output1651, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1652 value587 value1 value2 = (output1652, value910, value1) := by
  rw [input1652_def, output1652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child928]
  try dsimp only
  rw [child1651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output928_skip, output1651_skip]
  kernel_rfl

theorem node1653_cond_eq
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value585 value1 value2 = (output927, value587, value1))
    (child1652 : Flapjack.WordAlloc.removeDeadStructural input1652 value587 value1 value2 = (output1652, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1653 value585 value1 value2 = (output1653, value910, value1) := by
  rw [input1653_def, output1653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child927]
  try dsimp only
  rw [child1652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output927_skip, output1652_skip]
  kernel_rfl

theorem node1654_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value584 value1 value2 = (output924, value585, value1))
    (child1653 : Flapjack.WordAlloc.removeDeadStructural input1653 value585 value1 value2 = (output1653, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1654 value584 value1 value2 = (output1654, value910, value1) := by
  rw [input1654_def, output1654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  try dsimp only
  rw [child1653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output1653_skip]
  kernel_rfl

theorem node1655_cond_eq
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value582 value1 value2 = (output923, value584, value1))
    (child1654 : Flapjack.WordAlloc.removeDeadStructural input1654 value584 value1 value2 = (output1654, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1655 value582 value1 value2 = (output1655, value910, value1) := by
  rw [input1655_def, output1655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child923]
  try dsimp only
  rw [child1654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output923_skip, output1654_skip]
  kernel_rfl

theorem node1656_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value581 value1 value2 = (output920, value582, value1))
    (child1655 : Flapjack.WordAlloc.removeDeadStructural input1655 value582 value1 value2 = (output1655, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1656 value581 value1 value2 = (output1656, value910, value1) := by
  rw [input1656_def, output1656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child1655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output1655_skip]
  kernel_rfl

theorem node1657_cond_eq
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value579 value1 value2 = (output919, value581, value1))
    (child1656 : Flapjack.WordAlloc.removeDeadStructural input1656 value581 value1 value2 = (output1656, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1657 value579 value1 value2 = (output1657, value910, value1) := by
  rw [input1657_def, output1657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child919]
  try dsimp only
  rw [child1656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output919_skip, output1656_skip]
  kernel_rfl

theorem node1658_cond_eq
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value578 value1 value2 = (output916, value579, value1))
    (child1657 : Flapjack.WordAlloc.removeDeadStructural input1657 value579 value1 value2 = (output1657, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1658 value578 value1 value2 = (output1658, value910, value1) := by
  rw [input1658_def, output1658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child916]
  try dsimp only
  rw [child1657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output916_skip, output1657_skip]
  kernel_rfl

theorem node1659_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value576 value1 value2 = (output915, value578, value1))
    (child1658 : Flapjack.WordAlloc.removeDeadStructural input1658 value578 value1 value2 = (output1658, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1659 value576 value1 value2 = (output1659, value910, value1) := by
  rw [input1659_def, output1659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  try dsimp only
  rw [child1658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output1658_skip]
  kernel_rfl

theorem node1660_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value575 value1 value2 = (output912, value576, value1))
    (child1659 : Flapjack.WordAlloc.removeDeadStructural input1659 value576 value1 value2 = (output1659, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1660 value575 value1 value2 = (output1660, value910, value1) := by
  rw [input1660_def, output1660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child1659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output1659_skip]
  kernel_rfl

theorem node1661_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value575 value1 value2 = (output909, value575, value1))
    (child1660 : Flapjack.WordAlloc.removeDeadStructural input1660 value575 value1 value2 = (output1660, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1661 value575 value1 value2 = (output1661, value910, value1) := by
  rw [input1661_def, output1661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  try dsimp only
  rw [child1660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output1660_skip]
  kernel_rfl

theorem node1662_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value575 value1 value2 = (output908, value575, value1))
    (child1661 : Flapjack.WordAlloc.removeDeadStructural input1661 value575 value1 value2 = (output1661, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1662 value575 value1 value2 = (output1662, value910, value1) := by
  rw [input1662_def, output1662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child1661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output1661_skip]
  kernel_rfl

theorem node1663_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value575 value1 value2 = (output907, value575, value1))
    (child1662 : Flapjack.WordAlloc.removeDeadStructural input1662 value575 value1 value2 = (output1662, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1663 value575 value1 value2 = (output1663, value910, value1) := by
  rw [input1663_def, output1663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  try dsimp only
  rw [child1662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output907_skip, output1662_skip]
  kernel_rfl

theorem node1664_cond_eq
    (child906 : Flapjack.WordAlloc.removeDeadStructural input906 value575 value1 value2 = (output906, value575, value1))
    (child1663 : Flapjack.WordAlloc.removeDeadStructural input1663 value575 value1 value2 = (output1663, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1664 value575 value1 value2 = (output1664, value910, value1) := by
  rw [input1664_def, output1664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child906]
  try dsimp only
  rw [child1663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output906_skip, output1663_skip]
  kernel_rfl

theorem node1665_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value575 value1 value2 = (output905, value575, value1))
    (child1664 : Flapjack.WordAlloc.removeDeadStructural input1664 value575 value1 value2 = (output1664, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1665 value575 value1 value2 = (output1665, value910, value1) := by
  rw [input1665_def, output1665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child1664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output1664_skip]
  kernel_rfl

theorem node1666_cond_eq
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value575 value1 value2 = (output904, value575, value1))
    (child1665 : Flapjack.WordAlloc.removeDeadStructural input1665 value575 value1 value2 = (output1665, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1666 value575 value1 value2 = (output1666, value910, value1) := by
  rw [input1666_def, output1666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child904]
  try dsimp only
  rw [child1665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output904_skip, output1665_skip]
  kernel_rfl

theorem node1667_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value574 value1 value2 = (output903, value575, value1))
    (child1666 : Flapjack.WordAlloc.removeDeadStructural input1666 value575 value1 value2 = (output1666, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1667 value574 value1 value2 = (output1667, value910, value1) := by
  rw [input1667_def, output1667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child1666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output1666_skip]
  kernel_rfl

theorem node1668_cond_eq
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value572 value1 value2 = (output902, value574, value1))
    (child1667 : Flapjack.WordAlloc.removeDeadStructural input1667 value574 value1 value2 = (output1667, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1668 value572 value1 value2 = (output1668, value910, value1) := by
  rw [input1668_def, output1668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child902]
  try dsimp only
  rw [child1667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output902_skip, output1667_skip]
  kernel_rfl

theorem node1669_cond_eq
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value571 value1 value2 = (output899, value572, value1))
    (child1668 : Flapjack.WordAlloc.removeDeadStructural input1668 value572 value1 value2 = (output1668, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1669 value571 value1 value2 = (output1669, value910, value1) := by
  rw [input1669_def, output1669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child899]
  try dsimp only
  rw [child1668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output899_skip, output1668_skip]
  kernel_rfl

theorem node1670_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value569 value1 value2 = (output898, value571, value1))
    (child1669 : Flapjack.WordAlloc.removeDeadStructural input1669 value571 value1 value2 = (output1669, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1670 value569 value1 value2 = (output1670, value910, value1) := by
  rw [input1670_def, output1670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child1669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output1669_skip]
  kernel_rfl

theorem node1671_cond_eq
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value568 value1 value2 = (output895, value569, value1))
    (child1670 : Flapjack.WordAlloc.removeDeadStructural input1670 value569 value1 value2 = (output1670, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1671 value568 value1 value2 = (output1671, value910, value1) := by
  rw [input1671_def, output1671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child895]
  try dsimp only
  rw [child1670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output895_skip, output1670_skip]
  kernel_rfl

theorem node1672_cond_eq
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value566 value1 value2 = (output894, value568, value1))
    (child1671 : Flapjack.WordAlloc.removeDeadStructural input1671 value568 value1 value2 = (output1671, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1672 value566 value1 value2 = (output1672, value910, value1) := by
  rw [input1672_def, output1672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child894]
  try dsimp only
  rw [child1671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output894_skip, output1671_skip]
  kernel_rfl

theorem node1673_cond_eq
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value565 value1 value2 = (output891, value566, value1))
    (child1672 : Flapjack.WordAlloc.removeDeadStructural input1672 value566 value1 value2 = (output1672, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1673 value565 value1 value2 = (output1673, value910, value1) := by
  rw [input1673_def, output1673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child891]
  try dsimp only
  rw [child1672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output891_skip, output1672_skip]
  kernel_rfl

theorem node1674_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value563 value1 value2 = (output890, value565, value1))
    (child1673 : Flapjack.WordAlloc.removeDeadStructural input1673 value565 value1 value2 = (output1673, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1674 value563 value1 value2 = (output1674, value910, value1) := by
  rw [input1674_def, output1674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child1673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output1673_skip]
  kernel_rfl

theorem node1675_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value562 value1 value2 = (output887, value563, value1))
    (child1674 : Flapjack.WordAlloc.removeDeadStructural input1674 value563 value1 value2 = (output1674, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1675 value562 value1 value2 = (output1675, value910, value1) := by
  rw [input1675_def, output1675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child1674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output1674_skip]
  kernel_rfl

theorem node1676_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value560 value1 value2 = (output886, value562, value1))
    (child1675 : Flapjack.WordAlloc.removeDeadStructural input1675 value562 value1 value2 = (output1675, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1676 value560 value1 value2 = (output1676, value910, value1) := by
  rw [input1676_def, output1676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  try dsimp only
  rw [child1675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output1675_skip]
  kernel_rfl

theorem node1677_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value559 value1 value2 = (output883, value560, value1))
    (child1676 : Flapjack.WordAlloc.removeDeadStructural input1676 value560 value1 value2 = (output1676, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1677 value559 value1 value2 = (output1677, value910, value1) := by
  rw [input1677_def, output1677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child1676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output1676_skip]
  kernel_rfl

theorem node1678_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value555 value1 value2 = (output882, value559, value1))
    (child1677 : Flapjack.WordAlloc.removeDeadStructural input1677 value559 value1 value2 = (output1677, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1678 value555 value1 value2 = (output1678, value910, value1) := by
  rw [input1678_def, output1678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child1677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output1677_skip]
  kernel_rfl

theorem node1679_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value557 value1 value2 = (output879, value555, value1))
    (child1678 : Flapjack.WordAlloc.removeDeadStructural input1678 value555 value1 value2 = (output1678, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1679 value557 value1 value2 = (output1679, value910, value1) := by
  rw [input1679_def, output1679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  try dsimp only
  rw [child1678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output879_skip, output1678_skip]
  kernel_rfl

theorem node1680_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value555 value1 value2 = (output878, value557, value1))
    (child1679 : Flapjack.WordAlloc.removeDeadStructural input1679 value557 value1 value2 = (output1679, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1680 value555 value1 value2 = (output1680, value910, value1) := by
  rw [input1680_def, output1680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child1679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output1679_skip]
  kernel_rfl

theorem node1681_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value517 value1 value2 = (output875, value555, value1))
    (child1680 : Flapjack.WordAlloc.removeDeadStructural input1680 value555 value1 value2 = (output1680, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input1681 value517 value1 value2 = (output1681, value910, value1) := by
  rw [input1681_def, output1681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child1680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output1680_skip]
  kernel_rfl

theorem node1682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1682 value517 value1 value2 = (output1682, value911, value1) := by
  rw [input1682_def, output1682_def]
  kernel_rfl

theorem node1683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1683 value911 value1 value2 = (output1683, value912, value1) := by
  rw [input1683_def, output1683_def]
  kernel_rfl

theorem node1684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1684 value912 value1 value2 = (output1684, value912, value1) := by
  rw [input1684_def, output1684_def]
  kernel_rfl

theorem node1685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1685 value912 value1 value2 = (output1685, value913, value1) := by
  rw [input1685_def, output1685_def]
  kernel_rfl

theorem node1686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1686 value913 value1 value2 = (output1686, value914, value1) := by
  rw [input1686_def, output1686_def]
  kernel_rfl

theorem node1687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1687 value914 value1 value2 = (output1687, value915, value1) := by
  rw [input1687_def, output1687_def]
  kernel_rfl

theorem node1688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1688 value915 value1 value2 = (output1688, value916, value1) := by
  rw [input1688_def, output1688_def]
  kernel_rfl

theorem node1689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1689 value916 value1 value2 = (output1689, value917, value1) := by
  rw [input1689_def, output1689_def]
  kernel_rfl

theorem node1690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1690 value917 value1 value2 = (output1690, value917, value1) := by
  rw [input1690_def, output1690_def]
  kernel_rfl

theorem node1691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1691 value917 value1 value2 = (output1691, value917, value1) := by
  rw [input1691_def, output1691_def]
  kernel_rfl

theorem node1692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1692 value917 value1 value2 = (output1692, value918, value1) := by
  rw [input1692_def, output1692_def]
  kernel_rfl

theorem node1693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1693 value918 value1 value2 = (output1693, value919, value1) := by
  rw [input1693_def, output1693_def]
  kernel_rfl

theorem node1694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1694 value919 value1 value2 = (output1694, value920, value1) := by
  rw [input1694_def, output1694_def]
  kernel_rfl

theorem node1695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1695 value920 value1 value2 = (output1695, value921, value1) := by
  rw [input1695_def, output1695_def]
  kernel_rfl

theorem node1696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1696 value921 value1 value2 = (output1696, value921, value1) := by
  rw [input1696_def, output1696_def]
  kernel_rfl

theorem node1697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1697 value921 value1 value2 = (output1697, value922, value1) := by
  rw [input1697_def, output1697_def]
  kernel_rfl

theorem node1698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1698 value922 value1 value2 = (output1698, value923, value1) := by
  rw [input1698_def, output1698_def]
  kernel_rfl

theorem node1699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1699 value923 value1 value2 = (output1699, value924, value1) := by
  rw [input1699_def, output1699_def]
  kernel_rfl

theorem node1700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1700 value924 value1 value2 = (output1700, value925, value1) := by
  rw [input1700_def, output1700_def]
  kernel_rfl

theorem node1701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1701 value925 value1 value2 = (output1701, value926, value1) := by
  rw [input1701_def, output1701_def]
  kernel_rfl

theorem node1702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1702 value926 value1 value2 = (output1702, value927, value1) := by
  rw [input1702_def, output1702_def]
  kernel_rfl

theorem node1703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1703 value927 value1 value2 = (output1703, value928, value1) := by
  rw [input1703_def, output1703_def]
  kernel_rfl

theorem node1704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1704 value928 value1 value2 = (output1704, value929, value1) := by
  rw [input1704_def, output1704_def]
  kernel_rfl

theorem node1705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1705 value929 value1 value2 = (output1705, value930, value1) := by
  rw [input1705_def, output1705_def]
  kernel_rfl

theorem node1706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1706 value930 value1 value2 = (output1706, value931, value1) := by
  rw [input1706_def, output1706_def]
  kernel_rfl

theorem node1707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1707 value931 value1 value2 = (output1707, value932, value1) := by
  rw [input1707_def, output1707_def]
  kernel_rfl

theorem node1708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1708 value932 value1 value2 = (output1708, value933, value1) := by
  rw [input1708_def, output1708_def]
  kernel_rfl

theorem node1709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1709 value933 value1 value2 = (output1709, value934, value1) := by
  rw [input1709_def, output1709_def]
  kernel_rfl

theorem node1710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1710 value934 value1 value2 = (output1710, value934, value1) := by
  rw [input1710_def, output1710_def]
  kernel_rfl

theorem node1711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1711 value934 value1 value2 = (output1711, value935, value1) := by
  rw [input1711_def, output1711_def]
  kernel_rfl

theorem node1712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1712 value935 value1 value2 = (output1712, value936, value1) := by
  rw [input1712_def, output1712_def]
  kernel_rfl

theorem node1713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1713 value936 value1 value2 = (output1713, value937, value1) := by
  rw [input1713_def, output1713_def]
  kernel_rfl

theorem node1714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1714 value937 value1 value2 = (output1714, value938, value1) := by
  rw [input1714_def, output1714_def]
  kernel_rfl

theorem node1715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1715 value938 value1 value2 = (output1715, value938, value1) := by
  rw [input1715_def, output1715_def]
  kernel_rfl

theorem node1716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1716 value938 value1 value2 = (output1716, value939, value1) := by
  rw [input1716_def, output1716_def]
  kernel_rfl

theorem node1717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1717 value939 value1 value2 = (output1717, value940, value1) := by
  rw [input1717_def, output1717_def]
  kernel_rfl

theorem node1718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1718 value940 value1 value2 = (output1718, value941, value1) := by
  rw [input1718_def, output1718_def]
  kernel_rfl

theorem node1719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1719 value941 value1 value2 = (output1719, value942, value1) := by
  rw [input1719_def, output1719_def]
  kernel_rfl

theorem node1720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1720 value942 value1 value2 = (output1720, value942, value1) := by
  rw [input1720_def, output1720_def]
  kernel_rfl

theorem node1721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1721 value942 value1 value2 = (output1721, value943, value1) := by
  rw [input1721_def, output1721_def]
  kernel_rfl

theorem node1722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1722 value943 value1 value2 = (output1722, value943, value1) := by
  rw [input1722_def, output1722_def]
  kernel_rfl

theorem node1723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1723 value943 value1 value2 = (output1723, value944, value1) := by
  rw [input1723_def, output1723_def]
  kernel_rfl

theorem node1724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1724 value944 value1 value2 = (output1724, value945, value1) := by
  rw [input1724_def, output1724_def]
  kernel_rfl

theorem node1725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1725 value945 value1 value2 = (output1725, value945, value1) := by
  rw [input1725_def, output1725_def]
  kernel_rfl

theorem node1726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1726 value945 value1 value2 = (output1726, value946, value1) := by
  rw [input1726_def, output1726_def]
  kernel_rfl

theorem node1727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1727 value946 value1 value2 = (output1727, value947, value1) := by
  rw [input1727_def, output1727_def]
  kernel_rfl

theorem node1728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1728 value947 value1 value2 = (output1728, value947, value1) := by
  rw [input1728_def, output1728_def]
  kernel_rfl

theorem node1729_cond_eq
    (child1727 : Flapjack.WordAlloc.removeDeadStructural input1727 value946 value1 value2 = (output1727, value947, value1))
    (child1728 : Flapjack.WordAlloc.removeDeadStructural input1728 value947 value1 value2 = (output1728, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1729 value946 value1 value2 = (output1729, value947, value1) := by
  rw [input1729_def, output1729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1727]
  try dsimp only
  rw [child1728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1727_skip, output1728_skip]
  kernel_rfl

theorem node1730_cond_eq
    (child1726 : Flapjack.WordAlloc.removeDeadStructural input1726 value945 value1 value2 = (output1726, value946, value1))
    (child1729 : Flapjack.WordAlloc.removeDeadStructural input1729 value946 value1 value2 = (output1729, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1730 value945 value1 value2 = (output1730, value947, value1) := by
  rw [input1730_def, output1730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1726]
  try dsimp only
  rw [child1729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1726_skip, output1729_skip]
  kernel_rfl

theorem node1731_cond_eq
    (child1725 : Flapjack.WordAlloc.removeDeadStructural input1725 value945 value1 value2 = (output1725, value945, value1))
    (child1730 : Flapjack.WordAlloc.removeDeadStructural input1730 value945 value1 value2 = (output1730, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1731 value945 value1 value2 = (output1731, value947, value1) := by
  rw [input1731_def, output1731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1725]
  try dsimp only
  rw [child1730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1725_skip, output1730_skip]
  kernel_rfl

theorem node1732_cond_eq
    (child1724 : Flapjack.WordAlloc.removeDeadStructural input1724 value944 value1 value2 = (output1724, value945, value1))
    (child1731 : Flapjack.WordAlloc.removeDeadStructural input1731 value945 value1 value2 = (output1731, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1732 value944 value1 value2 = (output1732, value947, value1) := by
  rw [input1732_def, output1732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1724]
  try dsimp only
  rw [child1731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1724_skip, output1731_skip]
  kernel_rfl

theorem node1733_cond_eq
    (child1723 : Flapjack.WordAlloc.removeDeadStructural input1723 value943 value1 value2 = (output1723, value944, value1))
    (child1732 : Flapjack.WordAlloc.removeDeadStructural input1732 value944 value1 value2 = (output1732, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1733 value943 value1 value2 = (output1733, value947, value1) := by
  rw [input1733_def, output1733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1723]
  try dsimp only
  rw [child1732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1723_skip, output1732_skip]
  kernel_rfl

theorem node1734_cond_eq
    (child1722 : Flapjack.WordAlloc.removeDeadStructural input1722 value943 value1 value2 = (output1722, value943, value1))
    (child1733 : Flapjack.WordAlloc.removeDeadStructural input1733 value943 value1 value2 = (output1733, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1734 value943 value1 value2 = (output1734, value947, value1) := by
  rw [input1734_def, output1734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1722]
  try dsimp only
  rw [child1733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1722_skip, output1733_skip]
  kernel_rfl

theorem node1735_cond_eq
    (child1721 : Flapjack.WordAlloc.removeDeadStructural input1721 value942 value1 value2 = (output1721, value943, value1))
    (child1734 : Flapjack.WordAlloc.removeDeadStructural input1734 value943 value1 value2 = (output1734, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1735 value942 value1 value2 = (output1735, value947, value1) := by
  rw [input1735_def, output1735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1721]
  try dsimp only
  rw [child1734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1721_skip, output1734_skip]
  kernel_rfl

theorem node1736_cond_eq
    (child1720 : Flapjack.WordAlloc.removeDeadStructural input1720 value942 value1 value2 = (output1720, value942, value1))
    (child1735 : Flapjack.WordAlloc.removeDeadStructural input1735 value942 value1 value2 = (output1735, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1736 value942 value1 value2 = (output1736, value947, value1) := by
  rw [input1736_def, output1736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1720]
  try dsimp only
  rw [child1735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1720_skip, output1735_skip]
  kernel_rfl

theorem node1737_cond_eq
    (child1719 : Flapjack.WordAlloc.removeDeadStructural input1719 value941 value1 value2 = (output1719, value942, value1))
    (child1736 : Flapjack.WordAlloc.removeDeadStructural input1736 value942 value1 value2 = (output1736, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1737 value941 value1 value2 = (output1737, value947, value1) := by
  rw [input1737_def, output1737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1719]
  try dsimp only
  rw [child1736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1719_skip, output1736_skip]
  kernel_rfl

theorem node1738_cond_eq
    (child1718 : Flapjack.WordAlloc.removeDeadStructural input1718 value940 value1 value2 = (output1718, value941, value1))
    (child1737 : Flapjack.WordAlloc.removeDeadStructural input1737 value941 value1 value2 = (output1737, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1738 value940 value1 value2 = (output1738, value947, value1) := by
  rw [input1738_def, output1738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1718]
  try dsimp only
  rw [child1737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1718_skip, output1737_skip]
  kernel_rfl

theorem node1739_cond_eq
    (child1717 : Flapjack.WordAlloc.removeDeadStructural input1717 value939 value1 value2 = (output1717, value940, value1))
    (child1738 : Flapjack.WordAlloc.removeDeadStructural input1738 value940 value1 value2 = (output1738, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1739 value939 value1 value2 = (output1739, value947, value1) := by
  rw [input1739_def, output1739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1717]
  try dsimp only
  rw [child1738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1717_skip, output1738_skip]
  kernel_rfl

theorem node1740_cond_eq
    (child1716 : Flapjack.WordAlloc.removeDeadStructural input1716 value938 value1 value2 = (output1716, value939, value1))
    (child1739 : Flapjack.WordAlloc.removeDeadStructural input1739 value939 value1 value2 = (output1739, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1740 value938 value1 value2 = (output1740, value947, value1) := by
  rw [input1740_def, output1740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1716]
  try dsimp only
  rw [child1739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1716_skip, output1739_skip]
  kernel_rfl

theorem node1741_cond_eq
    (child1715 : Flapjack.WordAlloc.removeDeadStructural input1715 value938 value1 value2 = (output1715, value938, value1))
    (child1740 : Flapjack.WordAlloc.removeDeadStructural input1740 value938 value1 value2 = (output1740, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1741 value938 value1 value2 = (output1741, value947, value1) := by
  rw [input1741_def, output1741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1715]
  try dsimp only
  rw [child1740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1715_skip, output1740_skip]
  kernel_rfl

theorem node1742_cond_eq
    (child1714 : Flapjack.WordAlloc.removeDeadStructural input1714 value937 value1 value2 = (output1714, value938, value1))
    (child1741 : Flapjack.WordAlloc.removeDeadStructural input1741 value938 value1 value2 = (output1741, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1742 value937 value1 value2 = (output1742, value947, value1) := by
  rw [input1742_def, output1742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1714]
  try dsimp only
  rw [child1741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1714_skip, output1741_skip]
  kernel_rfl

theorem node1743_cond_eq
    (child1713 : Flapjack.WordAlloc.removeDeadStructural input1713 value936 value1 value2 = (output1713, value937, value1))
    (child1742 : Flapjack.WordAlloc.removeDeadStructural input1742 value937 value1 value2 = (output1742, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1743 value936 value1 value2 = (output1743, value947, value1) := by
  rw [input1743_def, output1743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1713]
  try dsimp only
  rw [child1742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1713_skip, output1742_skip]
  kernel_rfl

theorem node1744_cond_eq
    (child1712 : Flapjack.WordAlloc.removeDeadStructural input1712 value935 value1 value2 = (output1712, value936, value1))
    (child1743 : Flapjack.WordAlloc.removeDeadStructural input1743 value936 value1 value2 = (output1743, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1744 value935 value1 value2 = (output1744, value947, value1) := by
  rw [input1744_def, output1744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1712]
  try dsimp only
  rw [child1743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1712_skip, output1743_skip]
  kernel_rfl

theorem node1745_cond_eq
    (child1711 : Flapjack.WordAlloc.removeDeadStructural input1711 value934 value1 value2 = (output1711, value935, value1))
    (child1744 : Flapjack.WordAlloc.removeDeadStructural input1744 value935 value1 value2 = (output1744, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1745 value934 value1 value2 = (output1745, value947, value1) := by
  rw [input1745_def, output1745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1711]
  try dsimp only
  rw [child1744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1711_skip, output1744_skip]
  kernel_rfl

theorem node1746_cond_eq
    (child1710 : Flapjack.WordAlloc.removeDeadStructural input1710 value934 value1 value2 = (output1710, value934, value1))
    (child1745 : Flapjack.WordAlloc.removeDeadStructural input1745 value934 value1 value2 = (output1745, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1746 value934 value1 value2 = (output1746, value947, value1) := by
  rw [input1746_def, output1746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1710]
  try dsimp only
  rw [child1745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1710_skip, output1745_skip]
  kernel_rfl

theorem node1747_cond_eq
    (child1709 : Flapjack.WordAlloc.removeDeadStructural input1709 value933 value1 value2 = (output1709, value934, value1))
    (child1746 : Flapjack.WordAlloc.removeDeadStructural input1746 value934 value1 value2 = (output1746, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1747 value933 value1 value2 = (output1747, value947, value1) := by
  rw [input1747_def, output1747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1709]
  try dsimp only
  rw [child1746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1709_skip, output1746_skip]
  kernel_rfl

theorem node1748_cond_eq
    (child1708 : Flapjack.WordAlloc.removeDeadStructural input1708 value932 value1 value2 = (output1708, value933, value1))
    (child1747 : Flapjack.WordAlloc.removeDeadStructural input1747 value933 value1 value2 = (output1747, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1748 value932 value1 value2 = (output1748, value947, value1) := by
  rw [input1748_def, output1748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1708]
  try dsimp only
  rw [child1747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1708_skip, output1747_skip]
  kernel_rfl

theorem node1749_cond_eq
    (child1707 : Flapjack.WordAlloc.removeDeadStructural input1707 value931 value1 value2 = (output1707, value932, value1))
    (child1748 : Flapjack.WordAlloc.removeDeadStructural input1748 value932 value1 value2 = (output1748, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1749 value931 value1 value2 = (output1749, value947, value1) := by
  rw [input1749_def, output1749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1707]
  try dsimp only
  rw [child1748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1707_skip, output1748_skip]
  kernel_rfl

theorem node1750_cond_eq
    (child1706 : Flapjack.WordAlloc.removeDeadStructural input1706 value930 value1 value2 = (output1706, value931, value1))
    (child1749 : Flapjack.WordAlloc.removeDeadStructural input1749 value931 value1 value2 = (output1749, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1750 value930 value1 value2 = (output1750, value947, value1) := by
  rw [input1750_def, output1750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1706]
  try dsimp only
  rw [child1749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1706_skip, output1749_skip]
  kernel_rfl

theorem node1751_cond_eq
    (child1705 : Flapjack.WordAlloc.removeDeadStructural input1705 value929 value1 value2 = (output1705, value930, value1))
    (child1750 : Flapjack.WordAlloc.removeDeadStructural input1750 value930 value1 value2 = (output1750, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1751 value929 value1 value2 = (output1751, value947, value1) := by
  rw [input1751_def, output1751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1705]
  try dsimp only
  rw [child1750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1705_skip, output1750_skip]
  kernel_rfl

theorem node1752_cond_eq
    (child1704 : Flapjack.WordAlloc.removeDeadStructural input1704 value928 value1 value2 = (output1704, value929, value1))
    (child1751 : Flapjack.WordAlloc.removeDeadStructural input1751 value929 value1 value2 = (output1751, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1752 value928 value1 value2 = (output1752, value947, value1) := by
  rw [input1752_def, output1752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1704]
  try dsimp only
  rw [child1751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1704_skip, output1751_skip]
  kernel_rfl

theorem node1753_cond_eq
    (child1703 : Flapjack.WordAlloc.removeDeadStructural input1703 value927 value1 value2 = (output1703, value928, value1))
    (child1752 : Flapjack.WordAlloc.removeDeadStructural input1752 value928 value1 value2 = (output1752, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1753 value927 value1 value2 = (output1753, value947, value1) := by
  rw [input1753_def, output1753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1703]
  try dsimp only
  rw [child1752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1703_skip, output1752_skip]
  kernel_rfl

theorem node1754_cond_eq
    (child1702 : Flapjack.WordAlloc.removeDeadStructural input1702 value926 value1 value2 = (output1702, value927, value1))
    (child1753 : Flapjack.WordAlloc.removeDeadStructural input1753 value927 value1 value2 = (output1753, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1754 value926 value1 value2 = (output1754, value947, value1) := by
  rw [input1754_def, output1754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1702]
  try dsimp only
  rw [child1753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1702_skip, output1753_skip]
  kernel_rfl

theorem node1755_cond_eq
    (child1701 : Flapjack.WordAlloc.removeDeadStructural input1701 value925 value1 value2 = (output1701, value926, value1))
    (child1754 : Flapjack.WordAlloc.removeDeadStructural input1754 value926 value1 value2 = (output1754, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1755 value925 value1 value2 = (output1755, value947, value1) := by
  rw [input1755_def, output1755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1701]
  try dsimp only
  rw [child1754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1701_skip, output1754_skip]
  kernel_rfl

theorem node1756_cond_eq
    (child1700 : Flapjack.WordAlloc.removeDeadStructural input1700 value924 value1 value2 = (output1700, value925, value1))
    (child1755 : Flapjack.WordAlloc.removeDeadStructural input1755 value925 value1 value2 = (output1755, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1756 value924 value1 value2 = (output1756, value947, value1) := by
  rw [input1756_def, output1756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1700]
  try dsimp only
  rw [child1755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1700_skip, output1755_skip]
  kernel_rfl

theorem node1757_cond_eq
    (child1699 : Flapjack.WordAlloc.removeDeadStructural input1699 value923 value1 value2 = (output1699, value924, value1))
    (child1756 : Flapjack.WordAlloc.removeDeadStructural input1756 value924 value1 value2 = (output1756, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1757 value923 value1 value2 = (output1757, value947, value1) := by
  rw [input1757_def, output1757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1699]
  try dsimp only
  rw [child1756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1699_skip, output1756_skip]
  kernel_rfl

theorem node1758_cond_eq
    (child1698 : Flapjack.WordAlloc.removeDeadStructural input1698 value922 value1 value2 = (output1698, value923, value1))
    (child1757 : Flapjack.WordAlloc.removeDeadStructural input1757 value923 value1 value2 = (output1757, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1758 value922 value1 value2 = (output1758, value947, value1) := by
  rw [input1758_def, output1758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1698]
  try dsimp only
  rw [child1757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1698_skip, output1757_skip]
  kernel_rfl

theorem node1759_cond_eq
    (child1697 : Flapjack.WordAlloc.removeDeadStructural input1697 value921 value1 value2 = (output1697, value922, value1))
    (child1758 : Flapjack.WordAlloc.removeDeadStructural input1758 value922 value1 value2 = (output1758, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1759 value921 value1 value2 = (output1759, value947, value1) := by
  rw [input1759_def, output1759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1697]
  try dsimp only
  rw [child1758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1697_skip, output1758_skip]
  kernel_rfl

theorem node1760_cond_eq
    (child1696 : Flapjack.WordAlloc.removeDeadStructural input1696 value921 value1 value2 = (output1696, value921, value1))
    (child1759 : Flapjack.WordAlloc.removeDeadStructural input1759 value921 value1 value2 = (output1759, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1760 value921 value1 value2 = (output1760, value947, value1) := by
  rw [input1760_def, output1760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1696]
  try dsimp only
  rw [child1759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1696_skip, output1759_skip]
  kernel_rfl

theorem node1761_cond_eq
    (child1695 : Flapjack.WordAlloc.removeDeadStructural input1695 value920 value1 value2 = (output1695, value921, value1))
    (child1760 : Flapjack.WordAlloc.removeDeadStructural input1760 value921 value1 value2 = (output1760, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1761 value920 value1 value2 = (output1761, value947, value1) := by
  rw [input1761_def, output1761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1695]
  try dsimp only
  rw [child1760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1695_skip, output1760_skip]
  kernel_rfl

theorem node1762_cond_eq
    (child1694 : Flapjack.WordAlloc.removeDeadStructural input1694 value919 value1 value2 = (output1694, value920, value1))
    (child1761 : Flapjack.WordAlloc.removeDeadStructural input1761 value920 value1 value2 = (output1761, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1762 value919 value1 value2 = (output1762, value947, value1) := by
  rw [input1762_def, output1762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1694]
  try dsimp only
  rw [child1761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1694_skip, output1761_skip]
  kernel_rfl

theorem node1763_cond_eq
    (child1693 : Flapjack.WordAlloc.removeDeadStructural input1693 value918 value1 value2 = (output1693, value919, value1))
    (child1762 : Flapjack.WordAlloc.removeDeadStructural input1762 value919 value1 value2 = (output1762, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1763 value918 value1 value2 = (output1763, value947, value1) := by
  rw [input1763_def, output1763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1693]
  try dsimp only
  rw [child1762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1693_skip, output1762_skip]
  kernel_rfl

theorem node1764_cond_eq
    (child1692 : Flapjack.WordAlloc.removeDeadStructural input1692 value917 value1 value2 = (output1692, value918, value1))
    (child1763 : Flapjack.WordAlloc.removeDeadStructural input1763 value918 value1 value2 = (output1763, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1764 value917 value1 value2 = (output1764, value947, value1) := by
  rw [input1764_def, output1764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1692]
  try dsimp only
  rw [child1763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1692_skip, output1763_skip]
  kernel_rfl

theorem node1765_cond_eq
    (child1691 : Flapjack.WordAlloc.removeDeadStructural input1691 value917 value1 value2 = (output1691, value917, value1))
    (child1764 : Flapjack.WordAlloc.removeDeadStructural input1764 value917 value1 value2 = (output1764, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1765 value917 value1 value2 = (output1765, value947, value1) := by
  rw [input1765_def, output1765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1691]
  try dsimp only
  rw [child1764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1691_skip, output1764_skip]
  kernel_rfl

theorem node1766_cond_eq
    (child1690 : Flapjack.WordAlloc.removeDeadStructural input1690 value917 value1 value2 = (output1690, value917, value1))
    (child1765 : Flapjack.WordAlloc.removeDeadStructural input1765 value917 value1 value2 = (output1765, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1766 value917 value1 value2 = (output1766, value947, value1) := by
  rw [input1766_def, output1766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1690]
  try dsimp only
  rw [child1765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1690_skip, output1765_skip]
  kernel_rfl

theorem node1767_cond_eq
    (child1689 : Flapjack.WordAlloc.removeDeadStructural input1689 value916 value1 value2 = (output1689, value917, value1))
    (child1766 : Flapjack.WordAlloc.removeDeadStructural input1766 value917 value1 value2 = (output1766, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1767 value916 value1 value2 = (output1767, value947, value1) := by
  rw [input1767_def, output1767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1689]
  try dsimp only
  rw [child1766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1689_skip, output1766_skip]
  kernel_rfl

theorem node1768_cond_eq
    (child1688 : Flapjack.WordAlloc.removeDeadStructural input1688 value915 value1 value2 = (output1688, value916, value1))
    (child1767 : Flapjack.WordAlloc.removeDeadStructural input1767 value916 value1 value2 = (output1767, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1768 value915 value1 value2 = (output1768, value947, value1) := by
  rw [input1768_def, output1768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1688]
  try dsimp only
  rw [child1767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1688_skip, output1767_skip]
  kernel_rfl

theorem node1769_cond_eq
    (child1687 : Flapjack.WordAlloc.removeDeadStructural input1687 value914 value1 value2 = (output1687, value915, value1))
    (child1768 : Flapjack.WordAlloc.removeDeadStructural input1768 value915 value1 value2 = (output1768, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1769 value914 value1 value2 = (output1769, value947, value1) := by
  rw [input1769_def, output1769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1687]
  try dsimp only
  rw [child1768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1687_skip, output1768_skip]
  kernel_rfl

theorem node1770_cond_eq
    (child1686 : Flapjack.WordAlloc.removeDeadStructural input1686 value913 value1 value2 = (output1686, value914, value1))
    (child1769 : Flapjack.WordAlloc.removeDeadStructural input1769 value914 value1 value2 = (output1769, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1770 value913 value1 value2 = (output1770, value947, value1) := by
  rw [input1770_def, output1770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1686]
  try dsimp only
  rw [child1769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1686_skip, output1769_skip]
  kernel_rfl

theorem node1771_cond_eq
    (child1685 : Flapjack.WordAlloc.removeDeadStructural input1685 value912 value1 value2 = (output1685, value913, value1))
    (child1770 : Flapjack.WordAlloc.removeDeadStructural input1770 value913 value1 value2 = (output1770, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1771 value912 value1 value2 = (output1771, value947, value1) := by
  rw [input1771_def, output1771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1685]
  try dsimp only
  rw [child1770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1685_skip, output1770_skip]
  kernel_rfl

theorem node1772_cond_eq
    (child1684 : Flapjack.WordAlloc.removeDeadStructural input1684 value912 value1 value2 = (output1684, value912, value1))
    (child1771 : Flapjack.WordAlloc.removeDeadStructural input1771 value912 value1 value2 = (output1771, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1772 value912 value1 value2 = (output1772, value947, value1) := by
  rw [input1772_def, output1772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1684]
  try dsimp only
  rw [child1771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1684_skip, output1771_skip]
  kernel_rfl

theorem node1773_cond_eq
    (child1683 : Flapjack.WordAlloc.removeDeadStructural input1683 value911 value1 value2 = (output1683, value912, value1))
    (child1772 : Flapjack.WordAlloc.removeDeadStructural input1772 value912 value1 value2 = (output1772, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1773 value911 value1 value2 = (output1773, value947, value1) := by
  rw [input1773_def, output1773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1683]
  try dsimp only
  rw [child1772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1683_skip, output1772_skip]
  kernel_rfl

theorem node1774_cond_eq
    (child1682 : Flapjack.WordAlloc.removeDeadStructural input1682 value517 value1 value2 = (output1682, value911, value1))
    (child1773 : Flapjack.WordAlloc.removeDeadStructural input1773 value911 value1 value2 = (output1773, value947, value1)) : Flapjack.WordAlloc.removeDeadStructural input1774 value517 value1 value2 = (output1774, value947, value1) := by
  rw [input1774_def, output1774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1682]
  try dsimp only
  rw [child1773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1682_skip, output1773_skip]
  kernel_rfl

theorem node1775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1775 value947 value1 value2 = (output1775, value948, value1) := by
  rw [input1775_def, output1775_def]
  kernel_rfl

theorem node1776_cond_eq
    (child1774 : Flapjack.WordAlloc.removeDeadStructural input1774 value517 value1 value2 = (output1774, value947, value1))
    (child1775 : Flapjack.WordAlloc.removeDeadStructural input1775 value947 value1 value2 = (output1775, value948, value1)) : Flapjack.WordAlloc.removeDeadStructural input1776 value517 value1 value2 = (output1776, value948, value1) := by
  rw [input1776_def, output1776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1774]
  try dsimp only
  rw [child1775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1774_skip, output1775_skip]
  kernel_rfl

theorem node1777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1777 value948 value1 value2 = (output1777, value948, value1) := by
  rw [input1777_def, output1777_def]
  kernel_rfl

theorem node1778_cond_eq
    (child1776 : Flapjack.WordAlloc.removeDeadStructural input1776 value517 value1 value2 = (output1776, value948, value1))
    (child1777 : Flapjack.WordAlloc.removeDeadStructural input1777 value948 value1 value2 = (output1777, value948, value1)) : Flapjack.WordAlloc.removeDeadStructural input1778 value517 value1 value2 = (output1778, value948, value1) := by
  rw [input1778_def, output1778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1776]
  try dsimp only
  rw [child1777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1776_skip, output1777_skip]
  kernel_rfl

theorem node1779_cond_eq
    (child1681 : Flapjack.WordAlloc.removeDeadStructural input1681 value517 value1 value2 = (output1681, value910, value1))
    (child1778 : Flapjack.WordAlloc.removeDeadStructural input1778 value517 value1 value2 = (output1778, value948, value1)) : Flapjack.WordAlloc.removeDeadStructural input1779 value517 value1 value2 = (output1779, value951, value1) := by
  rw [input1779_def, output1779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1681]
  try dsimp only
  rw [child1778]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1681_skip, output1778_skip]
  kernel_rfl

theorem node1780_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value517 value1 value2 = (output780, value517, value1))
    (child1779 : Flapjack.WordAlloc.removeDeadStructural input1779 value517 value1 value2 = (output1779, value951, value1)) : Flapjack.WordAlloc.removeDeadStructural input1780 value517 value1 value2 = (output1780, value951, value1) := by
  rw [input1780_def, output1780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child780]
  try dsimp only
  rw [child1779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output1779_skip]
  kernel_rfl

theorem node1781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1781 value951 value1 value2 = (output1781, value952, value1) := by
  rw [input1781_def, output1781_def]
  kernel_rfl

theorem node1782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1782 value952 value1 value2 = (output1782, value953, value1) := by
  rw [input1782_def, output1782_def]
  kernel_rfl

theorem node1783_cond_eq
    (child1781 : Flapjack.WordAlloc.removeDeadStructural input1781 value951 value1 value2 = (output1781, value952, value1))
    (child1782 : Flapjack.WordAlloc.removeDeadStructural input1782 value952 value1 value2 = (output1782, value953, value1)) : Flapjack.WordAlloc.removeDeadStructural input1783 value951 value1 value2 = (output1783, value953, value1) := by
  rw [input1783_def, output1783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1781]
  try dsimp only
  rw [child1782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1781_skip, output1782_skip]
  kernel_rfl

theorem node1784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1784 value953 value1 value2 = (output1784, value954, value1) := by
  rw [input1784_def, output1784_def]
  kernel_rfl

theorem node1785_cond_eq
    (child1783 : Flapjack.WordAlloc.removeDeadStructural input1783 value951 value1 value2 = (output1783, value953, value1))
    (child1784 : Flapjack.WordAlloc.removeDeadStructural input1784 value953 value1 value2 = (output1784, value954, value1)) : Flapjack.WordAlloc.removeDeadStructural input1785 value951 value1 value2 = (output1785, value954, value1) := by
  rw [input1785_def, output1785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1783]
  try dsimp only
  rw [child1784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1783_skip, output1784_skip]
  kernel_rfl

theorem node1786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1786 value954 value1 value2 = (output1786, value954, value1) := by
  rw [input1786_def, output1786_def]
  kernel_rfl

theorem node1787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1787 value954 value1 value2 = (output1787, value954, value1) := by
  rw [input1787_def, output1787_def]
  kernel_rfl

theorem node1788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1788 value954 value1 value2 = (output1788, value955, value1) := by
  rw [input1788_def, output1788_def]
  kernel_rfl

theorem node1789_cond_eq
    (child1787 : Flapjack.WordAlloc.removeDeadStructural input1787 value954 value1 value2 = (output1787, value954, value1))
    (child1788 : Flapjack.WordAlloc.removeDeadStructural input1788 value954 value1 value2 = (output1788, value955, value1)) : Flapjack.WordAlloc.removeDeadStructural input1789 value954 value1 value2 = (output1789, value955, value1) := by
  rw [input1789_def, output1789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1787]
  try dsimp only
  rw [child1788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1787_skip, output1788_skip]
  kernel_rfl

theorem node1790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1790 value955 value1 value2 = (output1790, value956, value1) := by
  rw [input1790_def, output1790_def]
  kernel_rfl

theorem node1791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1791 value956 value1 value2 = (output1791, value956, value1) := by
  rw [input1791_def, output1791_def]
  kernel_rfl

#print axioms node1791_cond_eq
end InitECandidate.Proofs.DeadStages783.Parallel
