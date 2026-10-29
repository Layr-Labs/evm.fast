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
theorem tree7488_agree_conditional
    (child0 : tree7486 = literal7486)
    (child1 : tree7487 = literal7487) : tree7488 = literal7488 := by
  rw [tree7488_def, child0, child1]
  rfl
theorem node7488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7486 live7486 coloured7486 = result7486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7487 live7487 coloured7487 = result7487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7488 live7488 coloured7488 = result7488 := by
  rw [tree7488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7486 coloured7486 at child
  try dsimp only [live7488, coloured7488]
  rw [child]
  dsimp only [result7486]
  have child := child1
  unfold live7487 coloured7487 at child
  try dsimp only [live7488, coloured7488]
  rw [child]
  dsimp only [result7487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7489_agree_conditional : tree7489 = literal7489 := by
  rw [tree7489_def]
  rfl
theorem node7489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7489 live7489 coloured7489 = result7489 := by
  rw [tree7489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7490_agree_conditional
    (child0 : tree7488 = literal7488)
    (child1 : tree7489 = literal7489) : tree7490 = literal7490 := by
  rw [tree7490_def, child0, child1]
  rfl
theorem node7490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7488 live7488 coloured7488 = result7488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7489 live7489 coloured7489 = result7489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7490 live7490 coloured7490 = result7490 := by
  rw [tree7490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7488 coloured7488 at child
  try dsimp only [live7490, coloured7490]
  rw [child]
  dsimp only [result7488]
  have child := child1
  unfold live7489 coloured7489 at child
  try dsimp only [live7490, coloured7490]
  rw [child]
  dsimp only [result7489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7491_agree_conditional : tree7491 = literal7491 := by
  rw [tree7491_def]
  rfl
theorem node7491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7491 live7491 coloured7491 = result7491 := by
  rw [tree7491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7492_agree_conditional
    (child0 : tree7490 = literal7490)
    (child1 : tree7491 = literal7491) : tree7492 = literal7492 := by
  rw [tree7492_def, child0, child1]
  rfl
theorem node7492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7490 live7490 coloured7490 = result7490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7491 live7491 coloured7491 = result7491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7492 live7492 coloured7492 = result7492 := by
  rw [tree7492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7490 coloured7490 at child
  try dsimp only [live7492, coloured7492]
  rw [child]
  dsimp only [result7490]
  have child := child1
  unfold live7491 coloured7491 at child
  try dsimp only [live7492, coloured7492]
  rw [child]
  dsimp only [result7491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7493_agree_conditional : tree7493 = literal7493 := by
  rw [tree7493_def]
  rfl
theorem node7493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7493 live7493 coloured7493 = result7493 := by
  rw [tree7493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7494_agree_conditional
    (child0 : tree7492 = literal7492)
    (child1 : tree7493 = literal7493) : tree7494 = literal7494 := by
  rw [tree7494_def, child0, child1]
  rfl
theorem node7494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7492 live7492 coloured7492 = result7492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7493 live7493 coloured7493 = result7493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7494 live7494 coloured7494 = result7494 := by
  rw [tree7494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7492 coloured7492 at child
  try dsimp only [live7494, coloured7494]
  rw [child]
  dsimp only [result7492]
  have child := child1
  unfold live7493 coloured7493 at child
  try dsimp only [live7494, coloured7494]
  rw [child]
  dsimp only [result7493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7495_agree_conditional : tree7495 = literal7495 := by
  rw [tree7495_def]
  rfl
theorem node7495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7495 live7495 coloured7495 = result7495 := by
  rw [tree7495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7496_agree_conditional
    (child0 : tree7494 = literal7494)
    (child1 : tree7495 = literal7495) : tree7496 = literal7496 := by
  rw [tree7496_def, child0, child1]
  rfl
theorem node7496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7494 live7494 coloured7494 = result7494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7495 live7495 coloured7495 = result7495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7496 live7496 coloured7496 = result7496 := by
  rw [tree7496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7494 coloured7494 at child
  try dsimp only [live7496, coloured7496]
  rw [child]
  dsimp only [result7494]
  have child := child1
  unfold live7495 coloured7495 at child
  try dsimp only [live7496, coloured7496]
  rw [child]
  dsimp only [result7495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7497_agree_conditional : tree7497 = literal7497 := by
  rw [tree7497_def]
  rfl
theorem node7497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7497 live7497 coloured7497 = result7497 := by
  rw [tree7497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7498_agree_conditional
    (child0 : tree7496 = literal7496)
    (child1 : tree7497 = literal7497) : tree7498 = literal7498 := by
  rw [tree7498_def, child0, child1]
  rfl
theorem node7498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7496 live7496 coloured7496 = result7496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7497 live7497 coloured7497 = result7497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7498 live7498 coloured7498 = result7498 := by
  rw [tree7498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7496 coloured7496 at child
  try dsimp only [live7498, coloured7498]
  rw [child]
  dsimp only [result7496]
  have child := child1
  unfold live7497 coloured7497 at child
  try dsimp only [live7498, coloured7498]
  rw [child]
  dsimp only [result7497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7499_agree_conditional : tree7499 = literal7499 := by
  rw [tree7499_def]
  rfl
theorem node7499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7499 live7499 coloured7499 = result7499 := by
  rw [tree7499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7500_agree_conditional
    (child0 : tree7498 = literal7498)
    (child1 : tree7499 = literal7499) : tree7500 = literal7500 := by
  rw [tree7500_def, child0, child1]
  rfl
theorem node7500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7498 live7498 coloured7498 = result7498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7499 live7499 coloured7499 = result7499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7500 live7500 coloured7500 = result7500 := by
  rw [tree7500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7498 coloured7498 at child
  try dsimp only [live7500, coloured7500]
  rw [child]
  dsimp only [result7498]
  have child := child1
  unfold live7499 coloured7499 at child
  try dsimp only [live7500, coloured7500]
  rw [child]
  dsimp only [result7499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7501_agree_conditional : tree7501 = literal7501 := by
  rw [tree7501_def]
  rfl
theorem node7501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7501 live7501 coloured7501 = result7501 := by
  rw [tree7501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7502_agree_conditional
    (child0 : tree7500 = literal7500)
    (child1 : tree7501 = literal7501) : tree7502 = literal7502 := by
  rw [tree7502_def, child0, child1]
  rfl
theorem node7502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7500 live7500 coloured7500 = result7500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7501 live7501 coloured7501 = result7501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7502 live7502 coloured7502 = result7502 := by
  rw [tree7502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7500 coloured7500 at child
  try dsimp only [live7502, coloured7502]
  rw [child]
  dsimp only [result7500]
  have child := child1
  unfold live7501 coloured7501 at child
  try dsimp only [live7502, coloured7502]
  rw [child]
  dsimp only [result7501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7503_agree_conditional : tree7503 = literal7503 := by
  rw [tree7503_def]
  rfl
theorem node7503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7503 live7503 coloured7503 = result7503 := by
  rw [tree7503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7504_agree_conditional
    (child0 : tree7502 = literal7502)
    (child1 : tree7503 = literal7503) : tree7504 = literal7504 := by
  rw [tree7504_def, child0, child1]
  rfl
theorem node7504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7502 live7502 coloured7502 = result7502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7503 live7503 coloured7503 = result7503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7504 live7504 coloured7504 = result7504 := by
  rw [tree7504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7502 coloured7502 at child
  try dsimp only [live7504, coloured7504]
  rw [child]
  dsimp only [result7502]
  have child := child1
  unfold live7503 coloured7503 at child
  try dsimp only [live7504, coloured7504]
  rw [child]
  dsimp only [result7503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7505_agree_conditional : tree7505 = literal7505 := by
  rw [tree7505_def]
  rfl
theorem node7505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7505 live7505 coloured7505 = result7505 := by
  rw [tree7505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7506_agree_conditional
    (child0 : tree7504 = literal7504)
    (child1 : tree7505 = literal7505) : tree7506 = literal7506 := by
  rw [tree7506_def, child0, child1]
  rfl
theorem node7506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7504 live7504 coloured7504 = result7504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7505 live7505 coloured7505 = result7505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7506 live7506 coloured7506 = result7506 := by
  rw [tree7506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7504 coloured7504 at child
  try dsimp only [live7506, coloured7506]
  rw [child]
  dsimp only [result7504]
  have child := child1
  unfold live7505 coloured7505 at child
  try dsimp only [live7506, coloured7506]
  rw [child]
  dsimp only [result7505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7507_agree_conditional : tree7507 = literal7507 := by
  rw [tree7507_def]
  rfl
theorem node7507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7507 live7507 coloured7507 = result7507 := by
  rw [tree7507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7508_agree_conditional
    (child0 : tree7506 = literal7506)
    (child1 : tree7507 = literal7507) : tree7508 = literal7508 := by
  rw [tree7508_def, child0, child1]
  rfl
theorem node7508_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7506 live7506 coloured7506 = result7506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7507 live7507 coloured7507 = result7507) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7508 live7508 coloured7508 = result7508 := by
  rw [tree7508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7506 coloured7506 at child
  try dsimp only [live7508, coloured7508]
  rw [child]
  dsimp only [result7506]
  have child := child1
  unfold live7507 coloured7507 at child
  try dsimp only [live7508, coloured7508]
  rw [child]
  dsimp only [result7507]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7509_agree_conditional : tree7509 = literal7509 := by
  rw [tree7509_def]
  rfl
theorem node7509_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7509 live7509 coloured7509 = result7509 := by
  rw [tree7509_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7510_agree_conditional
    (child0 : tree7508 = literal7508)
    (child1 : tree7509 = literal7509) : tree7510 = literal7510 := by
  rw [tree7510_def, child0, child1]
  rfl
theorem node7510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7508 live7508 coloured7508 = result7508)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7509 live7509 coloured7509 = result7509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7510 live7510 coloured7510 = result7510 := by
  rw [tree7510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7508 coloured7508 at child
  try dsimp only [live7510, coloured7510]
  rw [child]
  dsimp only [result7508]
  have child := child1
  unfold live7509 coloured7509 at child
  try dsimp only [live7510, coloured7510]
  rw [child]
  dsimp only [result7509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7511_agree_conditional : tree7511 = literal7511 := by
  rw [tree7511_def]
  rfl
theorem node7511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7511 live7511 coloured7511 = result7511 := by
  rw [tree7511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7512_agree_conditional
    (child0 : tree7510 = literal7510)
    (child1 : tree7511 = literal7511) : tree7512 = literal7512 := by
  rw [tree7512_def, child0, child1]
  rfl
theorem node7512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7510 live7510 coloured7510 = result7510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7511 live7511 coloured7511 = result7511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7512 live7512 coloured7512 = result7512 := by
  rw [tree7512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7510 coloured7510 at child
  try dsimp only [live7512, coloured7512]
  rw [child]
  dsimp only [result7510]
  have child := child1
  unfold live7511 coloured7511 at child
  try dsimp only [live7512, coloured7512]
  rw [child]
  dsimp only [result7511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7513_agree_conditional : tree7513 = literal7513 := by
  rw [tree7513_def]
  rfl
theorem node7513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7513 live7513 coloured7513 = result7513 := by
  rw [tree7513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7514_agree_conditional
    (child0 : tree7512 = literal7512)
    (child1 : tree7513 = literal7513) : tree7514 = literal7514 := by
  rw [tree7514_def, child0, child1]
  rfl
theorem node7514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7512 live7512 coloured7512 = result7512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7513 live7513 coloured7513 = result7513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7514 live7514 coloured7514 = result7514 := by
  rw [tree7514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7512 coloured7512 at child
  try dsimp only [live7514, coloured7514]
  rw [child]
  dsimp only [result7512]
  have child := child1
  unfold live7513 coloured7513 at child
  try dsimp only [live7514, coloured7514]
  rw [child]
  dsimp only [result7513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7515_agree_conditional : tree7515 = literal7515 := by
  rw [tree7515_def]
  rfl
theorem node7515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7515 live7515 coloured7515 = result7515 := by
  rw [tree7515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7516_agree_conditional
    (child0 : tree7514 = literal7514)
    (child1 : tree7515 = literal7515) : tree7516 = literal7516 := by
  rw [tree7516_def, child0, child1]
  rfl
theorem node7516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7514 live7514 coloured7514 = result7514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7515 live7515 coloured7515 = result7515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7516 live7516 coloured7516 = result7516 := by
  rw [tree7516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7514 coloured7514 at child
  try dsimp only [live7516, coloured7516]
  rw [child]
  dsimp only [result7514]
  have child := child1
  unfold live7515 coloured7515 at child
  try dsimp only [live7516, coloured7516]
  rw [child]
  dsimp only [result7515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7517_agree_conditional : tree7517 = literal7517 := by
  rw [tree7517_def]
  rfl
theorem node7517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7517 live7517 coloured7517 = result7517 := by
  rw [tree7517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7518_agree_conditional
    (child0 : tree7516 = literal7516)
    (child1 : tree7517 = literal7517) : tree7518 = literal7518 := by
  rw [tree7518_def, child0, child1]
  rfl
theorem node7518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7516 live7516 coloured7516 = result7516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7517 live7517 coloured7517 = result7517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7518 live7518 coloured7518 = result7518 := by
  rw [tree7518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7516 coloured7516 at child
  try dsimp only [live7518, coloured7518]
  rw [child]
  dsimp only [result7516]
  have child := child1
  unfold live7517 coloured7517 at child
  try dsimp only [live7518, coloured7518]
  rw [child]
  dsimp only [result7517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7519_agree_conditional : tree7519 = literal7519 := by
  rw [tree7519_def]
  rfl
theorem node7519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7519 live7519 coloured7519 = result7519 := by
  rw [tree7519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7520_agree_conditional
    (child0 : tree7518 = literal7518)
    (child1 : tree7519 = literal7519) : tree7520 = literal7520 := by
  rw [tree7520_def, child0, child1]
  rfl
theorem node7520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7518 live7518 coloured7518 = result7518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7519 live7519 coloured7519 = result7519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7520 live7520 coloured7520 = result7520 := by
  rw [tree7520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7518 coloured7518 at child
  try dsimp only [live7520, coloured7520]
  rw [child]
  dsimp only [result7518]
  have child := child1
  unfold live7519 coloured7519 at child
  try dsimp only [live7520, coloured7520]
  rw [child]
  dsimp only [result7519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7521_agree_conditional : tree7521 = literal7521 := by
  rw [tree7521_def]
  rfl
theorem node7521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7521 live7521 coloured7521 = result7521 := by
  rw [tree7521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7522_agree_conditional
    (child0 : tree7520 = literal7520)
    (child1 : tree7521 = literal7521) : tree7522 = literal7522 := by
  rw [tree7522_def, child0, child1]
  rfl
theorem node7522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7520 live7520 coloured7520 = result7520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7521 live7521 coloured7521 = result7521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7522 live7522 coloured7522 = result7522 := by
  rw [tree7522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7520 coloured7520 at child
  try dsimp only [live7522, coloured7522]
  rw [child]
  dsimp only [result7520]
  have child := child1
  unfold live7521 coloured7521 at child
  try dsimp only [live7522, coloured7522]
  rw [child]
  dsimp only [result7521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7523_agree_conditional : tree7523 = literal7523 := by
  rw [tree7523_def]
  rfl
theorem node7523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7523 live7523 coloured7523 = result7523 := by
  rw [tree7523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7524_agree_conditional
    (child0 : tree7522 = literal7522)
    (child1 : tree7523 = literal7523) : tree7524 = literal7524 := by
  rw [tree7524_def, child0, child1]
  rfl
theorem node7524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7522 live7522 coloured7522 = result7522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7523 live7523 coloured7523 = result7523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7524 live7524 coloured7524 = result7524 := by
  rw [tree7524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7522 coloured7522 at child
  try dsimp only [live7524, coloured7524]
  rw [child]
  dsimp only [result7522]
  have child := child1
  unfold live7523 coloured7523 at child
  try dsimp only [live7524, coloured7524]
  rw [child]
  dsimp only [result7523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7525_agree_conditional : tree7525 = literal7525 := by
  rw [tree7525_def]
  rfl
theorem node7525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7525 live7525 coloured7525 = result7525 := by
  rw [tree7525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7526_agree_conditional
    (child0 : tree7524 = literal7524)
    (child1 : tree7525 = literal7525) : tree7526 = literal7526 := by
  rw [tree7526_def, child0, child1]
  rfl
theorem node7526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7524 live7524 coloured7524 = result7524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7525 live7525 coloured7525 = result7525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7526 live7526 coloured7526 = result7526 := by
  rw [tree7526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7524 coloured7524 at child
  try dsimp only [live7526, coloured7526]
  rw [child]
  dsimp only [result7524]
  have child := child1
  unfold live7525 coloured7525 at child
  try dsimp only [live7526, coloured7526]
  rw [child]
  dsimp only [result7525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7527_agree_conditional : tree7527 = literal7527 := by
  rw [tree7527_def]
  rfl
theorem node7527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7527 live7527 coloured7527 = result7527 := by
  rw [tree7527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7528_agree_conditional
    (child0 : tree7526 = literal7526)
    (child1 : tree7527 = literal7527) : tree7528 = literal7528 := by
  rw [tree7528_def, child0, child1]
  rfl
theorem node7528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7526 live7526 coloured7526 = result7526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7527 live7527 coloured7527 = result7527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7528 live7528 coloured7528 = result7528 := by
  rw [tree7528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7526 coloured7526 at child
  try dsimp only [live7528, coloured7528]
  rw [child]
  dsimp only [result7526]
  have child := child1
  unfold live7527 coloured7527 at child
  try dsimp only [live7528, coloured7528]
  rw [child]
  dsimp only [result7527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7529_agree_conditional : tree7529 = literal7529 := by
  rw [tree7529_def]
  rfl
theorem node7529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7529 live7529 coloured7529 = result7529 := by
  rw [tree7529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7530_agree_conditional
    (child0 : tree7528 = literal7528)
    (child1 : tree7529 = literal7529) : tree7530 = literal7530 := by
  rw [tree7530_def, child0, child1]
  rfl
theorem node7530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7528 live7528 coloured7528 = result7528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7529 live7529 coloured7529 = result7529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7530 live7530 coloured7530 = result7530 := by
  rw [tree7530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7528 coloured7528 at child
  try dsimp only [live7530, coloured7530]
  rw [child]
  dsimp only [result7528]
  have child := child1
  unfold live7529 coloured7529 at child
  try dsimp only [live7530, coloured7530]
  rw [child]
  dsimp only [result7529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7531_agree_conditional : tree7531 = literal7531 := by
  rw [tree7531_def]
  rfl
theorem node7531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7531 live7531 coloured7531 = result7531 := by
  rw [tree7531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7532_agree_conditional
    (child0 : tree7530 = literal7530)
    (child1 : tree7531 = literal7531) : tree7532 = literal7532 := by
  rw [tree7532_def, child0, child1]
  rfl
theorem node7532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7530 live7530 coloured7530 = result7530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7531 live7531 coloured7531 = result7531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7532 live7532 coloured7532 = result7532 := by
  rw [tree7532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7530 coloured7530 at child
  try dsimp only [live7532, coloured7532]
  rw [child]
  dsimp only [result7530]
  have child := child1
  unfold live7531 coloured7531 at child
  try dsimp only [live7532, coloured7532]
  rw [child]
  dsimp only [result7531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7533_agree_conditional : tree7533 = literal7533 := by
  rw [tree7533_def]
  rfl
theorem node7533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7533 live7533 coloured7533 = result7533 := by
  rw [tree7533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7534_agree_conditional
    (child0 : tree7532 = literal7532)
    (child1 : tree7533 = literal7533) : tree7534 = literal7534 := by
  rw [tree7534_def, child0, child1]
  rfl
theorem node7534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7532 live7532 coloured7532 = result7532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7533 live7533 coloured7533 = result7533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7534 live7534 coloured7534 = result7534 := by
  rw [tree7534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7532 coloured7532 at child
  try dsimp only [live7534, coloured7534]
  rw [child]
  dsimp only [result7532]
  have child := child1
  unfold live7533 coloured7533 at child
  try dsimp only [live7534, coloured7534]
  rw [child]
  dsimp only [result7533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7535_agree_conditional : tree7535 = literal7535 := by
  rw [tree7535_def]
  rfl
theorem node7535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7535 live7535 coloured7535 = result7535 := by
  rw [tree7535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7536_agree_conditional
    (child0 : tree7534 = literal7534)
    (child1 : tree7535 = literal7535) : tree7536 = literal7536 := by
  rw [tree7536_def, child0, child1]
  rfl
theorem node7536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7534 live7534 coloured7534 = result7534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7535 live7535 coloured7535 = result7535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7536 live7536 coloured7536 = result7536 := by
  rw [tree7536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7534 coloured7534 at child
  try dsimp only [live7536, coloured7536]
  rw [child]
  dsimp only [result7534]
  have child := child1
  unfold live7535 coloured7535 at child
  try dsimp only [live7536, coloured7536]
  rw [child]
  dsimp only [result7535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7537_agree_conditional : tree7537 = literal7537 := by
  rw [tree7537_def]
  rfl
theorem node7537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7537 live7537 coloured7537 = result7537 := by
  rw [tree7537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7538_agree_conditional
    (child0 : tree7536 = literal7536)
    (child1 : tree7537 = literal7537) : tree7538 = literal7538 := by
  rw [tree7538_def, child0, child1]
  rfl
theorem node7538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7536 live7536 coloured7536 = result7536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7537 live7537 coloured7537 = result7537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7538 live7538 coloured7538 = result7538 := by
  rw [tree7538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7536 coloured7536 at child
  try dsimp only [live7538, coloured7538]
  rw [child]
  dsimp only [result7536]
  have child := child1
  unfold live7537 coloured7537 at child
  try dsimp only [live7538, coloured7538]
  rw [child]
  dsimp only [result7537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7539_agree_conditional : tree7539 = literal7539 := by
  rw [tree7539_def]
  rfl
theorem node7539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7539 live7539 coloured7539 = result7539 := by
  rw [tree7539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7540_agree_conditional
    (child0 : tree7538 = literal7538)
    (child1 : tree7539 = literal7539) : tree7540 = literal7540 := by
  rw [tree7540_def, child0, child1]
  rfl
theorem node7540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7538 live7538 coloured7538 = result7538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7539 live7539 coloured7539 = result7539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7540 live7540 coloured7540 = result7540 := by
  rw [tree7540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7538 coloured7538 at child
  try dsimp only [live7540, coloured7540]
  rw [child]
  dsimp only [result7538]
  have child := child1
  unfold live7539 coloured7539 at child
  try dsimp only [live7540, coloured7540]
  rw [child]
  dsimp only [result7539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7541_agree_conditional : tree7541 = literal7541 := by
  rw [tree7541_def]
  rfl
theorem node7541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7541 live7541 coloured7541 = result7541 := by
  rw [tree7541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7542_agree_conditional
    (child0 : tree7540 = literal7540)
    (child1 : tree7541 = literal7541) : tree7542 = literal7542 := by
  rw [tree7542_def, child0, child1]
  rfl
theorem node7542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7540 live7540 coloured7540 = result7540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7541 live7541 coloured7541 = result7541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7542 live7542 coloured7542 = result7542 := by
  rw [tree7542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7540 coloured7540 at child
  try dsimp only [live7542, coloured7542]
  rw [child]
  dsimp only [result7540]
  have child := child1
  unfold live7541 coloured7541 at child
  try dsimp only [live7542, coloured7542]
  rw [child]
  dsimp only [result7541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7543_agree_conditional : tree7543 = literal7543 := by
  rw [tree7543_def]
  rfl
theorem node7543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7543 live7543 coloured7543 = result7543 := by
  rw [tree7543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7544_agree_conditional
    (child0 : tree7542 = literal7542)
    (child1 : tree7543 = literal7543) : tree7544 = literal7544 := by
  rw [tree7544_def, child0, child1]
  rfl
theorem node7544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7542 live7542 coloured7542 = result7542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7543 live7543 coloured7543 = result7543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7544 live7544 coloured7544 = result7544 := by
  rw [tree7544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7542 coloured7542 at child
  try dsimp only [live7544, coloured7544]
  rw [child]
  dsimp only [result7542]
  have child := child1
  unfold live7543 coloured7543 at child
  try dsimp only [live7544, coloured7544]
  rw [child]
  dsimp only [result7543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7545_agree_conditional : tree7545 = literal7545 := by
  rw [tree7545_def]
  rfl
theorem node7545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7545 live7545 coloured7545 = result7545 := by
  rw [tree7545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7546_agree_conditional
    (child0 : tree7544 = literal7544)
    (child1 : tree7545 = literal7545) : tree7546 = literal7546 := by
  rw [tree7546_def, child0, child1]
  rfl
theorem node7546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7544 live7544 coloured7544 = result7544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7545 live7545 coloured7545 = result7545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7546 live7546 coloured7546 = result7546 := by
  rw [tree7546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7544 coloured7544 at child
  try dsimp only [live7546, coloured7546]
  rw [child]
  dsimp only [result7544]
  have child := child1
  unfold live7545 coloured7545 at child
  try dsimp only [live7546, coloured7546]
  rw [child]
  dsimp only [result7545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7547_agree_conditional : tree7547 = literal7547 := by
  rw [tree7547_def]
  rfl
theorem node7547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7547 live7547 coloured7547 = result7547 := by
  rw [tree7547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7548_agree_conditional
    (child0 : tree7546 = literal7546)
    (child1 : tree7547 = literal7547) : tree7548 = literal7548 := by
  rw [tree7548_def, child0, child1]
  rfl
theorem node7548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7546 live7546 coloured7546 = result7546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7547 live7547 coloured7547 = result7547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7548 live7548 coloured7548 = result7548 := by
  rw [tree7548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7546 coloured7546 at child
  try dsimp only [live7548, coloured7548]
  rw [child]
  dsimp only [result7546]
  have child := child1
  unfold live7547 coloured7547 at child
  try dsimp only [live7548, coloured7548]
  rw [child]
  dsimp only [result7547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7549_agree_conditional : tree7549 = literal7549 := by
  rw [tree7549_def]
  rfl
theorem node7549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7549 live7549 coloured7549 = result7549 := by
  rw [tree7549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7550_agree_conditional
    (child0 : tree7548 = literal7548)
    (child1 : tree7549 = literal7549) : tree7550 = literal7550 := by
  rw [tree7550_def, child0, child1]
  rfl
theorem node7550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7548 live7548 coloured7548 = result7548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7549 live7549 coloured7549 = result7549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7550 live7550 coloured7550 = result7550 := by
  rw [tree7550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7548 coloured7548 at child
  try dsimp only [live7550, coloured7550]
  rw [child]
  dsimp only [result7548]
  have child := child1
  unfold live7549 coloured7549 at child
  try dsimp only [live7550, coloured7550]
  rw [child]
  dsimp only [result7549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7551_agree_conditional : tree7551 = literal7551 := by
  rw [tree7551_def]
  rfl
theorem node7551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7551 live7551 coloured7551 = result7551 := by
  rw [tree7551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7552_agree_conditional
    (child0 : tree7550 = literal7550)
    (child1 : tree7551 = literal7551) : tree7552 = literal7552 := by
  rw [tree7552_def, child0, child1]
  rfl
theorem node7552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7550 live7550 coloured7550 = result7550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7551 live7551 coloured7551 = result7551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7552 live7552 coloured7552 = result7552 := by
  rw [tree7552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7550 coloured7550 at child
  try dsimp only [live7552, coloured7552]
  rw [child]
  dsimp only [result7550]
  have child := child1
  unfold live7551 coloured7551 at child
  try dsimp only [live7552, coloured7552]
  rw [child]
  dsimp only [result7551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7553_agree_conditional : tree7553 = literal7553 := by
  rw [tree7553_def]
  rfl
theorem node7553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7553 live7553 coloured7553 = result7553 := by
  rw [tree7553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7554_agree_conditional
    (child0 : tree7552 = literal7552)
    (child1 : tree7553 = literal7553) : tree7554 = literal7554 := by
  rw [tree7554_def, child0, child1]
  rfl
theorem node7554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7552 live7552 coloured7552 = result7552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7553 live7553 coloured7553 = result7553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7554 live7554 coloured7554 = result7554 := by
  rw [tree7554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7552 coloured7552 at child
  try dsimp only [live7554, coloured7554]
  rw [child]
  dsimp only [result7552]
  have child := child1
  unfold live7553 coloured7553 at child
  try dsimp only [live7554, coloured7554]
  rw [child]
  dsimp only [result7553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7555_agree_conditional : tree7555 = literal7555 := by
  rw [tree7555_def]
  rfl
theorem node7555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7555 live7555 coloured7555 = result7555 := by
  rw [tree7555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7556_agree_conditional
    (child0 : tree7554 = literal7554)
    (child1 : tree7555 = literal7555) : tree7556 = literal7556 := by
  rw [tree7556_def, child0, child1]
  rfl
theorem node7556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7554 live7554 coloured7554 = result7554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7555 live7555 coloured7555 = result7555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7556 live7556 coloured7556 = result7556 := by
  rw [tree7556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7554 coloured7554 at child
  try dsimp only [live7556, coloured7556]
  rw [child]
  dsimp only [result7554]
  have child := child1
  unfold live7555 coloured7555 at child
  try dsimp only [live7556, coloured7556]
  rw [child]
  dsimp only [result7555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7557_agree_conditional : tree7557 = literal7557 := by
  rw [tree7557_def]
  rfl
theorem node7557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7557 live7557 coloured7557 = result7557 := by
  rw [tree7557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7558_agree_conditional
    (child0 : tree7556 = literal7556)
    (child1 : tree7557 = literal7557) : tree7558 = literal7558 := by
  rw [tree7558_def, child0, child1]
  rfl
theorem node7558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7556 live7556 coloured7556 = result7556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7557 live7557 coloured7557 = result7557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7558 live7558 coloured7558 = result7558 := by
  rw [tree7558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7556 coloured7556 at child
  try dsimp only [live7558, coloured7558]
  rw [child]
  dsimp only [result7556]
  have child := child1
  unfold live7557 coloured7557 at child
  try dsimp only [live7558, coloured7558]
  rw [child]
  dsimp only [result7557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7559_agree_conditional : tree7559 = literal7559 := by
  rw [tree7559_def]
  rfl
theorem node7559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7559 live7559 coloured7559 = result7559 := by
  rw [tree7559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7560_agree_conditional
    (child0 : tree7558 = literal7558)
    (child1 : tree7559 = literal7559) : tree7560 = literal7560 := by
  rw [tree7560_def, child0, child1]
  rfl
theorem node7560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7558 live7558 coloured7558 = result7558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7559 live7559 coloured7559 = result7559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7560 live7560 coloured7560 = result7560 := by
  rw [tree7560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7558 coloured7558 at child
  try dsimp only [live7560, coloured7560]
  rw [child]
  dsimp only [result7558]
  have child := child1
  unfold live7559 coloured7559 at child
  try dsimp only [live7560, coloured7560]
  rw [child]
  dsimp only [result7559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7561_agree_conditional : tree7561 = literal7561 := by
  rw [tree7561_def]
  rfl
theorem node7561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7561 live7561 coloured7561 = result7561 := by
  rw [tree7561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7562_agree_conditional
    (child0 : tree7560 = literal7560)
    (child1 : tree7561 = literal7561) : tree7562 = literal7562 := by
  rw [tree7562_def, child0, child1]
  rfl
theorem node7562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7560 live7560 coloured7560 = result7560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7561 live7561 coloured7561 = result7561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7562 live7562 coloured7562 = result7562 := by
  rw [tree7562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7560 coloured7560 at child
  try dsimp only [live7562, coloured7562]
  rw [child]
  dsimp only [result7560]
  have child := child1
  unfold live7561 coloured7561 at child
  try dsimp only [live7562, coloured7562]
  rw [child]
  dsimp only [result7561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7563_agree_conditional : tree7563 = literal7563 := by
  rw [tree7563_def]
  rfl
theorem node7563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7563 live7563 coloured7563 = result7563 := by
  rw [tree7563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7564_agree_conditional
    (child0 : tree7562 = literal7562)
    (child1 : tree7563 = literal7563) : tree7564 = literal7564 := by
  rw [tree7564_def, child0, child1]
  rfl
theorem node7564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7562 live7562 coloured7562 = result7562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7563 live7563 coloured7563 = result7563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7564 live7564 coloured7564 = result7564 := by
  rw [tree7564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7562 coloured7562 at child
  try dsimp only [live7564, coloured7564]
  rw [child]
  dsimp only [result7562]
  have child := child1
  unfold live7563 coloured7563 at child
  try dsimp only [live7564, coloured7564]
  rw [child]
  dsimp only [result7563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7565_agree_conditional : tree7565 = literal7565 := by
  rw [tree7565_def]
  rfl
theorem node7565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7565 live7565 coloured7565 = result7565 := by
  rw [tree7565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7566_agree_conditional
    (child0 : tree7564 = literal7564)
    (child1 : tree7565 = literal7565) : tree7566 = literal7566 := by
  rw [tree7566_def, child0, child1]
  rfl
theorem node7566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7564 live7564 coloured7564 = result7564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7565 live7565 coloured7565 = result7565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7566 live7566 coloured7566 = result7566 := by
  rw [tree7566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7564 coloured7564 at child
  try dsimp only [live7566, coloured7566]
  rw [child]
  dsimp only [result7564]
  have child := child1
  unfold live7565 coloured7565 at child
  try dsimp only [live7566, coloured7566]
  rw [child]
  dsimp only [result7565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7567_agree_conditional : tree7567 = literal7567 := by
  rw [tree7567_def]
  rfl
theorem node7567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7567 live7567 coloured7567 = result7567 := by
  rw [tree7567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7568_agree_conditional
    (child0 : tree7566 = literal7566)
    (child1 : tree7567 = literal7567) : tree7568 = literal7568 := by
  rw [tree7568_def, child0, child1]
  rfl
theorem node7568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7566 live7566 coloured7566 = result7566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7567 live7567 coloured7567 = result7567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7568 live7568 coloured7568 = result7568 := by
  rw [tree7568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7566 coloured7566 at child
  try dsimp only [live7568, coloured7568]
  rw [child]
  dsimp only [result7566]
  have child := child1
  unfold live7567 coloured7567 at child
  try dsimp only [live7568, coloured7568]
  rw [child]
  dsimp only [result7567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7569_agree_conditional : tree7569 = literal7569 := by
  rw [tree7569_def]
  rfl
theorem node7569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7569 live7569 coloured7569 = result7569 := by
  rw [tree7569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7570_agree_conditional
    (child0 : tree7568 = literal7568)
    (child1 : tree7569 = literal7569) : tree7570 = literal7570 := by
  rw [tree7570_def, child0, child1]
  rfl
theorem node7570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7568 live7568 coloured7568 = result7568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7569 live7569 coloured7569 = result7569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7570 live7570 coloured7570 = result7570 := by
  rw [tree7570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7568 coloured7568 at child
  try dsimp only [live7570, coloured7570]
  rw [child]
  dsimp only [result7568]
  have child := child1
  unfold live7569 coloured7569 at child
  try dsimp only [live7570, coloured7570]
  rw [child]
  dsimp only [result7569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7571_agree_conditional : tree7571 = literal7571 := by
  rw [tree7571_def]
  rfl
theorem node7571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7571 live7571 coloured7571 = result7571 := by
  rw [tree7571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7572_agree_conditional
    (child0 : tree7570 = literal7570)
    (child1 : tree7571 = literal7571) : tree7572 = literal7572 := by
  rw [tree7572_def, child0, child1]
  rfl
theorem node7572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7570 live7570 coloured7570 = result7570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7571 live7571 coloured7571 = result7571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7572 live7572 coloured7572 = result7572 := by
  rw [tree7572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7570 coloured7570 at child
  try dsimp only [live7572, coloured7572]
  rw [child]
  dsimp only [result7570]
  have child := child1
  unfold live7571 coloured7571 at child
  try dsimp only [live7572, coloured7572]
  rw [child]
  dsimp only [result7571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7573_agree_conditional : tree7573 = literal7573 := by
  rw [tree7573_def]
  rfl
theorem node7573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7573 live7573 coloured7573 = result7573 := by
  rw [tree7573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7574_agree_conditional
    (child0 : tree7572 = literal7572)
    (child1 : tree7573 = literal7573) : tree7574 = literal7574 := by
  rw [tree7574_def, child0, child1]
  rfl
theorem node7574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7572 live7572 coloured7572 = result7572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7573 live7573 coloured7573 = result7573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7574 live7574 coloured7574 = result7574 := by
  rw [tree7574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7572 coloured7572 at child
  try dsimp only [live7574, coloured7574]
  rw [child]
  dsimp only [result7572]
  have child := child1
  unfold live7573 coloured7573 at child
  try dsimp only [live7574, coloured7574]
  rw [child]
  dsimp only [result7573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7575_agree_conditional : tree7575 = literal7575 := by
  rw [tree7575_def]
  rfl
theorem node7575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7575 live7575 coloured7575 = result7575 := by
  rw [tree7575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7576_agree_conditional
    (child0 : tree7574 = literal7574)
    (child1 : tree7575 = literal7575) : tree7576 = literal7576 := by
  rw [tree7576_def, child0, child1]
  rfl
theorem node7576_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7574 live7574 coloured7574 = result7574)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7575 live7575 coloured7575 = result7575) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7576 live7576 coloured7576 = result7576 := by
  rw [tree7576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7574 coloured7574 at child
  try dsimp only [live7576, coloured7576]
  rw [child]
  dsimp only [result7574]
  have child := child1
  unfold live7575 coloured7575 at child
  try dsimp only [live7576, coloured7576]
  rw [child]
  dsimp only [result7575]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7577_agree_conditional : tree7577 = literal7577 := by
  rw [tree7577_def]
  rfl
theorem node7577_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7577 live7577 coloured7577 = result7577 := by
  rw [tree7577_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7578_agree_conditional
    (child0 : tree7576 = literal7576)
    (child1 : tree7577 = literal7577) : tree7578 = literal7578 := by
  rw [tree7578_def, child0, child1]
  rfl
theorem node7578_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7576 live7576 coloured7576 = result7576)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7577 live7577 coloured7577 = result7577) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7578 live7578 coloured7578 = result7578 := by
  rw [tree7578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7576 coloured7576 at child
  try dsimp only [live7578, coloured7578]
  rw [child]
  dsimp only [result7576]
  have child := child1
  unfold live7577 coloured7577 at child
  try dsimp only [live7578, coloured7578]
  rw [child]
  dsimp only [result7577]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7579_agree_conditional : tree7579 = literal7579 := by
  rw [tree7579_def]
  rfl
theorem node7579_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7579 live7579 coloured7579 = result7579 := by
  rw [tree7579_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7580_agree_conditional
    (child0 : tree7578 = literal7578)
    (child1 : tree7579 = literal7579) : tree7580 = literal7580 := by
  rw [tree7580_def, child0, child1]
  rfl
theorem node7580_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7578 live7578 coloured7578 = result7578)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7579 live7579 coloured7579 = result7579) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7580 live7580 coloured7580 = result7580 := by
  rw [tree7580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7578 coloured7578 at child
  try dsimp only [live7580, coloured7580]
  rw [child]
  dsimp only [result7578]
  have child := child1
  unfold live7579 coloured7579 at child
  try dsimp only [live7580, coloured7580]
  rw [child]
  dsimp only [result7579]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7581_agree_conditional : tree7581 = literal7581 := by
  rw [tree7581_def]
  rfl
theorem node7581_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7581 live7581 coloured7581 = result7581 := by
  rw [tree7581_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7582_agree_conditional
    (child0 : tree7580 = literal7580)
    (child1 : tree7581 = literal7581) : tree7582 = literal7582 := by
  rw [tree7582_def, child0, child1]
  rfl
theorem node7582_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7580 live7580 coloured7580 = result7580)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7581 live7581 coloured7581 = result7581) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7582 live7582 coloured7582 = result7582 := by
  rw [tree7582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7580 coloured7580 at child
  try dsimp only [live7582, coloured7582]
  rw [child]
  dsimp only [result7580]
  have child := child1
  unfold live7581 coloured7581 at child
  try dsimp only [live7582, coloured7582]
  rw [child]
  dsimp only [result7581]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7583_agree_conditional : tree7583 = literal7583 := by
  rw [tree7583_def]
  rfl
theorem node7583_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7583 live7583 coloured7583 = result7583 := by
  rw [tree7583_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
