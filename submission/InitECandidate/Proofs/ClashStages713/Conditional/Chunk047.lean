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
theorem tree4512_agree_conditional
    (child0 : tree4510 = literal4510)
    (child1 : tree4511 = literal4511) : tree4512 = literal4512 := by
  rw [tree4512_def, child0, child1]
  rfl
theorem node4512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4510 live4510 coloured4510 = result4510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4511 live4511 coloured4511 = result4511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4512 live4512 coloured4512 = result4512 := by
  rw [tree4512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4510 coloured4510 at child
  try dsimp only [live4512, coloured4512]
  rw [child]
  dsimp only [result4510]
  have child := child1
  unfold live4511 coloured4511 at child
  try dsimp only [live4512, coloured4512]
  rw [child]
  dsimp only [result4511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4513_agree_conditional : tree4513 = literal4513 := by
  rw [tree4513_def]
  rfl
theorem node4513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4513 live4513 coloured4513 = result4513 := by
  rw [tree4513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4514_agree_conditional
    (child0 : tree4512 = literal4512)
    (child1 : tree4513 = literal4513) : tree4514 = literal4514 := by
  rw [tree4514_def, child0, child1]
  rfl
theorem node4514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4512 live4512 coloured4512 = result4512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4513 live4513 coloured4513 = result4513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4514 live4514 coloured4514 = result4514 := by
  rw [tree4514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4512 coloured4512 at child
  try dsimp only [live4514, coloured4514]
  rw [child]
  dsimp only [result4512]
  have child := child1
  unfold live4513 coloured4513 at child
  try dsimp only [live4514, coloured4514]
  rw [child]
  dsimp only [result4513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4515_agree_conditional : tree4515 = literal4515 := by
  rw [tree4515_def]
  rfl
theorem node4515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4515 live4515 coloured4515 = result4515 := by
  rw [tree4515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4516_agree_conditional
    (child0 : tree4514 = literal4514)
    (child1 : tree4515 = literal4515) : tree4516 = literal4516 := by
  rw [tree4516_def, child0, child1]
  rfl
theorem node4516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4514 live4514 coloured4514 = result4514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4515 live4515 coloured4515 = result4515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4516 live4516 coloured4516 = result4516 := by
  rw [tree4516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4514 coloured4514 at child
  try dsimp only [live4516, coloured4516]
  rw [child]
  dsimp only [result4514]
  have child := child1
  unfold live4515 coloured4515 at child
  try dsimp only [live4516, coloured4516]
  rw [child]
  dsimp only [result4515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4517_agree_conditional : tree4517 = literal4517 := by
  rw [tree4517_def]
  rfl
theorem node4517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4517 live4517 coloured4517 = result4517 := by
  rw [tree4517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4518_agree_conditional
    (child0 : tree4516 = literal4516)
    (child1 : tree4517 = literal4517) : tree4518 = literal4518 := by
  rw [tree4518_def, child0, child1]
  rfl
theorem node4518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4516 live4516 coloured4516 = result4516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4517 live4517 coloured4517 = result4517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4518 live4518 coloured4518 = result4518 := by
  rw [tree4518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4516 coloured4516 at child
  try dsimp only [live4518, coloured4518]
  rw [child]
  dsimp only [result4516]
  have child := child1
  unfold live4517 coloured4517 at child
  try dsimp only [live4518, coloured4518]
  rw [child]
  dsimp only [result4517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4519_agree_conditional : tree4519 = literal4519 := by
  rw [tree4519_def]
  rfl
theorem node4519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4519 live4519 coloured4519 = result4519 := by
  rw [tree4519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4520_agree_conditional
    (child0 : tree4518 = literal4518)
    (child1 : tree4519 = literal4519) : tree4520 = literal4520 := by
  rw [tree4520_def, child0, child1]
  rfl
theorem node4520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4518 live4518 coloured4518 = result4518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4519 live4519 coloured4519 = result4519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4520 live4520 coloured4520 = result4520 := by
  rw [tree4520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4518 coloured4518 at child
  try dsimp only [live4520, coloured4520]
  rw [child]
  dsimp only [result4518]
  have child := child1
  unfold live4519 coloured4519 at child
  try dsimp only [live4520, coloured4520]
  rw [child]
  dsimp only [result4519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4521_agree_conditional : tree4521 = literal4521 := by
  rw [tree4521_def]
  rfl
theorem node4521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4521 live4521 coloured4521 = result4521 := by
  rw [tree4521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4522_agree_conditional
    (child0 : tree4520 = literal4520)
    (child1 : tree4521 = literal4521) : tree4522 = literal4522 := by
  rw [tree4522_def, child0, child1]
  rfl
theorem node4522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4520 live4520 coloured4520 = result4520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4521 live4521 coloured4521 = result4521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4522 live4522 coloured4522 = result4522 := by
  rw [tree4522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4520 coloured4520 at child
  try dsimp only [live4522, coloured4522]
  rw [child]
  dsimp only [result4520]
  have child := child1
  unfold live4521 coloured4521 at child
  try dsimp only [live4522, coloured4522]
  rw [child]
  dsimp only [result4521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4523_agree_conditional : tree4523 = literal4523 := by
  rw [tree4523_def]
  rfl
theorem node4523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4523 live4523 coloured4523 = result4523 := by
  rw [tree4523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4524_agree_conditional
    (child0 : tree4522 = literal4522)
    (child1 : tree4523 = literal4523) : tree4524 = literal4524 := by
  rw [tree4524_def, child0, child1]
  rfl
theorem node4524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4522 live4522 coloured4522 = result4522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4523 live4523 coloured4523 = result4523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4524 live4524 coloured4524 = result4524 := by
  rw [tree4524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4522 coloured4522 at child
  try dsimp only [live4524, coloured4524]
  rw [child]
  dsimp only [result4522]
  have child := child1
  unfold live4523 coloured4523 at child
  try dsimp only [live4524, coloured4524]
  rw [child]
  dsimp only [result4523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4525_agree_conditional : tree4525 = literal4525 := by
  rw [tree4525_def]
  rfl
theorem node4525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4525 live4525 coloured4525 = result4525 := by
  rw [tree4525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4526_agree_conditional
    (child0 : tree4524 = literal4524)
    (child1 : tree4525 = literal4525) : tree4526 = literal4526 := by
  rw [tree4526_def, child0, child1]
  rfl
theorem node4526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4524 live4524 coloured4524 = result4524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4525 live4525 coloured4525 = result4525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4526 live4526 coloured4526 = result4526 := by
  rw [tree4526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4524 coloured4524 at child
  try dsimp only [live4526, coloured4526]
  rw [child]
  dsimp only [result4524]
  have child := child1
  unfold live4525 coloured4525 at child
  try dsimp only [live4526, coloured4526]
  rw [child]
  dsimp only [result4525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4527_agree_conditional : tree4527 = literal4527 := by
  rw [tree4527_def]
  rfl
theorem node4527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4527 live4527 coloured4527 = result4527 := by
  rw [tree4527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4528_agree_conditional
    (child0 : tree4526 = literal4526)
    (child1 : tree4527 = literal4527) : tree4528 = literal4528 := by
  rw [tree4528_def, child0, child1]
  rfl
theorem node4528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4526 live4526 coloured4526 = result4526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4527 live4527 coloured4527 = result4527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4528 live4528 coloured4528 = result4528 := by
  rw [tree4528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4526 coloured4526 at child
  try dsimp only [live4528, coloured4528]
  rw [child]
  dsimp only [result4526]
  have child := child1
  unfold live4527 coloured4527 at child
  try dsimp only [live4528, coloured4528]
  rw [child]
  dsimp only [result4527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4529_agree_conditional : tree4529 = literal4529 := by
  rw [tree4529_def]
  rfl
theorem node4529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4529 live4529 coloured4529 = result4529 := by
  rw [tree4529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4530_agree_conditional
    (child0 : tree4528 = literal4528)
    (child1 : tree4529 = literal4529) : tree4530 = literal4530 := by
  rw [tree4530_def, child0, child1]
  rfl
theorem node4530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4528 live4528 coloured4528 = result4528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4529 live4529 coloured4529 = result4529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4530 live4530 coloured4530 = result4530 := by
  rw [tree4530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4528 coloured4528 at child
  try dsimp only [live4530, coloured4530]
  rw [child]
  dsimp only [result4528]
  have child := child1
  unfold live4529 coloured4529 at child
  try dsimp only [live4530, coloured4530]
  rw [child]
  dsimp only [result4529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4531_agree_conditional : tree4531 = literal4531 := by
  rw [tree4531_def]
  rfl
theorem node4531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4531 live4531 coloured4531 = result4531 := by
  rw [tree4531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4532_agree_conditional
    (child0 : tree4530 = literal4530)
    (child1 : tree4531 = literal4531) : tree4532 = literal4532 := by
  rw [tree4532_def, child0, child1]
  rfl
theorem node4532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4530 live4530 coloured4530 = result4530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4531 live4531 coloured4531 = result4531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4532 live4532 coloured4532 = result4532 := by
  rw [tree4532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4530 coloured4530 at child
  try dsimp only [live4532, coloured4532]
  rw [child]
  dsimp only [result4530]
  have child := child1
  unfold live4531 coloured4531 at child
  try dsimp only [live4532, coloured4532]
  rw [child]
  dsimp only [result4531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4533_agree_conditional : tree4533 = literal4533 := by
  rw [tree4533_def]
  rfl
theorem node4533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4533 live4533 coloured4533 = result4533 := by
  rw [tree4533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4534_agree_conditional
    (child0 : tree4532 = literal4532)
    (child1 : tree4533 = literal4533) : tree4534 = literal4534 := by
  rw [tree4534_def, child0, child1]
  rfl
theorem node4534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4532 live4532 coloured4532 = result4532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4533 live4533 coloured4533 = result4533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4534 live4534 coloured4534 = result4534 := by
  rw [tree4534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4532 coloured4532 at child
  try dsimp only [live4534, coloured4534]
  rw [child]
  dsimp only [result4532]
  have child := child1
  unfold live4533 coloured4533 at child
  try dsimp only [live4534, coloured4534]
  rw [child]
  dsimp only [result4533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4535_agree_conditional : tree4535 = literal4535 := by
  rw [tree4535_def]
  rfl
theorem node4535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4535 live4535 coloured4535 = result4535 := by
  rw [tree4535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4536_agree_conditional
    (child0 : tree4534 = literal4534)
    (child1 : tree4535 = literal4535) : tree4536 = literal4536 := by
  rw [tree4536_def, child0, child1]
  rfl
theorem node4536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4534 live4534 coloured4534 = result4534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4535 live4535 coloured4535 = result4535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4536 live4536 coloured4536 = result4536 := by
  rw [tree4536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4534 coloured4534 at child
  try dsimp only [live4536, coloured4536]
  rw [child]
  dsimp only [result4534]
  have child := child1
  unfold live4535 coloured4535 at child
  try dsimp only [live4536, coloured4536]
  rw [child]
  dsimp only [result4535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4537_agree_conditional : tree4537 = literal4537 := by
  rw [tree4537_def]
  rfl
theorem node4537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4537 live4537 coloured4537 = result4537 := by
  rw [tree4537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4538_agree_conditional
    (child0 : tree4536 = literal4536)
    (child1 : tree4537 = literal4537) : tree4538 = literal4538 := by
  rw [tree4538_def, child0, child1]
  rfl
theorem node4538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4536 live4536 coloured4536 = result4536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4537 live4537 coloured4537 = result4537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4538 live4538 coloured4538 = result4538 := by
  rw [tree4538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4536 coloured4536 at child
  try dsimp only [live4538, coloured4538]
  rw [child]
  dsimp only [result4536]
  have child := child1
  unfold live4537 coloured4537 at child
  try dsimp only [live4538, coloured4538]
  rw [child]
  dsimp only [result4537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4539_agree_conditional : tree4539 = literal4539 := by
  rw [tree4539_def]
  rfl
theorem node4539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4539 live4539 coloured4539 = result4539 := by
  rw [tree4539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4540_agree_conditional
    (child0 : tree4538 = literal4538)
    (child1 : tree4539 = literal4539) : tree4540 = literal4540 := by
  rw [tree4540_def, child0, child1]
  rfl
theorem node4540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4538 live4538 coloured4538 = result4538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4539 live4539 coloured4539 = result4539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4540 live4540 coloured4540 = result4540 := by
  rw [tree4540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4538 coloured4538 at child
  try dsimp only [live4540, coloured4540]
  rw [child]
  dsimp only [result4538]
  have child := child1
  unfold live4539 coloured4539 at child
  try dsimp only [live4540, coloured4540]
  rw [child]
  dsimp only [result4539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4541_agree_conditional : tree4541 = literal4541 := by
  rw [tree4541_def]
  rfl
theorem node4541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4541 live4541 coloured4541 = result4541 := by
  rw [tree4541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4542_agree_conditional
    (child0 : tree4540 = literal4540)
    (child1 : tree4541 = literal4541) : tree4542 = literal4542 := by
  rw [tree4542_def, child0, child1]
  rfl
theorem node4542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4540 live4540 coloured4540 = result4540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4541 live4541 coloured4541 = result4541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4542 live4542 coloured4542 = result4542 := by
  rw [tree4542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4540 coloured4540 at child
  try dsimp only [live4542, coloured4542]
  rw [child]
  dsimp only [result4540]
  have child := child1
  unfold live4541 coloured4541 at child
  try dsimp only [live4542, coloured4542]
  rw [child]
  dsimp only [result4541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4543_agree_conditional : tree4543 = literal4543 := by
  rw [tree4543_def]
  rfl
theorem node4543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4543 live4543 coloured4543 = result4543 := by
  rw [tree4543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4544_agree_conditional
    (child0 : tree4542 = literal4542)
    (child1 : tree4543 = literal4543) : tree4544 = literal4544 := by
  rw [tree4544_def, child0, child1]
  rfl
theorem node4544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4542 live4542 coloured4542 = result4542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4543 live4543 coloured4543 = result4543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4544 live4544 coloured4544 = result4544 := by
  rw [tree4544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4542 coloured4542 at child
  try dsimp only [live4544, coloured4544]
  rw [child]
  dsimp only [result4542]
  have child := child1
  unfold live4543 coloured4543 at child
  try dsimp only [live4544, coloured4544]
  rw [child]
  dsimp only [result4543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4545_agree_conditional : tree4545 = literal4545 := by
  rw [tree4545_def]
  rfl
theorem node4545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4545 live4545 coloured4545 = result4545 := by
  rw [tree4545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4546_agree_conditional
    (child0 : tree4544 = literal4544)
    (child1 : tree4545 = literal4545) : tree4546 = literal4546 := by
  rw [tree4546_def, child0, child1]
  rfl
theorem node4546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4544 live4544 coloured4544 = result4544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4545 live4545 coloured4545 = result4545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4546 live4546 coloured4546 = result4546 := by
  rw [tree4546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4544 coloured4544 at child
  try dsimp only [live4546, coloured4546]
  rw [child]
  dsimp only [result4544]
  have child := child1
  unfold live4545 coloured4545 at child
  try dsimp only [live4546, coloured4546]
  rw [child]
  dsimp only [result4545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4547_agree_conditional : tree4547 = literal4547 := by
  rw [tree4547_def]
  rfl
theorem node4547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4547 live4547 coloured4547 = result4547 := by
  rw [tree4547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4548_agree_conditional
    (child0 : tree4546 = literal4546)
    (child1 : tree4547 = literal4547) : tree4548 = literal4548 := by
  rw [tree4548_def, child0, child1]
  rfl
theorem node4548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4546 live4546 coloured4546 = result4546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4547 live4547 coloured4547 = result4547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4548 live4548 coloured4548 = result4548 := by
  rw [tree4548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4546 coloured4546 at child
  try dsimp only [live4548, coloured4548]
  rw [child]
  dsimp only [result4546]
  have child := child1
  unfold live4547 coloured4547 at child
  try dsimp only [live4548, coloured4548]
  rw [child]
  dsimp only [result4547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4549_agree_conditional : tree4549 = literal4549 := by
  rw [tree4549_def]
  rfl
theorem node4549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4549 live4549 coloured4549 = result4549 := by
  rw [tree4549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4550_agree_conditional
    (child0 : tree4548 = literal4548)
    (child1 : tree4549 = literal4549) : tree4550 = literal4550 := by
  rw [tree4550_def, child0, child1]
  rfl
theorem node4550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4548 live4548 coloured4548 = result4548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4549 live4549 coloured4549 = result4549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4550 live4550 coloured4550 = result4550 := by
  rw [tree4550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4548 coloured4548 at child
  try dsimp only [live4550, coloured4550]
  rw [child]
  dsimp only [result4548]
  have child := child1
  unfold live4549 coloured4549 at child
  try dsimp only [live4550, coloured4550]
  rw [child]
  dsimp only [result4549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4551_agree_conditional : tree4551 = literal4551 := by
  rw [tree4551_def]
  rfl
theorem node4551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4551 live4551 coloured4551 = result4551 := by
  rw [tree4551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4552_agree_conditional
    (child0 : tree4550 = literal4550)
    (child1 : tree4551 = literal4551) : tree4552 = literal4552 := by
  rw [tree4552_def, child0, child1]
  rfl
theorem node4552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4550 live4550 coloured4550 = result4550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4551 live4551 coloured4551 = result4551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4552 live4552 coloured4552 = result4552 := by
  rw [tree4552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4550 coloured4550 at child
  try dsimp only [live4552, coloured4552]
  rw [child]
  dsimp only [result4550]
  have child := child1
  unfold live4551 coloured4551 at child
  try dsimp only [live4552, coloured4552]
  rw [child]
  dsimp only [result4551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4553_agree_conditional : tree4553 = literal4553 := by
  rw [tree4553_def]
  rfl
theorem node4553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4553 live4553 coloured4553 = result4553 := by
  rw [tree4553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4554_agree_conditional
    (child0 : tree4552 = literal4552)
    (child1 : tree4553 = literal4553) : tree4554 = literal4554 := by
  rw [tree4554_def, child0, child1]
  rfl
theorem node4554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4552 live4552 coloured4552 = result4552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4553 live4553 coloured4553 = result4553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4554 live4554 coloured4554 = result4554 := by
  rw [tree4554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4552 coloured4552 at child
  try dsimp only [live4554, coloured4554]
  rw [child]
  dsimp only [result4552]
  have child := child1
  unfold live4553 coloured4553 at child
  try dsimp only [live4554, coloured4554]
  rw [child]
  dsimp only [result4553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4555_agree_conditional : tree4555 = literal4555 := by
  rw [tree4555_def]
  rfl
theorem node4555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4555 live4555 coloured4555 = result4555 := by
  rw [tree4555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4556_agree_conditional
    (child0 : tree4554 = literal4554)
    (child1 : tree4555 = literal4555) : tree4556 = literal4556 := by
  rw [tree4556_def, child0, child1]
  rfl
theorem node4556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4554 live4554 coloured4554 = result4554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4555 live4555 coloured4555 = result4555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4556 live4556 coloured4556 = result4556 := by
  rw [tree4556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4554 coloured4554 at child
  try dsimp only [live4556, coloured4556]
  rw [child]
  dsimp only [result4554]
  have child := child1
  unfold live4555 coloured4555 at child
  try dsimp only [live4556, coloured4556]
  rw [child]
  dsimp only [result4555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4557_agree_conditional : tree4557 = literal4557 := by
  rw [tree4557_def]
  rfl
theorem node4557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4557 live4557 coloured4557 = result4557 := by
  rw [tree4557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4558_agree_conditional
    (child0 : tree4556 = literal4556)
    (child1 : tree4557 = literal4557) : tree4558 = literal4558 := by
  rw [tree4558_def, child0, child1]
  rfl
theorem node4558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4556 live4556 coloured4556 = result4556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4557 live4557 coloured4557 = result4557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4558 live4558 coloured4558 = result4558 := by
  rw [tree4558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4556 coloured4556 at child
  try dsimp only [live4558, coloured4558]
  rw [child]
  dsimp only [result4556]
  have child := child1
  unfold live4557 coloured4557 at child
  try dsimp only [live4558, coloured4558]
  rw [child]
  dsimp only [result4557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4559_agree_conditional : tree4559 = literal4559 := by
  rw [tree4559_def]
  rfl
theorem node4559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4559 live4559 coloured4559 = result4559 := by
  rw [tree4559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4560_agree_conditional
    (child0 : tree4558 = literal4558)
    (child1 : tree4559 = literal4559) : tree4560 = literal4560 := by
  rw [tree4560_def, child0, child1]
  rfl
theorem node4560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4558 live4558 coloured4558 = result4558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4559 live4559 coloured4559 = result4559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4560 live4560 coloured4560 = result4560 := by
  rw [tree4560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4558 coloured4558 at child
  try dsimp only [live4560, coloured4560]
  rw [child]
  dsimp only [result4558]
  have child := child1
  unfold live4559 coloured4559 at child
  try dsimp only [live4560, coloured4560]
  rw [child]
  dsimp only [result4559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4561_agree_conditional : tree4561 = literal4561 := by
  rw [tree4561_def]
  rfl
theorem node4561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4561 live4561 coloured4561 = result4561 := by
  rw [tree4561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4562_agree_conditional
    (child0 : tree4560 = literal4560)
    (child1 : tree4561 = literal4561) : tree4562 = literal4562 := by
  rw [tree4562_def, child0, child1]
  rfl
theorem node4562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4560 live4560 coloured4560 = result4560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4561 live4561 coloured4561 = result4561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4562 live4562 coloured4562 = result4562 := by
  rw [tree4562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4560 coloured4560 at child
  try dsimp only [live4562, coloured4562]
  rw [child]
  dsimp only [result4560]
  have child := child1
  unfold live4561 coloured4561 at child
  try dsimp only [live4562, coloured4562]
  rw [child]
  dsimp only [result4561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4563_agree_conditional : tree4563 = literal4563 := by
  rw [tree4563_def]
  rfl
theorem node4563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4563 live4563 coloured4563 = result4563 := by
  rw [tree4563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4564_agree_conditional
    (child0 : tree4562 = literal4562)
    (child1 : tree4563 = literal4563) : tree4564 = literal4564 := by
  rw [tree4564_def, child0, child1]
  rfl
theorem node4564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4562 live4562 coloured4562 = result4562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4563 live4563 coloured4563 = result4563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4564 live4564 coloured4564 = result4564 := by
  rw [tree4564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4562 coloured4562 at child
  try dsimp only [live4564, coloured4564]
  rw [child]
  dsimp only [result4562]
  have child := child1
  unfold live4563 coloured4563 at child
  try dsimp only [live4564, coloured4564]
  rw [child]
  dsimp only [result4563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4565_agree_conditional : tree4565 = literal4565 := by
  rw [tree4565_def]
  rfl
theorem node4565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4565 live4565 coloured4565 = result4565 := by
  rw [tree4565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4566_agree_conditional
    (child0 : tree4564 = literal4564)
    (child1 : tree4565 = literal4565) : tree4566 = literal4566 := by
  rw [tree4566_def, child0, child1]
  rfl
theorem node4566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4564 live4564 coloured4564 = result4564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4565 live4565 coloured4565 = result4565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4566 live4566 coloured4566 = result4566 := by
  rw [tree4566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4564 coloured4564 at child
  try dsimp only [live4566, coloured4566]
  rw [child]
  dsimp only [result4564]
  have child := child1
  unfold live4565 coloured4565 at child
  try dsimp only [live4566, coloured4566]
  rw [child]
  dsimp only [result4565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4567_agree_conditional : tree4567 = literal4567 := by
  rw [tree4567_def]
  rfl
theorem node4567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4567 live4567 coloured4567 = result4567 := by
  rw [tree4567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4568_agree_conditional
    (child0 : tree4566 = literal4566)
    (child1 : tree4567 = literal4567) : tree4568 = literal4568 := by
  rw [tree4568_def, child0, child1]
  rfl
theorem node4568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4566 live4566 coloured4566 = result4566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4567 live4567 coloured4567 = result4567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4568 live4568 coloured4568 = result4568 := by
  rw [tree4568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4566 coloured4566 at child
  try dsimp only [live4568, coloured4568]
  rw [child]
  dsimp only [result4566]
  have child := child1
  unfold live4567 coloured4567 at child
  try dsimp only [live4568, coloured4568]
  rw [child]
  dsimp only [result4567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4569_agree_conditional : tree4569 = literal4569 := by
  rw [tree4569_def]
  rfl
theorem node4569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4569 live4569 coloured4569 = result4569 := by
  rw [tree4569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4570_agree_conditional
    (child0 : tree4568 = literal4568)
    (child1 : tree4569 = literal4569) : tree4570 = literal4570 := by
  rw [tree4570_def, child0, child1]
  rfl
theorem node4570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4568 live4568 coloured4568 = result4568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4569 live4569 coloured4569 = result4569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4570 live4570 coloured4570 = result4570 := by
  rw [tree4570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4568 coloured4568 at child
  try dsimp only [live4570, coloured4570]
  rw [child]
  dsimp only [result4568]
  have child := child1
  unfold live4569 coloured4569 at child
  try dsimp only [live4570, coloured4570]
  rw [child]
  dsimp only [result4569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4571_agree_conditional : tree4571 = literal4571 := by
  rw [tree4571_def]
  rfl
theorem node4571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4571 live4571 coloured4571 = result4571 := by
  rw [tree4571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4572_agree_conditional
    (child0 : tree4570 = literal4570)
    (child1 : tree4571 = literal4571) : tree4572 = literal4572 := by
  rw [tree4572_def, child0, child1]
  rfl
theorem node4572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4570 live4570 coloured4570 = result4570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4571 live4571 coloured4571 = result4571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4572 live4572 coloured4572 = result4572 := by
  rw [tree4572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4570 coloured4570 at child
  try dsimp only [live4572, coloured4572]
  rw [child]
  dsimp only [result4570]
  have child := child1
  unfold live4571 coloured4571 at child
  try dsimp only [live4572, coloured4572]
  rw [child]
  dsimp only [result4571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4573_agree_conditional : tree4573 = literal4573 := by
  rw [tree4573_def]
  rfl
theorem node4573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4573 live4573 coloured4573 = result4573 := by
  rw [tree4573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4574_agree_conditional
    (child0 : tree4572 = literal4572)
    (child1 : tree4573 = literal4573) : tree4574 = literal4574 := by
  rw [tree4574_def, child0, child1]
  rfl
theorem node4574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4572 live4572 coloured4572 = result4572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4573 live4573 coloured4573 = result4573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4574 live4574 coloured4574 = result4574 := by
  rw [tree4574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4572 coloured4572 at child
  try dsimp only [live4574, coloured4574]
  rw [child]
  dsimp only [result4572]
  have child := child1
  unfold live4573 coloured4573 at child
  try dsimp only [live4574, coloured4574]
  rw [child]
  dsimp only [result4573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4575_agree_conditional : tree4575 = literal4575 := by
  rw [tree4575_def]
  rfl
theorem node4575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4575 live4575 coloured4575 = result4575 := by
  rw [tree4575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4576_agree_conditional
    (child0 : tree4574 = literal4574)
    (child1 : tree4575 = literal4575) : tree4576 = literal4576 := by
  rw [tree4576_def, child0, child1]
  rfl
theorem node4576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4574 live4574 coloured4574 = result4574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4575 live4575 coloured4575 = result4575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4576 live4576 coloured4576 = result4576 := by
  rw [tree4576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4574 coloured4574 at child
  try dsimp only [live4576, coloured4576]
  rw [child]
  dsimp only [result4574]
  have child := child1
  unfold live4575 coloured4575 at child
  try dsimp only [live4576, coloured4576]
  rw [child]
  dsimp only [result4575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4577_agree_conditional : tree4577 = literal4577 := by
  rw [tree4577_def]
  rfl
theorem node4577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4577 live4577 coloured4577 = result4577 := by
  rw [tree4577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4578_agree_conditional
    (child0 : tree4576 = literal4576)
    (child1 : tree4577 = literal4577) : tree4578 = literal4578 := by
  rw [tree4578_def, child0, child1]
  rfl
theorem node4578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4576 live4576 coloured4576 = result4576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4577 live4577 coloured4577 = result4577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4578 live4578 coloured4578 = result4578 := by
  rw [tree4578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4576 coloured4576 at child
  try dsimp only [live4578, coloured4578]
  rw [child]
  dsimp only [result4576]
  have child := child1
  unfold live4577 coloured4577 at child
  try dsimp only [live4578, coloured4578]
  rw [child]
  dsimp only [result4577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4579_agree_conditional : tree4579 = literal4579 := by
  rw [tree4579_def]
  rfl
theorem node4579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4579 live4579 coloured4579 = result4579 := by
  rw [tree4579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4580_agree_conditional
    (child0 : tree4578 = literal4578)
    (child1 : tree4579 = literal4579) : tree4580 = literal4580 := by
  rw [tree4580_def, child0, child1]
  rfl
theorem node4580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4578 live4578 coloured4578 = result4578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4579 live4579 coloured4579 = result4579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4580 live4580 coloured4580 = result4580 := by
  rw [tree4580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4578 coloured4578 at child
  try dsimp only [live4580, coloured4580]
  rw [child]
  dsimp only [result4578]
  have child := child1
  unfold live4579 coloured4579 at child
  try dsimp only [live4580, coloured4580]
  rw [child]
  dsimp only [result4579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4581_agree_conditional : tree4581 = literal4581 := by
  rw [tree4581_def]
  rfl
theorem node4581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4581 live4581 coloured4581 = result4581 := by
  rw [tree4581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4582_agree_conditional
    (child0 : tree4580 = literal4580)
    (child1 : tree4581 = literal4581) : tree4582 = literal4582 := by
  rw [tree4582_def, child0, child1]
  rfl
theorem node4582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4580 live4580 coloured4580 = result4580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4581 live4581 coloured4581 = result4581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4582 live4582 coloured4582 = result4582 := by
  rw [tree4582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4580 coloured4580 at child
  try dsimp only [live4582, coloured4582]
  rw [child]
  dsimp only [result4580]
  have child := child1
  unfold live4581 coloured4581 at child
  try dsimp only [live4582, coloured4582]
  rw [child]
  dsimp only [result4581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4583_agree_conditional : tree4583 = literal4583 := by
  rw [tree4583_def]
  rfl
theorem node4583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4583 live4583 coloured4583 = result4583 := by
  rw [tree4583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4584_agree_conditional
    (child0 : tree4582 = literal4582)
    (child1 : tree4583 = literal4583) : tree4584 = literal4584 := by
  rw [tree4584_def, child0, child1]
  rfl
theorem node4584_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4582 live4582 coloured4582 = result4582)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4583 live4583 coloured4583 = result4583) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4584 live4584 coloured4584 = result4584 := by
  rw [tree4584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4582 coloured4582 at child
  try dsimp only [live4584, coloured4584]
  rw [child]
  dsimp only [result4582]
  have child := child1
  unfold live4583 coloured4583 at child
  try dsimp only [live4584, coloured4584]
  rw [child]
  dsimp only [result4583]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4585_agree_conditional : tree4585 = literal4585 := by
  rw [tree4585_def]
  rfl
theorem node4585_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4585 live4585 coloured4585 = result4585 := by
  rw [tree4585_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4586_agree_conditional
    (child0 : tree4584 = literal4584)
    (child1 : tree4585 = literal4585) : tree4586 = literal4586 := by
  rw [tree4586_def, child0, child1]
  rfl
theorem node4586_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4584 live4584 coloured4584 = result4584)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4585 live4585 coloured4585 = result4585) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4586 live4586 coloured4586 = result4586 := by
  rw [tree4586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4584 coloured4584 at child
  try dsimp only [live4586, coloured4586]
  rw [child]
  dsimp only [result4584]
  have child := child1
  unfold live4585 coloured4585 at child
  try dsimp only [live4586, coloured4586]
  rw [child]
  dsimp only [result4585]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4587_agree_conditional : tree4587 = literal4587 := by
  rw [tree4587_def]
  rfl
theorem node4587_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4587 live4587 coloured4587 = result4587 := by
  rw [tree4587_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4588_agree_conditional
    (child0 : tree4586 = literal4586)
    (child1 : tree4587 = literal4587) : tree4588 = literal4588 := by
  rw [tree4588_def, child0, child1]
  rfl
theorem node4588_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4586 live4586 coloured4586 = result4586)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4587 live4587 coloured4587 = result4587) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4588 live4588 coloured4588 = result4588 := by
  rw [tree4588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4586 coloured4586 at child
  try dsimp only [live4588, coloured4588]
  rw [child]
  dsimp only [result4586]
  have child := child1
  unfold live4587 coloured4587 at child
  try dsimp only [live4588, coloured4588]
  rw [child]
  dsimp only [result4587]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4589_agree_conditional : tree4589 = literal4589 := by
  rw [tree4589_def]
  rfl
theorem node4589_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4589 live4589 coloured4589 = result4589 := by
  rw [tree4589_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4590_agree_conditional
    (child0 : tree4588 = literal4588)
    (child1 : tree4589 = literal4589) : tree4590 = literal4590 := by
  rw [tree4590_def, child0, child1]
  rfl
theorem node4590_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4588 live4588 coloured4588 = result4588)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4589 live4589 coloured4589 = result4589) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4590 live4590 coloured4590 = result4590 := by
  rw [tree4590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4588 coloured4588 at child
  try dsimp only [live4590, coloured4590]
  rw [child]
  dsimp only [result4588]
  have child := child1
  unfold live4589 coloured4589 at child
  try dsimp only [live4590, coloured4590]
  rw [child]
  dsimp only [result4589]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4591_agree_conditional : tree4591 = literal4591 := by
  rw [tree4591_def]
  rfl
theorem node4591_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4591 live4591 coloured4591 = result4591 := by
  rw [tree4591_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4592_agree_conditional
    (child0 : tree4590 = literal4590)
    (child1 : tree4591 = literal4591) : tree4592 = literal4592 := by
  rw [tree4592_def, child0, child1]
  rfl
theorem node4592_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4590 live4590 coloured4590 = result4590)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4591 live4591 coloured4591 = result4591) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4592 live4592 coloured4592 = result4592 := by
  rw [tree4592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4590 coloured4590 at child
  try dsimp only [live4592, coloured4592]
  rw [child]
  dsimp only [result4590]
  have child := child1
  unfold live4591 coloured4591 at child
  try dsimp only [live4592, coloured4592]
  rw [child]
  dsimp only [result4591]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4593_agree_conditional : tree4593 = literal4593 := by
  rw [tree4593_def]
  rfl
theorem node4593_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4593 live4593 coloured4593 = result4593 := by
  rw [tree4593_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4594_agree_conditional
    (child0 : tree4592 = literal4592)
    (child1 : tree4593 = literal4593) : tree4594 = literal4594 := by
  rw [tree4594_def, child0, child1]
  rfl
theorem node4594_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4592 live4592 coloured4592 = result4592)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4593 live4593 coloured4593 = result4593) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4594 live4594 coloured4594 = result4594 := by
  rw [tree4594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4592 coloured4592 at child
  try dsimp only [live4594, coloured4594]
  rw [child]
  dsimp only [result4592]
  have child := child1
  unfold live4593 coloured4593 at child
  try dsimp only [live4594, coloured4594]
  rw [child]
  dsimp only [result4593]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4595_agree_conditional : tree4595 = literal4595 := by
  rw [tree4595_def]
  rfl
theorem node4595_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4595 live4595 coloured4595 = result4595 := by
  rw [tree4595_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4596_agree_conditional
    (child0 : tree4594 = literal4594)
    (child1 : tree4595 = literal4595) : tree4596 = literal4596 := by
  rw [tree4596_def, child0, child1]
  rfl
theorem node4596_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4594 live4594 coloured4594 = result4594)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4595 live4595 coloured4595 = result4595) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4596 live4596 coloured4596 = result4596 := by
  rw [tree4596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4594 coloured4594 at child
  try dsimp only [live4596, coloured4596]
  rw [child]
  dsimp only [result4594]
  have child := child1
  unfold live4595 coloured4595 at child
  try dsimp only [live4596, coloured4596]
  rw [child]
  dsimp only [result4595]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4597_agree_conditional : tree4597 = literal4597 := by
  rw [tree4597_def]
  rfl
theorem node4597_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4597 live4597 coloured4597 = result4597 := by
  rw [tree4597_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4598_agree_conditional
    (child0 : tree4596 = literal4596)
    (child1 : tree4597 = literal4597) : tree4598 = literal4598 := by
  rw [tree4598_def, child0, child1]
  rfl
theorem node4598_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4596 live4596 coloured4596 = result4596)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4597 live4597 coloured4597 = result4597) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4598 live4598 coloured4598 = result4598 := by
  rw [tree4598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4596 coloured4596 at child
  try dsimp only [live4598, coloured4598]
  rw [child]
  dsimp only [result4596]
  have child := child1
  unfold live4597 coloured4597 at child
  try dsimp only [live4598, coloured4598]
  rw [child]
  dsimp only [result4597]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4599_agree_conditional : tree4599 = literal4599 := by
  rw [tree4599_def]
  rfl
theorem node4599_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4599 live4599 coloured4599 = result4599 := by
  rw [tree4599_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4600_agree_conditional
    (child0 : tree4598 = literal4598)
    (child1 : tree4599 = literal4599) : tree4600 = literal4600 := by
  rw [tree4600_def, child0, child1]
  rfl
theorem node4600_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4598 live4598 coloured4598 = result4598)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4599 live4599 coloured4599 = result4599) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4600 live4600 coloured4600 = result4600 := by
  rw [tree4600_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4598 coloured4598 at child
  try dsimp only [live4600, coloured4600]
  rw [child]
  dsimp only [result4598]
  have child := child1
  unfold live4599 coloured4599 at child
  try dsimp only [live4600, coloured4600]
  rw [child]
  dsimp only [result4599]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4601_agree_conditional : tree4601 = literal4601 := by
  rw [tree4601_def]
  rfl
theorem node4601_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4601 live4601 coloured4601 = result4601 := by
  rw [tree4601_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4602_agree_conditional
    (child0 : tree4600 = literal4600)
    (child1 : tree4601 = literal4601) : tree4602 = literal4602 := by
  rw [tree4602_def, child0, child1]
  rfl
theorem node4602_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4600 live4600 coloured4600 = result4600)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4601 live4601 coloured4601 = result4601) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4602 live4602 coloured4602 = result4602 := by
  rw [tree4602_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4600 coloured4600 at child
  try dsimp only [live4602, coloured4602]
  rw [child]
  dsimp only [result4600]
  have child := child1
  unfold live4601 coloured4601 at child
  try dsimp only [live4602, coloured4602]
  rw [child]
  dsimp only [result4601]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4603_agree_conditional : tree4603 = literal4603 := by
  rw [tree4603_def]
  rfl
theorem node4603_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4603 live4603 coloured4603 = result4603 := by
  rw [tree4603_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4604_agree_conditional
    (child0 : tree4602 = literal4602)
    (child1 : tree4603 = literal4603) : tree4604 = literal4604 := by
  rw [tree4604_def, child0, child1]
  rfl
theorem node4604_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4602 live4602 coloured4602 = result4602)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4603 live4603 coloured4603 = result4603) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4604 live4604 coloured4604 = result4604 := by
  rw [tree4604_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4602 coloured4602 at child
  try dsimp only [live4604, coloured4604]
  rw [child]
  dsimp only [result4602]
  have child := child1
  unfold live4603 coloured4603 at child
  try dsimp only [live4604, coloured4604]
  rw [child]
  dsimp only [result4603]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4605_agree_conditional : tree4605 = literal4605 := by
  rw [tree4605_def]
  rfl
theorem node4605_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4605 live4605 coloured4605 = result4605 := by
  rw [tree4605_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4606_agree_conditional
    (child0 : tree4604 = literal4604)
    (child1 : tree4605 = literal4605) : tree4606 = literal4606 := by
  rw [tree4606_def, child0, child1]
  rfl
theorem node4606_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4604 live4604 coloured4604 = result4604)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4605 live4605 coloured4605 = result4605) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4606 live4606 coloured4606 = result4606 := by
  rw [tree4606_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4604 coloured4604 at child
  try dsimp only [live4606, coloured4606]
  rw [child]
  dsimp only [result4604]
  have child := child1
  unfold live4605 coloured4605 at child
  try dsimp only [live4606, coloured4606]
  rw [child]
  dsimp only [result4605]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4607_agree_conditional : tree4607 = literal4607 := by
  rw [tree4607_def]
  rfl
theorem node4607_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4607 live4607 coloured4607 = result4607 := by
  rw [tree4607_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
