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
theorem tree6528_agree_conditional
    (child0 : tree6526 = literal6526)
    (child1 : tree6527 = literal6527) : tree6528 = literal6528 := by
  rw [tree6528_def, child0, child1]
  rfl
theorem node6528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6526 live6526 coloured6526 = result6526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6527 live6527 coloured6527 = result6527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6528 live6528 coloured6528 = result6528 := by
  rw [tree6528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6526 coloured6526 at child
  try dsimp only [live6528, coloured6528]
  rw [child]
  dsimp only [result6526]
  have child := child1
  unfold live6527 coloured6527 at child
  try dsimp only [live6528, coloured6528]
  rw [child]
  dsimp only [result6527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6529_agree_conditional : tree6529 = literal6529 := by
  rw [tree6529_def]
  rfl
theorem node6529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6529 live6529 coloured6529 = result6529 := by
  rw [tree6529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6530_agree_conditional
    (child0 : tree6528 = literal6528)
    (child1 : tree6529 = literal6529) : tree6530 = literal6530 := by
  rw [tree6530_def, child0, child1]
  rfl
theorem node6530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6528 live6528 coloured6528 = result6528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6529 live6529 coloured6529 = result6529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6530 live6530 coloured6530 = result6530 := by
  rw [tree6530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6528 coloured6528 at child
  try dsimp only [live6530, coloured6530]
  rw [child]
  dsimp only [result6528]
  have child := child1
  unfold live6529 coloured6529 at child
  try dsimp only [live6530, coloured6530]
  rw [child]
  dsimp only [result6529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6531_agree_conditional : tree6531 = literal6531 := by
  rw [tree6531_def]
  rfl
theorem node6531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6531 live6531 coloured6531 = result6531 := by
  rw [tree6531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6532_agree_conditional
    (child0 : tree6530 = literal6530)
    (child1 : tree6531 = literal6531) : tree6532 = literal6532 := by
  rw [tree6532_def, child0, child1]
  rfl
theorem node6532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6530 live6530 coloured6530 = result6530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6531 live6531 coloured6531 = result6531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6532 live6532 coloured6532 = result6532 := by
  rw [tree6532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6530 coloured6530 at child
  try dsimp only [live6532, coloured6532]
  rw [child]
  dsimp only [result6530]
  have child := child1
  unfold live6531 coloured6531 at child
  try dsimp only [live6532, coloured6532]
  rw [child]
  dsimp only [result6531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6533_agree_conditional : tree6533 = literal6533 := by
  rw [tree6533_def]
  rfl
theorem node6533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6533 live6533 coloured6533 = result6533 := by
  rw [tree6533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6534_agree_conditional
    (child0 : tree6532 = literal6532)
    (child1 : tree6533 = literal6533) : tree6534 = literal6534 := by
  rw [tree6534_def, child0, child1]
  rfl
theorem node6534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6532 live6532 coloured6532 = result6532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6533 live6533 coloured6533 = result6533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6534 live6534 coloured6534 = result6534 := by
  rw [tree6534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6532 coloured6532 at child
  try dsimp only [live6534, coloured6534]
  rw [child]
  dsimp only [result6532]
  have child := child1
  unfold live6533 coloured6533 at child
  try dsimp only [live6534, coloured6534]
  rw [child]
  dsimp only [result6533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6535_agree_conditional : tree6535 = literal6535 := by
  rw [tree6535_def]
  rfl
theorem node6535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6535 live6535 coloured6535 = result6535 := by
  rw [tree6535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6536_agree_conditional
    (child0 : tree6534 = literal6534)
    (child1 : tree6535 = literal6535) : tree6536 = literal6536 := by
  rw [tree6536_def, child0, child1]
  rfl
theorem node6536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6534 live6534 coloured6534 = result6534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6535 live6535 coloured6535 = result6535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6536 live6536 coloured6536 = result6536 := by
  rw [tree6536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6534 coloured6534 at child
  try dsimp only [live6536, coloured6536]
  rw [child]
  dsimp only [result6534]
  have child := child1
  unfold live6535 coloured6535 at child
  try dsimp only [live6536, coloured6536]
  rw [child]
  dsimp only [result6535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6537_agree_conditional : tree6537 = literal6537 := by
  rw [tree6537_def]
  rfl
theorem node6537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6537 live6537 coloured6537 = result6537 := by
  rw [tree6537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6538_agree_conditional
    (child0 : tree6536 = literal6536)
    (child1 : tree6537 = literal6537) : tree6538 = literal6538 := by
  rw [tree6538_def, child0, child1]
  rfl
theorem node6538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6536 live6536 coloured6536 = result6536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6537 live6537 coloured6537 = result6537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6538 live6538 coloured6538 = result6538 := by
  rw [tree6538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6536 coloured6536 at child
  try dsimp only [live6538, coloured6538]
  rw [child]
  dsimp only [result6536]
  have child := child1
  unfold live6537 coloured6537 at child
  try dsimp only [live6538, coloured6538]
  rw [child]
  dsimp only [result6537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6539_agree_conditional : tree6539 = literal6539 := by
  rw [tree6539_def]
  rfl
theorem node6539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6539 live6539 coloured6539 = result6539 := by
  rw [tree6539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6540_agree_conditional
    (child0 : tree6538 = literal6538)
    (child1 : tree6539 = literal6539) : tree6540 = literal6540 := by
  rw [tree6540_def, child0, child1]
  rfl
theorem node6540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6538 live6538 coloured6538 = result6538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6539 live6539 coloured6539 = result6539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6540 live6540 coloured6540 = result6540 := by
  rw [tree6540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6538 coloured6538 at child
  try dsimp only [live6540, coloured6540]
  rw [child]
  dsimp only [result6538]
  have child := child1
  unfold live6539 coloured6539 at child
  try dsimp only [live6540, coloured6540]
  rw [child]
  dsimp only [result6539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6541_agree_conditional : tree6541 = literal6541 := by
  rw [tree6541_def]
  rfl
theorem node6541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6541 live6541 coloured6541 = result6541 := by
  rw [tree6541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6542_agree_conditional
    (child0 : tree6540 = literal6540)
    (child1 : tree6541 = literal6541) : tree6542 = literal6542 := by
  rw [tree6542_def, child0, child1]
  rfl
theorem node6542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6540 live6540 coloured6540 = result6540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6541 live6541 coloured6541 = result6541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6542 live6542 coloured6542 = result6542 := by
  rw [tree6542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6540 coloured6540 at child
  try dsimp only [live6542, coloured6542]
  rw [child]
  dsimp only [result6540]
  have child := child1
  unfold live6541 coloured6541 at child
  try dsimp only [live6542, coloured6542]
  rw [child]
  dsimp only [result6541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6543_agree_conditional : tree6543 = literal6543 := by
  rw [tree6543_def]
  rfl
theorem node6543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6543 live6543 coloured6543 = result6543 := by
  rw [tree6543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6544_agree_conditional
    (child0 : tree6542 = literal6542)
    (child1 : tree6543 = literal6543) : tree6544 = literal6544 := by
  rw [tree6544_def, child0, child1]
  rfl
theorem node6544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6542 live6542 coloured6542 = result6542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6543 live6543 coloured6543 = result6543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6544 live6544 coloured6544 = result6544 := by
  rw [tree6544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6542 coloured6542 at child
  try dsimp only [live6544, coloured6544]
  rw [child]
  dsimp only [result6542]
  have child := child1
  unfold live6543 coloured6543 at child
  try dsimp only [live6544, coloured6544]
  rw [child]
  dsimp only [result6543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6545_agree_conditional : tree6545 = literal6545 := by
  rw [tree6545_def]
  rfl
theorem node6545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6545 live6545 coloured6545 = result6545 := by
  rw [tree6545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6546_agree_conditional
    (child0 : tree6544 = literal6544)
    (child1 : tree6545 = literal6545) : tree6546 = literal6546 := by
  rw [tree6546_def, child0, child1]
  rfl
theorem node6546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6544 live6544 coloured6544 = result6544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6545 live6545 coloured6545 = result6545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6546 live6546 coloured6546 = result6546 := by
  rw [tree6546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6544 coloured6544 at child
  try dsimp only [live6546, coloured6546]
  rw [child]
  dsimp only [result6544]
  have child := child1
  unfold live6545 coloured6545 at child
  try dsimp only [live6546, coloured6546]
  rw [child]
  dsimp only [result6545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6547_agree_conditional : tree6547 = literal6547 := by
  rw [tree6547_def]
  rfl
theorem node6547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6547 live6547 coloured6547 = result6547 := by
  rw [tree6547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6548_agree_conditional
    (child0 : tree6546 = literal6546)
    (child1 : tree6547 = literal6547) : tree6548 = literal6548 := by
  rw [tree6548_def, child0, child1]
  rfl
theorem node6548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6546 live6546 coloured6546 = result6546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6547 live6547 coloured6547 = result6547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6548 live6548 coloured6548 = result6548 := by
  rw [tree6548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6546 coloured6546 at child
  try dsimp only [live6548, coloured6548]
  rw [child]
  dsimp only [result6546]
  have child := child1
  unfold live6547 coloured6547 at child
  try dsimp only [live6548, coloured6548]
  rw [child]
  dsimp only [result6547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6549_agree_conditional : tree6549 = literal6549 := by
  rw [tree6549_def]
  rfl
theorem node6549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6549 live6549 coloured6549 = result6549 := by
  rw [tree6549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6550_agree_conditional
    (child0 : tree6548 = literal6548)
    (child1 : tree6549 = literal6549) : tree6550 = literal6550 := by
  rw [tree6550_def, child0, child1]
  rfl
theorem node6550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6548 live6548 coloured6548 = result6548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6549 live6549 coloured6549 = result6549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6550 live6550 coloured6550 = result6550 := by
  rw [tree6550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6548 coloured6548 at child
  try dsimp only [live6550, coloured6550]
  rw [child]
  dsimp only [result6548]
  have child := child1
  unfold live6549 coloured6549 at child
  try dsimp only [live6550, coloured6550]
  rw [child]
  dsimp only [result6549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6551_agree_conditional : tree6551 = literal6551 := by
  rw [tree6551_def]
  rfl
theorem node6551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6551 live6551 coloured6551 = result6551 := by
  rw [tree6551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6552_agree_conditional
    (child0 : tree6550 = literal6550)
    (child1 : tree6551 = literal6551) : tree6552 = literal6552 := by
  rw [tree6552_def, child0, child1]
  rfl
theorem node6552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6550 live6550 coloured6550 = result6550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6551 live6551 coloured6551 = result6551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6552 live6552 coloured6552 = result6552 := by
  rw [tree6552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6550 coloured6550 at child
  try dsimp only [live6552, coloured6552]
  rw [child]
  dsimp only [result6550]
  have child := child1
  unfold live6551 coloured6551 at child
  try dsimp only [live6552, coloured6552]
  rw [child]
  dsimp only [result6551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6553_agree_conditional : tree6553 = literal6553 := by
  rw [tree6553_def]
  rfl
theorem node6553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6553 live6553 coloured6553 = result6553 := by
  rw [tree6553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6554_agree_conditional
    (child0 : tree6552 = literal6552)
    (child1 : tree6553 = literal6553) : tree6554 = literal6554 := by
  rw [tree6554_def, child0, child1]
  rfl
theorem node6554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6552 live6552 coloured6552 = result6552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6553 live6553 coloured6553 = result6553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6554 live6554 coloured6554 = result6554 := by
  rw [tree6554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6552 coloured6552 at child
  try dsimp only [live6554, coloured6554]
  rw [child]
  dsimp only [result6552]
  have child := child1
  unfold live6553 coloured6553 at child
  try dsimp only [live6554, coloured6554]
  rw [child]
  dsimp only [result6553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6555_agree_conditional : tree6555 = literal6555 := by
  rw [tree6555_def]
  rfl
theorem node6555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6555 live6555 coloured6555 = result6555 := by
  rw [tree6555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6556_agree_conditional
    (child0 : tree6554 = literal6554)
    (child1 : tree6555 = literal6555) : tree6556 = literal6556 := by
  rw [tree6556_def, child0, child1]
  rfl
theorem node6556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6554 live6554 coloured6554 = result6554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6555 live6555 coloured6555 = result6555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6556 live6556 coloured6556 = result6556 := by
  rw [tree6556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6554 coloured6554 at child
  try dsimp only [live6556, coloured6556]
  rw [child]
  dsimp only [result6554]
  have child := child1
  unfold live6555 coloured6555 at child
  try dsimp only [live6556, coloured6556]
  rw [child]
  dsimp only [result6555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6557_agree_conditional : tree6557 = literal6557 := by
  rw [tree6557_def]
  rfl
theorem node6557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6557 live6557 coloured6557 = result6557 := by
  rw [tree6557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6558_agree_conditional
    (child0 : tree6556 = literal6556)
    (child1 : tree6557 = literal6557) : tree6558 = literal6558 := by
  rw [tree6558_def, child0, child1]
  rfl
theorem node6558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6556 live6556 coloured6556 = result6556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6557 live6557 coloured6557 = result6557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6558 live6558 coloured6558 = result6558 := by
  rw [tree6558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6556 coloured6556 at child
  try dsimp only [live6558, coloured6558]
  rw [child]
  dsimp only [result6556]
  have child := child1
  unfold live6557 coloured6557 at child
  try dsimp only [live6558, coloured6558]
  rw [child]
  dsimp only [result6557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6559_agree_conditional : tree6559 = literal6559 := by
  rw [tree6559_def]
  rfl
theorem node6559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6559 live6559 coloured6559 = result6559 := by
  rw [tree6559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6560_agree_conditional
    (child0 : tree6558 = literal6558)
    (child1 : tree6559 = literal6559) : tree6560 = literal6560 := by
  rw [tree6560_def, child0, child1]
  rfl
theorem node6560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6558 live6558 coloured6558 = result6558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6559 live6559 coloured6559 = result6559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6560 live6560 coloured6560 = result6560 := by
  rw [tree6560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6558 coloured6558 at child
  try dsimp only [live6560, coloured6560]
  rw [child]
  dsimp only [result6558]
  have child := child1
  unfold live6559 coloured6559 at child
  try dsimp only [live6560, coloured6560]
  rw [child]
  dsimp only [result6559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6561_agree_conditional : tree6561 = literal6561 := by
  rw [tree6561_def]
  rfl
theorem node6561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6561 live6561 coloured6561 = result6561 := by
  rw [tree6561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6562_agree_conditional
    (child0 : tree6560 = literal6560)
    (child1 : tree6561 = literal6561) : tree6562 = literal6562 := by
  rw [tree6562_def, child0, child1]
  rfl
theorem node6562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6560 live6560 coloured6560 = result6560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6561 live6561 coloured6561 = result6561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6562 live6562 coloured6562 = result6562 := by
  rw [tree6562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6560 coloured6560 at child
  try dsimp only [live6562, coloured6562]
  rw [child]
  dsimp only [result6560]
  have child := child1
  unfold live6561 coloured6561 at child
  try dsimp only [live6562, coloured6562]
  rw [child]
  dsimp only [result6561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6563_agree_conditional : tree6563 = literal6563 := by
  rw [tree6563_def]
  rfl
theorem node6563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6563 live6563 coloured6563 = result6563 := by
  rw [tree6563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6564_agree_conditional
    (child0 : tree6562 = literal6562)
    (child1 : tree6563 = literal6563) : tree6564 = literal6564 := by
  rw [tree6564_def, child0, child1]
  rfl
theorem node6564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6562 live6562 coloured6562 = result6562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6563 live6563 coloured6563 = result6563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6564 live6564 coloured6564 = result6564 := by
  rw [tree6564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6562 coloured6562 at child
  try dsimp only [live6564, coloured6564]
  rw [child]
  dsimp only [result6562]
  have child := child1
  unfold live6563 coloured6563 at child
  try dsimp only [live6564, coloured6564]
  rw [child]
  dsimp only [result6563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6565_agree_conditional : tree6565 = literal6565 := by
  rw [tree6565_def]
  rfl
theorem node6565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6565 live6565 coloured6565 = result6565 := by
  rw [tree6565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6566_agree_conditional
    (child0 : tree6564 = literal6564)
    (child1 : tree6565 = literal6565) : tree6566 = literal6566 := by
  rw [tree6566_def, child0, child1]
  rfl
theorem node6566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6564 live6564 coloured6564 = result6564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6565 live6565 coloured6565 = result6565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6566 live6566 coloured6566 = result6566 := by
  rw [tree6566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6564 coloured6564 at child
  try dsimp only [live6566, coloured6566]
  rw [child]
  dsimp only [result6564]
  have child := child1
  unfold live6565 coloured6565 at child
  try dsimp only [live6566, coloured6566]
  rw [child]
  dsimp only [result6565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6567_agree_conditional : tree6567 = literal6567 := by
  rw [tree6567_def]
  rfl
theorem node6567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6567 live6567 coloured6567 = result6567 := by
  rw [tree6567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6568_agree_conditional
    (child0 : tree6566 = literal6566)
    (child1 : tree6567 = literal6567) : tree6568 = literal6568 := by
  rw [tree6568_def, child0, child1]
  rfl
theorem node6568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6566 live6566 coloured6566 = result6566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6567 live6567 coloured6567 = result6567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6568 live6568 coloured6568 = result6568 := by
  rw [tree6568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6566 coloured6566 at child
  try dsimp only [live6568, coloured6568]
  rw [child]
  dsimp only [result6566]
  have child := child1
  unfold live6567 coloured6567 at child
  try dsimp only [live6568, coloured6568]
  rw [child]
  dsimp only [result6567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6569_agree_conditional : tree6569 = literal6569 := by
  rw [tree6569_def]
  rfl
theorem node6569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6569 live6569 coloured6569 = result6569 := by
  rw [tree6569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6570_agree_conditional
    (child0 : tree6568 = literal6568)
    (child1 : tree6569 = literal6569) : tree6570 = literal6570 := by
  rw [tree6570_def, child0, child1]
  rfl
theorem node6570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6568 live6568 coloured6568 = result6568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6569 live6569 coloured6569 = result6569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6570 live6570 coloured6570 = result6570 := by
  rw [tree6570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6568 coloured6568 at child
  try dsimp only [live6570, coloured6570]
  rw [child]
  dsimp only [result6568]
  have child := child1
  unfold live6569 coloured6569 at child
  try dsimp only [live6570, coloured6570]
  rw [child]
  dsimp only [result6569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6571_agree_conditional : tree6571 = literal6571 := by
  rw [tree6571_def]
  rfl
theorem node6571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6571 live6571 coloured6571 = result6571 := by
  rw [tree6571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6572_agree_conditional
    (child0 : tree6570 = literal6570)
    (child1 : tree6571 = literal6571) : tree6572 = literal6572 := by
  rw [tree6572_def, child0, child1]
  rfl
theorem node6572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6570 live6570 coloured6570 = result6570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6571 live6571 coloured6571 = result6571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6572 live6572 coloured6572 = result6572 := by
  rw [tree6572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6570 coloured6570 at child
  try dsimp only [live6572, coloured6572]
  rw [child]
  dsimp only [result6570]
  have child := child1
  unfold live6571 coloured6571 at child
  try dsimp only [live6572, coloured6572]
  rw [child]
  dsimp only [result6571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6573_agree_conditional : tree6573 = literal6573 := by
  rw [tree6573_def]
  rfl
theorem node6573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6573 live6573 coloured6573 = result6573 := by
  rw [tree6573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6574_agree_conditional
    (child0 : tree6572 = literal6572)
    (child1 : tree6573 = literal6573) : tree6574 = literal6574 := by
  rw [tree6574_def, child0, child1]
  rfl
theorem node6574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6572 live6572 coloured6572 = result6572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6573 live6573 coloured6573 = result6573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6574 live6574 coloured6574 = result6574 := by
  rw [tree6574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6572 coloured6572 at child
  try dsimp only [live6574, coloured6574]
  rw [child]
  dsimp only [result6572]
  have child := child1
  unfold live6573 coloured6573 at child
  try dsimp only [live6574, coloured6574]
  rw [child]
  dsimp only [result6573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6575_agree_conditional : tree6575 = literal6575 := by
  rw [tree6575_def]
  rfl
theorem node6575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6575 live6575 coloured6575 = result6575 := by
  rw [tree6575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6576_agree_conditional
    (child0 : tree6574 = literal6574)
    (child1 : tree6575 = literal6575) : tree6576 = literal6576 := by
  rw [tree6576_def, child0, child1]
  rfl
theorem node6576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6574 live6574 coloured6574 = result6574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6575 live6575 coloured6575 = result6575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6576 live6576 coloured6576 = result6576 := by
  rw [tree6576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6574 coloured6574 at child
  try dsimp only [live6576, coloured6576]
  rw [child]
  dsimp only [result6574]
  have child := child1
  unfold live6575 coloured6575 at child
  try dsimp only [live6576, coloured6576]
  rw [child]
  dsimp only [result6575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6577_agree_conditional : tree6577 = literal6577 := by
  rw [tree6577_def]
  rfl
theorem node6577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6577 live6577 coloured6577 = result6577 := by
  rw [tree6577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6578_agree_conditional
    (child0 : tree6576 = literal6576)
    (child1 : tree6577 = literal6577) : tree6578 = literal6578 := by
  rw [tree6578_def, child0, child1]
  rfl
theorem node6578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6576 live6576 coloured6576 = result6576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6577 live6577 coloured6577 = result6577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6578 live6578 coloured6578 = result6578 := by
  rw [tree6578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6576 coloured6576 at child
  try dsimp only [live6578, coloured6578]
  rw [child]
  dsimp only [result6576]
  have child := child1
  unfold live6577 coloured6577 at child
  try dsimp only [live6578, coloured6578]
  rw [child]
  dsimp only [result6577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6579_agree_conditional : tree6579 = literal6579 := by
  rw [tree6579_def]
  rfl
theorem node6579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6579 live6579 coloured6579 = result6579 := by
  rw [tree6579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6580_agree_conditional
    (child0 : tree6578 = literal6578)
    (child1 : tree6579 = literal6579) : tree6580 = literal6580 := by
  rw [tree6580_def, child0, child1]
  rfl
theorem node6580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6578 live6578 coloured6578 = result6578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6579 live6579 coloured6579 = result6579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6580 live6580 coloured6580 = result6580 := by
  rw [tree6580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6578 coloured6578 at child
  try dsimp only [live6580, coloured6580]
  rw [child]
  dsimp only [result6578]
  have child := child1
  unfold live6579 coloured6579 at child
  try dsimp only [live6580, coloured6580]
  rw [child]
  dsimp only [result6579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6581_agree_conditional : tree6581 = literal6581 := by
  rw [tree6581_def]
  rfl
theorem node6581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6581 live6581 coloured6581 = result6581 := by
  rw [tree6581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6582_agree_conditional
    (child0 : tree6580 = literal6580)
    (child1 : tree6581 = literal6581) : tree6582 = literal6582 := by
  rw [tree6582_def, child0, child1]
  rfl
theorem node6582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6580 live6580 coloured6580 = result6580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6581 live6581 coloured6581 = result6581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6582 live6582 coloured6582 = result6582 := by
  rw [tree6582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6580 coloured6580 at child
  try dsimp only [live6582, coloured6582]
  rw [child]
  dsimp only [result6580]
  have child := child1
  unfold live6581 coloured6581 at child
  try dsimp only [live6582, coloured6582]
  rw [child]
  dsimp only [result6581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6583_agree_conditional : tree6583 = literal6583 := by
  rw [tree6583_def]
  rfl
theorem node6583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6583 live6583 coloured6583 = result6583 := by
  rw [tree6583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6584_agree_conditional
    (child0 : tree6582 = literal6582)
    (child1 : tree6583 = literal6583) : tree6584 = literal6584 := by
  rw [tree6584_def, child0, child1]
  rfl
theorem node6584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6582 live6582 coloured6582 = result6582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6583 live6583 coloured6583 = result6583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6584 live6584 coloured6584 = result6584 := by
  rw [tree6584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6582 coloured6582 at child
  try dsimp only [live6584, coloured6584]
  rw [child]
  dsimp only [result6582]
  have child := child1
  unfold live6583 coloured6583 at child
  try dsimp only [live6584, coloured6584]
  rw [child]
  dsimp only [result6583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6585_agree_conditional : tree6585 = literal6585 := by
  rw [tree6585_def]
  rfl
theorem node6585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6585 live6585 coloured6585 = result6585 := by
  rw [tree6585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6586_agree_conditional
    (child0 : tree6584 = literal6584)
    (child1 : tree6585 = literal6585) : tree6586 = literal6586 := by
  rw [tree6586_def, child0, child1]
  rfl
theorem node6586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6584 live6584 coloured6584 = result6584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6585 live6585 coloured6585 = result6585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6586 live6586 coloured6586 = result6586 := by
  rw [tree6586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6584 coloured6584 at child
  try dsimp only [live6586, coloured6586]
  rw [child]
  dsimp only [result6584]
  have child := child1
  unfold live6585 coloured6585 at child
  try dsimp only [live6586, coloured6586]
  rw [child]
  dsimp only [result6585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6587_agree_conditional : tree6587 = literal6587 := by
  rw [tree6587_def]
  rfl
theorem node6587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6587 live6587 coloured6587 = result6587 := by
  rw [tree6587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6588_agree_conditional
    (child0 : tree6586 = literal6586)
    (child1 : tree6587 = literal6587) : tree6588 = literal6588 := by
  rw [tree6588_def, child0, child1]
  rfl
theorem node6588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6586 live6586 coloured6586 = result6586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6587 live6587 coloured6587 = result6587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6588 live6588 coloured6588 = result6588 := by
  rw [tree6588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6586 coloured6586 at child
  try dsimp only [live6588, coloured6588]
  rw [child]
  dsimp only [result6586]
  have child := child1
  unfold live6587 coloured6587 at child
  try dsimp only [live6588, coloured6588]
  rw [child]
  dsimp only [result6587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6589_agree_conditional : tree6589 = literal6589 := by
  rw [tree6589_def]
  rfl
theorem node6589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6589 live6589 coloured6589 = result6589 := by
  rw [tree6589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6590_agree_conditional
    (child0 : tree6588 = literal6588)
    (child1 : tree6589 = literal6589) : tree6590 = literal6590 := by
  rw [tree6590_def, child0, child1]
  rfl
theorem node6590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6588 live6588 coloured6588 = result6588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6589 live6589 coloured6589 = result6589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6590 live6590 coloured6590 = result6590 := by
  rw [tree6590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6588 coloured6588 at child
  try dsimp only [live6590, coloured6590]
  rw [child]
  dsimp only [result6588]
  have child := child1
  unfold live6589 coloured6589 at child
  try dsimp only [live6590, coloured6590]
  rw [child]
  dsimp only [result6589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6591_agree_conditional : tree6591 = literal6591 := by
  rw [tree6591_def]
  rfl
theorem node6591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6591 live6591 coloured6591 = result6591 := by
  rw [tree6591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6592_agree_conditional
    (child0 : tree6590 = literal6590)
    (child1 : tree6591 = literal6591) : tree6592 = literal6592 := by
  rw [tree6592_def, child0, child1]
  rfl
theorem node6592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6590 live6590 coloured6590 = result6590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6591 live6591 coloured6591 = result6591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6592 live6592 coloured6592 = result6592 := by
  rw [tree6592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6590 coloured6590 at child
  try dsimp only [live6592, coloured6592]
  rw [child]
  dsimp only [result6590]
  have child := child1
  unfold live6591 coloured6591 at child
  try dsimp only [live6592, coloured6592]
  rw [child]
  dsimp only [result6591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6593_agree_conditional : tree6593 = literal6593 := by
  rw [tree6593_def]
  rfl
theorem node6593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6593 live6593 coloured6593 = result6593 := by
  rw [tree6593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6594_agree_conditional
    (child0 : tree6592 = literal6592)
    (child1 : tree6593 = literal6593) : tree6594 = literal6594 := by
  rw [tree6594_def, child0, child1]
  rfl
theorem node6594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6592 live6592 coloured6592 = result6592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6593 live6593 coloured6593 = result6593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6594 live6594 coloured6594 = result6594 := by
  rw [tree6594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6592 coloured6592 at child
  try dsimp only [live6594, coloured6594]
  rw [child]
  dsimp only [result6592]
  have child := child1
  unfold live6593 coloured6593 at child
  try dsimp only [live6594, coloured6594]
  rw [child]
  dsimp only [result6593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6595_agree_conditional : tree6595 = literal6595 := by
  rw [tree6595_def]
  rfl
theorem node6595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6595 live6595 coloured6595 = result6595 := by
  rw [tree6595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6596_agree_conditional
    (child0 : tree6594 = literal6594)
    (child1 : tree6595 = literal6595) : tree6596 = literal6596 := by
  rw [tree6596_def, child0, child1]
  rfl
theorem node6596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6594 live6594 coloured6594 = result6594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6595 live6595 coloured6595 = result6595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6596 live6596 coloured6596 = result6596 := by
  rw [tree6596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6594 coloured6594 at child
  try dsimp only [live6596, coloured6596]
  rw [child]
  dsimp only [result6594]
  have child := child1
  unfold live6595 coloured6595 at child
  try dsimp only [live6596, coloured6596]
  rw [child]
  dsimp only [result6595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6597_agree_conditional : tree6597 = literal6597 := by
  rw [tree6597_def]
  rfl
theorem node6597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6597 live6597 coloured6597 = result6597 := by
  rw [tree6597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6598_agree_conditional
    (child0 : tree6596 = literal6596)
    (child1 : tree6597 = literal6597) : tree6598 = literal6598 := by
  rw [tree6598_def, child0, child1]
  rfl
theorem node6598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6596 live6596 coloured6596 = result6596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6597 live6597 coloured6597 = result6597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6598 live6598 coloured6598 = result6598 := by
  rw [tree6598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6596 coloured6596 at child
  try dsimp only [live6598, coloured6598]
  rw [child]
  dsimp only [result6596]
  have child := child1
  unfold live6597 coloured6597 at child
  try dsimp only [live6598, coloured6598]
  rw [child]
  dsimp only [result6597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6599_agree_conditional : tree6599 = literal6599 := by
  rw [tree6599_def]
  rfl
theorem node6599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6599 live6599 coloured6599 = result6599 := by
  rw [tree6599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6600_agree_conditional
    (child0 : tree6598 = literal6598)
    (child1 : tree6599 = literal6599) : tree6600 = literal6600 := by
  rw [tree6600_def, child0, child1]
  rfl
theorem node6600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6598 live6598 coloured6598 = result6598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6599 live6599 coloured6599 = result6599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6600 live6600 coloured6600 = result6600 := by
  rw [tree6600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6598 coloured6598 at child
  try dsimp only [live6600, coloured6600]
  rw [child]
  dsimp only [result6598]
  have child := child1
  unfold live6599 coloured6599 at child
  try dsimp only [live6600, coloured6600]
  rw [child]
  dsimp only [result6599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6601_agree_conditional : tree6601 = literal6601 := by
  rw [tree6601_def]
  rfl
theorem node6601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6601 live6601 coloured6601 = result6601 := by
  rw [tree6601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6602_agree_conditional
    (child0 : tree6600 = literal6600)
    (child1 : tree6601 = literal6601) : tree6602 = literal6602 := by
  rw [tree6602_def, child0, child1]
  rfl
theorem node6602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6600 live6600 coloured6600 = result6600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6601 live6601 coloured6601 = result6601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6602 live6602 coloured6602 = result6602 := by
  rw [tree6602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6600 coloured6600 at child
  try dsimp only [live6602, coloured6602]
  rw [child]
  dsimp only [result6600]
  have child := child1
  unfold live6601 coloured6601 at child
  try dsimp only [live6602, coloured6602]
  rw [child]
  dsimp only [result6601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6603_agree_conditional : tree6603 = literal6603 := by
  rw [tree6603_def]
  rfl
theorem node6603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6603 live6603 coloured6603 = result6603 := by
  rw [tree6603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6604_agree_conditional
    (child0 : tree6602 = literal6602)
    (child1 : tree6603 = literal6603) : tree6604 = literal6604 := by
  rw [tree6604_def, child0, child1]
  rfl
theorem node6604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6602 live6602 coloured6602 = result6602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6603 live6603 coloured6603 = result6603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6604 live6604 coloured6604 = result6604 := by
  rw [tree6604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6602 coloured6602 at child
  try dsimp only [live6604, coloured6604]
  rw [child]
  dsimp only [result6602]
  have child := child1
  unfold live6603 coloured6603 at child
  try dsimp only [live6604, coloured6604]
  rw [child]
  dsimp only [result6603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6605_agree_conditional : tree6605 = literal6605 := by
  rw [tree6605_def]
  rfl
theorem node6605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6605 live6605 coloured6605 = result6605 := by
  rw [tree6605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6606_agree_conditional
    (child0 : tree6604 = literal6604)
    (child1 : tree6605 = literal6605) : tree6606 = literal6606 := by
  rw [tree6606_def, child0, child1]
  rfl
theorem node6606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6604 live6604 coloured6604 = result6604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6605 live6605 coloured6605 = result6605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6606 live6606 coloured6606 = result6606 := by
  rw [tree6606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6604 coloured6604 at child
  try dsimp only [live6606, coloured6606]
  rw [child]
  dsimp only [result6604]
  have child := child1
  unfold live6605 coloured6605 at child
  try dsimp only [live6606, coloured6606]
  rw [child]
  dsimp only [result6605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6607_agree_conditional : tree6607 = literal6607 := by
  rw [tree6607_def]
  rfl
theorem node6607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6607 live6607 coloured6607 = result6607 := by
  rw [tree6607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6608_agree_conditional
    (child0 : tree6606 = literal6606)
    (child1 : tree6607 = literal6607) : tree6608 = literal6608 := by
  rw [tree6608_def, child0, child1]
  rfl
theorem node6608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6606 live6606 coloured6606 = result6606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6607 live6607 coloured6607 = result6607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6608 live6608 coloured6608 = result6608 := by
  rw [tree6608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6606 coloured6606 at child
  try dsimp only [live6608, coloured6608]
  rw [child]
  dsimp only [result6606]
  have child := child1
  unfold live6607 coloured6607 at child
  try dsimp only [live6608, coloured6608]
  rw [child]
  dsimp only [result6607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6609_agree_conditional : tree6609 = literal6609 := by
  rw [tree6609_def]
  rfl
theorem node6609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6609 live6609 coloured6609 = result6609 := by
  rw [tree6609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6610_agree_conditional
    (child0 : tree6608 = literal6608)
    (child1 : tree6609 = literal6609) : tree6610 = literal6610 := by
  rw [tree6610_def, child0, child1]
  rfl
theorem node6610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6608 live6608 coloured6608 = result6608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6609 live6609 coloured6609 = result6609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6610 live6610 coloured6610 = result6610 := by
  rw [tree6610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6608 coloured6608 at child
  try dsimp only [live6610, coloured6610]
  rw [child]
  dsimp only [result6608]
  have child := child1
  unfold live6609 coloured6609 at child
  try dsimp only [live6610, coloured6610]
  rw [child]
  dsimp only [result6609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6611_agree_conditional : tree6611 = literal6611 := by
  rw [tree6611_def]
  rfl
theorem node6611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6611 live6611 coloured6611 = result6611 := by
  rw [tree6611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6612_agree_conditional
    (child0 : tree6610 = literal6610)
    (child1 : tree6611 = literal6611) : tree6612 = literal6612 := by
  rw [tree6612_def, child0, child1]
  rfl
theorem node6612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6610 live6610 coloured6610 = result6610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6611 live6611 coloured6611 = result6611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6612 live6612 coloured6612 = result6612 := by
  rw [tree6612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6610 coloured6610 at child
  try dsimp only [live6612, coloured6612]
  rw [child]
  dsimp only [result6610]
  have child := child1
  unfold live6611 coloured6611 at child
  try dsimp only [live6612, coloured6612]
  rw [child]
  dsimp only [result6611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6613_agree_conditional : tree6613 = literal6613 := by
  rw [tree6613_def]
  rfl
theorem node6613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6613 live6613 coloured6613 = result6613 := by
  rw [tree6613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6614_agree_conditional
    (child0 : tree6612 = literal6612)
    (child1 : tree6613 = literal6613) : tree6614 = literal6614 := by
  rw [tree6614_def, child0, child1]
  rfl
theorem node6614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6612 live6612 coloured6612 = result6612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6613 live6613 coloured6613 = result6613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6614 live6614 coloured6614 = result6614 := by
  rw [tree6614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6612 coloured6612 at child
  try dsimp only [live6614, coloured6614]
  rw [child]
  dsimp only [result6612]
  have child := child1
  unfold live6613 coloured6613 at child
  try dsimp only [live6614, coloured6614]
  rw [child]
  dsimp only [result6613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6615_agree_conditional : tree6615 = literal6615 := by
  rw [tree6615_def]
  rfl
theorem node6615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6615 live6615 coloured6615 = result6615 := by
  rw [tree6615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6616_agree_conditional
    (child0 : tree6614 = literal6614)
    (child1 : tree6615 = literal6615) : tree6616 = literal6616 := by
  rw [tree6616_def, child0, child1]
  rfl
theorem node6616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6614 live6614 coloured6614 = result6614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6615 live6615 coloured6615 = result6615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6616 live6616 coloured6616 = result6616 := by
  rw [tree6616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6614 coloured6614 at child
  try dsimp only [live6616, coloured6616]
  rw [child]
  dsimp only [result6614]
  have child := child1
  unfold live6615 coloured6615 at child
  try dsimp only [live6616, coloured6616]
  rw [child]
  dsimp only [result6615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6617_agree_conditional : tree6617 = literal6617 := by
  rw [tree6617_def]
  rfl
theorem node6617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6617 live6617 coloured6617 = result6617 := by
  rw [tree6617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6618_agree_conditional
    (child0 : tree6616 = literal6616)
    (child1 : tree6617 = literal6617) : tree6618 = literal6618 := by
  rw [tree6618_def, child0, child1]
  rfl
theorem node6618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6616 live6616 coloured6616 = result6616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6617 live6617 coloured6617 = result6617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6618 live6618 coloured6618 = result6618 := by
  rw [tree6618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6616 coloured6616 at child
  try dsimp only [live6618, coloured6618]
  rw [child]
  dsimp only [result6616]
  have child := child1
  unfold live6617 coloured6617 at child
  try dsimp only [live6618, coloured6618]
  rw [child]
  dsimp only [result6617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6619_agree_conditional : tree6619 = literal6619 := by
  rw [tree6619_def]
  rfl
theorem node6619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6619 live6619 coloured6619 = result6619 := by
  rw [tree6619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6620_agree_conditional
    (child0 : tree6618 = literal6618)
    (child1 : tree6619 = literal6619) : tree6620 = literal6620 := by
  rw [tree6620_def, child0, child1]
  rfl
theorem node6620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6618 live6618 coloured6618 = result6618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6619 live6619 coloured6619 = result6619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6620 live6620 coloured6620 = result6620 := by
  rw [tree6620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6618 coloured6618 at child
  try dsimp only [live6620, coloured6620]
  rw [child]
  dsimp only [result6618]
  have child := child1
  unfold live6619 coloured6619 at child
  try dsimp only [live6620, coloured6620]
  rw [child]
  dsimp only [result6619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6621_agree_conditional : tree6621 = literal6621 := by
  rw [tree6621_def]
  rfl
theorem node6621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6621 live6621 coloured6621 = result6621 := by
  rw [tree6621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6622_agree_conditional
    (child0 : tree6620 = literal6620)
    (child1 : tree6621 = literal6621) : tree6622 = literal6622 := by
  rw [tree6622_def, child0, child1]
  rfl
theorem node6622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6620 live6620 coloured6620 = result6620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6621 live6621 coloured6621 = result6621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6622 live6622 coloured6622 = result6622 := by
  rw [tree6622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6620 coloured6620 at child
  try dsimp only [live6622, coloured6622]
  rw [child]
  dsimp only [result6620]
  have child := child1
  unfold live6621 coloured6621 at child
  try dsimp only [live6622, coloured6622]
  rw [child]
  dsimp only [result6621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6623_agree_conditional : tree6623 = literal6623 := by
  rw [tree6623_def]
  rfl
theorem node6623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6623 live6623 coloured6623 = result6623 := by
  rw [tree6623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
