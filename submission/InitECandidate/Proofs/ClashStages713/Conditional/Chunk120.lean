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
theorem tree11520_agree_conditional
    (child0 : tree11518 = literal11518)
    (child1 : tree11519 = literal11519) : tree11520 = literal11520 := by
  rw [tree11520_def, child0, child1]
  rfl
theorem node11520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11518 live11518 coloured11518 = result11518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11519 live11519 coloured11519 = result11519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11520 live11520 coloured11520 = result11520 := by
  rw [tree11520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11518 coloured11518 at child
  try dsimp only [live11520, coloured11520]
  rw [child]
  dsimp only [result11518]
  have child := child1
  unfold live11519 coloured11519 at child
  try dsimp only [live11520, coloured11520]
  rw [child]
  dsimp only [result11519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11521_agree_conditional : tree11521 = literal11521 := by
  rw [tree11521_def]
  rfl
theorem node11521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11521 live11521 coloured11521 = result11521 := by
  rw [tree11521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11522_agree_conditional
    (child0 : tree11520 = literal11520)
    (child1 : tree11521 = literal11521) : tree11522 = literal11522 := by
  rw [tree11522_def, child0, child1]
  rfl
theorem node11522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11520 live11520 coloured11520 = result11520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11521 live11521 coloured11521 = result11521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11522 live11522 coloured11522 = result11522 := by
  rw [tree11522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11520 coloured11520 at child
  try dsimp only [live11522, coloured11522]
  rw [child]
  dsimp only [result11520]
  have child := child1
  unfold live11521 coloured11521 at child
  try dsimp only [live11522, coloured11522]
  rw [child]
  dsimp only [result11521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11523_agree_conditional : tree11523 = literal11523 := by
  rw [tree11523_def]
  rfl
theorem node11523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11523 live11523 coloured11523 = result11523 := by
  rw [tree11523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11524_agree_conditional
    (child0 : tree11522 = literal11522)
    (child1 : tree11523 = literal11523) : tree11524 = literal11524 := by
  rw [tree11524_def, child0, child1]
  rfl
theorem node11524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11522 live11522 coloured11522 = result11522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11523 live11523 coloured11523 = result11523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11524 live11524 coloured11524 = result11524 := by
  rw [tree11524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11522 coloured11522 at child
  try dsimp only [live11524, coloured11524]
  rw [child]
  dsimp only [result11522]
  have child := child1
  unfold live11523 coloured11523 at child
  try dsimp only [live11524, coloured11524]
  rw [child]
  dsimp only [result11523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11525_agree_conditional : tree11525 = literal11525 := by
  rw [tree11525_def]
  rfl
theorem node11525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11525 live11525 coloured11525 = result11525 := by
  rw [tree11525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11526_agree_conditional
    (child0 : tree11524 = literal11524)
    (child1 : tree11525 = literal11525) : tree11526 = literal11526 := by
  rw [tree11526_def, child0, child1]
  rfl
theorem node11526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11524 live11524 coloured11524 = result11524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11525 live11525 coloured11525 = result11525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11526 live11526 coloured11526 = result11526 := by
  rw [tree11526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11524 coloured11524 at child
  try dsimp only [live11526, coloured11526]
  rw [child]
  dsimp only [result11524]
  have child := child1
  unfold live11525 coloured11525 at child
  try dsimp only [live11526, coloured11526]
  rw [child]
  dsimp only [result11525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11527_agree_conditional : tree11527 = literal11527 := by
  rw [tree11527_def]
  rfl
theorem node11527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11527 live11527 coloured11527 = result11527 := by
  rw [tree11527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11528_agree_conditional
    (child0 : tree11526 = literal11526)
    (child1 : tree11527 = literal11527) : tree11528 = literal11528 := by
  rw [tree11528_def, child0, child1]
  rfl
theorem node11528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11526 live11526 coloured11526 = result11526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11527 live11527 coloured11527 = result11527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11528 live11528 coloured11528 = result11528 := by
  rw [tree11528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11526 coloured11526 at child
  try dsimp only [live11528, coloured11528]
  rw [child]
  dsimp only [result11526]
  have child := child1
  unfold live11527 coloured11527 at child
  try dsimp only [live11528, coloured11528]
  rw [child]
  dsimp only [result11527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11529_agree_conditional : tree11529 = literal11529 := by
  rw [tree11529_def]
  rfl
theorem node11529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11529 live11529 coloured11529 = result11529 := by
  rw [tree11529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11530_agree_conditional
    (child0 : tree11528 = literal11528)
    (child1 : tree11529 = literal11529) : tree11530 = literal11530 := by
  rw [tree11530_def, child0, child1]
  rfl
theorem node11530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11528 live11528 coloured11528 = result11528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11529 live11529 coloured11529 = result11529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11530 live11530 coloured11530 = result11530 := by
  rw [tree11530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11528 coloured11528 at child
  try dsimp only [live11530, coloured11530]
  rw [child]
  dsimp only [result11528]
  have child := child1
  unfold live11529 coloured11529 at child
  try dsimp only [live11530, coloured11530]
  rw [child]
  dsimp only [result11529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11531_agree_conditional : tree11531 = literal11531 := by
  rw [tree11531_def]
  rfl
theorem node11531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11531 live11531 coloured11531 = result11531 := by
  rw [tree11531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11532_agree_conditional
    (child0 : tree11530 = literal11530)
    (child1 : tree11531 = literal11531) : tree11532 = literal11532 := by
  rw [tree11532_def, child0, child1]
  rfl
theorem node11532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11530 live11530 coloured11530 = result11530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11531 live11531 coloured11531 = result11531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11532 live11532 coloured11532 = result11532 := by
  rw [tree11532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11530 coloured11530 at child
  try dsimp only [live11532, coloured11532]
  rw [child]
  dsimp only [result11530]
  have child := child1
  unfold live11531 coloured11531 at child
  try dsimp only [live11532, coloured11532]
  rw [child]
  dsimp only [result11531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11533_agree_conditional : tree11533 = literal11533 := by
  rw [tree11533_def]
  rfl
theorem node11533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11533 live11533 coloured11533 = result11533 := by
  rw [tree11533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11534_agree_conditional
    (child0 : tree11532 = literal11532)
    (child1 : tree11533 = literal11533) : tree11534 = literal11534 := by
  rw [tree11534_def, child0, child1]
  rfl
theorem node11534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11532 live11532 coloured11532 = result11532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11533 live11533 coloured11533 = result11533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11534 live11534 coloured11534 = result11534 := by
  rw [tree11534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11532 coloured11532 at child
  try dsimp only [live11534, coloured11534]
  rw [child]
  dsimp only [result11532]
  have child := child1
  unfold live11533 coloured11533 at child
  try dsimp only [live11534, coloured11534]
  rw [child]
  dsimp only [result11533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11535_agree_conditional : tree11535 = literal11535 := by
  rw [tree11535_def]
  rfl
theorem node11535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11535 live11535 coloured11535 = result11535 := by
  rw [tree11535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11536_agree_conditional
    (child0 : tree11534 = literal11534)
    (child1 : tree11535 = literal11535) : tree11536 = literal11536 := by
  rw [tree11536_def, child0, child1]
  rfl
theorem node11536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11534 live11534 coloured11534 = result11534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11535 live11535 coloured11535 = result11535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11536 live11536 coloured11536 = result11536 := by
  rw [tree11536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11534 coloured11534 at child
  try dsimp only [live11536, coloured11536]
  rw [child]
  dsimp only [result11534]
  have child := child1
  unfold live11535 coloured11535 at child
  try dsimp only [live11536, coloured11536]
  rw [child]
  dsimp only [result11535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11537_agree_conditional : tree11537 = literal11537 := by
  rw [tree11537_def]
  rfl
theorem node11537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11537 live11537 coloured11537 = result11537 := by
  rw [tree11537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11538_agree_conditional
    (child0 : tree11536 = literal11536)
    (child1 : tree11537 = literal11537) : tree11538 = literal11538 := by
  rw [tree11538_def, child0, child1]
  rfl
theorem node11538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11536 live11536 coloured11536 = result11536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11537 live11537 coloured11537 = result11537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11538 live11538 coloured11538 = result11538 := by
  rw [tree11538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11536 coloured11536 at child
  try dsimp only [live11538, coloured11538]
  rw [child]
  dsimp only [result11536]
  have child := child1
  unfold live11537 coloured11537 at child
  try dsimp only [live11538, coloured11538]
  rw [child]
  dsimp only [result11537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11539_agree_conditional : tree11539 = literal11539 := by
  rw [tree11539_def]
  rfl
theorem node11539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11539 live11539 coloured11539 = result11539 := by
  rw [tree11539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11540_agree_conditional
    (child0 : tree11538 = literal11538)
    (child1 : tree11539 = literal11539) : tree11540 = literal11540 := by
  rw [tree11540_def, child0, child1]
  rfl
theorem node11540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11538 live11538 coloured11538 = result11538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11539 live11539 coloured11539 = result11539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11540 live11540 coloured11540 = result11540 := by
  rw [tree11540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11538 coloured11538 at child
  try dsimp only [live11540, coloured11540]
  rw [child]
  dsimp only [result11538]
  have child := child1
  unfold live11539 coloured11539 at child
  try dsimp only [live11540, coloured11540]
  rw [child]
  dsimp only [result11539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11541_agree_conditional : tree11541 = literal11541 := by
  rw [tree11541_def]
  rfl
theorem node11541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11541 live11541 coloured11541 = result11541 := by
  rw [tree11541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11542_agree_conditional
    (child0 : tree11540 = literal11540)
    (child1 : tree11541 = literal11541) : tree11542 = literal11542 := by
  rw [tree11542_def, child0, child1]
  rfl
theorem node11542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11540 live11540 coloured11540 = result11540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11541 live11541 coloured11541 = result11541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11542 live11542 coloured11542 = result11542 := by
  rw [tree11542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11540 coloured11540 at child
  try dsimp only [live11542, coloured11542]
  rw [child]
  dsimp only [result11540]
  have child := child1
  unfold live11541 coloured11541 at child
  try dsimp only [live11542, coloured11542]
  rw [child]
  dsimp only [result11541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11543_agree_conditional : tree11543 = literal11543 := by
  rw [tree11543_def]
  rfl
theorem node11543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11543 live11543 coloured11543 = result11543 := by
  rw [tree11543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11544_agree_conditional
    (child0 : tree11542 = literal11542)
    (child1 : tree11543 = literal11543) : tree11544 = literal11544 := by
  rw [tree11544_def, child0, child1]
  rfl
theorem node11544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11542 live11542 coloured11542 = result11542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11543 live11543 coloured11543 = result11543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11544 live11544 coloured11544 = result11544 := by
  rw [tree11544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11542 coloured11542 at child
  try dsimp only [live11544, coloured11544]
  rw [child]
  dsimp only [result11542]
  have child := child1
  unfold live11543 coloured11543 at child
  try dsimp only [live11544, coloured11544]
  rw [child]
  dsimp only [result11543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11545_agree_conditional : tree11545 = literal11545 := by
  rw [tree11545_def]
  rfl
theorem node11545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11545 live11545 coloured11545 = result11545 := by
  rw [tree11545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11546_agree_conditional
    (child0 : tree11544 = literal11544)
    (child1 : tree11545 = literal11545) : tree11546 = literal11546 := by
  rw [tree11546_def, child0, child1]
  rfl
theorem node11546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11544 live11544 coloured11544 = result11544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11545 live11545 coloured11545 = result11545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11546 live11546 coloured11546 = result11546 := by
  rw [tree11546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11544 coloured11544 at child
  try dsimp only [live11546, coloured11546]
  rw [child]
  dsimp only [result11544]
  have child := child1
  unfold live11545 coloured11545 at child
  try dsimp only [live11546, coloured11546]
  rw [child]
  dsimp only [result11545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11547_agree_conditional : tree11547 = literal11547 := by
  rw [tree11547_def]
  rfl
theorem node11547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11547 live11547 coloured11547 = result11547 := by
  rw [tree11547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11548_agree_conditional
    (child0 : tree11546 = literal11546)
    (child1 : tree11547 = literal11547) : tree11548 = literal11548 := by
  rw [tree11548_def, child0, child1]
  rfl
theorem node11548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11546 live11546 coloured11546 = result11546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11547 live11547 coloured11547 = result11547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11548 live11548 coloured11548 = result11548 := by
  rw [tree11548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11546 coloured11546 at child
  try dsimp only [live11548, coloured11548]
  rw [child]
  dsimp only [result11546]
  have child := child1
  unfold live11547 coloured11547 at child
  try dsimp only [live11548, coloured11548]
  rw [child]
  dsimp only [result11547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11549_agree_conditional : tree11549 = literal11549 := by
  rw [tree11549_def]
  rfl
theorem node11549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11549 live11549 coloured11549 = result11549 := by
  rw [tree11549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11550_agree_conditional
    (child0 : tree11548 = literal11548)
    (child1 : tree11549 = literal11549) : tree11550 = literal11550 := by
  rw [tree11550_def, child0, child1]
  rfl
theorem node11550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11548 live11548 coloured11548 = result11548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11549 live11549 coloured11549 = result11549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11550 live11550 coloured11550 = result11550 := by
  rw [tree11550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11548 coloured11548 at child
  try dsimp only [live11550, coloured11550]
  rw [child]
  dsimp only [result11548]
  have child := child1
  unfold live11549 coloured11549 at child
  try dsimp only [live11550, coloured11550]
  rw [child]
  dsimp only [result11549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11551_agree_conditional : tree11551 = literal11551 := by
  rw [tree11551_def]
  rfl
theorem node11551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11551 live11551 coloured11551 = result11551 := by
  rw [tree11551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11552_agree_conditional
    (child0 : tree11550 = literal11550)
    (child1 : tree11551 = literal11551) : tree11552 = literal11552 := by
  rw [tree11552_def, child0, child1]
  rfl
theorem node11552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11550 live11550 coloured11550 = result11550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11551 live11551 coloured11551 = result11551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11552 live11552 coloured11552 = result11552 := by
  rw [tree11552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11550 coloured11550 at child
  try dsimp only [live11552, coloured11552]
  rw [child]
  dsimp only [result11550]
  have child := child1
  unfold live11551 coloured11551 at child
  try dsimp only [live11552, coloured11552]
  rw [child]
  dsimp only [result11551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11553_agree_conditional : tree11553 = literal11553 := by
  rw [tree11553_def]
  rfl
theorem node11553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11553 live11553 coloured11553 = result11553 := by
  rw [tree11553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11554_agree_conditional
    (child0 : tree11552 = literal11552)
    (child1 : tree11553 = literal11553) : tree11554 = literal11554 := by
  rw [tree11554_def, child0, child1]
  rfl
theorem node11554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11552 live11552 coloured11552 = result11552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11553 live11553 coloured11553 = result11553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11554 live11554 coloured11554 = result11554 := by
  rw [tree11554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11552 coloured11552 at child
  try dsimp only [live11554, coloured11554]
  rw [child]
  dsimp only [result11552]
  have child := child1
  unfold live11553 coloured11553 at child
  try dsimp only [live11554, coloured11554]
  rw [child]
  dsimp only [result11553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11555_agree_conditional : tree11555 = literal11555 := by
  rw [tree11555_def]
  rfl
theorem node11555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11555 live11555 coloured11555 = result11555 := by
  rw [tree11555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11556_agree_conditional
    (child0 : tree11554 = literal11554)
    (child1 : tree11555 = literal11555) : tree11556 = literal11556 := by
  rw [tree11556_def, child0, child1]
  rfl
theorem node11556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11554 live11554 coloured11554 = result11554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11555 live11555 coloured11555 = result11555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11556 live11556 coloured11556 = result11556 := by
  rw [tree11556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11554 coloured11554 at child
  try dsimp only [live11556, coloured11556]
  rw [child]
  dsimp only [result11554]
  have child := child1
  unfold live11555 coloured11555 at child
  try dsimp only [live11556, coloured11556]
  rw [child]
  dsimp only [result11555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11557_agree_conditional : tree11557 = literal11557 := by
  rw [tree11557_def]
  rfl
theorem node11557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11557 live11557 coloured11557 = result11557 := by
  rw [tree11557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11558_agree_conditional
    (child0 : tree11556 = literal11556)
    (child1 : tree11557 = literal11557) : tree11558 = literal11558 := by
  rw [tree11558_def, child0, child1]
  rfl
theorem node11558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11556 live11556 coloured11556 = result11556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11557 live11557 coloured11557 = result11557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11558 live11558 coloured11558 = result11558 := by
  rw [tree11558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11556 coloured11556 at child
  try dsimp only [live11558, coloured11558]
  rw [child]
  dsimp only [result11556]
  have child := child1
  unfold live11557 coloured11557 at child
  try dsimp only [live11558, coloured11558]
  rw [child]
  dsimp only [result11557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11559_agree_conditional : tree11559 = literal11559 := by
  rw [tree11559_def]
  rfl
theorem node11559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11559 live11559 coloured11559 = result11559 := by
  rw [tree11559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11560_agree_conditional
    (child0 : tree11558 = literal11558)
    (child1 : tree11559 = literal11559) : tree11560 = literal11560 := by
  rw [tree11560_def, child0, child1]
  rfl
theorem node11560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11558 live11558 coloured11558 = result11558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11559 live11559 coloured11559 = result11559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11560 live11560 coloured11560 = result11560 := by
  rw [tree11560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11558 coloured11558 at child
  try dsimp only [live11560, coloured11560]
  rw [child]
  dsimp only [result11558]
  have child := child1
  unfold live11559 coloured11559 at child
  try dsimp only [live11560, coloured11560]
  rw [child]
  dsimp only [result11559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11561_agree_conditional : tree11561 = literal11561 := by
  rw [tree11561_def]
  rfl
theorem node11561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11561 live11561 coloured11561 = result11561 := by
  rw [tree11561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11562_agree_conditional
    (child0 : tree11560 = literal11560)
    (child1 : tree11561 = literal11561) : tree11562 = literal11562 := by
  rw [tree11562_def, child0, child1]
  rfl
theorem node11562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11560 live11560 coloured11560 = result11560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11561 live11561 coloured11561 = result11561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11562 live11562 coloured11562 = result11562 := by
  rw [tree11562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11560 coloured11560 at child
  try dsimp only [live11562, coloured11562]
  rw [child]
  dsimp only [result11560]
  have child := child1
  unfold live11561 coloured11561 at child
  try dsimp only [live11562, coloured11562]
  rw [child]
  dsimp only [result11561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11563_agree_conditional : tree11563 = literal11563 := by
  rw [tree11563_def]
  rfl
theorem node11563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11563 live11563 coloured11563 = result11563 := by
  rw [tree11563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11564_agree_conditional
    (child0 : tree11562 = literal11562)
    (child1 : tree11563 = literal11563) : tree11564 = literal11564 := by
  rw [tree11564_def, child0, child1]
  rfl
theorem node11564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11562 live11562 coloured11562 = result11562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11563 live11563 coloured11563 = result11563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11564 live11564 coloured11564 = result11564 := by
  rw [tree11564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11562 coloured11562 at child
  try dsimp only [live11564, coloured11564]
  rw [child]
  dsimp only [result11562]
  have child := child1
  unfold live11563 coloured11563 at child
  try dsimp only [live11564, coloured11564]
  rw [child]
  dsimp only [result11563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11565_agree_conditional : tree11565 = literal11565 := by
  rw [tree11565_def]
  rfl
theorem node11565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11565 live11565 coloured11565 = result11565 := by
  rw [tree11565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11566_agree_conditional
    (child0 : tree11564 = literal11564)
    (child1 : tree11565 = literal11565) : tree11566 = literal11566 := by
  rw [tree11566_def, child0, child1]
  rfl
theorem node11566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11564 live11564 coloured11564 = result11564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11565 live11565 coloured11565 = result11565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11566 live11566 coloured11566 = result11566 := by
  rw [tree11566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11564 coloured11564 at child
  try dsimp only [live11566, coloured11566]
  rw [child]
  dsimp only [result11564]
  have child := child1
  unfold live11565 coloured11565 at child
  try dsimp only [live11566, coloured11566]
  rw [child]
  dsimp only [result11565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11567_agree_conditional : tree11567 = literal11567 := by
  rw [tree11567_def]
  rfl
theorem node11567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11567 live11567 coloured11567 = result11567 := by
  rw [tree11567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11568_agree_conditional
    (child0 : tree11566 = literal11566)
    (child1 : tree11567 = literal11567) : tree11568 = literal11568 := by
  rw [tree11568_def, child0, child1]
  rfl
theorem node11568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11566 live11566 coloured11566 = result11566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11567 live11567 coloured11567 = result11567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11568 live11568 coloured11568 = result11568 := by
  rw [tree11568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11566 coloured11566 at child
  try dsimp only [live11568, coloured11568]
  rw [child]
  dsimp only [result11566]
  have child := child1
  unfold live11567 coloured11567 at child
  try dsimp only [live11568, coloured11568]
  rw [child]
  dsimp only [result11567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11569_agree_conditional : tree11569 = literal11569 := by
  rw [tree11569_def]
  rfl
theorem node11569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11569 live11569 coloured11569 = result11569 := by
  rw [tree11569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11570_agree_conditional
    (child0 : tree11568 = literal11568)
    (child1 : tree11569 = literal11569) : tree11570 = literal11570 := by
  rw [tree11570_def, child0, child1]
  rfl
theorem node11570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11568 live11568 coloured11568 = result11568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11569 live11569 coloured11569 = result11569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11570 live11570 coloured11570 = result11570 := by
  rw [tree11570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11568 coloured11568 at child
  try dsimp only [live11570, coloured11570]
  rw [child]
  dsimp only [result11568]
  have child := child1
  unfold live11569 coloured11569 at child
  try dsimp only [live11570, coloured11570]
  rw [child]
  dsimp only [result11569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11571_agree_conditional : tree11571 = literal11571 := by
  rw [tree11571_def]
  rfl
theorem node11571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11571 live11571 coloured11571 = result11571 := by
  rw [tree11571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11572_agree_conditional
    (child0 : tree11570 = literal11570)
    (child1 : tree11571 = literal11571) : tree11572 = literal11572 := by
  rw [tree11572_def, child0, child1]
  rfl
theorem node11572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11570 live11570 coloured11570 = result11570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11571 live11571 coloured11571 = result11571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11572 live11572 coloured11572 = result11572 := by
  rw [tree11572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11570 coloured11570 at child
  try dsimp only [live11572, coloured11572]
  rw [child]
  dsimp only [result11570]
  have child := child1
  unfold live11571 coloured11571 at child
  try dsimp only [live11572, coloured11572]
  rw [child]
  dsimp only [result11571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11573_agree_conditional : tree11573 = literal11573 := by
  rw [tree11573_def]
  rfl
theorem node11573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11573 live11573 coloured11573 = result11573 := by
  rw [tree11573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11574_agree_conditional
    (child0 : tree11572 = literal11572)
    (child1 : tree11573 = literal11573) : tree11574 = literal11574 := by
  rw [tree11574_def, child0, child1]
  rfl
theorem node11574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11572 live11572 coloured11572 = result11572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11573 live11573 coloured11573 = result11573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11574 live11574 coloured11574 = result11574 := by
  rw [tree11574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11572 coloured11572 at child
  try dsimp only [live11574, coloured11574]
  rw [child]
  dsimp only [result11572]
  have child := child1
  unfold live11573 coloured11573 at child
  try dsimp only [live11574, coloured11574]
  rw [child]
  dsimp only [result11573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11575_agree_conditional : tree11575 = literal11575 := by
  rw [tree11575_def]
  rfl
theorem node11575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11575 live11575 coloured11575 = result11575 := by
  rw [tree11575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11576_agree_conditional
    (child0 : tree11574 = literal11574)
    (child1 : tree11575 = literal11575) : tree11576 = literal11576 := by
  rw [tree11576_def, child0, child1]
  rfl
theorem node11576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11574 live11574 coloured11574 = result11574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11575 live11575 coloured11575 = result11575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11576 live11576 coloured11576 = result11576 := by
  rw [tree11576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11574 coloured11574 at child
  try dsimp only [live11576, coloured11576]
  rw [child]
  dsimp only [result11574]
  have child := child1
  unfold live11575 coloured11575 at child
  try dsimp only [live11576, coloured11576]
  rw [child]
  dsimp only [result11575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11577_agree_conditional : tree11577 = literal11577 := by
  rw [tree11577_def]
  rfl
theorem node11577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11577 live11577 coloured11577 = result11577 := by
  rw [tree11577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11578_agree_conditional
    (child0 : tree11576 = literal11576)
    (child1 : tree11577 = literal11577) : tree11578 = literal11578 := by
  rw [tree11578_def, child0, child1]
  rfl
theorem node11578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11576 live11576 coloured11576 = result11576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11577 live11577 coloured11577 = result11577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11578 live11578 coloured11578 = result11578 := by
  rw [tree11578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11576 coloured11576 at child
  try dsimp only [live11578, coloured11578]
  rw [child]
  dsimp only [result11576]
  have child := child1
  unfold live11577 coloured11577 at child
  try dsimp only [live11578, coloured11578]
  rw [child]
  dsimp only [result11577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11579_agree_conditional : tree11579 = literal11579 := by
  rw [tree11579_def]
  rfl
theorem node11579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11579 live11579 coloured11579 = result11579 := by
  rw [tree11579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11580_agree_conditional
    (child0 : tree11578 = literal11578)
    (child1 : tree11579 = literal11579) : tree11580 = literal11580 := by
  rw [tree11580_def, child0, child1]
  rfl
theorem node11580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11578 live11578 coloured11578 = result11578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11579 live11579 coloured11579 = result11579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11580 live11580 coloured11580 = result11580 := by
  rw [tree11580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11578 coloured11578 at child
  try dsimp only [live11580, coloured11580]
  rw [child]
  dsimp only [result11578]
  have child := child1
  unfold live11579 coloured11579 at child
  try dsimp only [live11580, coloured11580]
  rw [child]
  dsimp only [result11579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11581_agree_conditional : tree11581 = literal11581 := by
  rw [tree11581_def]
  rfl
theorem node11581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11581 live11581 coloured11581 = result11581 := by
  rw [tree11581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11582_agree_conditional
    (child0 : tree11580 = literal11580)
    (child1 : tree11581 = literal11581) : tree11582 = literal11582 := by
  rw [tree11582_def, child0, child1]
  rfl
theorem node11582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11580 live11580 coloured11580 = result11580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11581 live11581 coloured11581 = result11581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11582 live11582 coloured11582 = result11582 := by
  rw [tree11582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11580 coloured11580 at child
  try dsimp only [live11582, coloured11582]
  rw [child]
  dsimp only [result11580]
  have child := child1
  unfold live11581 coloured11581 at child
  try dsimp only [live11582, coloured11582]
  rw [child]
  dsimp only [result11581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11583_agree_conditional : tree11583 = literal11583 := by
  rw [tree11583_def]
  rfl
theorem node11583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11583 live11583 coloured11583 = result11583 := by
  rw [tree11583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11584_agree_conditional
    (child0 : tree11582 = literal11582)
    (child1 : tree11583 = literal11583) : tree11584 = literal11584 := by
  rw [tree11584_def, child0, child1]
  rfl
theorem node11584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11582 live11582 coloured11582 = result11582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11583 live11583 coloured11583 = result11583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11584 live11584 coloured11584 = result11584 := by
  rw [tree11584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11582 coloured11582 at child
  try dsimp only [live11584, coloured11584]
  rw [child]
  dsimp only [result11582]
  have child := child1
  unfold live11583 coloured11583 at child
  try dsimp only [live11584, coloured11584]
  rw [child]
  dsimp only [result11583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11585_agree_conditional : tree11585 = literal11585 := by
  rw [tree11585_def]
  rfl
theorem node11585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11585 live11585 coloured11585 = result11585 := by
  rw [tree11585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11586_agree_conditional
    (child0 : tree11584 = literal11584)
    (child1 : tree11585 = literal11585) : tree11586 = literal11586 := by
  rw [tree11586_def, child0, child1]
  rfl
theorem node11586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11584 live11584 coloured11584 = result11584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11585 live11585 coloured11585 = result11585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11586 live11586 coloured11586 = result11586 := by
  rw [tree11586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11584 coloured11584 at child
  try dsimp only [live11586, coloured11586]
  rw [child]
  dsimp only [result11584]
  have child := child1
  unfold live11585 coloured11585 at child
  try dsimp only [live11586, coloured11586]
  rw [child]
  dsimp only [result11585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11587_agree_conditional : tree11587 = literal11587 := by
  rw [tree11587_def]
  rfl
theorem node11587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11587 live11587 coloured11587 = result11587 := by
  rw [tree11587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11588_agree_conditional
    (child0 : tree11586 = literal11586)
    (child1 : tree11587 = literal11587) : tree11588 = literal11588 := by
  rw [tree11588_def, child0, child1]
  rfl
theorem node11588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11586 live11586 coloured11586 = result11586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11587 live11587 coloured11587 = result11587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11588 live11588 coloured11588 = result11588 := by
  rw [tree11588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11586 coloured11586 at child
  try dsimp only [live11588, coloured11588]
  rw [child]
  dsimp only [result11586]
  have child := child1
  unfold live11587 coloured11587 at child
  try dsimp only [live11588, coloured11588]
  rw [child]
  dsimp only [result11587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11589_agree_conditional : tree11589 = literal11589 := by
  rw [tree11589_def]
  rfl
theorem node11589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11589 live11589 coloured11589 = result11589 := by
  rw [tree11589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11590_agree_conditional
    (child0 : tree11588 = literal11588)
    (child1 : tree11589 = literal11589) : tree11590 = literal11590 := by
  rw [tree11590_def, child0, child1]
  rfl
theorem node11590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11588 live11588 coloured11588 = result11588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11589 live11589 coloured11589 = result11589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11590 live11590 coloured11590 = result11590 := by
  rw [tree11590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11588 coloured11588 at child
  try dsimp only [live11590, coloured11590]
  rw [child]
  dsimp only [result11588]
  have child := child1
  unfold live11589 coloured11589 at child
  try dsimp only [live11590, coloured11590]
  rw [child]
  dsimp only [result11589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11591_agree_conditional : tree11591 = literal11591 := by
  rw [tree11591_def]
  rfl
theorem node11591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11591 live11591 coloured11591 = result11591 := by
  rw [tree11591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11592_agree_conditional
    (child0 : tree11590 = literal11590)
    (child1 : tree11591 = literal11591) : tree11592 = literal11592 := by
  rw [tree11592_def, child0, child1]
  rfl
theorem node11592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11590 live11590 coloured11590 = result11590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11591 live11591 coloured11591 = result11591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11592 live11592 coloured11592 = result11592 := by
  rw [tree11592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11590 coloured11590 at child
  try dsimp only [live11592, coloured11592]
  rw [child]
  dsimp only [result11590]
  have child := child1
  unfold live11591 coloured11591 at child
  try dsimp only [live11592, coloured11592]
  rw [child]
  dsimp only [result11591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11593_agree_conditional : tree11593 = literal11593 := by
  rw [tree11593_def]
  rfl
theorem node11593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11593 live11593 coloured11593 = result11593 := by
  rw [tree11593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11594_agree_conditional
    (child0 : tree11592 = literal11592)
    (child1 : tree11593 = literal11593) : tree11594 = literal11594 := by
  rw [tree11594_def, child0, child1]
  rfl
theorem node11594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11592 live11592 coloured11592 = result11592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11593 live11593 coloured11593 = result11593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11594 live11594 coloured11594 = result11594 := by
  rw [tree11594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11592 coloured11592 at child
  try dsimp only [live11594, coloured11594]
  rw [child]
  dsimp only [result11592]
  have child := child1
  unfold live11593 coloured11593 at child
  try dsimp only [live11594, coloured11594]
  rw [child]
  dsimp only [result11593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11595_agree_conditional : tree11595 = literal11595 := by
  rw [tree11595_def]
  rfl
theorem node11595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11595 live11595 coloured11595 = result11595 := by
  rw [tree11595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11596_agree_conditional
    (child0 : tree11594 = literal11594)
    (child1 : tree11595 = literal11595) : tree11596 = literal11596 := by
  rw [tree11596_def, child0, child1]
  rfl
theorem node11596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11594 live11594 coloured11594 = result11594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11595 live11595 coloured11595 = result11595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11596 live11596 coloured11596 = result11596 := by
  rw [tree11596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11594 coloured11594 at child
  try dsimp only [live11596, coloured11596]
  rw [child]
  dsimp only [result11594]
  have child := child1
  unfold live11595 coloured11595 at child
  try dsimp only [live11596, coloured11596]
  rw [child]
  dsimp only [result11595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11597_agree_conditional : tree11597 = literal11597 := by
  rw [tree11597_def]
  rfl
theorem node11597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11597 live11597 coloured11597 = result11597 := by
  rw [tree11597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11598_agree_conditional
    (child0 : tree11596 = literal11596)
    (child1 : tree11597 = literal11597) : tree11598 = literal11598 := by
  rw [tree11598_def, child0, child1]
  rfl
theorem node11598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11596 live11596 coloured11596 = result11596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11597 live11597 coloured11597 = result11597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11598 live11598 coloured11598 = result11598 := by
  rw [tree11598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11596 coloured11596 at child
  try dsimp only [live11598, coloured11598]
  rw [child]
  dsimp only [result11596]
  have child := child1
  unfold live11597 coloured11597 at child
  try dsimp only [live11598, coloured11598]
  rw [child]
  dsimp only [result11597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11599_agree_conditional : tree11599 = literal11599 := by
  rw [tree11599_def]
  rfl
theorem node11599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11599 live11599 coloured11599 = result11599 := by
  rw [tree11599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11600_agree_conditional
    (child0 : tree11598 = literal11598)
    (child1 : tree11599 = literal11599) : tree11600 = literal11600 := by
  rw [tree11600_def, child0, child1]
  rfl
theorem node11600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11598 live11598 coloured11598 = result11598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11599 live11599 coloured11599 = result11599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11600 live11600 coloured11600 = result11600 := by
  rw [tree11600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11598 coloured11598 at child
  try dsimp only [live11600, coloured11600]
  rw [child]
  dsimp only [result11598]
  have child := child1
  unfold live11599 coloured11599 at child
  try dsimp only [live11600, coloured11600]
  rw [child]
  dsimp only [result11599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11601_agree_conditional : tree11601 = literal11601 := by
  rw [tree11601_def]
  rfl
theorem node11601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11601 live11601 coloured11601 = result11601 := by
  rw [tree11601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11602_agree_conditional
    (child0 : tree11600 = literal11600)
    (child1 : tree11601 = literal11601) : tree11602 = literal11602 := by
  rw [tree11602_def, child0, child1]
  rfl
theorem node11602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11600 live11600 coloured11600 = result11600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11601 live11601 coloured11601 = result11601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11602 live11602 coloured11602 = result11602 := by
  rw [tree11602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11600 coloured11600 at child
  try dsimp only [live11602, coloured11602]
  rw [child]
  dsimp only [result11600]
  have child := child1
  unfold live11601 coloured11601 at child
  try dsimp only [live11602, coloured11602]
  rw [child]
  dsimp only [result11601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11603_agree_conditional : tree11603 = literal11603 := by
  rw [tree11603_def]
  rfl
theorem node11603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11603 live11603 coloured11603 = result11603 := by
  rw [tree11603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11604_agree_conditional
    (child0 : tree11602 = literal11602)
    (child1 : tree11603 = literal11603) : tree11604 = literal11604 := by
  rw [tree11604_def, child0, child1]
  rfl
theorem node11604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11602 live11602 coloured11602 = result11602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11603 live11603 coloured11603 = result11603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11604 live11604 coloured11604 = result11604 := by
  rw [tree11604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11602 coloured11602 at child
  try dsimp only [live11604, coloured11604]
  rw [child]
  dsimp only [result11602]
  have child := child1
  unfold live11603 coloured11603 at child
  try dsimp only [live11604, coloured11604]
  rw [child]
  dsimp only [result11603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11605_agree_conditional : tree11605 = literal11605 := by
  rw [tree11605_def]
  rfl
theorem node11605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11605 live11605 coloured11605 = result11605 := by
  rw [tree11605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11606_agree_conditional
    (child0 : tree11604 = literal11604)
    (child1 : tree11605 = literal11605) : tree11606 = literal11606 := by
  rw [tree11606_def, child0, child1]
  rfl
theorem node11606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11604 live11604 coloured11604 = result11604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11605 live11605 coloured11605 = result11605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11606 live11606 coloured11606 = result11606 := by
  rw [tree11606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11604 coloured11604 at child
  try dsimp only [live11606, coloured11606]
  rw [child]
  dsimp only [result11604]
  have child := child1
  unfold live11605 coloured11605 at child
  try dsimp only [live11606, coloured11606]
  rw [child]
  dsimp only [result11605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11607_agree_conditional : tree11607 = literal11607 := by
  rw [tree11607_def]
  rfl
theorem node11607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11607 live11607 coloured11607 = result11607 := by
  rw [tree11607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11608_agree_conditional
    (child0 : tree11606 = literal11606)
    (child1 : tree11607 = literal11607) : tree11608 = literal11608 := by
  rw [tree11608_def, child0, child1]
  rfl
theorem node11608_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11606 live11606 coloured11606 = result11606)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11607 live11607 coloured11607 = result11607) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11608 live11608 coloured11608 = result11608 := by
  rw [tree11608_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11606 coloured11606 at child
  try dsimp only [live11608, coloured11608]
  rw [child]
  dsimp only [result11606]
  have child := child1
  unfold live11607 coloured11607 at child
  try dsimp only [live11608, coloured11608]
  rw [child]
  dsimp only [result11607]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11609_agree_conditional : tree11609 = literal11609 := by
  rw [tree11609_def]
  rfl
theorem node11609_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11609 live11609 coloured11609 = result11609 := by
  rw [tree11609_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11610_agree_conditional
    (child0 : tree11608 = literal11608)
    (child1 : tree11609 = literal11609) : tree11610 = literal11610 := by
  rw [tree11610_def, child0, child1]
  rfl
theorem node11610_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11608 live11608 coloured11608 = result11608)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11609 live11609 coloured11609 = result11609) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11610 live11610 coloured11610 = result11610 := by
  rw [tree11610_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11608 coloured11608 at child
  try dsimp only [live11610, coloured11610]
  rw [child]
  dsimp only [result11608]
  have child := child1
  unfold live11609 coloured11609 at child
  try dsimp only [live11610, coloured11610]
  rw [child]
  dsimp only [result11609]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11611_agree_conditional : tree11611 = literal11611 := by
  rw [tree11611_def]
  rfl
theorem node11611_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11611 live11611 coloured11611 = result11611 := by
  rw [tree11611_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11612_agree_conditional
    (child0 : tree11610 = literal11610)
    (child1 : tree11611 = literal11611) : tree11612 = literal11612 := by
  rw [tree11612_def, child0, child1]
  rfl
theorem node11612_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11610 live11610 coloured11610 = result11610)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11611 live11611 coloured11611 = result11611) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11612 live11612 coloured11612 = result11612 := by
  rw [tree11612_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11610 coloured11610 at child
  try dsimp only [live11612, coloured11612]
  rw [child]
  dsimp only [result11610]
  have child := child1
  unfold live11611 coloured11611 at child
  try dsimp only [live11612, coloured11612]
  rw [child]
  dsimp only [result11611]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11613_agree_conditional : tree11613 = literal11613 := by
  rw [tree11613_def]
  rfl
theorem node11613_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11613 live11613 coloured11613 = result11613 := by
  rw [tree11613_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11614_agree_conditional
    (child0 : tree11612 = literal11612)
    (child1 : tree11613 = literal11613) : tree11614 = literal11614 := by
  rw [tree11614_def, child0, child1]
  rfl
theorem node11614_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11612 live11612 coloured11612 = result11612)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11613 live11613 coloured11613 = result11613) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11614 live11614 coloured11614 = result11614 := by
  rw [tree11614_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11612 coloured11612 at child
  try dsimp only [live11614, coloured11614]
  rw [child]
  dsimp only [result11612]
  have child := child1
  unfold live11613 coloured11613 at child
  try dsimp only [live11614, coloured11614]
  rw [child]
  dsimp only [result11613]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11615_agree_conditional : tree11615 = literal11615 := by
  rw [tree11615_def]
  rfl
theorem node11615_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11615 live11615 coloured11615 = result11615 := by
  rw [tree11615_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
