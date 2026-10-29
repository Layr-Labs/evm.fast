import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages347.Parallel.Data.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages347.Parallel
theorem node1536_cond_eq
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value529 value1 value2 = (output1424, value533, value1))
    (child1535 : Flapjack.WordAlloc.removeDeadStructural input1535 value533 value1 value2 = (output1535, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1536 value529 value1 value2 = (output1536, value566, value1) := by
  rw [input1536_def, output1536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1424]
  try dsimp only
  rw [child1535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1424_skip, output1535_skip]
  kernel_rfl

theorem node1537_cond_eq
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value532 value1 value2 = (output1423, value529, value1))
    (child1536 : Flapjack.WordAlloc.removeDeadStructural input1536 value529 value1 value2 = (output1536, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1537 value532 value1 value2 = (output1537, value566, value1) := by
  rw [input1537_def, output1537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1423]
  try dsimp only
  rw [child1536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1423_skip, output1536_skip]
  kernel_rfl

theorem node1538_cond_eq
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value527 value1 value2 = (output1422, value532, value1))
    (child1537 : Flapjack.WordAlloc.removeDeadStructural input1537 value532 value1 value2 = (output1537, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1538 value527 value1 value2 = (output1538, value566, value1) := by
  rw [input1538_def, output1538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1422]
  try dsimp only
  rw [child1537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1422_skip, output1537_skip]
  kernel_rfl

theorem node1539_cond_eq
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value527 value1 value2 = (output1395, value527, value1))
    (child1538 : Flapjack.WordAlloc.removeDeadStructural input1538 value527 value1 value2 = (output1538, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1539 value527 value1 value2 = (output1539, value566, value1) := by
  rw [input1539_def, output1539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1395]
  try dsimp only
  rw [child1538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1395_skip, output1538_skip]
  kernel_rfl

theorem node1540_cond_eq
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value526 value1 value2 = (output1394, value527, value1))
    (child1539 : Flapjack.WordAlloc.removeDeadStructural input1539 value527 value1 value2 = (output1539, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1540 value526 value1 value2 = (output1540, value566, value1) := by
  rw [input1540_def, output1540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1394]
  try dsimp only
  rw [child1539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1394_skip, output1539_skip]
  kernel_rfl

theorem node1541_cond_eq
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value525 value1 value2 = (output1393, value526, value1))
    (child1540 : Flapjack.WordAlloc.removeDeadStructural input1540 value526 value1 value2 = (output1540, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1541 value525 value1 value2 = (output1541, value566, value1) := by
  rw [input1541_def, output1541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1393]
  try dsimp only
  rw [child1540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1393_skip, output1540_skip]
  kernel_rfl

theorem node1542_cond_eq
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value520 value1 value2 = (output1392, value525, value1))
    (child1541 : Flapjack.WordAlloc.removeDeadStructural input1541 value525 value1 value2 = (output1541, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1542 value520 value1 value2 = (output1542, value566, value1) := by
  rw [input1542_def, output1542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1392]
  try dsimp only
  rw [child1541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1392_skip, output1541_skip]
  kernel_rfl

theorem node1543_cond_eq
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value520 value1 value2 = (output1365, value520, value1))
    (child1542 : Flapjack.WordAlloc.removeDeadStructural input1542 value520 value1 value2 = (output1542, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1543 value520 value1 value2 = (output1543, value566, value1) := by
  rw [input1543_def, output1543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1365]
  try dsimp only
  rw [child1542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1365_skip, output1542_skip]
  kernel_rfl

theorem node1544_cond_eq
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value517 value1 value2 = (output1364, value520, value1))
    (child1543 : Flapjack.WordAlloc.removeDeadStructural input1543 value520 value1 value2 = (output1543, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1544 value517 value1 value2 = (output1544, value566, value1) := by
  rw [input1544_def, output1544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1364]
  try dsimp only
  rw [child1543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1364_skip, output1543_skip]
  kernel_rfl

theorem node1545_cond_eq
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value455 value1 value2 = (output1359, value517, value1))
    (child1544 : Flapjack.WordAlloc.removeDeadStructural input1544 value517 value1 value2 = (output1544, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1545 value455 value1 value2 = (output1545, value566, value1) := by
  rw [input1545_def, output1545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1359]
  try dsimp only
  rw [child1544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1359_skip, output1544_skip]
  kernel_rfl

theorem node1546_cond_eq
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value455 value1 value2 = (output1092, value455, value1))
    (child1545 : Flapjack.WordAlloc.removeDeadStructural input1545 value455 value1 value2 = (output1545, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1546 value455 value1 value2 = (output1546, value566, value1) := by
  rw [input1546_def, output1546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1092]
  try dsimp only
  rw [child1545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1092_skip, output1545_skip]
  kernel_rfl

theorem node1547_cond_eq
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value454 value1 value2 = (output1091, value455, value1))
    (child1546 : Flapjack.WordAlloc.removeDeadStructural input1546 value455 value1 value2 = (output1546, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1547 value454 value1 value2 = (output1547, value566, value1) := by
  rw [input1547_def, output1547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1091]
  try dsimp only
  rw [child1546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1091_skip, output1546_skip]
  kernel_rfl

theorem node1548_cond_eq
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value451 value1 value2 = (output1090, value454, value1))
    (child1547 : Flapjack.WordAlloc.removeDeadStructural input1547 value454 value1 value2 = (output1547, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1548 value451 value1 value2 = (output1548, value566, value1) := by
  rw [input1548_def, output1548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1090]
  try dsimp only
  rw [child1547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1090_skip, output1547_skip]
  kernel_rfl

theorem node1549_cond_eq
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value453 value1 value2 = (output1089, value451, value1))
    (child1548 : Flapjack.WordAlloc.removeDeadStructural input1548 value451 value1 value2 = (output1548, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1549 value453 value1 value2 = (output1549, value566, value1) := by
  rw [input1549_def, output1549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1089]
  try dsimp only
  rw [child1548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1089_skip, output1548_skip]
  kernel_rfl

theorem node1550_cond_eq
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value451 value1 value2 = (output1088, value453, value1))
    (child1549 : Flapjack.WordAlloc.removeDeadStructural input1549 value453 value1 value2 = (output1549, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1550 value451 value1 value2 = (output1550, value566, value1) := by
  rw [input1550_def, output1550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1088]
  try dsimp only
  rw [child1549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1088_skip, output1549_skip]
  kernel_rfl

theorem node1551_cond_eq
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value450 value1 value2 = (output1085, value451, value1))
    (child1550 : Flapjack.WordAlloc.removeDeadStructural input1550 value451 value1 value2 = (output1550, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1551 value450 value1 value2 = (output1551, value566, value1) := by
  rw [input1551_def, output1551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1085]
  try dsimp only
  rw [child1550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1085_skip, output1550_skip]
  kernel_rfl

theorem node1552_cond_eq
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value449 value1 value2 = (output1084, value450, value1))
    (child1551 : Flapjack.WordAlloc.removeDeadStructural input1551 value450 value1 value2 = (output1551, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1552 value449 value1 value2 = (output1552, value566, value1) := by
  rw [input1552_def, output1552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1084]
  try dsimp only
  rw [child1551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1084_skip, output1551_skip]
  kernel_rfl

theorem node1553_cond_eq
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value443 value1 value2 = (output1083, value449, value1))
    (child1552 : Flapjack.WordAlloc.removeDeadStructural input1552 value449 value1 value2 = (output1552, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1553 value443 value1 value2 = (output1553, value566, value1) := by
  rw [input1553_def, output1553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1083]
  try dsimp only
  rw [child1552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1083_skip, output1552_skip]
  kernel_rfl

theorem node1554_cond_eq
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value443 value1 value2 = (output1050, value443, value1))
    (child1553 : Flapjack.WordAlloc.removeDeadStructural input1553 value443 value1 value2 = (output1553, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1554 value443 value1 value2 = (output1554, value566, value1) := by
  rw [input1554_def, output1554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1050]
  try dsimp only
  rw [child1553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1050_skip, output1553_skip]
  kernel_rfl

theorem node1555_cond_eq
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value442 value1 value2 = (output1049, value443, value1))
    (child1554 : Flapjack.WordAlloc.removeDeadStructural input1554 value443 value1 value2 = (output1554, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1555 value442 value1 value2 = (output1555, value566, value1) := by
  rw [input1555_def, output1555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1049]
  try dsimp only
  rw [child1554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1049_skip, output1554_skip]
  kernel_rfl

theorem node1556_cond_eq
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value441 value1 value2 = (output1048, value442, value1))
    (child1555 : Flapjack.WordAlloc.removeDeadStructural input1555 value442 value1 value2 = (output1555, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1556 value441 value1 value2 = (output1556, value566, value1) := by
  rw [input1556_def, output1556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1048]
  try dsimp only
  rw [child1555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1048_skip, output1555_skip]
  kernel_rfl

theorem node1557_cond_eq
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value438 value1 value2 = (output1047, value441, value1))
    (child1556 : Flapjack.WordAlloc.removeDeadStructural input1556 value441 value1 value2 = (output1556, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1557 value438 value1 value2 = (output1557, value566, value1) := by
  rw [input1557_def, output1557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1047]
  try dsimp only
  rw [child1556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1047_skip, output1556_skip]
  kernel_rfl

theorem node1558_cond_eq
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value438 value1 value2 = (output1042, value438, value1))
    (child1557 : Flapjack.WordAlloc.removeDeadStructural input1557 value438 value1 value2 = (output1557, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1558 value438 value1 value2 = (output1558, value566, value1) := by
  rw [input1558_def, output1558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1042]
  try dsimp only
  rw [child1557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1042_skip, output1557_skip]
  kernel_rfl

theorem node1559_cond_eq
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value437 value1 value2 = (output1041, value438, value1))
    (child1558 : Flapjack.WordAlloc.removeDeadStructural input1558 value438 value1 value2 = (output1558, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1559 value437 value1 value2 = (output1559, value566, value1) := by
  rw [input1559_def, output1559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1041]
  try dsimp only
  rw [child1558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1041_skip, output1558_skip]
  kernel_rfl

theorem node1560_cond_eq
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value436 value1 value2 = (output1040, value437, value1))
    (child1559 : Flapjack.WordAlloc.removeDeadStructural input1559 value437 value1 value2 = (output1559, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1560 value436 value1 value2 = (output1560, value566, value1) := by
  rw [input1560_def, output1560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1040]
  try dsimp only
  rw [child1559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1040_skip, output1559_skip]
  kernel_rfl

theorem node1561_cond_eq
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value435 value1 value2 = (output1039, value436, value1))
    (child1560 : Flapjack.WordAlloc.removeDeadStructural input1560 value436 value1 value2 = (output1560, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1561 value435 value1 value2 = (output1561, value566, value1) := by
  rw [input1561_def, output1561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1039]
  try dsimp only
  rw [child1560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1039_skip, output1560_skip]
  kernel_rfl

theorem node1562_cond_eq
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value428 value1 value2 = (output1038, value435, value1))
    (child1561 : Flapjack.WordAlloc.removeDeadStructural input1561 value435 value1 value2 = (output1561, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1562 value428 value1 value2 = (output1562, value566, value1) := by
  rw [input1562_def, output1562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1038]
  try dsimp only
  rw [child1561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1038_skip, output1561_skip]
  kernel_rfl

theorem node1563_cond_eq
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value428 value1 value2 = (output993, value428, value1))
    (child1562 : Flapjack.WordAlloc.removeDeadStructural input1562 value428 value1 value2 = (output1562, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1563 value428 value1 value2 = (output1563, value566, value1) := by
  rw [input1563_def, output1563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child993]
  try dsimp only
  rw [child1562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output993_skip, output1562_skip]
  kernel_rfl

theorem node1564_cond_eq
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value427 value1 value2 = (output992, value428, value1))
    (child1563 : Flapjack.WordAlloc.removeDeadStructural input1563 value428 value1 value2 = (output1563, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1564 value427 value1 value2 = (output1564, value566, value1) := by
  rw [input1564_def, output1564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child992]
  try dsimp only
  rw [child1563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output992_skip, output1563_skip]
  kernel_rfl

theorem node1565_cond_eq
    (child991 : Flapjack.WordAlloc.removeDeadStructural input991 value424 value1 value2 = (output991, value427, value1))
    (child1564 : Flapjack.WordAlloc.removeDeadStructural input1564 value427 value1 value2 = (output1564, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1565 value424 value1 value2 = (output1565, value566, value1) := by
  rw [input1565_def, output1565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child991]
  try dsimp only
  rw [child1564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output991_skip, output1564_skip]
  kernel_rfl

theorem node1566_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value426 value1 value2 = (output990, value424, value1))
    (child1565 : Flapjack.WordAlloc.removeDeadStructural input1565 value424 value1 value2 = (output1565, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1566 value426 value1 value2 = (output1566, value566, value1) := by
  rw [input1566_def, output1566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  try dsimp only
  rw [child1565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output990_skip, output1565_skip]
  kernel_rfl

theorem node1567_cond_eq
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value408 value1 value2 = (output989, value426, value1))
    (child1566 : Flapjack.WordAlloc.removeDeadStructural input1566 value426 value1 value2 = (output1566, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1567 value408 value1 value2 = (output1567, value566, value1) := by
  rw [input1567_def, output1567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child989]
  try dsimp only
  rw [child1566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output989_skip, output1566_skip]
  kernel_rfl

theorem node1568_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value408 value1 value2 = (output912, value408, value1))
    (child1567 : Flapjack.WordAlloc.removeDeadStructural input1567 value408 value1 value2 = (output1567, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1568 value408 value1 value2 = (output1568, value566, value1) := by
  rw [input1568_def, output1568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child1567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output1567_skip]
  kernel_rfl

theorem node1569_cond_eq
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value399 value1 value2 = (output911, value408, value1))
    (child1568 : Flapjack.WordAlloc.removeDeadStructural input1568 value408 value1 value2 = (output1568, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1569 value399 value1 value2 = (output1569, value566, value1) := by
  rw [input1569_def, output1569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child911]
  try dsimp only
  rw [child1568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output911_skip, output1568_skip]
  kernel_rfl

theorem node1570_cond_eq
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value407 value1 value2 = (output910, value399, value1))
    (child1569 : Flapjack.WordAlloc.removeDeadStructural input1569 value399 value1 value2 = (output1569, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1570 value407 value1 value2 = (output1570, value566, value1) := by
  rw [input1570_def, output1570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child910]
  try dsimp only
  rw [child1569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output910_skip, output1569_skip]
  kernel_rfl

theorem node1571_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value387 value1 value2 = (output909, value407, value1))
    (child1570 : Flapjack.WordAlloc.removeDeadStructural input1570 value407 value1 value2 = (output1570, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1571 value387 value1 value2 = (output1571, value566, value1) := by
  rw [input1571_def, output1571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  try dsimp only
  rw [child1570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output1570_skip]
  kernel_rfl

theorem node1572_cond_eq
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value387 value1 value2 = (output836, value387, value1))
    (child1571 : Flapjack.WordAlloc.removeDeadStructural input1571 value387 value1 value2 = (output1571, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1572 value387 value1 value2 = (output1572, value566, value1) := by
  rw [input1572_def, output1572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child836]
  try dsimp only
  rw [child1571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output836_skip, output1571_skip]
  kernel_rfl

theorem node1573_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value385 value1 value2 = (output835, value387, value1))
    (child1572 : Flapjack.WordAlloc.removeDeadStructural input1572 value387 value1 value2 = (output1572, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1573 value385 value1 value2 = (output1573, value566, value1) := by
  rw [input1573_def, output1573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child835]
  try dsimp only
  rw [child1572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output835_skip, output1572_skip]
  kernel_rfl

theorem node1574_cond_eq
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value384 value1 value2 = (output832, value385, value1))
    (child1573 : Flapjack.WordAlloc.removeDeadStructural input1573 value385 value1 value2 = (output1573, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1574 value384 value1 value2 = (output1574, value566, value1) := by
  rw [input1574_def, output1574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child832]
  try dsimp only
  rw [child1573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output832_skip, output1573_skip]
  kernel_rfl

theorem node1575_cond_eq
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value383 value1 value2 = (output831, value384, value1))
    (child1574 : Flapjack.WordAlloc.removeDeadStructural input1574 value384 value1 value2 = (output1574, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1575 value383 value1 value2 = (output1575, value566, value1) := by
  rw [input1575_def, output1575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child831]
  try dsimp only
  rw [child1574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output831_skip, output1574_skip]
  kernel_rfl

theorem node1576_cond_eq
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value382 value1 value2 = (output830, value383, value1))
    (child1575 : Flapjack.WordAlloc.removeDeadStructural input1575 value383 value1 value2 = (output1575, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1576 value382 value1 value2 = (output1576, value566, value1) := by
  rw [input1576_def, output1576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child830]
  try dsimp only
  rw [child1575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output830_skip, output1575_skip]
  kernel_rfl

theorem node1577_cond_eq
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value381 value1 value2 = (output829, value382, value1))
    (child1576 : Flapjack.WordAlloc.removeDeadStructural input1576 value382 value1 value2 = (output1576, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1577 value381 value1 value2 = (output1577, value566, value1) := by
  rw [input1577_def, output1577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child829]
  try dsimp only
  rw [child1576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output829_skip, output1576_skip]
  kernel_rfl

theorem node1578_cond_eq
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value380 value1 value2 = (output828, value381, value1))
    (child1577 : Flapjack.WordAlloc.removeDeadStructural input1577 value381 value1 value2 = (output1577, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1578 value380 value1 value2 = (output1578, value566, value1) := by
  rw [input1578_def, output1578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child828]
  try dsimp only
  rw [child1577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output828_skip, output1577_skip]
  kernel_rfl

theorem node1579_cond_eq
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value378 value1 value2 = (output827, value380, value1))
    (child1578 : Flapjack.WordAlloc.removeDeadStructural input1578 value380 value1 value2 = (output1578, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1579 value378 value1 value2 = (output1579, value566, value1) := by
  rw [input1579_def, output1579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child827]
  try dsimp only
  rw [child1578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output827_skip, output1578_skip]
  kernel_rfl

theorem node1580_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value377 value1 value2 = (output824, value378, value1))
    (child1579 : Flapjack.WordAlloc.removeDeadStructural input1579 value378 value1 value2 = (output1579, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1580 value377 value1 value2 = (output1580, value566, value1) := by
  rw [input1580_def, output1580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child1579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output1579_skip]
  kernel_rfl

theorem node1581_cond_eq
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value375 value1 value2 = (output823, value377, value1))
    (child1580 : Flapjack.WordAlloc.removeDeadStructural input1580 value377 value1 value2 = (output1580, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1581 value375 value1 value2 = (output1581, value566, value1) := by
  rw [input1581_def, output1581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child823]
  try dsimp only
  rw [child1580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output823_skip, output1580_skip]
  kernel_rfl

theorem node1582_cond_eq
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value374 value1 value2 = (output820, value375, value1))
    (child1581 : Flapjack.WordAlloc.removeDeadStructural input1581 value375 value1 value2 = (output1581, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1582 value374 value1 value2 = (output1582, value566, value1) := by
  rw [input1582_def, output1582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child820]
  try dsimp only
  rw [child1581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output820_skip, output1581_skip]
  kernel_rfl

theorem node1583_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value372 value1 value2 = (output819, value374, value1))
    (child1582 : Flapjack.WordAlloc.removeDeadStructural input1582 value374 value1 value2 = (output1582, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1583 value372 value1 value2 = (output1583, value566, value1) := by
  rw [input1583_def, output1583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  try dsimp only
  rw [child1582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output1582_skip]
  kernel_rfl

theorem node1584_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value371 value1 value2 = (output816, value372, value1))
    (child1583 : Flapjack.WordAlloc.removeDeadStructural input1583 value372 value1 value2 = (output1583, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1584 value371 value1 value2 = (output1584, value566, value1) := by
  rw [input1584_def, output1584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child1583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output1583_skip]
  kernel_rfl

theorem node1585_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value369 value1 value2 = (output815, value371, value1))
    (child1584 : Flapjack.WordAlloc.removeDeadStructural input1584 value371 value1 value2 = (output1584, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1585 value369 value1 value2 = (output1585, value566, value1) := by
  rw [input1585_def, output1585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child1584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output1584_skip]
  kernel_rfl

theorem node1586_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value367 value1 value2 = (output812, value369, value1))
    (child1585 : Flapjack.WordAlloc.removeDeadStructural input1585 value369 value1 value2 = (output1585, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1586 value367 value1 value2 = (output1586, value566, value1) := by
  rw [input1586_def, output1586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  try dsimp only
  rw [child1585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output1585_skip]
  kernel_rfl

theorem node1587_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value366 value1 value2 = (output809, value367, value1))
    (child1586 : Flapjack.WordAlloc.removeDeadStructural input1586 value367 value1 value2 = (output1586, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1587 value366 value1 value2 = (output1587, value566, value1) := by
  rw [input1587_def, output1587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child1586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output1586_skip]
  kernel_rfl

theorem node1588_cond_eq
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value365 value1 value2 = (output808, value366, value1))
    (child1587 : Flapjack.WordAlloc.removeDeadStructural input1587 value366 value1 value2 = (output1587, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1588 value365 value1 value2 = (output1588, value566, value1) := by
  rw [input1588_def, output1588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child808]
  try dsimp only
  rw [child1587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output808_skip, output1587_skip]
  kernel_rfl

theorem node1589_cond_eq
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value364 value1 value2 = (output807, value365, value1))
    (child1588 : Flapjack.WordAlloc.removeDeadStructural input1588 value365 value1 value2 = (output1588, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1589 value364 value1 value2 = (output1589, value566, value1) := by
  rw [input1589_def, output1589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child807]
  try dsimp only
  rw [child1588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output807_skip, output1588_skip]
  kernel_rfl

theorem node1590_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value282 value1 value2 = (output806, value364, value1))
    (child1589 : Flapjack.WordAlloc.removeDeadStructural input1589 value364 value1 value2 = (output1589, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1590 value282 value1 value2 = (output1590, value566, value1) := by
  rw [input1590_def, output1590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  try dsimp only
  rw [child1589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output806_skip, output1589_skip]
  kernel_rfl

theorem node1591_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value282 value1 value2 = (output611, value282, value1))
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value282 value1 value2 = (output1590, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1591 value282 value1 value2 = (output1591, value566, value1) := by
  rw [input1591_def, output1591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child1590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output1590_skip]
  kernel_rfl

theorem node1592_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value281 value1 value2 = (output610, value282, value1))
    (child1591 : Flapjack.WordAlloc.removeDeadStructural input1591 value282 value1 value2 = (output1591, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1592 value281 value1 value2 = (output1592, value566, value1) := by
  rw [input1592_def, output1592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child1591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output1591_skip]
  kernel_rfl

theorem node1593_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value280 value1 value2 = (output609, value281, value1))
    (child1592 : Flapjack.WordAlloc.removeDeadStructural input1592 value281 value1 value2 = (output1592, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1593 value280 value1 value2 = (output1593, value566, value1) := by
  rw [input1593_def, output1593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child1592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output1592_skip]
  kernel_rfl

theorem node1594_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value280 value1 value2 = (output608, value280, value1))
    (child1593 : Flapjack.WordAlloc.removeDeadStructural input1593 value280 value1 value2 = (output1593, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1594 value280 value1 value2 = (output1594, value566, value1) := by
  rw [input1594_def, output1594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child1593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output1593_skip]
  kernel_rfl

theorem node1595_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value280 value1 value2 = (output607, value280, value1))
    (child1594 : Flapjack.WordAlloc.removeDeadStructural input1594 value280 value1 value2 = (output1594, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1595 value280 value1 value2 = (output1595, value566, value1) := by
  rw [input1595_def, output1595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child1594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output1594_skip]
  kernel_rfl

theorem node1596_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value279 value1 value2 = (output606, value280, value1))
    (child1595 : Flapjack.WordAlloc.removeDeadStructural input1595 value280 value1 value2 = (output1595, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1596 value279 value1 value2 = (output1596, value566, value1) := by
  rw [input1596_def, output1596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  try dsimp only
  rw [child1595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output1595_skip]
  kernel_rfl

theorem node1597_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value278 value1 value2 = (output605, value279, value1))
    (child1596 : Flapjack.WordAlloc.removeDeadStructural input1596 value279 value1 value2 = (output1596, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1597 value278 value1 value2 = (output1597, value566, value1) := by
  rw [input1597_def, output1597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child1596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output1596_skip]
  kernel_rfl

theorem node1598_cond_eq
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value275 value1 value2 = (output604, value278, value1))
    (child1597 : Flapjack.WordAlloc.removeDeadStructural input1597 value278 value1 value2 = (output1597, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1598 value275 value1 value2 = (output1598, value566, value1) := by
  rw [input1598_def, output1598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child604]
  try dsimp only
  rw [child1597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output604_skip, output1597_skip]
  kernel_rfl

theorem node1599_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value275 value1 value2 = (output599, value275, value1))
    (child1598 : Flapjack.WordAlloc.removeDeadStructural input1598 value275 value1 value2 = (output1598, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1599 value275 value1 value2 = (output1599, value566, value1) := by
  rw [input1599_def, output1599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child1598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output1598_skip]
  kernel_rfl

theorem node1600_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value273 value1 value2 = (output598, value275, value1))
    (child1599 : Flapjack.WordAlloc.removeDeadStructural input1599 value275 value1 value2 = (output1599, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1600 value273 value1 value2 = (output1600, value566, value1) := by
  rw [input1600_def, output1600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child1599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output1599_skip]
  kernel_rfl

theorem node1601_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value272 value1 value2 = (output595, value273, value1))
    (child1600 : Flapjack.WordAlloc.removeDeadStructural input1600 value273 value1 value2 = (output1600, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1601 value272 value1 value2 = (output1601, value566, value1) := by
  rw [input1601_def, output1601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child1600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output1600_skip]
  kernel_rfl

theorem node1602_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value271 value1 value2 = (output594, value272, value1))
    (child1601 : Flapjack.WordAlloc.removeDeadStructural input1601 value272 value1 value2 = (output1601, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1602 value271 value1 value2 = (output1602, value566, value1) := by
  rw [input1602_def, output1602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child1601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output1601_skip]
  kernel_rfl

theorem node1603_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value269 value1 value2 = (output593, value271, value1))
    (child1602 : Flapjack.WordAlloc.removeDeadStructural input1602 value271 value1 value2 = (output1602, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1603 value269 value1 value2 = (output1603, value566, value1) := by
  rw [input1603_def, output1603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  try dsimp only
  rw [child1602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output593_skip, output1602_skip]
  kernel_rfl

theorem node1604_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value267 value1 value2 = (output590, value269, value1))
    (child1603 : Flapjack.WordAlloc.removeDeadStructural input1603 value269 value1 value2 = (output1603, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1604 value267 value1 value2 = (output1604, value566, value1) := by
  rw [input1604_def, output1604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  try dsimp only
  rw [child1603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output590_skip, output1603_skip]
  kernel_rfl

theorem node1605_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value266 value1 value2 = (output587, value267, value1))
    (child1604 : Flapjack.WordAlloc.removeDeadStructural input1604 value267 value1 value2 = (output1604, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1605 value266 value1 value2 = (output1605, value566, value1) := by
  rw [input1605_def, output1605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child587]
  try dsimp only
  rw [child1604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output587_skip, output1604_skip]
  kernel_rfl

theorem node1606_cond_eq
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value257 value1 value2 = (output586, value266, value1))
    (child1605 : Flapjack.WordAlloc.removeDeadStructural input1605 value266 value1 value2 = (output1605, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1606 value257 value1 value2 = (output1606, value566, value1) := by
  rw [input1606_def, output1606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child586]
  try dsimp only
  rw [child1605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output586_skip, output1605_skip]
  kernel_rfl

theorem node1607_cond_eq
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value265 value1 value2 = (output585, value257, value1))
    (child1606 : Flapjack.WordAlloc.removeDeadStructural input1606 value257 value1 value2 = (output1606, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1607 value265 value1 value2 = (output1607, value566, value1) := by
  rw [input1607_def, output1607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child585]
  try dsimp only
  rw [child1606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output585_skip, output1606_skip]
  kernel_rfl

theorem node1608_cond_eq
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value250 value1 value2 = (output584, value265, value1))
    (child1607 : Flapjack.WordAlloc.removeDeadStructural input1607 value265 value1 value2 = (output1607, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1608 value250 value1 value2 = (output1608, value566, value1) := by
  rw [input1608_def, output1608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child584]
  try dsimp only
  rw [child1607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output584_skip, output1607_skip]
  kernel_rfl

theorem node1609_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value250 value1 value2 = (output535, value250, value1))
    (child1608 : Flapjack.WordAlloc.removeDeadStructural input1608 value250 value1 value2 = (output1608, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1609 value250 value1 value2 = (output1609, value566, value1) := by
  rw [input1609_def, output1609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child1608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output1608_skip]
  kernel_rfl

theorem node1610_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value248 value1 value2 = (output534, value250, value1))
    (child1609 : Flapjack.WordAlloc.removeDeadStructural input1609 value250 value1 value2 = (output1609, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1610 value248 value1 value2 = (output1610, value566, value1) := by
  rw [input1610_def, output1610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child1609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output1609_skip]
  kernel_rfl

theorem node1611_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value247 value1 value2 = (output531, value248, value1))
    (child1610 : Flapjack.WordAlloc.removeDeadStructural input1610 value248 value1 value2 = (output1610, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1611 value247 value1 value2 = (output1611, value566, value1) := by
  rw [input1611_def, output1611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child1610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output1610_skip]
  kernel_rfl

theorem node1612_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value246 value1 value2 = (output530, value247, value1))
    (child1611 : Flapjack.WordAlloc.removeDeadStructural input1611 value247 value1 value2 = (output1611, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1612 value246 value1 value2 = (output1612, value566, value1) := by
  rw [input1612_def, output1612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child1611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output1611_skip]
  kernel_rfl

theorem node1613_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value244 value1 value2 = (output529, value246, value1))
    (child1612 : Flapjack.WordAlloc.removeDeadStructural input1612 value246 value1 value2 = (output1612, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1613 value244 value1 value2 = (output1613, value566, value1) := by
  rw [input1613_def, output1613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child1612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output1612_skip]
  kernel_rfl

theorem node1614_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value242 value1 value2 = (output526, value244, value1))
    (child1613 : Flapjack.WordAlloc.removeDeadStructural input1613 value244 value1 value2 = (output1613, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1614 value242 value1 value2 = (output1614, value566, value1) := by
  rw [input1614_def, output1614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child1613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output1613_skip]
  kernel_rfl

theorem node1615_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value241 value1 value2 = (output523, value242, value1))
    (child1614 : Flapjack.WordAlloc.removeDeadStructural input1614 value242 value1 value2 = (output1614, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1615 value241 value1 value2 = (output1615, value566, value1) := by
  rw [input1615_def, output1615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child1614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output1614_skip]
  kernel_rfl

theorem node1616_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value240 value1 value2 = (output522, value241, value1))
    (child1615 : Flapjack.WordAlloc.removeDeadStructural input1615 value241 value1 value2 = (output1615, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1616 value240 value1 value2 = (output1616, value566, value1) := by
  rw [input1616_def, output1616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child1615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output1615_skip]
  kernel_rfl

theorem node1617_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value239 value1 value2 = (output521, value240, value1))
    (child1616 : Flapjack.WordAlloc.removeDeadStructural input1616 value240 value1 value2 = (output1616, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1617 value239 value1 value2 = (output1617, value566, value1) := by
  rw [input1617_def, output1617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child1616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output1616_skip]
  kernel_rfl

theorem node1618_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value239 value1 value2 = (output520, value239, value1))
    (child1617 : Flapjack.WordAlloc.removeDeadStructural input1617 value239 value1 value2 = (output1617, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1618 value239 value1 value2 = (output1618, value566, value1) := by
  rw [input1618_def, output1618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child1617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output1617_skip]
  kernel_rfl

theorem node1619_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value238 value1 value2 = (output519, value239, value1))
    (child1618 : Flapjack.WordAlloc.removeDeadStructural input1618 value239 value1 value2 = (output1618, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1619 value238 value1 value2 = (output1619, value566, value1) := by
  rw [input1619_def, output1619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child1618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output1618_skip]
  kernel_rfl

theorem node1620_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value235 value1 value2 = (output518, value238, value1))
    (child1619 : Flapjack.WordAlloc.removeDeadStructural input1619 value238 value1 value2 = (output1619, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1620 value235 value1 value2 = (output1620, value566, value1) := by
  rw [input1620_def, output1620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child1619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output1619_skip]
  kernel_rfl

theorem node1621_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value235 value1 value2 = (output513, value235, value1))
    (child1620 : Flapjack.WordAlloc.removeDeadStructural input1620 value235 value1 value2 = (output1620, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1621 value235 value1 value2 = (output1621, value566, value1) := by
  rw [input1621_def, output1621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child1620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output1620_skip]
  kernel_rfl

theorem node1622_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value233 value1 value2 = (output512, value235, value1))
    (child1621 : Flapjack.WordAlloc.removeDeadStructural input1621 value235 value1 value2 = (output1621, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1622 value233 value1 value2 = (output1622, value566, value1) := by
  rw [input1622_def, output1622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child1621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output1621_skip]
  kernel_rfl

theorem node1623_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value232 value1 value2 = (output509, value233, value1))
    (child1622 : Flapjack.WordAlloc.removeDeadStructural input1622 value233 value1 value2 = (output1622, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1623 value232 value1 value2 = (output1623, value566, value1) := by
  rw [input1623_def, output1623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child1622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output1622_skip]
  kernel_rfl

theorem node1624_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value231 value1 value2 = (output508, value232, value1))
    (child1623 : Flapjack.WordAlloc.removeDeadStructural input1623 value232 value1 value2 = (output1623, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1624 value231 value1 value2 = (output1624, value566, value1) := by
  rw [input1624_def, output1624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child1623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output1623_skip]
  kernel_rfl

theorem node1625_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value230 value1 value2 = (output507, value231, value1))
    (child1624 : Flapjack.WordAlloc.removeDeadStructural input1624 value231 value1 value2 = (output1624, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1625 value230 value1 value2 = (output1625, value566, value1) := by
  rw [input1625_def, output1625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child1624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output1624_skip]
  kernel_rfl

theorem node1626_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value229 value1 value2 = (output506, value230, value1))
    (child1625 : Flapjack.WordAlloc.removeDeadStructural input1625 value230 value1 value2 = (output1625, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1626 value229 value1 value2 = (output1626, value566, value1) := by
  rw [input1626_def, output1626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child1625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output1625_skip]
  kernel_rfl

theorem node1627_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value228 value1 value2 = (output505, value229, value1))
    (child1626 : Flapjack.WordAlloc.removeDeadStructural input1626 value229 value1 value2 = (output1626, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1627 value228 value1 value2 = (output1627, value566, value1) := by
  rw [input1627_def, output1627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child1626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output1626_skip]
  kernel_rfl

theorem node1628_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value226 value1 value2 = (output504, value228, value1))
    (child1627 : Flapjack.WordAlloc.removeDeadStructural input1627 value228 value1 value2 = (output1627, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1628 value226 value1 value2 = (output1628, value566, value1) := by
  rw [input1628_def, output1628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child1627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output1627_skip]
  kernel_rfl

theorem node1629_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value225 value1 value2 = (output501, value226, value1))
    (child1628 : Flapjack.WordAlloc.removeDeadStructural input1628 value226 value1 value2 = (output1628, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1629 value225 value1 value2 = (output1629, value566, value1) := by
  rw [input1629_def, output1629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child1628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output1628_skip]
  kernel_rfl

theorem node1630_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value223 value1 value2 = (output500, value225, value1))
    (child1629 : Flapjack.WordAlloc.removeDeadStructural input1629 value225 value1 value2 = (output1629, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1630 value223 value1 value2 = (output1630, value566, value1) := by
  rw [input1630_def, output1630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child1629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output1629_skip]
  kernel_rfl

theorem node1631_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value222 value1 value2 = (output497, value223, value1))
    (child1630 : Flapjack.WordAlloc.removeDeadStructural input1630 value223 value1 value2 = (output1630, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1631 value222 value1 value2 = (output1631, value566, value1) := by
  rw [input1631_def, output1631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child1630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output1630_skip]
  kernel_rfl

theorem node1632_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value220 value1 value2 = (output496, value222, value1))
    (child1631 : Flapjack.WordAlloc.removeDeadStructural input1631 value222 value1 value2 = (output1631, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1632 value220 value1 value2 = (output1632, value566, value1) := by
  rw [input1632_def, output1632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child1631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output1631_skip]
  kernel_rfl

theorem node1633_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value219 value1 value2 = (output493, value220, value1))
    (child1632 : Flapjack.WordAlloc.removeDeadStructural input1632 value220 value1 value2 = (output1632, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1633 value219 value1 value2 = (output1633, value566, value1) := by
  rw [input1633_def, output1633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child1632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output1632_skip]
  kernel_rfl

theorem node1634_cond_eq
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value217 value1 value2 = (output492, value219, value1))
    (child1633 : Flapjack.WordAlloc.removeDeadStructural input1633 value219 value1 value2 = (output1633, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1634 value217 value1 value2 = (output1634, value566, value1) := by
  rw [input1634_def, output1634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child492]
  try dsimp only
  rw [child1633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output492_skip, output1633_skip]
  kernel_rfl

theorem node1635_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value215 value1 value2 = (output489, value217, value1))
    (child1634 : Flapjack.WordAlloc.removeDeadStructural input1634 value217 value1 value2 = (output1634, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1635 value215 value1 value2 = (output1635, value566, value1) := by
  rw [input1635_def, output1635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child1634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output1634_skip]
  kernel_rfl

theorem node1636_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value214 value1 value2 = (output486, value215, value1))
    (child1635 : Flapjack.WordAlloc.removeDeadStructural input1635 value215 value1 value2 = (output1635, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1636 value214 value1 value2 = (output1636, value566, value1) := by
  rw [input1636_def, output1636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child1635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output1635_skip]
  kernel_rfl

theorem node1637_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value213 value1 value2 = (output485, value214, value1))
    (child1636 : Flapjack.WordAlloc.removeDeadStructural input1636 value214 value1 value2 = (output1636, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1637 value213 value1 value2 = (output1637, value566, value1) := by
  rw [input1637_def, output1637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child1636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output1636_skip]
  kernel_rfl

theorem node1638_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value212 value1 value2 = (output484, value213, value1))
    (child1637 : Flapjack.WordAlloc.removeDeadStructural input1637 value213 value1 value2 = (output1637, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1638 value212 value1 value2 = (output1638, value566, value1) := by
  rw [input1638_def, output1638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child1637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output1637_skip]
  kernel_rfl

theorem node1639_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value209 value1 value2 = (output483, value212, value1))
    (child1638 : Flapjack.WordAlloc.removeDeadStructural input1638 value212 value1 value2 = (output1638, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1639 value209 value1 value2 = (output1639, value566, value1) := by
  rw [input1639_def, output1639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child1638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output1638_skip]
  kernel_rfl

theorem node1640_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value209 value1 value2 = (output478, value209, value1))
    (child1639 : Flapjack.WordAlloc.removeDeadStructural input1639 value209 value1 value2 = (output1639, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1640 value209 value1 value2 = (output1640, value566, value1) := by
  rw [input1640_def, output1640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child1639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output1639_skip]
  kernel_rfl

theorem node1641_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value207 value1 value2 = (output477, value209, value1))
    (child1640 : Flapjack.WordAlloc.removeDeadStructural input1640 value209 value1 value2 = (output1640, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1641 value207 value1 value2 = (output1641, value566, value1) := by
  rw [input1641_def, output1641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child1640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output1640_skip]
  kernel_rfl

theorem node1642_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value206 value1 value2 = (output474, value207, value1))
    (child1641 : Flapjack.WordAlloc.removeDeadStructural input1641 value207 value1 value2 = (output1641, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1642 value206 value1 value2 = (output1642, value566, value1) := by
  rw [input1642_def, output1642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child1641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output1641_skip]
  kernel_rfl

theorem node1643_cond_eq
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value205 value1 value2 = (output473, value206, value1))
    (child1642 : Flapjack.WordAlloc.removeDeadStructural input1642 value206 value1 value2 = (output1642, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1643 value205 value1 value2 = (output1643, value566, value1) := by
  rw [input1643_def, output1643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child473]
  try dsimp only
  rw [child1642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output473_skip, output1642_skip]
  kernel_rfl

theorem node1644_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value203 value1 value2 = (output472, value205, value1))
    (child1643 : Flapjack.WordAlloc.removeDeadStructural input1643 value205 value1 value2 = (output1643, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1644 value203 value1 value2 = (output1644, value566, value1) := by
  rw [input1644_def, output1644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child1643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output1643_skip]
  kernel_rfl

theorem node1645_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value201 value1 value2 = (output469, value203, value1))
    (child1644 : Flapjack.WordAlloc.removeDeadStructural input1644 value203 value1 value2 = (output1644, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1645 value201 value1 value2 = (output1645, value566, value1) := by
  rw [input1645_def, output1645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child1644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output1644_skip]
  kernel_rfl

theorem node1646_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value200 value1 value2 = (output466, value201, value1))
    (child1645 : Flapjack.WordAlloc.removeDeadStructural input1645 value201 value1 value2 = (output1645, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1646 value200 value1 value2 = (output1646, value566, value1) := by
  rw [input1646_def, output1646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child1645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output1645_skip]
  kernel_rfl

theorem node1647_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value199 value1 value2 = (output465, value200, value1))
    (child1646 : Flapjack.WordAlloc.removeDeadStructural input1646 value200 value1 value2 = (output1646, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1647 value199 value1 value2 = (output1647, value566, value1) := by
  rw [input1647_def, output1647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child1646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output1646_skip]
  kernel_rfl

theorem node1648_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value197 value1 value2 = (output464, value199, value1))
    (child1647 : Flapjack.WordAlloc.removeDeadStructural input1647 value199 value1 value2 = (output1647, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1648 value197 value1 value2 = (output1648, value566, value1) := by
  rw [input1648_def, output1648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child1647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output1647_skip]
  kernel_rfl

theorem node1649_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value195 value1 value2 = (output461, value197, value1))
    (child1648 : Flapjack.WordAlloc.removeDeadStructural input1648 value197 value1 value2 = (output1648, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1649 value195 value1 value2 = (output1649, value566, value1) := by
  rw [input1649_def, output1649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child1648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output1648_skip]
  kernel_rfl

theorem node1650_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value194 value1 value2 = (output458, value195, value1))
    (child1649 : Flapjack.WordAlloc.removeDeadStructural input1649 value195 value1 value2 = (output1649, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1650 value194 value1 value2 = (output1650, value566, value1) := by
  rw [input1650_def, output1650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child1649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output1649_skip]
  kernel_rfl

theorem node1651_cond_eq
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value190 value1 value2 = (output457, value194, value1))
    (child1650 : Flapjack.WordAlloc.removeDeadStructural input1650 value194 value1 value2 = (output1650, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1651 value190 value1 value2 = (output1651, value566, value1) := by
  rw [input1651_def, output1651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child457]
  try dsimp only
  rw [child1650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output457_skip, output1650_skip]
  kernel_rfl

theorem node1652_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value193 value1 value2 = (output456, value190, value1))
    (child1651 : Flapjack.WordAlloc.removeDeadStructural input1651 value190 value1 value2 = (output1651, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1652 value193 value1 value2 = (output1652, value566, value1) := by
  rw [input1652_def, output1652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child1651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output1651_skip]
  kernel_rfl

theorem node1653_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value164 value1 value2 = (output455, value193, value1))
    (child1652 : Flapjack.WordAlloc.removeDeadStructural input1652 value193 value1 value2 = (output1652, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1653 value164 value1 value2 = (output1653, value566, value1) := by
  rw [input1653_def, output1653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child1652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output1652_skip]
  kernel_rfl

theorem node1654_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value164 value1 value2 = (output354, value164, value1))
    (child1653 : Flapjack.WordAlloc.removeDeadStructural input1653 value164 value1 value2 = (output1653, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1654 value164 value1 value2 = (output1654, value566, value1) := by
  rw [input1654_def, output1654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child1653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output1653_skip]
  kernel_rfl

theorem node1655_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value161 value1 value2 = (output353, value164, value1))
    (child1654 : Flapjack.WordAlloc.removeDeadStructural input1654 value164 value1 value2 = (output1654, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1655 value161 value1 value2 = (output1655, value566, value1) := by
  rw [input1655_def, output1655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child1654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output1654_skip]
  kernel_rfl

theorem node1656_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value163 value1 value2 = (output352, value161, value1))
    (child1655 : Flapjack.WordAlloc.removeDeadStructural input1655 value161 value1 value2 = (output1655, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1656 value163 value1 value2 = (output1656, value566, value1) := by
  rw [input1656_def, output1656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child1655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output1655_skip]
  kernel_rfl

theorem node1657_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value110 value1 value2 = (output351, value163, value1))
    (child1656 : Flapjack.WordAlloc.removeDeadStructural input1656 value163 value1 value2 = (output1656, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1657 value110 value1 value2 = (output1657, value566, value1) := by
  rw [input1657_def, output1657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  try dsimp only
  rw [child1656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output351_skip, output1656_skip]
  kernel_rfl

theorem node1658_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value110 value1 value2 = (output206, value110, value1))
    (child1657 : Flapjack.WordAlloc.removeDeadStructural input1657 value110 value1 value2 = (output1657, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1658 value110 value1 value2 = (output1658, value566, value1) := by
  rw [input1658_def, output1658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  try dsimp only
  rw [child1657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output206_skip, output1657_skip]
  kernel_rfl

theorem node1659_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value109 value1 value2 = (output205, value110, value1))
    (child1658 : Flapjack.WordAlloc.removeDeadStructural input1658 value110 value1 value2 = (output1658, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1659 value109 value1 value2 = (output1659, value566, value1) := by
  rw [input1659_def, output1659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child1658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output1658_skip]
  kernel_rfl

theorem node1660_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value108 value1 value2 = (output204, value109, value1))
    (child1659 : Flapjack.WordAlloc.removeDeadStructural input1659 value109 value1 value2 = (output1659, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1660 value108 value1 value2 = (output1660, value566, value1) := by
  rw [input1660_def, output1660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child1659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output1659_skip]
  kernel_rfl

theorem node1661_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value79 value1 value2 = (output203, value108, value1))
    (child1660 : Flapjack.WordAlloc.removeDeadStructural input1660 value108 value1 value2 = (output1660, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1661 value79 value1 value2 = (output1661, value566, value1) := by
  rw [input1661_def, output1661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child1660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output1660_skip]
  kernel_rfl

theorem node1662_cond_eq
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value79 value1 value2 = (output110, value79, value1))
    (child1661 : Flapjack.WordAlloc.removeDeadStructural input1661 value79 value1 value2 = (output1661, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1662 value79 value1 value2 = (output1662, value566, value1) := by
  rw [input1662_def, output1662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child110]
  try dsimp only
  rw [child1661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output110_skip, output1661_skip]
  kernel_rfl

theorem node1663_cond_eq
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value78 value1 value2 = (output109, value79, value1))
    (child1662 : Flapjack.WordAlloc.removeDeadStructural input1662 value79 value1 value2 = (output1662, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1663 value78 value1 value2 = (output1663, value566, value1) := by
  rw [input1663_def, output1663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child109]
  try dsimp only
  rw [child1662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output109_skip, output1662_skip]
  kernel_rfl

theorem node1664_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value77 value1 value2 = (output108, value78, value1))
    (child1663 : Flapjack.WordAlloc.removeDeadStructural input1663 value78 value1 value2 = (output1663, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1664 value77 value1 value2 = (output1664, value566, value1) := by
  rw [input1664_def, output1664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child1663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output1663_skip]
  kernel_rfl

theorem node1665_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value77 value1 value2 = (output107, value77, value1))
    (child1664 : Flapjack.WordAlloc.removeDeadStructural input1664 value77 value1 value2 = (output1664, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1665 value77 value1 value2 = (output1665, value566, value1) := by
  rw [input1665_def, output1665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child1664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output1664_skip]
  kernel_rfl

theorem node1666_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value73 value1 value2 = (output106, value77, value1))
    (child1665 : Flapjack.WordAlloc.removeDeadStructural input1665 value77 value1 value2 = (output1665, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1666 value73 value1 value2 = (output1666, value566, value1) := by
  rw [input1666_def, output1666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child1665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output1665_skip]
  kernel_rfl

theorem node1667_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value73 value1 value2 = (output99, value73, value1))
    (child1666 : Flapjack.WordAlloc.removeDeadStructural input1666 value73 value1 value2 = (output1666, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1667 value73 value1 value2 = (output1667, value566, value1) := by
  rw [input1667_def, output1667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child1666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output1666_skip]
  kernel_rfl

theorem node1668_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value71 value1 value2 = (output98, value73, value1))
    (child1667 : Flapjack.WordAlloc.removeDeadStructural input1667 value73 value1 value2 = (output1667, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1668 value71 value1 value2 = (output1668, value566, value1) := by
  rw [input1668_def, output1668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  try dsimp only
  rw [child1667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output98_skip, output1667_skip]
  kernel_rfl

theorem node1669_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value70 value1 value2 = (output95, value71, value1))
    (child1668 : Flapjack.WordAlloc.removeDeadStructural input1668 value71 value1 value2 = (output1668, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1669 value70 value1 value2 = (output1669, value566, value1) := by
  rw [input1669_def, output1669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child1668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output1668_skip]
  kernel_rfl

theorem node1670_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value69 value1 value2 = (output94, value70, value1))
    (child1669 : Flapjack.WordAlloc.removeDeadStructural input1669 value70 value1 value2 = (output1669, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1670 value69 value1 value2 = (output1670, value566, value1) := by
  rw [input1670_def, output1670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child1669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output1669_skip]
  kernel_rfl

theorem node1671_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value68 value1 value2 = (output93, value69, value1))
    (child1670 : Flapjack.WordAlloc.removeDeadStructural input1670 value69 value1 value2 = (output1670, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1671 value68 value1 value2 = (output1671, value566, value1) := by
  rw [input1671_def, output1671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  try dsimp only
  rw [child1670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output1670_skip]
  kernel_rfl

theorem node1672_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value67 value1 value2 = (output92, value68, value1))
    (child1671 : Flapjack.WordAlloc.removeDeadStructural input1671 value68 value1 value2 = (output1671, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1672 value67 value1 value2 = (output1672, value566, value1) := by
  rw [input1672_def, output1672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child1671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output1671_skip]
  kernel_rfl

theorem node1673_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value66 value1 value2 = (output91, value67, value1))
    (child1672 : Flapjack.WordAlloc.removeDeadStructural input1672 value67 value1 value2 = (output1672, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1673 value66 value1 value2 = (output1673, value566, value1) := by
  rw [input1673_def, output1673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  try dsimp only
  rw [child1672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output91_skip, output1672_skip]
  kernel_rfl

theorem node1674_cond_eq
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value64 value1 value2 = (output90, value66, value1))
    (child1673 : Flapjack.WordAlloc.removeDeadStructural input1673 value66 value1 value2 = (output1673, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1674 value64 value1 value2 = (output1674, value566, value1) := by
  rw [input1674_def, output1674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child90]
  try dsimp only
  rw [child1673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output90_skip, output1673_skip]
  kernel_rfl

theorem node1675_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value63 value1 value2 = (output87, value64, value1))
    (child1674 : Flapjack.WordAlloc.removeDeadStructural input1674 value64 value1 value2 = (output1674, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1675 value63 value1 value2 = (output1675, value566, value1) := by
  rw [input1675_def, output1675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  try dsimp only
  rw [child1674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output1674_skip]
  kernel_rfl

theorem node1676_cond_eq
    (child86 : Flapjack.WordAlloc.removeDeadStructural input86 value61 value1 value2 = (output86, value63, value1))
    (child1675 : Flapjack.WordAlloc.removeDeadStructural input1675 value63 value1 value2 = (output1675, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1676 value61 value1 value2 = (output1676, value566, value1) := by
  rw [input1676_def, output1676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child86]
  try dsimp only
  rw [child1675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output86_skip, output1675_skip]
  kernel_rfl

theorem node1677_cond_eq
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value60 value1 value2 = (output83, value61, value1))
    (child1676 : Flapjack.WordAlloc.removeDeadStructural input1676 value61 value1 value2 = (output1676, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1677 value60 value1 value2 = (output1677, value566, value1) := by
  rw [input1677_def, output1677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child83]
  try dsimp only
  rw [child1676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output83_skip, output1676_skip]
  kernel_rfl

theorem node1678_cond_eq
    (child82 : Flapjack.WordAlloc.removeDeadStructural input82 value58 value1 value2 = (output82, value60, value1))
    (child1677 : Flapjack.WordAlloc.removeDeadStructural input1677 value60 value1 value2 = (output1677, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1678 value58 value1 value2 = (output1678, value566, value1) := by
  rw [input1678_def, output1678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child82]
  try dsimp only
  rw [child1677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output82_skip, output1677_skip]
  kernel_rfl

theorem node1679_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value57 value1 value2 = (output79, value58, value1))
    (child1678 : Flapjack.WordAlloc.removeDeadStructural input1678 value58 value1 value2 = (output1678, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1679 value57 value1 value2 = (output1679, value566, value1) := by
  rw [input1679_def, output1679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child1678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output79_skip, output1678_skip]
  kernel_rfl

theorem node1680_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value55 value1 value2 = (output78, value57, value1))
    (child1679 : Flapjack.WordAlloc.removeDeadStructural input1679 value57 value1 value2 = (output1679, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1680 value55 value1 value2 = (output1680, value566, value1) := by
  rw [input1680_def, output1680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child1679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output1679_skip]
  kernel_rfl

theorem node1681_cond_eq
    (child75 : Flapjack.WordAlloc.removeDeadStructural input75 value54 value1 value2 = (output75, value55, value1))
    (child1680 : Flapjack.WordAlloc.removeDeadStructural input1680 value55 value1 value2 = (output1680, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1681 value54 value1 value2 = (output1681, value566, value1) := by
  rw [input1681_def, output1681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child75]
  try dsimp only
  rw [child1680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output75_skip, output1680_skip]
  kernel_rfl

theorem node1682_cond_eq
    (child74 : Flapjack.WordAlloc.removeDeadStructural input74 value52 value1 value2 = (output74, value54, value1))
    (child1681 : Flapjack.WordAlloc.removeDeadStructural input1681 value54 value1 value2 = (output1681, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1682 value52 value1 value2 = (output1682, value566, value1) := by
  rw [input1682_def, output1682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child74]
  try dsimp only
  rw [child1681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output74_skip, output1681_skip]
  kernel_rfl

theorem node1683_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value52 value1 value2 = (output71, value52, value1))
    (child1682 : Flapjack.WordAlloc.removeDeadStructural input1682 value52 value1 value2 = (output1682, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1683 value52 value1 value2 = (output1683, value566, value1) := by
  rw [input1683_def, output1683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child1682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output1682_skip]
  kernel_rfl

theorem node1684_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value48 value1 value2 = (output70, value52, value1))
    (child1683 : Flapjack.WordAlloc.removeDeadStructural input1683 value52 value1 value2 = (output1683, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1684 value48 value1 value2 = (output1684, value566, value1) := by
  rw [input1684_def, output1684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child1683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output1683_skip]
  kernel_rfl

theorem node1685_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value48 value1 value2 = (output63, value48, value1))
    (child1684 : Flapjack.WordAlloc.removeDeadStructural input1684 value48 value1 value2 = (output1684, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1685 value48 value1 value2 = (output1685, value566, value1) := by
  rw [input1685_def, output1685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child1684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output1684_skip]
  kernel_rfl

theorem node1686_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value46 value1 value2 = (output62, value48, value1))
    (child1685 : Flapjack.WordAlloc.removeDeadStructural input1685 value48 value1 value2 = (output1685, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1686 value46 value1 value2 = (output1686, value566, value1) := by
  rw [input1686_def, output1686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child1685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output62_skip, output1685_skip]
  kernel_rfl

theorem node1687_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value45 value1 value2 = (output59, value46, value1))
    (child1686 : Flapjack.WordAlloc.removeDeadStructural input1686 value46 value1 value2 = (output1686, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1687 value45 value1 value2 = (output1687, value566, value1) := by
  rw [input1687_def, output1687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child1686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output1686_skip]
  kernel_rfl

theorem node1688_cond_eq
    (child58 : Flapjack.WordAlloc.removeDeadStructural input58 value44 value1 value2 = (output58, value45, value1))
    (child1687 : Flapjack.WordAlloc.removeDeadStructural input1687 value45 value1 value2 = (output1687, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1688 value44 value1 value2 = (output1688, value566, value1) := by
  rw [input1688_def, output1688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child58]
  try dsimp only
  rw [child1687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output58_skip, output1687_skip]
  kernel_rfl

theorem node1689_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value43 value1 value2 = (output57, value44, value1))
    (child1688 : Flapjack.WordAlloc.removeDeadStructural input1688 value44 value1 value2 = (output1688, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1689 value43 value1 value2 = (output1689, value566, value1) := by
  rw [input1689_def, output1689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  try dsimp only
  rw [child1688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output1688_skip]
  kernel_rfl

theorem node1690_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value42 value1 value2 = (output56, value43, value1))
    (child1689 : Flapjack.WordAlloc.removeDeadStructural input1689 value43 value1 value2 = (output1689, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1690 value42 value1 value2 = (output1690, value566, value1) := by
  rw [input1690_def, output1690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child1689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output1689_skip]
  kernel_rfl

theorem node1691_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value41 value1 value2 = (output55, value42, value1))
    (child1690 : Flapjack.WordAlloc.removeDeadStructural input1690 value42 value1 value2 = (output1690, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1691 value41 value1 value2 = (output1691, value566, value1) := by
  rw [input1691_def, output1691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  try dsimp only
  rw [child1690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output55_skip, output1690_skip]
  kernel_rfl

theorem node1692_cond_eq
    (child54 : Flapjack.WordAlloc.removeDeadStructural input54 value39 value1 value2 = (output54, value41, value1))
    (child1691 : Flapjack.WordAlloc.removeDeadStructural input1691 value41 value1 value2 = (output1691, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1692 value39 value1 value2 = (output1692, value566, value1) := by
  rw [input1692_def, output1692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child54]
  try dsimp only
  rw [child1691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output54_skip, output1691_skip]
  kernel_rfl

theorem node1693_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value38 value1 value2 = (output51, value39, value1))
    (child1692 : Flapjack.WordAlloc.removeDeadStructural input1692 value39 value1 value2 = (output1692, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1693 value38 value1 value2 = (output1693, value566, value1) := by
  rw [input1693_def, output1693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child1692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output1692_skip]
  kernel_rfl

theorem node1694_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value36 value1 value2 = (output50, value38, value1))
    (child1693 : Flapjack.WordAlloc.removeDeadStructural input1693 value38 value1 value2 = (output1693, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1694 value36 value1 value2 = (output1694, value566, value1) := by
  rw [input1694_def, output1694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child1693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output1693_skip]
  kernel_rfl

theorem node1695_cond_eq
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value35 value1 value2 = (output47, value36, value1))
    (child1694 : Flapjack.WordAlloc.removeDeadStructural input1694 value36 value1 value2 = (output1694, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1695 value35 value1 value2 = (output1695, value566, value1) := by
  rw [input1695_def, output1695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child47]
  try dsimp only
  rw [child1694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output47_skip, output1694_skip]
  kernel_rfl

theorem node1696_cond_eq
    (child46 : Flapjack.WordAlloc.removeDeadStructural input46 value33 value1 value2 = (output46, value35, value1))
    (child1695 : Flapjack.WordAlloc.removeDeadStructural input1695 value35 value1 value2 = (output1695, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1696 value33 value1 value2 = (output1696, value566, value1) := by
  rw [input1696_def, output1696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child46]
  try dsimp only
  rw [child1695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output46_skip, output1695_skip]
  kernel_rfl

theorem node1697_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value32 value1 value2 = (output43, value33, value1))
    (child1696 : Flapjack.WordAlloc.removeDeadStructural input1696 value33 value1 value2 = (output1696, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1697 value32 value1 value2 = (output1697, value566, value1) := by
  rw [input1697_def, output1697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child1696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output1696_skip]
  kernel_rfl

theorem node1698_cond_eq
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value30 value1 value2 = (output42, value32, value1))
    (child1697 : Flapjack.WordAlloc.removeDeadStructural input1697 value32 value1 value2 = (output1697, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1698 value30 value1 value2 = (output1698, value566, value1) := by
  rw [input1698_def, output1698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child42]
  try dsimp only
  rw [child1697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output42_skip, output1697_skip]
  kernel_rfl

theorem node1699_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value29 value1 value2 = (output39, value30, value1))
    (child1698 : Flapjack.WordAlloc.removeDeadStructural input1698 value30 value1 value2 = (output1698, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1699 value29 value1 value2 = (output1699, value566, value1) := by
  rw [input1699_def, output1699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child1698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output1698_skip]
  kernel_rfl

theorem node1700_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value27 value1 value2 = (output38, value29, value1))
    (child1699 : Flapjack.WordAlloc.removeDeadStructural input1699 value29 value1 value2 = (output1699, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1700 value27 value1 value2 = (output1700, value566, value1) := by
  rw [input1700_def, output1700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  try dsimp only
  rw [child1699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output38_skip, output1699_skip]
  kernel_rfl

theorem node1701_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value27 value1 value2 = (output35, value27, value1))
    (child1700 : Flapjack.WordAlloc.removeDeadStructural input1700 value27 value1 value2 = (output1700, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1701 value27 value1 value2 = (output1701, value566, value1) := by
  rw [input1701_def, output1701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child1700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output1700_skip]
  kernel_rfl

theorem node1702_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value23 value1 value2 = (output34, value27, value1))
    (child1701 : Flapjack.WordAlloc.removeDeadStructural input1701 value27 value1 value2 = (output1701, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1702 value23 value1 value2 = (output1702, value566, value1) := by
  rw [input1702_def, output1702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child1701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output1701_skip]
  kernel_rfl

theorem node1703_cond_eq
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value23 value1 value2 = (output27, value23, value1))
    (child1702 : Flapjack.WordAlloc.removeDeadStructural input1702 value23 value1 value2 = (output1702, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1703 value23 value1 value2 = (output1703, value566, value1) := by
  rw [input1703_def, output1703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child27]
  try dsimp only
  rw [child1702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output27_skip, output1702_skip]
  kernel_rfl

theorem node1704_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value21 value1 value2 = (output26, value23, value1))
    (child1703 : Flapjack.WordAlloc.removeDeadStructural input1703 value23 value1 value2 = (output1703, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1704 value21 value1 value2 = (output1704, value566, value1) := by
  rw [input1704_def, output1704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child1703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output1703_skip]
  kernel_rfl

theorem node1705_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value20 value1 value2 = (output23, value21, value1))
    (child1704 : Flapjack.WordAlloc.removeDeadStructural input1704 value21 value1 value2 = (output1704, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1705 value20 value1 value2 = (output1705, value566, value1) := by
  rw [input1705_def, output1705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child1704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output1704_skip]
  kernel_rfl

theorem node1706_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value19 value1 value2 = (output22, value20, value1))
    (child1705 : Flapjack.WordAlloc.removeDeadStructural input1705 value20 value1 value2 = (output1705, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1706 value19 value1 value2 = (output1706, value566, value1) := by
  rw [input1706_def, output1706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child1705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output1705_skip]
  kernel_rfl

theorem node1707_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value18 value1 value2 = (output21, value19, value1))
    (child1706 : Flapjack.WordAlloc.removeDeadStructural input1706 value19 value1 value2 = (output1706, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1707 value18 value1 value2 = (output1707, value566, value1) := by
  rw [input1707_def, output1707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child1706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output1706_skip]
  kernel_rfl

theorem node1708_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value17 value1 value2 = (output20, value18, value1))
    (child1707 : Flapjack.WordAlloc.removeDeadStructural input1707 value18 value1 value2 = (output1707, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1708 value17 value1 value2 = (output1708, value566, value1) := by
  rw [input1708_def, output1708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  try dsimp only
  rw [child1707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output20_skip, output1707_skip]
  kernel_rfl

theorem node1709_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value16 value1 value2 = (output19, value17, value1))
    (child1708 : Flapjack.WordAlloc.removeDeadStructural input1708 value17 value1 value2 = (output1708, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1709 value16 value1 value2 = (output1709, value566, value1) := by
  rw [input1709_def, output1709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child1708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output1708_skip]
  kernel_rfl

theorem node1710_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value16, value1))
    (child1709 : Flapjack.WordAlloc.removeDeadStructural input1709 value16 value1 value2 = (output1709, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1710 value14 value1 value2 = (output1710, value566, value1) := by
  rw [input1710_def, output1710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child1709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output1709_skip]
  kernel_rfl

theorem node1711_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value13 value1 value2 = (output15, value14, value1))
    (child1710 : Flapjack.WordAlloc.removeDeadStructural input1710 value14 value1 value2 = (output1710, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1711 value13 value1 value2 = (output1711, value566, value1) := by
  rw [input1711_def, output1711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child1710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output1710_skip]
  kernel_rfl

theorem node1712_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value2 = (output14, value13, value1))
    (child1711 : Flapjack.WordAlloc.removeDeadStructural input1711 value13 value1 value2 = (output1711, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1712 value11 value1 value2 = (output1712, value566, value1) := by
  rw [input1712_def, output1712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child1711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output1711_skip]
  kernel_rfl

theorem node1713_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value11, value1))
    (child1712 : Flapjack.WordAlloc.removeDeadStructural input1712 value11 value1 value2 = (output1712, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1713 value10 value1 value2 = (output1713, value566, value1) := by
  rw [input1713_def, output1713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child1712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output1712_skip]
  kernel_rfl

theorem node1714_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value10, value1))
    (child1713 : Flapjack.WordAlloc.removeDeadStructural input1713 value10 value1 value2 = (output1713, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1714 value8 value1 value2 = (output1714, value566, value1) := by
  rw [input1714_def, output1714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child1713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output1713_skip]
  kernel_rfl

theorem node1715_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child1714 : Flapjack.WordAlloc.removeDeadStructural input1714 value8 value1 value2 = (output1714, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1715 value7 value1 value2 = (output1715, value566, value1) := by
  rw [input1715_def, output1715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child1714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output1714_skip]
  kernel_rfl

theorem node1716_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child1715 : Flapjack.WordAlloc.removeDeadStructural input1715 value7 value1 value2 = (output1715, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1716 value5 value1 value2 = (output1716, value566, value1) := by
  rw [input1716_def, output1716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child1715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output1715_skip]
  kernel_rfl

theorem node1717_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1716 : Flapjack.WordAlloc.removeDeadStructural input1716 value5 value1 value2 = (output1716, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1717 value4 value1 value2 = (output1717, value566, value1) := by
  rw [input1717_def, output1717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1716_skip]
  kernel_rfl

theorem node1718_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1717 : Flapjack.WordAlloc.removeDeadStructural input1717 value4 value1 value2 = (output1717, value566, value1)) : Flapjack.WordAlloc.removeDeadStructural input1718 value0 value1 value2 = (output1718, value566, value1) := by
  rw [input1718_def, output1718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1717_skip]
  kernel_rfl

theorem node1719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1719 value566 value1 value2 = (output1719, value567, value1) := by
  rw [input1719_def, output1719_def]
  kernel_rfl

theorem node1720_cond_eq
    (child1718 : Flapjack.WordAlloc.removeDeadStructural input1718 value0 value1 value2 = (output1718, value566, value1))
    (child1719 : Flapjack.WordAlloc.removeDeadStructural input1719 value566 value1 value2 = (output1719, value567, value1)) : Flapjack.WordAlloc.removeDeadStructural input1720 value0 value1 value2 = (output1720, value567, value1) := by
  rw [input1720_def, output1720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1718]
  try dsimp only
  rw [child1719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1718_skip, output1719_skip]
  kernel_rfl

#print axioms node1720_cond_eq
end InitECandidate.Proofs.DeadStages347.Parallel
