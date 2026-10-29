import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages782.Parallel.Data.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages782.Parallel
theorem node1536_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value230 value1 value2 = (output282, value231, value1))
    (child1535 : Flapjack.WordAlloc.removeDeadStructural input1535 value231 value1 value2 = (output1535, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1536 value230 value1 value2 = (output1536, value780, value1) := by
  rw [input1536_def, output1536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child1535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output1535_skip]
  kernel_rfl

theorem node1537_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value229 value1 value2 = (output281, value230, value1))
    (child1536 : Flapjack.WordAlloc.removeDeadStructural input1536 value230 value1 value2 = (output1536, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1537 value229 value1 value2 = (output1537, value780, value1) := by
  rw [input1537_def, output1537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child1536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output1536_skip]
  kernel_rfl

theorem node1538_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value226 value1 value2 = (output280, value229, value1))
    (child1537 : Flapjack.WordAlloc.removeDeadStructural input1537 value229 value1 value2 = (output1537, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1538 value226 value1 value2 = (output1538, value780, value1) := by
  rw [input1538_def, output1538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child1537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output1537_skip]
  kernel_rfl

theorem node1539_cond_eq
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value226 value1 value2 = (output275, value226, value1))
    (child1538 : Flapjack.WordAlloc.removeDeadStructural input1538 value226 value1 value2 = (output1538, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1539 value226 value1 value2 = (output1539, value780, value1) := by
  rw [input1539_def, output1539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child275]
  try dsimp only
  rw [child1538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output275_skip, output1538_skip]
  kernel_rfl

theorem node1540_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value225 value1 value2 = (output274, value226, value1))
    (child1539 : Flapjack.WordAlloc.removeDeadStructural input1539 value226 value1 value2 = (output1539, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1540 value225 value1 value2 = (output1540, value780, value1) := by
  rw [input1540_def, output1540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  try dsimp only
  rw [child1539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output274_skip, output1539_skip]
  kernel_rfl

theorem node1541_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value224 value1 value2 = (output273, value225, value1))
    (child1540 : Flapjack.WordAlloc.removeDeadStructural input1540 value225 value1 value2 = (output1540, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1541 value224 value1 value2 = (output1541, value780, value1) := by
  rw [input1541_def, output1541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child1540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output1540_skip]
  kernel_rfl

theorem node1542_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value223 value1 value2 = (output272, value224, value1))
    (child1541 : Flapjack.WordAlloc.removeDeadStructural input1541 value224 value1 value2 = (output1541, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1542 value223 value1 value2 = (output1542, value780, value1) := by
  rw [input1542_def, output1542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child1541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output1541_skip]
  kernel_rfl

theorem node1543_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value222 value1 value2 = (output271, value223, value1))
    (child1542 : Flapjack.WordAlloc.removeDeadStructural input1542 value223 value1 value2 = (output1542, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1543 value222 value1 value2 = (output1543, value780, value1) := by
  rw [input1543_def, output1543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child1542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output1542_skip]
  kernel_rfl

theorem node1544_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value221 value1 value2 = (output270, value222, value1))
    (child1543 : Flapjack.WordAlloc.removeDeadStructural input1543 value222 value1 value2 = (output1543, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1544 value221 value1 value2 = (output1544, value780, value1) := by
  rw [input1544_def, output1544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child1543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output1543_skip]
  kernel_rfl

theorem node1545_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value220 value1 value2 = (output269, value221, value1))
    (child1544 : Flapjack.WordAlloc.removeDeadStructural input1544 value221 value1 value2 = (output1544, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1545 value220 value1 value2 = (output1545, value780, value1) := by
  rw [input1545_def, output1545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child1544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output1544_skip]
  kernel_rfl

theorem node1546_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value217 value1 value2 = (output268, value220, value1))
    (child1545 : Flapjack.WordAlloc.removeDeadStructural input1545 value220 value1 value2 = (output1545, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1546 value217 value1 value2 = (output1546, value780, value1) := by
  rw [input1546_def, output1546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child1545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output1545_skip]
  kernel_rfl

theorem node1547_cond_eq
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value217 value1 value2 = (output263, value217, value1))
    (child1546 : Flapjack.WordAlloc.removeDeadStructural input1546 value217 value1 value2 = (output1546, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1547 value217 value1 value2 = (output1547, value780, value1) := by
  rw [input1547_def, output1547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child263]
  try dsimp only
  rw [child1546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output263_skip, output1546_skip]
  kernel_rfl

theorem node1548_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value216 value1 value2 = (output262, value217, value1))
    (child1547 : Flapjack.WordAlloc.removeDeadStructural input1547 value217 value1 value2 = (output1547, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1548 value216 value1 value2 = (output1548, value780, value1) := by
  rw [input1548_def, output1548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child1547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output1547_skip]
  kernel_rfl

theorem node1549_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value215 value1 value2 = (output261, value216, value1))
    (child1548 : Flapjack.WordAlloc.removeDeadStructural input1548 value216 value1 value2 = (output1548, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1549 value215 value1 value2 = (output1549, value780, value1) := by
  rw [input1549_def, output1549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  try dsimp only
  rw [child1548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output261_skip, output1548_skip]
  kernel_rfl

theorem node1550_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value214 value1 value2 = (output260, value215, value1))
    (child1549 : Flapjack.WordAlloc.removeDeadStructural input1549 value215 value1 value2 = (output1549, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1550 value214 value1 value2 = (output1550, value780, value1) := by
  rw [input1550_def, output1550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child1549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output1549_skip]
  kernel_rfl

theorem node1551_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value213 value1 value2 = (output259, value214, value1))
    (child1550 : Flapjack.WordAlloc.removeDeadStructural input1550 value214 value1 value2 = (output1550, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1551 value213 value1 value2 = (output1551, value780, value1) := by
  rw [input1551_def, output1551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child1550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output1550_skip]
  kernel_rfl

theorem node1552_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value212 value1 value2 = (output258, value213, value1))
    (child1551 : Flapjack.WordAlloc.removeDeadStructural input1551 value213 value1 value2 = (output1551, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1552 value212 value1 value2 = (output1552, value780, value1) := by
  rw [input1552_def, output1552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child1551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output1551_skip]
  kernel_rfl

theorem node1553_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value211 value1 value2 = (output257, value212, value1))
    (child1552 : Flapjack.WordAlloc.removeDeadStructural input1552 value212 value1 value2 = (output1552, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1553 value211 value1 value2 = (output1553, value780, value1) := by
  rw [input1553_def, output1553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  try dsimp only
  rw [child1552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output1552_skip]
  kernel_rfl

theorem node1554_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value210 value1 value2 = (output256, value211, value1))
    (child1553 : Flapjack.WordAlloc.removeDeadStructural input1553 value211 value1 value2 = (output1553, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1554 value210 value1 value2 = (output1554, value780, value1) := by
  rw [input1554_def, output1554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child1553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output1553_skip]
  kernel_rfl

theorem node1555_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value209 value1 value2 = (output255, value210, value1))
    (child1554 : Flapjack.WordAlloc.removeDeadStructural input1554 value210 value1 value2 = (output1554, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1555 value209 value1 value2 = (output1555, value780, value1) := by
  rw [input1555_def, output1555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child1554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output1554_skip]
  kernel_rfl

theorem node1556_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value208 value1 value2 = (output254, value209, value1))
    (child1555 : Flapjack.WordAlloc.removeDeadStructural input1555 value209 value1 value2 = (output1555, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1556 value208 value1 value2 = (output1556, value780, value1) := by
  rw [input1556_def, output1556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child1555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output1555_skip]
  kernel_rfl

theorem node1557_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value207 value1 value2 = (output253, value208, value1))
    (child1556 : Flapjack.WordAlloc.removeDeadStructural input1556 value208 value1 value2 = (output1556, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1557 value207 value1 value2 = (output1557, value780, value1) := by
  rw [input1557_def, output1557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child1556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output1556_skip]
  kernel_rfl

theorem node1558_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value206 value1 value2 = (output252, value207, value1))
    (child1557 : Flapjack.WordAlloc.removeDeadStructural input1557 value207 value1 value2 = (output1557, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1558 value206 value1 value2 = (output1558, value780, value1) := by
  rw [input1558_def, output1558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child1557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output1557_skip]
  kernel_rfl

theorem node1559_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value205 value1 value2 = (output251, value206, value1))
    (child1558 : Flapjack.WordAlloc.removeDeadStructural input1558 value206 value1 value2 = (output1558, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1559 value205 value1 value2 = (output1559, value780, value1) := by
  rw [input1559_def, output1559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child1558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output1558_skip]
  kernel_rfl

theorem node1560_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value202 value1 value2 = (output250, value205, value1))
    (child1559 : Flapjack.WordAlloc.removeDeadStructural input1559 value205 value1 value2 = (output1559, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1560 value202 value1 value2 = (output1560, value780, value1) := by
  rw [input1560_def, output1560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child1559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output1559_skip]
  kernel_rfl

theorem node1561_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value202 value1 value2 = (output245, value202, value1))
    (child1560 : Flapjack.WordAlloc.removeDeadStructural input1560 value202 value1 value2 = (output1560, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1561 value202 value1 value2 = (output1561, value780, value1) := by
  rw [input1561_def, output1561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child1560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output1560_skip]
  kernel_rfl

theorem node1562_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value201 value1 value2 = (output244, value202, value1))
    (child1561 : Flapjack.WordAlloc.removeDeadStructural input1561 value202 value1 value2 = (output1561, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1562 value201 value1 value2 = (output1562, value780, value1) := by
  rw [input1562_def, output1562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child1561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output1561_skip]
  kernel_rfl

theorem node1563_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value200 value1 value2 = (output243, value201, value1))
    (child1562 : Flapjack.WordAlloc.removeDeadStructural input1562 value201 value1 value2 = (output1562, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1563 value200 value1 value2 = (output1563, value780, value1) := by
  rw [input1563_def, output1563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child1562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output1562_skip]
  kernel_rfl

theorem node1564_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value199 value1 value2 = (output242, value200, value1))
    (child1563 : Flapjack.WordAlloc.removeDeadStructural input1563 value200 value1 value2 = (output1563, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1564 value199 value1 value2 = (output1564, value780, value1) := by
  rw [input1564_def, output1564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  try dsimp only
  rw [child1563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output242_skip, output1563_skip]
  kernel_rfl

theorem node1565_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value198 value1 value2 = (output241, value199, value1))
    (child1564 : Flapjack.WordAlloc.removeDeadStructural input1564 value199 value1 value2 = (output1564, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1565 value198 value1 value2 = (output1565, value780, value1) := by
  rw [input1565_def, output1565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child1564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output1564_skip]
  kernel_rfl

theorem node1566_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value197 value1 value2 = (output240, value198, value1))
    (child1565 : Flapjack.WordAlloc.removeDeadStructural input1565 value198 value1 value2 = (output1565, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1566 value197 value1 value2 = (output1566, value780, value1) := by
  rw [input1566_def, output1566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child1565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output1565_skip]
  kernel_rfl

theorem node1567_cond_eq
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value196 value1 value2 = (output239, value197, value1))
    (child1566 : Flapjack.WordAlloc.removeDeadStructural input1566 value197 value1 value2 = (output1566, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1567 value196 value1 value2 = (output1567, value780, value1) := by
  rw [input1567_def, output1567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child239]
  try dsimp only
  rw [child1566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output239_skip, output1566_skip]
  kernel_rfl

theorem node1568_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value195 value1 value2 = (output238, value196, value1))
    (child1567 : Flapjack.WordAlloc.removeDeadStructural input1567 value196 value1 value2 = (output1567, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1568 value195 value1 value2 = (output1568, value780, value1) := by
  rw [input1568_def, output1568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  try dsimp only
  rw [child1567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output238_skip, output1567_skip]
  kernel_rfl

theorem node1569_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value194 value1 value2 = (output237, value195, value1))
    (child1568 : Flapjack.WordAlloc.removeDeadStructural input1568 value195 value1 value2 = (output1568, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1569 value194 value1 value2 = (output1569, value780, value1) := by
  rw [input1569_def, output1569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child1568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output1568_skip]
  kernel_rfl

theorem node1570_cond_eq
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value193 value1 value2 = (output236, value194, value1))
    (child1569 : Flapjack.WordAlloc.removeDeadStructural input1569 value194 value1 value2 = (output1569, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1570 value193 value1 value2 = (output1570, value780, value1) := by
  rw [input1570_def, output1570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child236]
  try dsimp only
  rw [child1569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output236_skip, output1569_skip]
  kernel_rfl

theorem node1571_cond_eq
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value192 value1 value2 = (output235, value193, value1))
    (child1570 : Flapjack.WordAlloc.removeDeadStructural input1570 value193 value1 value2 = (output1570, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1571 value192 value1 value2 = (output1571, value780, value1) := by
  rw [input1571_def, output1571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child235]
  try dsimp only
  rw [child1570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output235_skip, output1570_skip]
  kernel_rfl

theorem node1572_cond_eq
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value191 value1 value2 = (output234, value192, value1))
    (child1571 : Flapjack.WordAlloc.removeDeadStructural input1571 value192 value1 value2 = (output1571, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1572 value191 value1 value2 = (output1572, value780, value1) := by
  rw [input1572_def, output1572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child234]
  try dsimp only
  rw [child1571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output234_skip, output1571_skip]
  kernel_rfl

theorem node1573_cond_eq
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value190 value1 value2 = (output233, value191, value1))
    (child1572 : Flapjack.WordAlloc.removeDeadStructural input1572 value191 value1 value2 = (output1572, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1573 value190 value1 value2 = (output1573, value780, value1) := by
  rw [input1573_def, output1573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child233]
  try dsimp only
  rw [child1572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output233_skip, output1572_skip]
  kernel_rfl

theorem node1574_cond_eq
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value187 value1 value2 = (output232, value190, value1))
    (child1573 : Flapjack.WordAlloc.removeDeadStructural input1573 value190 value1 value2 = (output1573, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1574 value187 value1 value2 = (output1574, value780, value1) := by
  rw [input1574_def, output1574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child232]
  try dsimp only
  rw [child1573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output232_skip, output1573_skip]
  kernel_rfl

theorem node1575_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value187 value1 value2 = (output227, value187, value1))
    (child1574 : Flapjack.WordAlloc.removeDeadStructural input1574 value187 value1 value2 = (output1574, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1575 value187 value1 value2 = (output1575, value780, value1) := by
  rw [input1575_def, output1575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child1574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output1574_skip]
  kernel_rfl

theorem node1576_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value186 value1 value2 = (output226, value187, value1))
    (child1575 : Flapjack.WordAlloc.removeDeadStructural input1575 value187 value1 value2 = (output1575, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1576 value186 value1 value2 = (output1576, value780, value1) := by
  rw [input1576_def, output1576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  try dsimp only
  rw [child1575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output1575_skip]
  kernel_rfl

theorem node1577_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value185 value1 value2 = (output225, value186, value1))
    (child1576 : Flapjack.WordAlloc.removeDeadStructural input1576 value186 value1 value2 = (output1576, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1577 value185 value1 value2 = (output1577, value780, value1) := by
  rw [input1577_def, output1577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child1576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output1576_skip]
  kernel_rfl

theorem node1578_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value184 value1 value2 = (output224, value185, value1))
    (child1577 : Flapjack.WordAlloc.removeDeadStructural input1577 value185 value1 value2 = (output1577, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1578 value184 value1 value2 = (output1578, value780, value1) := by
  rw [input1578_def, output1578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child1577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output1577_skip]
  kernel_rfl

theorem node1579_cond_eq
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value183 value1 value2 = (output223, value184, value1))
    (child1578 : Flapjack.WordAlloc.removeDeadStructural input1578 value184 value1 value2 = (output1578, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1579 value183 value1 value2 = (output1579, value780, value1) := by
  rw [input1579_def, output1579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child223]
  try dsimp only
  rw [child1578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output223_skip, output1578_skip]
  kernel_rfl

theorem node1580_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value182 value1 value2 = (output222, value183, value1))
    (child1579 : Flapjack.WordAlloc.removeDeadStructural input1579 value183 value1 value2 = (output1579, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1580 value182 value1 value2 = (output1580, value780, value1) := by
  rw [input1580_def, output1580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child1579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output1579_skip]
  kernel_rfl

theorem node1581_cond_eq
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value181 value1 value2 = (output221, value182, value1))
    (child1580 : Flapjack.WordAlloc.removeDeadStructural input1580 value182 value1 value2 = (output1580, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1581 value181 value1 value2 = (output1581, value780, value1) := by
  rw [input1581_def, output1581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child221]
  try dsimp only
  rw [child1580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output221_skip, output1580_skip]
  kernel_rfl

theorem node1582_cond_eq
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value180 value1 value2 = (output220, value181, value1))
    (child1581 : Flapjack.WordAlloc.removeDeadStructural input1581 value181 value1 value2 = (output1581, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1582 value180 value1 value2 = (output1582, value780, value1) := by
  rw [input1582_def, output1582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child220]
  try dsimp only
  rw [child1581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output220_skip, output1581_skip]
  kernel_rfl

theorem node1583_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value179 value1 value2 = (output219, value180, value1))
    (child1582 : Flapjack.WordAlloc.removeDeadStructural input1582 value180 value1 value2 = (output1582, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1583 value179 value1 value2 = (output1583, value780, value1) := by
  rw [input1583_def, output1583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child1582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output1582_skip]
  kernel_rfl

theorem node1584_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value178 value1 value2 = (output218, value179, value1))
    (child1583 : Flapjack.WordAlloc.removeDeadStructural input1583 value179 value1 value2 = (output1583, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1584 value178 value1 value2 = (output1584, value780, value1) := by
  rw [input1584_def, output1584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child1583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output1583_skip]
  kernel_rfl

theorem node1585_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value177 value1 value2 = (output217, value178, value1))
    (child1584 : Flapjack.WordAlloc.removeDeadStructural input1584 value178 value1 value2 = (output1584, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1585 value177 value1 value2 = (output1585, value780, value1) := by
  rw [input1585_def, output1585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child1584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output1584_skip]
  kernel_rfl

theorem node1586_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value176 value1 value2 = (output216, value177, value1))
    (child1585 : Flapjack.WordAlloc.removeDeadStructural input1585 value177 value1 value2 = (output1585, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1586 value176 value1 value2 = (output1586, value780, value1) := by
  rw [input1586_def, output1586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child1585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output1585_skip]
  kernel_rfl

theorem node1587_cond_eq
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value175 value1 value2 = (output215, value176, value1))
    (child1586 : Flapjack.WordAlloc.removeDeadStructural input1586 value176 value1 value2 = (output1586, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1587 value175 value1 value2 = (output1587, value780, value1) := by
  rw [input1587_def, output1587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child215]
  try dsimp only
  rw [child1586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output215_skip, output1586_skip]
  kernel_rfl

theorem node1588_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value172 value1 value2 = (output214, value175, value1))
    (child1587 : Flapjack.WordAlloc.removeDeadStructural input1587 value175 value1 value2 = (output1587, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1588 value172 value1 value2 = (output1588, value780, value1) := by
  rw [input1588_def, output1588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child1587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output1587_skip]
  kernel_rfl

theorem node1589_cond_eq
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value172 value1 value2 = (output209, value172, value1))
    (child1588 : Flapjack.WordAlloc.removeDeadStructural input1588 value172 value1 value2 = (output1588, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1589 value172 value1 value2 = (output1589, value780, value1) := by
  rw [input1589_def, output1589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child209]
  try dsimp only
  rw [child1588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output209_skip, output1588_skip]
  kernel_rfl

theorem node1590_cond_eq
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value171 value1 value2 = (output208, value172, value1))
    (child1589 : Flapjack.WordAlloc.removeDeadStructural input1589 value172 value1 value2 = (output1589, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1590 value171 value1 value2 = (output1590, value780, value1) := by
  rw [input1590_def, output1590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child208]
  try dsimp only
  rw [child1589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output208_skip, output1589_skip]
  kernel_rfl

theorem node1591_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value170 value1 value2 = (output207, value171, value1))
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value171 value1 value2 = (output1590, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1591 value170 value1 value2 = (output1591, value780, value1) := by
  rw [input1591_def, output1591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child1590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output1590_skip]
  kernel_rfl

theorem node1592_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value169 value1 value2 = (output206, value170, value1))
    (child1591 : Flapjack.WordAlloc.removeDeadStructural input1591 value170 value1 value2 = (output1591, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1592 value169 value1 value2 = (output1592, value780, value1) := by
  rw [input1592_def, output1592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  try dsimp only
  rw [child1591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output206_skip, output1591_skip]
  kernel_rfl

theorem node1593_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value168 value1 value2 = (output205, value169, value1))
    (child1592 : Flapjack.WordAlloc.removeDeadStructural input1592 value169 value1 value2 = (output1592, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1593 value168 value1 value2 = (output1593, value780, value1) := by
  rw [input1593_def, output1593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child1592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output1592_skip]
  kernel_rfl

theorem node1594_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value167 value1 value2 = (output204, value168, value1))
    (child1593 : Flapjack.WordAlloc.removeDeadStructural input1593 value168 value1 value2 = (output1593, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1594 value167 value1 value2 = (output1594, value780, value1) := by
  rw [input1594_def, output1594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child1593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output1593_skip]
  kernel_rfl

theorem node1595_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value166 value1 value2 = (output203, value167, value1))
    (child1594 : Flapjack.WordAlloc.removeDeadStructural input1594 value167 value1 value2 = (output1594, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1595 value166 value1 value2 = (output1595, value780, value1) := by
  rw [input1595_def, output1595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child1594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output1594_skip]
  kernel_rfl

theorem node1596_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value165 value1 value2 = (output202, value166, value1))
    (child1595 : Flapjack.WordAlloc.removeDeadStructural input1595 value166 value1 value2 = (output1595, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1596 value165 value1 value2 = (output1596, value780, value1) := by
  rw [input1596_def, output1596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child1595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output1595_skip]
  kernel_rfl

theorem node1597_cond_eq
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value164 value1 value2 = (output201, value165, value1))
    (child1596 : Flapjack.WordAlloc.removeDeadStructural input1596 value165 value1 value2 = (output1596, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1597 value164 value1 value2 = (output1597, value780, value1) := by
  rw [input1597_def, output1597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child201]
  try dsimp only
  rw [child1596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output201_skip, output1596_skip]
  kernel_rfl

theorem node1598_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value163 value1 value2 = (output200, value164, value1))
    (child1597 : Flapjack.WordAlloc.removeDeadStructural input1597 value164 value1 value2 = (output1597, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1598 value163 value1 value2 = (output1598, value780, value1) := by
  rw [input1598_def, output1598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  try dsimp only
  rw [child1597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output1597_skip]
  kernel_rfl

theorem node1599_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value162 value1 value2 = (output199, value163, value1))
    (child1598 : Flapjack.WordAlloc.removeDeadStructural input1598 value163 value1 value2 = (output1598, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1599 value162 value1 value2 = (output1599, value780, value1) := by
  rw [input1599_def, output1599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child1598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output1598_skip]
  kernel_rfl

theorem node1600_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value161 value1 value2 = (output198, value162, value1))
    (child1599 : Flapjack.WordAlloc.removeDeadStructural input1599 value162 value1 value2 = (output1599, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1600 value161 value1 value2 = (output1600, value780, value1) := by
  rw [input1600_def, output1600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child1599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output1599_skip]
  kernel_rfl

theorem node1601_cond_eq
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value160 value1 value2 = (output197, value161, value1))
    (child1600 : Flapjack.WordAlloc.removeDeadStructural input1600 value161 value1 value2 = (output1600, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1601 value160 value1 value2 = (output1601, value780, value1) := by
  rw [input1601_def, output1601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child197]
  try dsimp only
  rw [child1600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output197_skip, output1600_skip]
  kernel_rfl

theorem node1602_cond_eq
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value157 value1 value2 = (output196, value160, value1))
    (child1601 : Flapjack.WordAlloc.removeDeadStructural input1601 value160 value1 value2 = (output1601, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1602 value157 value1 value2 = (output1602, value780, value1) := by
  rw [input1602_def, output1602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child196]
  try dsimp only
  rw [child1601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output196_skip, output1601_skip]
  kernel_rfl

theorem node1603_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value157 value1 value2 = (output191, value157, value1))
    (child1602 : Flapjack.WordAlloc.removeDeadStructural input1602 value157 value1 value2 = (output1602, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1603 value157 value1 value2 = (output1603, value780, value1) := by
  rw [input1603_def, output1603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child1602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output1602_skip]
  kernel_rfl

theorem node1604_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value156 value1 value2 = (output190, value157, value1))
    (child1603 : Flapjack.WordAlloc.removeDeadStructural input1603 value157 value1 value2 = (output1603, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1604 value156 value1 value2 = (output1604, value780, value1) := by
  rw [input1604_def, output1604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child1603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output1603_skip]
  kernel_rfl

theorem node1605_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value155 value1 value2 = (output189, value156, value1))
    (child1604 : Flapjack.WordAlloc.removeDeadStructural input1604 value156 value1 value2 = (output1604, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1605 value155 value1 value2 = (output1605, value780, value1) := by
  rw [input1605_def, output1605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child1604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output1604_skip]
  kernel_rfl

theorem node1606_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value154 value1 value2 = (output188, value155, value1))
    (child1605 : Flapjack.WordAlloc.removeDeadStructural input1605 value155 value1 value2 = (output1605, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1606 value154 value1 value2 = (output1606, value780, value1) := by
  rw [input1606_def, output1606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child1605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output1605_skip]
  kernel_rfl

theorem node1607_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value153 value1 value2 = (output187, value154, value1))
    (child1606 : Flapjack.WordAlloc.removeDeadStructural input1606 value154 value1 value2 = (output1606, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1607 value153 value1 value2 = (output1607, value780, value1) := by
  rw [input1607_def, output1607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  try dsimp only
  rw [child1606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output187_skip, output1606_skip]
  kernel_rfl

theorem node1608_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value152 value1 value2 = (output186, value153, value1))
    (child1607 : Flapjack.WordAlloc.removeDeadStructural input1607 value153 value1 value2 = (output1607, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1608 value152 value1 value2 = (output1608, value780, value1) := by
  rw [input1608_def, output1608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child1607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output1607_skip]
  kernel_rfl

theorem node1609_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value151 value1 value2 = (output185, value152, value1))
    (child1608 : Flapjack.WordAlloc.removeDeadStructural input1608 value152 value1 value2 = (output1608, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1609 value151 value1 value2 = (output1609, value780, value1) := by
  rw [input1609_def, output1609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child1608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output1608_skip]
  kernel_rfl

theorem node1610_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value150 value1 value2 = (output184, value151, value1))
    (child1609 : Flapjack.WordAlloc.removeDeadStructural input1609 value151 value1 value2 = (output1609, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1610 value150 value1 value2 = (output1610, value780, value1) := by
  rw [input1610_def, output1610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child1609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output184_skip, output1609_skip]
  kernel_rfl

theorem node1611_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value149 value1 value2 = (output183, value150, value1))
    (child1610 : Flapjack.WordAlloc.removeDeadStructural input1610 value150 value1 value2 = (output1610, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1611 value149 value1 value2 = (output1611, value780, value1) := by
  rw [input1611_def, output1611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  try dsimp only
  rw [child1610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output183_skip, output1610_skip]
  kernel_rfl

theorem node1612_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value148 value1 value2 = (output182, value149, value1))
    (child1611 : Flapjack.WordAlloc.removeDeadStructural input1611 value149 value1 value2 = (output1611, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1612 value148 value1 value2 = (output1612, value780, value1) := by
  rw [input1612_def, output1612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child1611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output182_skip, output1611_skip]
  kernel_rfl

theorem node1613_cond_eq
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value147 value1 value2 = (output181, value148, value1))
    (child1612 : Flapjack.WordAlloc.removeDeadStructural input1612 value148 value1 value2 = (output1612, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1613 value147 value1 value2 = (output1613, value780, value1) := by
  rw [input1613_def, output1613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child181]
  try dsimp only
  rw [child1612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output181_skip, output1612_skip]
  kernel_rfl

theorem node1614_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value146 value1 value2 = (output180, value147, value1))
    (child1613 : Flapjack.WordAlloc.removeDeadStructural input1613 value147 value1 value2 = (output1613, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1614 value146 value1 value2 = (output1614, value780, value1) := by
  rw [input1614_def, output1614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child1613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output1613_skip]
  kernel_rfl

theorem node1615_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value145 value1 value2 = (output179, value146, value1))
    (child1614 : Flapjack.WordAlloc.removeDeadStructural input1614 value146 value1 value2 = (output1614, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1615 value145 value1 value2 = (output1615, value780, value1) := by
  rw [input1615_def, output1615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child1614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output1614_skip]
  kernel_rfl

theorem node1616_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value142 value1 value2 = (output178, value145, value1))
    (child1615 : Flapjack.WordAlloc.removeDeadStructural input1615 value145 value1 value2 = (output1615, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1616 value142 value1 value2 = (output1616, value780, value1) := by
  rw [input1616_def, output1616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child1615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output1615_skip]
  kernel_rfl

theorem node1617_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value142 value1 value2 = (output173, value142, value1))
    (child1616 : Flapjack.WordAlloc.removeDeadStructural input1616 value142 value1 value2 = (output1616, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1617 value142 value1 value2 = (output1617, value780, value1) := by
  rw [input1617_def, output1617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  try dsimp only
  rw [child1616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output173_skip, output1616_skip]
  kernel_rfl

theorem node1618_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value141 value1 value2 = (output172, value142, value1))
    (child1617 : Flapjack.WordAlloc.removeDeadStructural input1617 value142 value1 value2 = (output1617, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1618 value141 value1 value2 = (output1618, value780, value1) := by
  rw [input1618_def, output1618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child1617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output172_skip, output1617_skip]
  kernel_rfl

theorem node1619_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value140 value1 value2 = (output171, value141, value1))
    (child1618 : Flapjack.WordAlloc.removeDeadStructural input1618 value141 value1 value2 = (output1618, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1619 value140 value1 value2 = (output1619, value780, value1) := by
  rw [input1619_def, output1619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  try dsimp only
  rw [child1618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output1618_skip]
  kernel_rfl

theorem node1620_cond_eq
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value139 value1 value2 = (output170, value140, value1))
    (child1619 : Flapjack.WordAlloc.removeDeadStructural input1619 value140 value1 value2 = (output1619, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1620 value139 value1 value2 = (output1620, value780, value1) := by
  rw [input1620_def, output1620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child170]
  try dsimp only
  rw [child1619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output170_skip, output1619_skip]
  kernel_rfl

theorem node1621_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value138 value1 value2 = (output169, value139, value1))
    (child1620 : Flapjack.WordAlloc.removeDeadStructural input1620 value139 value1 value2 = (output1620, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1621 value138 value1 value2 = (output1621, value780, value1) := by
  rw [input1621_def, output1621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child1620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output1620_skip]
  kernel_rfl

theorem node1622_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value137 value1 value2 = (output168, value138, value1))
    (child1621 : Flapjack.WordAlloc.removeDeadStructural input1621 value138 value1 value2 = (output1621, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1622 value137 value1 value2 = (output1622, value780, value1) := by
  rw [input1622_def, output1622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child1621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output1621_skip]
  kernel_rfl

theorem node1623_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value136 value1 value2 = (output167, value137, value1))
    (child1622 : Flapjack.WordAlloc.removeDeadStructural input1622 value137 value1 value2 = (output1622, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1623 value136 value1 value2 = (output1623, value780, value1) := by
  rw [input1623_def, output1623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child1622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output1622_skip]
  kernel_rfl

theorem node1624_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value135 value1 value2 = (output166, value136, value1))
    (child1623 : Flapjack.WordAlloc.removeDeadStructural input1623 value136 value1 value2 = (output1623, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1624 value135 value1 value2 = (output1624, value780, value1) := by
  rw [input1624_def, output1624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  try dsimp only
  rw [child1623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output1623_skip]
  kernel_rfl

theorem node1625_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value134 value1 value2 = (output165, value135, value1))
    (child1624 : Flapjack.WordAlloc.removeDeadStructural input1624 value135 value1 value2 = (output1624, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1625 value134 value1 value2 = (output1625, value780, value1) := by
  rw [input1625_def, output1625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child1624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output1624_skip]
  kernel_rfl

theorem node1626_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value133 value1 value2 = (output164, value134, value1))
    (child1625 : Flapjack.WordAlloc.removeDeadStructural input1625 value134 value1 value2 = (output1625, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1626 value133 value1 value2 = (output1626, value780, value1) := by
  rw [input1626_def, output1626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child1625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output1625_skip]
  kernel_rfl

theorem node1627_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value132 value1 value2 = (output163, value133, value1))
    (child1626 : Flapjack.WordAlloc.removeDeadStructural input1626 value133 value1 value2 = (output1626, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1627 value132 value1 value2 = (output1627, value780, value1) := by
  rw [input1627_def, output1627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child1626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output163_skip, output1626_skip]
  kernel_rfl

theorem node1628_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value131 value1 value2 = (output162, value132, value1))
    (child1627 : Flapjack.WordAlloc.removeDeadStructural input1627 value132 value1 value2 = (output1627, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1628 value131 value1 value2 = (output1628, value780, value1) := by
  rw [input1628_def, output1628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child1627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output1627_skip]
  kernel_rfl

theorem node1629_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value130 value1 value2 = (output161, value131, value1))
    (child1628 : Flapjack.WordAlloc.removeDeadStructural input1628 value131 value1 value2 = (output1628, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1629 value130 value1 value2 = (output1629, value780, value1) := by
  rw [input1629_def, output1629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child1628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output1628_skip]
  kernel_rfl

theorem node1630_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value127 value1 value2 = (output160, value130, value1))
    (child1629 : Flapjack.WordAlloc.removeDeadStructural input1629 value130 value1 value2 = (output1629, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1630 value127 value1 value2 = (output1630, value780, value1) := by
  rw [input1630_def, output1630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child1629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output1629_skip]
  kernel_rfl

theorem node1631_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value127 value1 value2 = (output155, value127, value1))
    (child1630 : Flapjack.WordAlloc.removeDeadStructural input1630 value127 value1 value2 = (output1630, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1631 value127 value1 value2 = (output1631, value780, value1) := by
  rw [input1631_def, output1631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child1630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output1630_skip]
  kernel_rfl

theorem node1632_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value126 value1 value2 = (output154, value127, value1))
    (child1631 : Flapjack.WordAlloc.removeDeadStructural input1631 value127 value1 value2 = (output1631, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1632 value126 value1 value2 = (output1632, value780, value1) := by
  rw [input1632_def, output1632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child1631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output1631_skip]
  kernel_rfl

theorem node1633_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value125 value1 value2 = (output153, value126, value1))
    (child1632 : Flapjack.WordAlloc.removeDeadStructural input1632 value126 value1 value2 = (output1632, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1633 value125 value1 value2 = (output1633, value780, value1) := by
  rw [input1633_def, output1633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child1632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output1632_skip]
  kernel_rfl

theorem node1634_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value124 value1 value2 = (output152, value125, value1))
    (child1633 : Flapjack.WordAlloc.removeDeadStructural input1633 value125 value1 value2 = (output1633, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1634 value124 value1 value2 = (output1634, value780, value1) := by
  rw [input1634_def, output1634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child1633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output1633_skip]
  kernel_rfl

theorem node1635_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value123 value1 value2 = (output151, value124, value1))
    (child1634 : Flapjack.WordAlloc.removeDeadStructural input1634 value124 value1 value2 = (output1634, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1635 value123 value1 value2 = (output1635, value780, value1) := by
  rw [input1635_def, output1635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  try dsimp only
  rw [child1634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output151_skip, output1634_skip]
  kernel_rfl

theorem node1636_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value122 value1 value2 = (output150, value123, value1))
    (child1635 : Flapjack.WordAlloc.removeDeadStructural input1635 value123 value1 value2 = (output1635, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1636 value122 value1 value2 = (output1636, value780, value1) := by
  rw [input1636_def, output1636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child1635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output1635_skip]
  kernel_rfl

theorem node1637_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value121 value1 value2 = (output149, value122, value1))
    (child1636 : Flapjack.WordAlloc.removeDeadStructural input1636 value122 value1 value2 = (output1636, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1637 value121 value1 value2 = (output1637, value780, value1) := by
  rw [input1637_def, output1637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child1636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output1636_skip]
  kernel_rfl

theorem node1638_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value120 value1 value2 = (output148, value121, value1))
    (child1637 : Flapjack.WordAlloc.removeDeadStructural input1637 value121 value1 value2 = (output1637, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1638 value120 value1 value2 = (output1638, value780, value1) := by
  rw [input1638_def, output1638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child1637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output1637_skip]
  kernel_rfl

theorem node1639_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value119 value1 value2 = (output147, value120, value1))
    (child1638 : Flapjack.WordAlloc.removeDeadStructural input1638 value120 value1 value2 = (output1638, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1639 value119 value1 value2 = (output1639, value780, value1) := by
  rw [input1639_def, output1639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child1638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output1638_skip]
  kernel_rfl

theorem node1640_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value118 value1 value2 = (output146, value119, value1))
    (child1639 : Flapjack.WordAlloc.removeDeadStructural input1639 value119 value1 value2 = (output1639, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1640 value118 value1 value2 = (output1640, value780, value1) := by
  rw [input1640_def, output1640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child1639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output1639_skip]
  kernel_rfl

theorem node1641_cond_eq
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value117 value1 value2 = (output145, value118, value1))
    (child1640 : Flapjack.WordAlloc.removeDeadStructural input1640 value118 value1 value2 = (output1640, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1641 value117 value1 value2 = (output1641, value780, value1) := by
  rw [input1641_def, output1641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child145]
  try dsimp only
  rw [child1640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output145_skip, output1640_skip]
  kernel_rfl

theorem node1642_cond_eq
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value116 value1 value2 = (output144, value117, value1))
    (child1641 : Flapjack.WordAlloc.removeDeadStructural input1641 value117 value1 value2 = (output1641, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1642 value116 value1 value2 = (output1642, value780, value1) := by
  rw [input1642_def, output1642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child144]
  try dsimp only
  rw [child1641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output144_skip, output1641_skip]
  kernel_rfl

theorem node1643_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value115 value1 value2 = (output143, value116, value1))
    (child1642 : Flapjack.WordAlloc.removeDeadStructural input1642 value116 value1 value2 = (output1642, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1643 value115 value1 value2 = (output1643, value780, value1) := by
  rw [input1643_def, output1643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child1642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output1642_skip]
  kernel_rfl

theorem node1644_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value112 value1 value2 = (output142, value115, value1))
    (child1643 : Flapjack.WordAlloc.removeDeadStructural input1643 value115 value1 value2 = (output1643, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1644 value112 value1 value2 = (output1644, value780, value1) := by
  rw [input1644_def, output1644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child1643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output1643_skip]
  kernel_rfl

theorem node1645_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value112 value1 value2 = (output137, value112, value1))
    (child1644 : Flapjack.WordAlloc.removeDeadStructural input1644 value112 value1 value2 = (output1644, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1645 value112 value1 value2 = (output1645, value780, value1) := by
  rw [input1645_def, output1645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child1644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output1644_skip]
  kernel_rfl

theorem node1646_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value111 value1 value2 = (output136, value112, value1))
    (child1645 : Flapjack.WordAlloc.removeDeadStructural input1645 value112 value1 value2 = (output1645, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1646 value111 value1 value2 = (output1646, value780, value1) := by
  rw [input1646_def, output1646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child1645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output1645_skip]
  kernel_rfl

theorem node1647_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value110 value1 value2 = (output135, value111, value1))
    (child1646 : Flapjack.WordAlloc.removeDeadStructural input1646 value111 value1 value2 = (output1646, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1647 value110 value1 value2 = (output1647, value780, value1) := by
  rw [input1647_def, output1647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child1646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output1646_skip]
  kernel_rfl

theorem node1648_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value109 value1 value2 = (output134, value110, value1))
    (child1647 : Flapjack.WordAlloc.removeDeadStructural input1647 value110 value1 value2 = (output1647, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1648 value109 value1 value2 = (output1648, value780, value1) := by
  rw [input1648_def, output1648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child1647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output1647_skip]
  kernel_rfl

theorem node1649_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value108 value1 value2 = (output133, value109, value1))
    (child1648 : Flapjack.WordAlloc.removeDeadStructural input1648 value109 value1 value2 = (output1648, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1649 value108 value1 value2 = (output1649, value780, value1) := by
  rw [input1649_def, output1649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child1648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output1648_skip]
  kernel_rfl

theorem node1650_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value107 value1 value2 = (output132, value108, value1))
    (child1649 : Flapjack.WordAlloc.removeDeadStructural input1649 value108 value1 value2 = (output1649, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1650 value107 value1 value2 = (output1650, value780, value1) := by
  rw [input1650_def, output1650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child1649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output1649_skip]
  kernel_rfl

theorem node1651_cond_eq
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value106 value1 value2 = (output131, value107, value1))
    (child1650 : Flapjack.WordAlloc.removeDeadStructural input1650 value107 value1 value2 = (output1650, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1651 value106 value1 value2 = (output1651, value780, value1) := by
  rw [input1651_def, output1651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child131]
  try dsimp only
  rw [child1650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output131_skip, output1650_skip]
  kernel_rfl

theorem node1652_cond_eq
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value105 value1 value2 = (output130, value106, value1))
    (child1651 : Flapjack.WordAlloc.removeDeadStructural input1651 value106 value1 value2 = (output1651, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1652 value105 value1 value2 = (output1652, value780, value1) := by
  rw [input1652_def, output1652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child130]
  try dsimp only
  rw [child1651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output130_skip, output1651_skip]
  kernel_rfl

theorem node1653_cond_eq
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value104 value1 value2 = (output129, value105, value1))
    (child1652 : Flapjack.WordAlloc.removeDeadStructural input1652 value105 value1 value2 = (output1652, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1653 value104 value1 value2 = (output1653, value780, value1) := by
  rw [input1653_def, output1653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child129]
  try dsimp only
  rw [child1652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output129_skip, output1652_skip]
  kernel_rfl

theorem node1654_cond_eq
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value103 value1 value2 = (output128, value104, value1))
    (child1653 : Flapjack.WordAlloc.removeDeadStructural input1653 value104 value1 value2 = (output1653, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1654 value103 value1 value2 = (output1654, value780, value1) := by
  rw [input1654_def, output1654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child128]
  try dsimp only
  rw [child1653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output128_skip, output1653_skip]
  kernel_rfl

theorem node1655_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value102 value1 value2 = (output127, value103, value1))
    (child1654 : Flapjack.WordAlloc.removeDeadStructural input1654 value103 value1 value2 = (output1654, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1655 value102 value1 value2 = (output1655, value780, value1) := by
  rw [input1655_def, output1655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child1654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output127_skip, output1654_skip]
  kernel_rfl

theorem node1656_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value101 value1 value2 = (output126, value102, value1))
    (child1655 : Flapjack.WordAlloc.removeDeadStructural input1655 value102 value1 value2 = (output1655, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1656 value101 value1 value2 = (output1656, value780, value1) := by
  rw [input1656_def, output1656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child1655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output1655_skip]
  kernel_rfl

theorem node1657_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value100 value1 value2 = (output125, value101, value1))
    (child1656 : Flapjack.WordAlloc.removeDeadStructural input1656 value101 value1 value2 = (output1656, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1657 value100 value1 value2 = (output1657, value780, value1) := by
  rw [input1657_def, output1657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child1656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output1656_skip]
  kernel_rfl

theorem node1658_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value97 value1 value2 = (output124, value100, value1))
    (child1657 : Flapjack.WordAlloc.removeDeadStructural input1657 value100 value1 value2 = (output1657, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1658 value97 value1 value2 = (output1658, value780, value1) := by
  rw [input1658_def, output1658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child1657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output1657_skip]
  kernel_rfl

theorem node1659_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value97 value1 value2 = (output119, value97, value1))
    (child1658 : Flapjack.WordAlloc.removeDeadStructural input1658 value97 value1 value2 = (output1658, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1659 value97 value1 value2 = (output1659, value780, value1) := by
  rw [input1659_def, output1659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child1658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output1658_skip]
  kernel_rfl

theorem node1660_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value96 value1 value2 = (output118, value97, value1))
    (child1659 : Flapjack.WordAlloc.removeDeadStructural input1659 value97 value1 value2 = (output1659, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1660 value96 value1 value2 = (output1660, value780, value1) := by
  rw [input1660_def, output1660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child1659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output1659_skip]
  kernel_rfl

theorem node1661_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value95 value1 value2 = (output117, value96, value1))
    (child1660 : Flapjack.WordAlloc.removeDeadStructural input1660 value96 value1 value2 = (output1660, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1661 value95 value1 value2 = (output1661, value780, value1) := by
  rw [input1661_def, output1661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  try dsimp only
  rw [child1660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output117_skip, output1660_skip]
  kernel_rfl

theorem node1662_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value94 value1 value2 = (output116, value95, value1))
    (child1661 : Flapjack.WordAlloc.removeDeadStructural input1661 value95 value1 value2 = (output1661, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1662 value94 value1 value2 = (output1662, value780, value1) := by
  rw [input1662_def, output1662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child116]
  try dsimp only
  rw [child1661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output1661_skip]
  kernel_rfl

theorem node1663_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value93 value1 value2 = (output115, value94, value1))
    (child1662 : Flapjack.WordAlloc.removeDeadStructural input1662 value94 value1 value2 = (output1662, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1663 value93 value1 value2 = (output1663, value780, value1) := by
  rw [input1663_def, output1663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child1662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output1662_skip]
  kernel_rfl

theorem node1664_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value92 value1 value2 = (output114, value93, value1))
    (child1663 : Flapjack.WordAlloc.removeDeadStructural input1663 value93 value1 value2 = (output1663, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1664 value92 value1 value2 = (output1664, value780, value1) := by
  rw [input1664_def, output1664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  try dsimp only
  rw [child1663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output114_skip, output1663_skip]
  kernel_rfl

theorem node1665_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value91 value1 value2 = (output113, value92, value1))
    (child1664 : Flapjack.WordAlloc.removeDeadStructural input1664 value92 value1 value2 = (output1664, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1665 value91 value1 value2 = (output1665, value780, value1) := by
  rw [input1665_def, output1665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child1664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output1664_skip]
  kernel_rfl

theorem node1666_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value90 value1 value2 = (output112, value91, value1))
    (child1665 : Flapjack.WordAlloc.removeDeadStructural input1665 value91 value1 value2 = (output1665, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1666 value90 value1 value2 = (output1666, value780, value1) := by
  rw [input1666_def, output1666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child1665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output112_skip, output1665_skip]
  kernel_rfl

theorem node1667_cond_eq
    (child111 : Flapjack.WordAlloc.removeDeadStructural input111 value89 value1 value2 = (output111, value90, value1))
    (child1666 : Flapjack.WordAlloc.removeDeadStructural input1666 value90 value1 value2 = (output1666, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1667 value89 value1 value2 = (output1667, value780, value1) := by
  rw [input1667_def, output1667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child111]
  try dsimp only
  rw [child1666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output111_skip, output1666_skip]
  kernel_rfl

theorem node1668_cond_eq
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value88 value1 value2 = (output110, value89, value1))
    (child1667 : Flapjack.WordAlloc.removeDeadStructural input1667 value89 value1 value2 = (output1667, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1668 value88 value1 value2 = (output1668, value780, value1) := by
  rw [input1668_def, output1668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child110]
  try dsimp only
  rw [child1667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output110_skip, output1667_skip]
  kernel_rfl

theorem node1669_cond_eq
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value87 value1 value2 = (output109, value88, value1))
    (child1668 : Flapjack.WordAlloc.removeDeadStructural input1668 value88 value1 value2 = (output1668, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1669 value87 value1 value2 = (output1669, value780, value1) := by
  rw [input1669_def, output1669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child109]
  try dsimp only
  rw [child1668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output109_skip, output1668_skip]
  kernel_rfl

theorem node1670_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value86 value1 value2 = (output108, value87, value1))
    (child1669 : Flapjack.WordAlloc.removeDeadStructural input1669 value87 value1 value2 = (output1669, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1670 value86 value1 value2 = (output1670, value780, value1) := by
  rw [input1670_def, output1670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child1669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output1669_skip]
  kernel_rfl

theorem node1671_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value85 value1 value2 = (output107, value86, value1))
    (child1670 : Flapjack.WordAlloc.removeDeadStructural input1670 value86 value1 value2 = (output1670, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1671 value85 value1 value2 = (output1671, value780, value1) := by
  rw [input1671_def, output1671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child1670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output1670_skip]
  kernel_rfl

theorem node1672_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value82 value1 value2 = (output106, value85, value1))
    (child1671 : Flapjack.WordAlloc.removeDeadStructural input1671 value85 value1 value2 = (output1671, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1672 value82 value1 value2 = (output1672, value780, value1) := by
  rw [input1672_def, output1672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child1671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output1671_skip]
  kernel_rfl

theorem node1673_cond_eq
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value82 value1 value2 = (output101, value82, value1))
    (child1672 : Flapjack.WordAlloc.removeDeadStructural input1672 value82 value1 value2 = (output1672, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1673 value82 value1 value2 = (output1673, value780, value1) := by
  rw [input1673_def, output1673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child101]
  try dsimp only
  rw [child1672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output101_skip, output1672_skip]
  kernel_rfl

theorem node1674_cond_eq
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value81 value1 value2 = (output100, value82, value1))
    (child1673 : Flapjack.WordAlloc.removeDeadStructural input1673 value82 value1 value2 = (output1673, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1674 value81 value1 value2 = (output1674, value780, value1) := by
  rw [input1674_def, output1674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child100]
  try dsimp only
  rw [child1673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output100_skip, output1673_skip]
  kernel_rfl

theorem node1675_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value80 value1 value2 = (output99, value81, value1))
    (child1674 : Flapjack.WordAlloc.removeDeadStructural input1674 value81 value1 value2 = (output1674, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1675 value80 value1 value2 = (output1675, value780, value1) := by
  rw [input1675_def, output1675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child1674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output1674_skip]
  kernel_rfl

theorem node1676_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value79 value1 value2 = (output98, value80, value1))
    (child1675 : Flapjack.WordAlloc.removeDeadStructural input1675 value80 value1 value2 = (output1675, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1676 value79 value1 value2 = (output1676, value780, value1) := by
  rw [input1676_def, output1676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  try dsimp only
  rw [child1675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output98_skip, output1675_skip]
  kernel_rfl

theorem node1677_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value78 value1 value2 = (output97, value79, value1))
    (child1676 : Flapjack.WordAlloc.removeDeadStructural input1676 value79 value1 value2 = (output1676, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1677 value78 value1 value2 = (output1677, value780, value1) := by
  rw [input1677_def, output1677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child1676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output1676_skip]
  kernel_rfl

theorem node1678_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value77 value1 value2 = (output96, value78, value1))
    (child1677 : Flapjack.WordAlloc.removeDeadStructural input1677 value78 value1 value2 = (output1677, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1678 value77 value1 value2 = (output1678, value780, value1) := by
  rw [input1678_def, output1678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child1677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output1677_skip]
  kernel_rfl

theorem node1679_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value76 value1 value2 = (output95, value77, value1))
    (child1678 : Flapjack.WordAlloc.removeDeadStructural input1678 value77 value1 value2 = (output1678, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1679 value76 value1 value2 = (output1679, value780, value1) := by
  rw [input1679_def, output1679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child1678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output1678_skip]
  kernel_rfl

theorem node1680_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value75 value1 value2 = (output94, value76, value1))
    (child1679 : Flapjack.WordAlloc.removeDeadStructural input1679 value76 value1 value2 = (output1679, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1680 value75 value1 value2 = (output1680, value780, value1) := by
  rw [input1680_def, output1680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child1679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output1679_skip]
  kernel_rfl

theorem node1681_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value74 value1 value2 = (output93, value75, value1))
    (child1680 : Flapjack.WordAlloc.removeDeadStructural input1680 value75 value1 value2 = (output1680, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1681 value74 value1 value2 = (output1681, value780, value1) := by
  rw [input1681_def, output1681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  try dsimp only
  rw [child1680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output1680_skip]
  kernel_rfl

theorem node1682_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value72 value1 value2 = (output92, value74, value1))
    (child1681 : Flapjack.WordAlloc.removeDeadStructural input1681 value74 value1 value2 = (output1681, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1682 value72 value1 value2 = (output1682, value780, value1) := by
  rw [input1682_def, output1682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child1681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output1681_skip]
  kernel_rfl

theorem node1683_cond_eq
    (child89 : Flapjack.WordAlloc.removeDeadStructural input89 value71 value1 value2 = (output89, value72, value1))
    (child1682 : Flapjack.WordAlloc.removeDeadStructural input1682 value72 value1 value2 = (output1682, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1683 value71 value1 value2 = (output1683, value780, value1) := by
  rw [input1683_def, output1683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child89]
  try dsimp only
  rw [child1682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output89_skip, output1682_skip]
  kernel_rfl

theorem node1684_cond_eq
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value69 value1 value2 = (output88, value71, value1))
    (child1683 : Flapjack.WordAlloc.removeDeadStructural input1683 value71 value1 value2 = (output1683, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1684 value69 value1 value2 = (output1684, value780, value1) := by
  rw [input1684_def, output1684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child88]
  try dsimp only
  rw [child1683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output88_skip, output1683_skip]
  kernel_rfl

theorem node1685_cond_eq
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value68 value1 value2 = (output85, value69, value1))
    (child1684 : Flapjack.WordAlloc.removeDeadStructural input1684 value69 value1 value2 = (output1684, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1685 value68 value1 value2 = (output1685, value780, value1) := by
  rw [input1685_def, output1685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child85]
  try dsimp only
  rw [child1684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output85_skip, output1684_skip]
  kernel_rfl

theorem node1686_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value66 value1 value2 = (output84, value68, value1))
    (child1685 : Flapjack.WordAlloc.removeDeadStructural input1685 value68 value1 value2 = (output1685, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1686 value66 value1 value2 = (output1686, value780, value1) := by
  rw [input1686_def, output1686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child1685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output1685_skip]
  kernel_rfl

theorem node1687_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value65 value1 value2 = (output81, value66, value1))
    (child1686 : Flapjack.WordAlloc.removeDeadStructural input1686 value66 value1 value2 = (output1686, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1687 value65 value1 value2 = (output1687, value780, value1) := by
  rw [input1687_def, output1687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child1686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output1686_skip]
  kernel_rfl

theorem node1688_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value63 value1 value2 = (output80, value65, value1))
    (child1687 : Flapjack.WordAlloc.removeDeadStructural input1687 value65 value1 value2 = (output1687, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1688 value63 value1 value2 = (output1688, value780, value1) := by
  rw [input1688_def, output1688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child1687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output1687_skip]
  kernel_rfl

theorem node1689_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value62 value1 value2 = (output77, value63, value1))
    (child1688 : Flapjack.WordAlloc.removeDeadStructural input1688 value63 value1 value2 = (output1688, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1689 value62 value1 value2 = (output1689, value780, value1) := by
  rw [input1689_def, output1689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child1688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output1688_skip]
  kernel_rfl

theorem node1690_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value60 value1 value2 = (output76, value62, value1))
    (child1689 : Flapjack.WordAlloc.removeDeadStructural input1689 value62 value1 value2 = (output1689, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1690 value60 value1 value2 = (output1690, value780, value1) := by
  rw [input1690_def, output1690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child1689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output1689_skip]
  kernel_rfl

theorem node1691_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value59 value1 value2 = (output73, value60, value1))
    (child1690 : Flapjack.WordAlloc.removeDeadStructural input1690 value60 value1 value2 = (output1690, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1691 value59 value1 value2 = (output1691, value780, value1) := by
  rw [input1691_def, output1691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child1690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output1690_skip]
  kernel_rfl

theorem node1692_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value57 value1 value2 = (output72, value59, value1))
    (child1691 : Flapjack.WordAlloc.removeDeadStructural input1691 value59 value1 value2 = (output1691, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1692 value57 value1 value2 = (output1692, value780, value1) := by
  rw [input1692_def, output1692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child1691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output72_skip, output1691_skip]
  kernel_rfl

theorem node1693_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value55 value1 value2 = (output69, value57, value1))
    (child1692 : Flapjack.WordAlloc.removeDeadStructural input1692 value57 value1 value2 = (output1692, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1693 value55 value1 value2 = (output1693, value780, value1) := by
  rw [input1693_def, output1693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child1692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output1692_skip]
  kernel_rfl

theorem node1694_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value54 value1 value2 = (output66, value55, value1))
    (child1693 : Flapjack.WordAlloc.removeDeadStructural input1693 value55 value1 value2 = (output1693, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1694 value54 value1 value2 = (output1694, value780, value1) := by
  rw [input1694_def, output1694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child1693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output1693_skip]
  kernel_rfl

theorem node1695_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value53 value1 value2 = (output65, value54, value1))
    (child1694 : Flapjack.WordAlloc.removeDeadStructural input1694 value54 value1 value2 = (output1694, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1695 value53 value1 value2 = (output1695, value780, value1) := by
  rw [input1695_def, output1695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child1694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output1694_skip]
  kernel_rfl

theorem node1696_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value52 value1 value2 = (output64, value53, value1))
    (child1695 : Flapjack.WordAlloc.removeDeadStructural input1695 value53 value1 value2 = (output1695, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1696 value52 value1 value2 = (output1696, value780, value1) := by
  rw [input1696_def, output1696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child1695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output1695_skip]
  kernel_rfl

theorem node1697_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value51 value1 value2 = (output63, value52, value1))
    (child1696 : Flapjack.WordAlloc.removeDeadStructural input1696 value52 value1 value2 = (output1696, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1697 value51 value1 value2 = (output1697, value780, value1) := by
  rw [input1697_def, output1697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child1696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output1696_skip]
  kernel_rfl

theorem node1698_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value50 value1 value2 = (output62, value51, value1))
    (child1697 : Flapjack.WordAlloc.removeDeadStructural input1697 value51 value1 value2 = (output1697, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1698 value50 value1 value2 = (output1698, value780, value1) := by
  rw [input1698_def, output1698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child1697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output62_skip, output1697_skip]
  kernel_rfl

theorem node1699_cond_eq
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value49 value1 value2 = (output61, value50, value1))
    (child1698 : Flapjack.WordAlloc.removeDeadStructural input1698 value50 value1 value2 = (output1698, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1699 value49 value1 value2 = (output1699, value780, value1) := by
  rw [input1699_def, output1699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child61]
  try dsimp only
  rw [child1698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output61_skip, output1698_skip]
  kernel_rfl

theorem node1700_cond_eq
    (child60 : Flapjack.WordAlloc.removeDeadStructural input60 value48 value1 value2 = (output60, value49, value1))
    (child1699 : Flapjack.WordAlloc.removeDeadStructural input1699 value49 value1 value2 = (output1699, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1700 value48 value1 value2 = (output1700, value780, value1) := by
  rw [input1700_def, output1700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child60]
  try dsimp only
  rw [child1699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output60_skip, output1699_skip]
  kernel_rfl

theorem node1701_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value46 value1 value2 = (output59, value48, value1))
    (child1700 : Flapjack.WordAlloc.removeDeadStructural input1700 value48 value1 value2 = (output1700, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1701 value46 value1 value2 = (output1701, value780, value1) := by
  rw [input1701_def, output1701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child1700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output1700_skip]
  kernel_rfl

theorem node1702_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value45 value1 value2 = (output56, value46, value1))
    (child1701 : Flapjack.WordAlloc.removeDeadStructural input1701 value46 value1 value2 = (output1701, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1702 value45 value1 value2 = (output1702, value780, value1) := by
  rw [input1702_def, output1702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child1701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output1701_skip]
  kernel_rfl

theorem node1703_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value43 value1 value2 = (output55, value45, value1))
    (child1702 : Flapjack.WordAlloc.removeDeadStructural input1702 value45 value1 value2 = (output1702, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1703 value43 value1 value2 = (output1703, value780, value1) := by
  rw [input1703_def, output1703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  try dsimp only
  rw [child1702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output55_skip, output1702_skip]
  kernel_rfl

theorem node1704_cond_eq
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value42 value1 value2 = (output52, value43, value1))
    (child1703 : Flapjack.WordAlloc.removeDeadStructural input1703 value43 value1 value2 = (output1703, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1704 value42 value1 value2 = (output1704, value780, value1) := by
  rw [input1704_def, output1704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child52]
  try dsimp only
  rw [child1703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output52_skip, output1703_skip]
  kernel_rfl

theorem node1705_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value40 value1 value2 = (output51, value42, value1))
    (child1704 : Flapjack.WordAlloc.removeDeadStructural input1704 value42 value1 value2 = (output1704, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1705 value40 value1 value2 = (output1705, value780, value1) := by
  rw [input1705_def, output1705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child1704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output1704_skip]
  kernel_rfl

theorem node1706_cond_eq
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value39 value1 value2 = (output48, value40, value1))
    (child1705 : Flapjack.WordAlloc.removeDeadStructural input1705 value40 value1 value2 = (output1705, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1706 value39 value1 value2 = (output1706, value780, value1) := by
  rw [input1706_def, output1706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child48]
  try dsimp only
  rw [child1705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output48_skip, output1705_skip]
  kernel_rfl

theorem node1707_cond_eq
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value37 value1 value2 = (output47, value39, value1))
    (child1706 : Flapjack.WordAlloc.removeDeadStructural input1706 value39 value1 value2 = (output1706, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1707 value37 value1 value2 = (output1707, value780, value1) := by
  rw [input1707_def, output1707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child47]
  try dsimp only
  rw [child1706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output47_skip, output1706_skip]
  kernel_rfl

theorem node1708_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value36 value1 value2 = (output44, value37, value1))
    (child1707 : Flapjack.WordAlloc.removeDeadStructural input1707 value37 value1 value2 = (output1707, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1708 value36 value1 value2 = (output1708, value780, value1) := by
  rw [input1708_def, output1708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child1707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output1707_skip]
  kernel_rfl

theorem node1709_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value34 value1 value2 = (output43, value36, value1))
    (child1708 : Flapjack.WordAlloc.removeDeadStructural input1708 value36 value1 value2 = (output1708, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1709 value34 value1 value2 = (output1709, value780, value1) := by
  rw [input1709_def, output1709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child1708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output1708_skip]
  kernel_rfl

theorem node1710_cond_eq
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value33 value1 value2 = (output40, value34, value1))
    (child1709 : Flapjack.WordAlloc.removeDeadStructural input1709 value34 value1 value2 = (output1709, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1710 value33 value1 value2 = (output1710, value780, value1) := by
  rw [input1710_def, output1710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child40]
  try dsimp only
  rw [child1709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output40_skip, output1709_skip]
  kernel_rfl

theorem node1711_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value31 value1 value2 = (output39, value33, value1))
    (child1710 : Flapjack.WordAlloc.removeDeadStructural input1710 value33 value1 value2 = (output1710, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1711 value31 value1 value2 = (output1711, value780, value1) := by
  rw [input1711_def, output1711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child1710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output1710_skip]
  kernel_rfl

theorem node1712_cond_eq
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value29 value1 value2 = (output36, value31, value1))
    (child1711 : Flapjack.WordAlloc.removeDeadStructural input1711 value31 value1 value2 = (output1711, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1712 value29 value1 value2 = (output1712, value780, value1) := by
  rw [input1712_def, output1712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child36]
  try dsimp only
  rw [child1711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output36_skip, output1711_skip]
  kernel_rfl

theorem node1713_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value28 value1 value2 = (output33, value29, value1))
    (child1712 : Flapjack.WordAlloc.removeDeadStructural input1712 value29 value1 value2 = (output1712, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1713 value28 value1 value2 = (output1713, value780, value1) := by
  rw [input1713_def, output1713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child1712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output1712_skip]
  kernel_rfl

theorem node1714_cond_eq
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value27 value1 value2 = (output32, value28, value1))
    (child1713 : Flapjack.WordAlloc.removeDeadStructural input1713 value28 value1 value2 = (output1713, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1714 value27 value1 value2 = (output1714, value780, value1) := by
  rw [input1714_def, output1714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child32]
  try dsimp only
  rw [child1713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output32_skip, output1713_skip]
  kernel_rfl

theorem node1715_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value26 value1 value2 = (output31, value27, value1))
    (child1714 : Flapjack.WordAlloc.removeDeadStructural input1714 value27 value1 value2 = (output1714, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1715 value26 value1 value2 = (output1715, value780, value1) := by
  rw [input1715_def, output1715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child1714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output1714_skip]
  kernel_rfl

theorem node1716_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value25 value1 value2 = (output30, value26, value1))
    (child1715 : Flapjack.WordAlloc.removeDeadStructural input1715 value26 value1 value2 = (output1715, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1716 value25 value1 value2 = (output1716, value780, value1) := by
  rw [input1716_def, output1716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  try dsimp only
  rw [child1715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output30_skip, output1715_skip]
  kernel_rfl

theorem node1717_cond_eq
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value24 value1 value2 = (output29, value25, value1))
    (child1716 : Flapjack.WordAlloc.removeDeadStructural input1716 value25 value1 value2 = (output1716, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1717 value24 value1 value2 = (output1717, value780, value1) := by
  rw [input1717_def, output1717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child29]
  try dsimp only
  rw [child1716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output29_skip, output1716_skip]
  kernel_rfl

theorem node1718_cond_eq
    (child28 : Flapjack.WordAlloc.removeDeadStructural input28 value23 value1 value2 = (output28, value24, value1))
    (child1717 : Flapjack.WordAlloc.removeDeadStructural input1717 value24 value1 value2 = (output1717, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1718 value23 value1 value2 = (output1718, value780, value1) := by
  rw [input1718_def, output1718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child28]
  try dsimp only
  rw [child1717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output28_skip, output1717_skip]
  kernel_rfl

theorem node1719_cond_eq
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value22 value1 value2 = (output27, value23, value1))
    (child1718 : Flapjack.WordAlloc.removeDeadStructural input1718 value23 value1 value2 = (output1718, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1719 value22 value1 value2 = (output1719, value780, value1) := by
  rw [input1719_def, output1719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child27]
  try dsimp only
  rw [child1718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output27_skip, output1718_skip]
  kernel_rfl

theorem node1720_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value20 value1 value2 = (output26, value22, value1))
    (child1719 : Flapjack.WordAlloc.removeDeadStructural input1719 value22 value1 value2 = (output1719, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1720 value20 value1 value2 = (output1720, value780, value1) := by
  rw [input1720_def, output1720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child1719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output1719_skip]
  kernel_rfl

theorem node1721_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value19 value1 value2 = (output23, value20, value1))
    (child1720 : Flapjack.WordAlloc.removeDeadStructural input1720 value20 value1 value2 = (output1720, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1721 value19 value1 value2 = (output1721, value780, value1) := by
  rw [input1721_def, output1721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child1720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output1720_skip]
  kernel_rfl

theorem node1722_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value17 value1 value2 = (output22, value19, value1))
    (child1721 : Flapjack.WordAlloc.removeDeadStructural input1721 value19 value1 value2 = (output1721, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1722 value17 value1 value2 = (output1722, value780, value1) := by
  rw [input1722_def, output1722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child1721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output1721_skip]
  kernel_rfl

theorem node1723_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value16 value1 value2 = (output19, value17, value1))
    (child1722 : Flapjack.WordAlloc.removeDeadStructural input1722 value17 value1 value2 = (output1722, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1723 value16 value1 value2 = (output1723, value780, value1) := by
  rw [input1723_def, output1723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child1722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output1722_skip]
  kernel_rfl

theorem node1724_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value16, value1))
    (child1723 : Flapjack.WordAlloc.removeDeadStructural input1723 value16 value1 value2 = (output1723, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1724 value14 value1 value2 = (output1724, value780, value1) := by
  rw [input1724_def, output1724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child1723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output1723_skip]
  kernel_rfl

theorem node1725_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value13 value1 value2 = (output15, value14, value1))
    (child1724 : Flapjack.WordAlloc.removeDeadStructural input1724 value14 value1 value2 = (output1724, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1725 value13 value1 value2 = (output1725, value780, value1) := by
  rw [input1725_def, output1725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child1724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output1724_skip]
  kernel_rfl

theorem node1726_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value2 = (output14, value13, value1))
    (child1725 : Flapjack.WordAlloc.removeDeadStructural input1725 value13 value1 value2 = (output1725, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1726 value11 value1 value2 = (output1726, value780, value1) := by
  rw [input1726_def, output1726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child1725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output1725_skip]
  kernel_rfl

theorem node1727_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value11, value1))
    (child1726 : Flapjack.WordAlloc.removeDeadStructural input1726 value11 value1 value2 = (output1726, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1727 value10 value1 value2 = (output1727, value780, value1) := by
  rw [input1727_def, output1727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child1726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output1726_skip]
  kernel_rfl

theorem node1728_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value10, value1))
    (child1727 : Flapjack.WordAlloc.removeDeadStructural input1727 value10 value1 value2 = (output1727, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1728 value8 value1 value2 = (output1728, value780, value1) := by
  rw [input1728_def, output1728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child1727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output1727_skip]
  kernel_rfl

theorem node1729_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child1728 : Flapjack.WordAlloc.removeDeadStructural input1728 value8 value1 value2 = (output1728, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1729 value7 value1 value2 = (output1729, value780, value1) := by
  rw [input1729_def, output1729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child1728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output1728_skip]
  kernel_rfl

theorem node1730_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child1729 : Flapjack.WordAlloc.removeDeadStructural input1729 value7 value1 value2 = (output1729, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1730 value5 value1 value2 = (output1730, value780, value1) := by
  rw [input1730_def, output1730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child1729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output1729_skip]
  kernel_rfl

theorem node1731_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1730 : Flapjack.WordAlloc.removeDeadStructural input1730 value5 value1 value2 = (output1730, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1731 value4 value1 value2 = (output1731, value780, value1) := by
  rw [input1731_def, output1731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1730_skip]
  kernel_rfl

theorem node1732_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1731 : Flapjack.WordAlloc.removeDeadStructural input1731 value4 value1 value2 = (output1731, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1732 value0 value1 value2 = (output1732, value780, value1) := by
  rw [input1732_def, output1732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1731_skip]
  kernel_rfl

theorem node1733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1733 value780 value1 value2 = (output1733, value781, value1) := by
  rw [input1733_def, output1733_def]
  kernel_rfl

theorem node1734_cond_eq
    (child1732 : Flapjack.WordAlloc.removeDeadStructural input1732 value0 value1 value2 = (output1732, value780, value1))
    (child1733 : Flapjack.WordAlloc.removeDeadStructural input1733 value780 value1 value2 = (output1733, value781, value1)) : Flapjack.WordAlloc.removeDeadStructural input1734 value0 value1 value2 = (output1734, value781, value1) := by
  rw [input1734_def, output1734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1732]
  try dsimp only
  rw [child1733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1732_skip, output1733_skip]
  kernel_rfl

#print axioms node1734_cond_eq
end InitECandidate.Proofs.DeadStages782.Parallel
