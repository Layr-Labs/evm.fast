import InitECandidate.Proofs.ClashStages713.Proof77
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree7488_agree : tree7488 = literal7488 := by
  rw [tree7488_def, tree7486_agree, tree7487_agree]
  rfl
theorem node7488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7488 live7488 coloured7488 = result7488 := by
  rw [tree7488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7486_eq
  unfold live7486 coloured7486 at child
  try dsimp only [live7488, coloured7488]
  rw [child]
  dsimp only [result7486]
  have child := node7487_eq
  unfold live7487 coloured7487 at child
  try dsimp only [live7488, coloured7488]
  rw [child]
  dsimp only [result7487]
  try dsimp only [colour, result7488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7489_agree : tree7489 = literal7489 := by
  rw [tree7489_def]
  rfl
theorem node7489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7489 live7489 coloured7489 = result7489 := by
  rw [tree7489_def]
  try dsimp only [colour, result7489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7490_agree : tree7490 = literal7490 := by
  rw [tree7490_def, tree7488_agree, tree7489_agree]
  rfl
theorem node7490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7490 live7490 coloured7490 = result7490 := by
  rw [tree7490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7488_eq
  unfold live7488 coloured7488 at child
  try dsimp only [live7490, coloured7490]
  rw [child]
  dsimp only [result7488]
  have child := node7489_eq
  unfold live7489 coloured7489 at child
  try dsimp only [live7490, coloured7490]
  rw [child]
  dsimp only [result7489]
  try dsimp only [colour, result7490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7491_agree : tree7491 = literal7491 := by
  rw [tree7491_def]
  rfl
theorem node7491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7491 live7491 coloured7491 = result7491 := by
  rw [tree7491_def]
  try dsimp only [colour, result7491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7492_agree : tree7492 = literal7492 := by
  rw [tree7492_def, tree7490_agree, tree7491_agree]
  rfl
theorem node7492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7492 live7492 coloured7492 = result7492 := by
  rw [tree7492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7490_eq
  unfold live7490 coloured7490 at child
  try dsimp only [live7492, coloured7492]
  rw [child]
  dsimp only [result7490]
  have child := node7491_eq
  unfold live7491 coloured7491 at child
  try dsimp only [live7492, coloured7492]
  rw [child]
  dsimp only [result7491]
  try dsimp only [colour, result7492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7493_agree : tree7493 = literal7493 := by
  rw [tree7493_def]
  rfl
theorem node7493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7493 live7493 coloured7493 = result7493 := by
  rw [tree7493_def]
  try dsimp only [colour, result7493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7494_agree : tree7494 = literal7494 := by
  rw [tree7494_def, tree7492_agree, tree7493_agree]
  rfl
theorem node7494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7494 live7494 coloured7494 = result7494 := by
  rw [tree7494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7492_eq
  unfold live7492 coloured7492 at child
  try dsimp only [live7494, coloured7494]
  rw [child]
  dsimp only [result7492]
  have child := node7493_eq
  unfold live7493 coloured7493 at child
  try dsimp only [live7494, coloured7494]
  rw [child]
  dsimp only [result7493]
  try dsimp only [colour, result7494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7495_agree : tree7495 = literal7495 := by
  rw [tree7495_def]
  rfl
theorem node7495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7495 live7495 coloured7495 = result7495 := by
  rw [tree7495_def]
  try dsimp only [colour, result7495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7496_agree : tree7496 = literal7496 := by
  rw [tree7496_def, tree7494_agree, tree7495_agree]
  rfl
theorem node7496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7496 live7496 coloured7496 = result7496 := by
  rw [tree7496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7494_eq
  unfold live7494 coloured7494 at child
  try dsimp only [live7496, coloured7496]
  rw [child]
  dsimp only [result7494]
  have child := node7495_eq
  unfold live7495 coloured7495 at child
  try dsimp only [live7496, coloured7496]
  rw [child]
  dsimp only [result7495]
  try dsimp only [colour, result7496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7497_agree : tree7497 = literal7497 := by
  rw [tree7497_def]
  rfl
theorem node7497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7497 live7497 coloured7497 = result7497 := by
  rw [tree7497_def]
  try dsimp only [colour, result7497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7498_agree : tree7498 = literal7498 := by
  rw [tree7498_def, tree7496_agree, tree7497_agree]
  rfl
theorem node7498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7498 live7498 coloured7498 = result7498 := by
  rw [tree7498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7496_eq
  unfold live7496 coloured7496 at child
  try dsimp only [live7498, coloured7498]
  rw [child]
  dsimp only [result7496]
  have child := node7497_eq
  unfold live7497 coloured7497 at child
  try dsimp only [live7498, coloured7498]
  rw [child]
  dsimp only [result7497]
  try dsimp only [colour, result7498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7499_agree : tree7499 = literal7499 := by
  rw [tree7499_def]
  rfl
theorem node7499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7499 live7499 coloured7499 = result7499 := by
  rw [tree7499_def]
  try dsimp only [colour, result7499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7500_agree : tree7500 = literal7500 := by
  rw [tree7500_def, tree7498_agree, tree7499_agree]
  rfl
theorem node7500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7500 live7500 coloured7500 = result7500 := by
  rw [tree7500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7498_eq
  unfold live7498 coloured7498 at child
  try dsimp only [live7500, coloured7500]
  rw [child]
  dsimp only [result7498]
  have child := node7499_eq
  unfold live7499 coloured7499 at child
  try dsimp only [live7500, coloured7500]
  rw [child]
  dsimp only [result7499]
  try dsimp only [colour, result7500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7501_agree : tree7501 = literal7501 := by
  rw [tree7501_def]
  rfl
theorem node7501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7501 live7501 coloured7501 = result7501 := by
  rw [tree7501_def]
  try dsimp only [colour, result7501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7502_agree : tree7502 = literal7502 := by
  rw [tree7502_def, tree7500_agree, tree7501_agree]
  rfl
theorem node7502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7502 live7502 coloured7502 = result7502 := by
  rw [tree7502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7500_eq
  unfold live7500 coloured7500 at child
  try dsimp only [live7502, coloured7502]
  rw [child]
  dsimp only [result7500]
  have child := node7501_eq
  unfold live7501 coloured7501 at child
  try dsimp only [live7502, coloured7502]
  rw [child]
  dsimp only [result7501]
  try dsimp only [colour, result7502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7503_agree : tree7503 = literal7503 := by
  rw [tree7503_def]
  rfl
theorem node7503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7503 live7503 coloured7503 = result7503 := by
  rw [tree7503_def]
  try dsimp only [colour, result7503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7504_agree : tree7504 = literal7504 := by
  rw [tree7504_def, tree7502_agree, tree7503_agree]
  rfl
theorem node7504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7504 live7504 coloured7504 = result7504 := by
  rw [tree7504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7502_eq
  unfold live7502 coloured7502 at child
  try dsimp only [live7504, coloured7504]
  rw [child]
  dsimp only [result7502]
  have child := node7503_eq
  unfold live7503 coloured7503 at child
  try dsimp only [live7504, coloured7504]
  rw [child]
  dsimp only [result7503]
  try dsimp only [colour, result7504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7505_agree : tree7505 = literal7505 := by
  rw [tree7505_def]
  rfl
theorem node7505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7505 live7505 coloured7505 = result7505 := by
  rw [tree7505_def]
  try dsimp only [colour, result7505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7506_agree : tree7506 = literal7506 := by
  rw [tree7506_def, tree7504_agree, tree7505_agree]
  rfl
theorem node7506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7506 live7506 coloured7506 = result7506 := by
  rw [tree7506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7504_eq
  unfold live7504 coloured7504 at child
  try dsimp only [live7506, coloured7506]
  rw [child]
  dsimp only [result7504]
  have child := node7505_eq
  unfold live7505 coloured7505 at child
  try dsimp only [live7506, coloured7506]
  rw [child]
  dsimp only [result7505]
  try dsimp only [colour, result7506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7507_agree : tree7507 = literal7507 := by
  rw [tree7507_def]
  rfl
theorem node7507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7507 live7507 coloured7507 = result7507 := by
  rw [tree7507_def]
  try dsimp only [colour, result7507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7508_agree : tree7508 = literal7508 := by
  rw [tree7508_def, tree7506_agree, tree7507_agree]
  rfl
theorem node7508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7508 live7508 coloured7508 = result7508 := by
  rw [tree7508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7506_eq
  unfold live7506 coloured7506 at child
  try dsimp only [live7508, coloured7508]
  rw [child]
  dsimp only [result7506]
  have child := node7507_eq
  unfold live7507 coloured7507 at child
  try dsimp only [live7508, coloured7508]
  rw [child]
  dsimp only [result7507]
  try dsimp only [colour, result7508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7509_agree : tree7509 = literal7509 := by
  rw [tree7509_def]
  rfl
theorem node7509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7509 live7509 coloured7509 = result7509 := by
  rw [tree7509_def]
  try dsimp only [colour, result7509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7510_agree : tree7510 = literal7510 := by
  rw [tree7510_def, tree7508_agree, tree7509_agree]
  rfl
theorem node7510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7510 live7510 coloured7510 = result7510 := by
  rw [tree7510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7508_eq
  unfold live7508 coloured7508 at child
  try dsimp only [live7510, coloured7510]
  rw [child]
  dsimp only [result7508]
  have child := node7509_eq
  unfold live7509 coloured7509 at child
  try dsimp only [live7510, coloured7510]
  rw [child]
  dsimp only [result7509]
  try dsimp only [colour, result7510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7511_agree : tree7511 = literal7511 := by
  rw [tree7511_def]
  rfl
theorem node7511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7511 live7511 coloured7511 = result7511 := by
  rw [tree7511_def]
  try dsimp only [colour, result7511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7512_agree : tree7512 = literal7512 := by
  rw [tree7512_def, tree7510_agree, tree7511_agree]
  rfl
theorem node7512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7512 live7512 coloured7512 = result7512 := by
  rw [tree7512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7510_eq
  unfold live7510 coloured7510 at child
  try dsimp only [live7512, coloured7512]
  rw [child]
  dsimp only [result7510]
  have child := node7511_eq
  unfold live7511 coloured7511 at child
  try dsimp only [live7512, coloured7512]
  rw [child]
  dsimp only [result7511]
  try dsimp only [colour, result7512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7513_agree : tree7513 = literal7513 := by
  rw [tree7513_def]
  rfl
theorem node7513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7513 live7513 coloured7513 = result7513 := by
  rw [tree7513_def]
  try dsimp only [colour, result7513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7514_agree : tree7514 = literal7514 := by
  rw [tree7514_def, tree7512_agree, tree7513_agree]
  rfl
theorem node7514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7514 live7514 coloured7514 = result7514 := by
  rw [tree7514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7512_eq
  unfold live7512 coloured7512 at child
  try dsimp only [live7514, coloured7514]
  rw [child]
  dsimp only [result7512]
  have child := node7513_eq
  unfold live7513 coloured7513 at child
  try dsimp only [live7514, coloured7514]
  rw [child]
  dsimp only [result7513]
  try dsimp only [colour, result7514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7515_agree : tree7515 = literal7515 := by
  rw [tree7515_def]
  rfl
theorem node7515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7515 live7515 coloured7515 = result7515 := by
  rw [tree7515_def]
  try dsimp only [colour, result7515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7516_agree : tree7516 = literal7516 := by
  rw [tree7516_def, tree7514_agree, tree7515_agree]
  rfl
theorem node7516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7516 live7516 coloured7516 = result7516 := by
  rw [tree7516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7514_eq
  unfold live7514 coloured7514 at child
  try dsimp only [live7516, coloured7516]
  rw [child]
  dsimp only [result7514]
  have child := node7515_eq
  unfold live7515 coloured7515 at child
  try dsimp only [live7516, coloured7516]
  rw [child]
  dsimp only [result7515]
  try dsimp only [colour, result7516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7517_agree : tree7517 = literal7517 := by
  rw [tree7517_def]
  rfl
theorem node7517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7517 live7517 coloured7517 = result7517 := by
  rw [tree7517_def]
  try dsimp only [colour, result7517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7518_agree : tree7518 = literal7518 := by
  rw [tree7518_def, tree7516_agree, tree7517_agree]
  rfl
theorem node7518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7518 live7518 coloured7518 = result7518 := by
  rw [tree7518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7516_eq
  unfold live7516 coloured7516 at child
  try dsimp only [live7518, coloured7518]
  rw [child]
  dsimp only [result7516]
  have child := node7517_eq
  unfold live7517 coloured7517 at child
  try dsimp only [live7518, coloured7518]
  rw [child]
  dsimp only [result7517]
  try dsimp only [colour, result7518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7519_agree : tree7519 = literal7519 := by
  rw [tree7519_def]
  rfl
theorem node7519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7519 live7519 coloured7519 = result7519 := by
  rw [tree7519_def]
  try dsimp only [colour, result7519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7520_agree : tree7520 = literal7520 := by
  rw [tree7520_def, tree7518_agree, tree7519_agree]
  rfl
theorem node7520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7520 live7520 coloured7520 = result7520 := by
  rw [tree7520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7518_eq
  unfold live7518 coloured7518 at child
  try dsimp only [live7520, coloured7520]
  rw [child]
  dsimp only [result7518]
  have child := node7519_eq
  unfold live7519 coloured7519 at child
  try dsimp only [live7520, coloured7520]
  rw [child]
  dsimp only [result7519]
  try dsimp only [colour, result7520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7521_agree : tree7521 = literal7521 := by
  rw [tree7521_def]
  rfl
theorem node7521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7521 live7521 coloured7521 = result7521 := by
  rw [tree7521_def]
  try dsimp only [colour, result7521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7522_agree : tree7522 = literal7522 := by
  rw [tree7522_def, tree7520_agree, tree7521_agree]
  rfl
theorem node7522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7522 live7522 coloured7522 = result7522 := by
  rw [tree7522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7520_eq
  unfold live7520 coloured7520 at child
  try dsimp only [live7522, coloured7522]
  rw [child]
  dsimp only [result7520]
  have child := node7521_eq
  unfold live7521 coloured7521 at child
  try dsimp only [live7522, coloured7522]
  rw [child]
  dsimp only [result7521]
  try dsimp only [colour, result7522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7523_agree : tree7523 = literal7523 := by
  rw [tree7523_def]
  rfl
theorem node7523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7523 live7523 coloured7523 = result7523 := by
  rw [tree7523_def]
  try dsimp only [colour, result7523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7524_agree : tree7524 = literal7524 := by
  rw [tree7524_def, tree7522_agree, tree7523_agree]
  rfl
theorem node7524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7524 live7524 coloured7524 = result7524 := by
  rw [tree7524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7522_eq
  unfold live7522 coloured7522 at child
  try dsimp only [live7524, coloured7524]
  rw [child]
  dsimp only [result7522]
  have child := node7523_eq
  unfold live7523 coloured7523 at child
  try dsimp only [live7524, coloured7524]
  rw [child]
  dsimp only [result7523]
  try dsimp only [colour, result7524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7525_agree : tree7525 = literal7525 := by
  rw [tree7525_def]
  rfl
theorem node7525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7525 live7525 coloured7525 = result7525 := by
  rw [tree7525_def]
  try dsimp only [colour, result7525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7526_agree : tree7526 = literal7526 := by
  rw [tree7526_def, tree7524_agree, tree7525_agree]
  rfl
theorem node7526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7526 live7526 coloured7526 = result7526 := by
  rw [tree7526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7524_eq
  unfold live7524 coloured7524 at child
  try dsimp only [live7526, coloured7526]
  rw [child]
  dsimp only [result7524]
  have child := node7525_eq
  unfold live7525 coloured7525 at child
  try dsimp only [live7526, coloured7526]
  rw [child]
  dsimp only [result7525]
  try dsimp only [colour, result7526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7527_agree : tree7527 = literal7527 := by
  rw [tree7527_def]
  rfl
theorem node7527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7527 live7527 coloured7527 = result7527 := by
  rw [tree7527_def]
  try dsimp only [colour, result7527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7528_agree : tree7528 = literal7528 := by
  rw [tree7528_def, tree7526_agree, tree7527_agree]
  rfl
theorem node7528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7528 live7528 coloured7528 = result7528 := by
  rw [tree7528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7526_eq
  unfold live7526 coloured7526 at child
  try dsimp only [live7528, coloured7528]
  rw [child]
  dsimp only [result7526]
  have child := node7527_eq
  unfold live7527 coloured7527 at child
  try dsimp only [live7528, coloured7528]
  rw [child]
  dsimp only [result7527]
  try dsimp only [colour, result7528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7529_agree : tree7529 = literal7529 := by
  rw [tree7529_def]
  rfl
theorem node7529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7529 live7529 coloured7529 = result7529 := by
  rw [tree7529_def]
  try dsimp only [colour, result7529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7530_agree : tree7530 = literal7530 := by
  rw [tree7530_def, tree7528_agree, tree7529_agree]
  rfl
theorem node7530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7530 live7530 coloured7530 = result7530 := by
  rw [tree7530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7528_eq
  unfold live7528 coloured7528 at child
  try dsimp only [live7530, coloured7530]
  rw [child]
  dsimp only [result7528]
  have child := node7529_eq
  unfold live7529 coloured7529 at child
  try dsimp only [live7530, coloured7530]
  rw [child]
  dsimp only [result7529]
  try dsimp only [colour, result7530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7531_agree : tree7531 = literal7531 := by
  rw [tree7531_def]
  rfl
theorem node7531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7531 live7531 coloured7531 = result7531 := by
  rw [tree7531_def]
  try dsimp only [colour, result7531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7532_agree : tree7532 = literal7532 := by
  rw [tree7532_def, tree7530_agree, tree7531_agree]
  rfl
theorem node7532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7532 live7532 coloured7532 = result7532 := by
  rw [tree7532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7530_eq
  unfold live7530 coloured7530 at child
  try dsimp only [live7532, coloured7532]
  rw [child]
  dsimp only [result7530]
  have child := node7531_eq
  unfold live7531 coloured7531 at child
  try dsimp only [live7532, coloured7532]
  rw [child]
  dsimp only [result7531]
  try dsimp only [colour, result7532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7533_agree : tree7533 = literal7533 := by
  rw [tree7533_def]
  rfl
theorem node7533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7533 live7533 coloured7533 = result7533 := by
  rw [tree7533_def]
  try dsimp only [colour, result7533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7534_agree : tree7534 = literal7534 := by
  rw [tree7534_def, tree7532_agree, tree7533_agree]
  rfl
theorem node7534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7534 live7534 coloured7534 = result7534 := by
  rw [tree7534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7532_eq
  unfold live7532 coloured7532 at child
  try dsimp only [live7534, coloured7534]
  rw [child]
  dsimp only [result7532]
  have child := node7533_eq
  unfold live7533 coloured7533 at child
  try dsimp only [live7534, coloured7534]
  rw [child]
  dsimp only [result7533]
  try dsimp only [colour, result7534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7535_agree : tree7535 = literal7535 := by
  rw [tree7535_def]
  rfl
theorem node7535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7535 live7535 coloured7535 = result7535 := by
  rw [tree7535_def]
  try dsimp only [colour, result7535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7536_agree : tree7536 = literal7536 := by
  rw [tree7536_def, tree7534_agree, tree7535_agree]
  rfl
theorem node7536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7536 live7536 coloured7536 = result7536 := by
  rw [tree7536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7534_eq
  unfold live7534 coloured7534 at child
  try dsimp only [live7536, coloured7536]
  rw [child]
  dsimp only [result7534]
  have child := node7535_eq
  unfold live7535 coloured7535 at child
  try dsimp only [live7536, coloured7536]
  rw [child]
  dsimp only [result7535]
  try dsimp only [colour, result7536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7537_agree : tree7537 = literal7537 := by
  rw [tree7537_def]
  rfl
theorem node7537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7537 live7537 coloured7537 = result7537 := by
  rw [tree7537_def]
  try dsimp only [colour, result7537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7538_agree : tree7538 = literal7538 := by
  rw [tree7538_def, tree7536_agree, tree7537_agree]
  rfl
theorem node7538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7538 live7538 coloured7538 = result7538 := by
  rw [tree7538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7536_eq
  unfold live7536 coloured7536 at child
  try dsimp only [live7538, coloured7538]
  rw [child]
  dsimp only [result7536]
  have child := node7537_eq
  unfold live7537 coloured7537 at child
  try dsimp only [live7538, coloured7538]
  rw [child]
  dsimp only [result7537]
  try dsimp only [colour, result7538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7539_agree : tree7539 = literal7539 := by
  rw [tree7539_def]
  rfl
theorem node7539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7539 live7539 coloured7539 = result7539 := by
  rw [tree7539_def]
  try dsimp only [colour, result7539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7540_agree : tree7540 = literal7540 := by
  rw [tree7540_def, tree7538_agree, tree7539_agree]
  rfl
theorem node7540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7540 live7540 coloured7540 = result7540 := by
  rw [tree7540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7538_eq
  unfold live7538 coloured7538 at child
  try dsimp only [live7540, coloured7540]
  rw [child]
  dsimp only [result7538]
  have child := node7539_eq
  unfold live7539 coloured7539 at child
  try dsimp only [live7540, coloured7540]
  rw [child]
  dsimp only [result7539]
  try dsimp only [colour, result7540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7541_agree : tree7541 = literal7541 := by
  rw [tree7541_def]
  rfl
theorem node7541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7541 live7541 coloured7541 = result7541 := by
  rw [tree7541_def]
  try dsimp only [colour, result7541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7542_agree : tree7542 = literal7542 := by
  rw [tree7542_def, tree7540_agree, tree7541_agree]
  rfl
theorem node7542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7542 live7542 coloured7542 = result7542 := by
  rw [tree7542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7540_eq
  unfold live7540 coloured7540 at child
  try dsimp only [live7542, coloured7542]
  rw [child]
  dsimp only [result7540]
  have child := node7541_eq
  unfold live7541 coloured7541 at child
  try dsimp only [live7542, coloured7542]
  rw [child]
  dsimp only [result7541]
  try dsimp only [colour, result7542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7543_agree : tree7543 = literal7543 := by
  rw [tree7543_def]
  rfl
theorem node7543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7543 live7543 coloured7543 = result7543 := by
  rw [tree7543_def]
  try dsimp only [colour, result7543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7544_agree : tree7544 = literal7544 := by
  rw [tree7544_def, tree7542_agree, tree7543_agree]
  rfl
theorem node7544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7544 live7544 coloured7544 = result7544 := by
  rw [tree7544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7542_eq
  unfold live7542 coloured7542 at child
  try dsimp only [live7544, coloured7544]
  rw [child]
  dsimp only [result7542]
  have child := node7543_eq
  unfold live7543 coloured7543 at child
  try dsimp only [live7544, coloured7544]
  rw [child]
  dsimp only [result7543]
  try dsimp only [colour, result7544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7545_agree : tree7545 = literal7545 := by
  rw [tree7545_def]
  rfl
theorem node7545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7545 live7545 coloured7545 = result7545 := by
  rw [tree7545_def]
  try dsimp only [colour, result7545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7546_agree : tree7546 = literal7546 := by
  rw [tree7546_def, tree7544_agree, tree7545_agree]
  rfl
theorem node7546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7546 live7546 coloured7546 = result7546 := by
  rw [tree7546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7544_eq
  unfold live7544 coloured7544 at child
  try dsimp only [live7546, coloured7546]
  rw [child]
  dsimp only [result7544]
  have child := node7545_eq
  unfold live7545 coloured7545 at child
  try dsimp only [live7546, coloured7546]
  rw [child]
  dsimp only [result7545]
  try dsimp only [colour, result7546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7547_agree : tree7547 = literal7547 := by
  rw [tree7547_def]
  rfl
theorem node7547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7547 live7547 coloured7547 = result7547 := by
  rw [tree7547_def]
  try dsimp only [colour, result7547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7548_agree : tree7548 = literal7548 := by
  rw [tree7548_def, tree7546_agree, tree7547_agree]
  rfl
theorem node7548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7548 live7548 coloured7548 = result7548 := by
  rw [tree7548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7546_eq
  unfold live7546 coloured7546 at child
  try dsimp only [live7548, coloured7548]
  rw [child]
  dsimp only [result7546]
  have child := node7547_eq
  unfold live7547 coloured7547 at child
  try dsimp only [live7548, coloured7548]
  rw [child]
  dsimp only [result7547]
  try dsimp only [colour, result7548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7549_agree : tree7549 = literal7549 := by
  rw [tree7549_def]
  rfl
theorem node7549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7549 live7549 coloured7549 = result7549 := by
  rw [tree7549_def]
  try dsimp only [colour, result7549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7550_agree : tree7550 = literal7550 := by
  rw [tree7550_def, tree7548_agree, tree7549_agree]
  rfl
theorem node7550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7550 live7550 coloured7550 = result7550 := by
  rw [tree7550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7548_eq
  unfold live7548 coloured7548 at child
  try dsimp only [live7550, coloured7550]
  rw [child]
  dsimp only [result7548]
  have child := node7549_eq
  unfold live7549 coloured7549 at child
  try dsimp only [live7550, coloured7550]
  rw [child]
  dsimp only [result7549]
  try dsimp only [colour, result7550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7551_agree : tree7551 = literal7551 := by
  rw [tree7551_def]
  rfl
theorem node7551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7551 live7551 coloured7551 = result7551 := by
  rw [tree7551_def]
  try dsimp only [colour, result7551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7552_agree : tree7552 = literal7552 := by
  rw [tree7552_def, tree7550_agree, tree7551_agree]
  rfl
theorem node7552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7552 live7552 coloured7552 = result7552 := by
  rw [tree7552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7550_eq
  unfold live7550 coloured7550 at child
  try dsimp only [live7552, coloured7552]
  rw [child]
  dsimp only [result7550]
  have child := node7551_eq
  unfold live7551 coloured7551 at child
  try dsimp only [live7552, coloured7552]
  rw [child]
  dsimp only [result7551]
  try dsimp only [colour, result7552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7553_agree : tree7553 = literal7553 := by
  rw [tree7553_def]
  rfl
theorem node7553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7553 live7553 coloured7553 = result7553 := by
  rw [tree7553_def]
  try dsimp only [colour, result7553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7554_agree : tree7554 = literal7554 := by
  rw [tree7554_def, tree7552_agree, tree7553_agree]
  rfl
theorem node7554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7554 live7554 coloured7554 = result7554 := by
  rw [tree7554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7552_eq
  unfold live7552 coloured7552 at child
  try dsimp only [live7554, coloured7554]
  rw [child]
  dsimp only [result7552]
  have child := node7553_eq
  unfold live7553 coloured7553 at child
  try dsimp only [live7554, coloured7554]
  rw [child]
  dsimp only [result7553]
  try dsimp only [colour, result7554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7555_agree : tree7555 = literal7555 := by
  rw [tree7555_def]
  rfl
theorem node7555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7555 live7555 coloured7555 = result7555 := by
  rw [tree7555_def]
  try dsimp only [colour, result7555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7556_agree : tree7556 = literal7556 := by
  rw [tree7556_def, tree7554_agree, tree7555_agree]
  rfl
theorem node7556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7556 live7556 coloured7556 = result7556 := by
  rw [tree7556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7554_eq
  unfold live7554 coloured7554 at child
  try dsimp only [live7556, coloured7556]
  rw [child]
  dsimp only [result7554]
  have child := node7555_eq
  unfold live7555 coloured7555 at child
  try dsimp only [live7556, coloured7556]
  rw [child]
  dsimp only [result7555]
  try dsimp only [colour, result7556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7557_agree : tree7557 = literal7557 := by
  rw [tree7557_def]
  rfl
theorem node7557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7557 live7557 coloured7557 = result7557 := by
  rw [tree7557_def]
  try dsimp only [colour, result7557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7558_agree : tree7558 = literal7558 := by
  rw [tree7558_def, tree7556_agree, tree7557_agree]
  rfl
theorem node7558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7558 live7558 coloured7558 = result7558 := by
  rw [tree7558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7556_eq
  unfold live7556 coloured7556 at child
  try dsimp only [live7558, coloured7558]
  rw [child]
  dsimp only [result7556]
  have child := node7557_eq
  unfold live7557 coloured7557 at child
  try dsimp only [live7558, coloured7558]
  rw [child]
  dsimp only [result7557]
  try dsimp only [colour, result7558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7559_agree : tree7559 = literal7559 := by
  rw [tree7559_def]
  rfl
theorem node7559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7559 live7559 coloured7559 = result7559 := by
  rw [tree7559_def]
  try dsimp only [colour, result7559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7560_agree : tree7560 = literal7560 := by
  rw [tree7560_def, tree7558_agree, tree7559_agree]
  rfl
theorem node7560_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7560 live7560 coloured7560 = result7560 := by
  rw [tree7560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7558_eq
  unfold live7558 coloured7558 at child
  try dsimp only [live7560, coloured7560]
  rw [child]
  dsimp only [result7558]
  have child := node7559_eq
  unfold live7559 coloured7559 at child
  try dsimp only [live7560, coloured7560]
  rw [child]
  dsimp only [result7559]
  try dsimp only [colour, result7560]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7561_agree : tree7561 = literal7561 := by
  rw [tree7561_def]
  rfl
theorem node7561_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7561 live7561 coloured7561 = result7561 := by
  rw [tree7561_def]
  try dsimp only [colour, result7561]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7562_agree : tree7562 = literal7562 := by
  rw [tree7562_def, tree7560_agree, tree7561_agree]
  rfl
theorem node7562_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7562 live7562 coloured7562 = result7562 := by
  rw [tree7562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7560_eq
  unfold live7560 coloured7560 at child
  try dsimp only [live7562, coloured7562]
  rw [child]
  dsimp only [result7560]
  have child := node7561_eq
  unfold live7561 coloured7561 at child
  try dsimp only [live7562, coloured7562]
  rw [child]
  dsimp only [result7561]
  try dsimp only [colour, result7562]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7563_agree : tree7563 = literal7563 := by
  rw [tree7563_def]
  rfl
theorem node7563_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7563 live7563 coloured7563 = result7563 := by
  rw [tree7563_def]
  try dsimp only [colour, result7563]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7564_agree : tree7564 = literal7564 := by
  rw [tree7564_def, tree7562_agree, tree7563_agree]
  rfl
theorem node7564_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7564 live7564 coloured7564 = result7564 := by
  rw [tree7564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7562_eq
  unfold live7562 coloured7562 at child
  try dsimp only [live7564, coloured7564]
  rw [child]
  dsimp only [result7562]
  have child := node7563_eq
  unfold live7563 coloured7563 at child
  try dsimp only [live7564, coloured7564]
  rw [child]
  dsimp only [result7563]
  try dsimp only [colour, result7564]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7565_agree : tree7565 = literal7565 := by
  rw [tree7565_def]
  rfl
theorem node7565_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7565 live7565 coloured7565 = result7565 := by
  rw [tree7565_def]
  try dsimp only [colour, result7565]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7566_agree : tree7566 = literal7566 := by
  rw [tree7566_def, tree7564_agree, tree7565_agree]
  rfl
theorem node7566_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7566 live7566 coloured7566 = result7566 := by
  rw [tree7566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7564_eq
  unfold live7564 coloured7564 at child
  try dsimp only [live7566, coloured7566]
  rw [child]
  dsimp only [result7564]
  have child := node7565_eq
  unfold live7565 coloured7565 at child
  try dsimp only [live7566, coloured7566]
  rw [child]
  dsimp only [result7565]
  try dsimp only [colour, result7566]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7567_agree : tree7567 = literal7567 := by
  rw [tree7567_def]
  rfl
theorem node7567_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7567 live7567 coloured7567 = result7567 := by
  rw [tree7567_def]
  try dsimp only [colour, result7567]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7568_agree : tree7568 = literal7568 := by
  rw [tree7568_def, tree7566_agree, tree7567_agree]
  rfl
theorem node7568_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7568 live7568 coloured7568 = result7568 := by
  rw [tree7568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7566_eq
  unfold live7566 coloured7566 at child
  try dsimp only [live7568, coloured7568]
  rw [child]
  dsimp only [result7566]
  have child := node7567_eq
  unfold live7567 coloured7567 at child
  try dsimp only [live7568, coloured7568]
  rw [child]
  dsimp only [result7567]
  try dsimp only [colour, result7568]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7569_agree : tree7569 = literal7569 := by
  rw [tree7569_def]
  rfl
theorem node7569_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7569 live7569 coloured7569 = result7569 := by
  rw [tree7569_def]
  try dsimp only [colour, result7569]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7570_agree : tree7570 = literal7570 := by
  rw [tree7570_def, tree7568_agree, tree7569_agree]
  rfl
theorem node7570_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7570 live7570 coloured7570 = result7570 := by
  rw [tree7570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7568_eq
  unfold live7568 coloured7568 at child
  try dsimp only [live7570, coloured7570]
  rw [child]
  dsimp only [result7568]
  have child := node7569_eq
  unfold live7569 coloured7569 at child
  try dsimp only [live7570, coloured7570]
  rw [child]
  dsimp only [result7569]
  try dsimp only [colour, result7570]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7571_agree : tree7571 = literal7571 := by
  rw [tree7571_def]
  rfl
theorem node7571_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7571 live7571 coloured7571 = result7571 := by
  rw [tree7571_def]
  try dsimp only [colour, result7571]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7572_agree : tree7572 = literal7572 := by
  rw [tree7572_def, tree7570_agree, tree7571_agree]
  rfl
theorem node7572_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7572 live7572 coloured7572 = result7572 := by
  rw [tree7572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7570_eq
  unfold live7570 coloured7570 at child
  try dsimp only [live7572, coloured7572]
  rw [child]
  dsimp only [result7570]
  have child := node7571_eq
  unfold live7571 coloured7571 at child
  try dsimp only [live7572, coloured7572]
  rw [child]
  dsimp only [result7571]
  try dsimp only [colour, result7572]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7573_agree : tree7573 = literal7573 := by
  rw [tree7573_def]
  rfl
theorem node7573_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7573 live7573 coloured7573 = result7573 := by
  rw [tree7573_def]
  try dsimp only [colour, result7573]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7574_agree : tree7574 = literal7574 := by
  rw [tree7574_def, tree7572_agree, tree7573_agree]
  rfl
theorem node7574_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7574 live7574 coloured7574 = result7574 := by
  rw [tree7574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7572_eq
  unfold live7572 coloured7572 at child
  try dsimp only [live7574, coloured7574]
  rw [child]
  dsimp only [result7572]
  have child := node7573_eq
  unfold live7573 coloured7573 at child
  try dsimp only [live7574, coloured7574]
  rw [child]
  dsimp only [result7573]
  try dsimp only [colour, result7574]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7575_agree : tree7575 = literal7575 := by
  rw [tree7575_def]
  rfl
theorem node7575_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7575 live7575 coloured7575 = result7575 := by
  rw [tree7575_def]
  try dsimp only [colour, result7575]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7576_agree : tree7576 = literal7576 := by
  rw [tree7576_def, tree7574_agree, tree7575_agree]
  rfl
theorem node7576_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7576 live7576 coloured7576 = result7576 := by
  rw [tree7576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7574_eq
  unfold live7574 coloured7574 at child
  try dsimp only [live7576, coloured7576]
  rw [child]
  dsimp only [result7574]
  have child := node7575_eq
  unfold live7575 coloured7575 at child
  try dsimp only [live7576, coloured7576]
  rw [child]
  dsimp only [result7575]
  try dsimp only [colour, result7576]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7577_agree : tree7577 = literal7577 := by
  rw [tree7577_def]
  rfl
theorem node7577_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7577 live7577 coloured7577 = result7577 := by
  rw [tree7577_def]
  try dsimp only [colour, result7577]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7578_agree : tree7578 = literal7578 := by
  rw [tree7578_def, tree7576_agree, tree7577_agree]
  rfl
theorem node7578_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7578 live7578 coloured7578 = result7578 := by
  rw [tree7578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7576_eq
  unfold live7576 coloured7576 at child
  try dsimp only [live7578, coloured7578]
  rw [child]
  dsimp only [result7576]
  have child := node7577_eq
  unfold live7577 coloured7577 at child
  try dsimp only [live7578, coloured7578]
  rw [child]
  dsimp only [result7577]
  try dsimp only [colour, result7578]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7579_agree : tree7579 = literal7579 := by
  rw [tree7579_def]
  rfl
theorem node7579_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7579 live7579 coloured7579 = result7579 := by
  rw [tree7579_def]
  try dsimp only [colour, result7579]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7580_agree : tree7580 = literal7580 := by
  rw [tree7580_def, tree7578_agree, tree7579_agree]
  rfl
theorem node7580_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7580 live7580 coloured7580 = result7580 := by
  rw [tree7580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7578_eq
  unfold live7578 coloured7578 at child
  try dsimp only [live7580, coloured7580]
  rw [child]
  dsimp only [result7578]
  have child := node7579_eq
  unfold live7579 coloured7579 at child
  try dsimp only [live7580, coloured7580]
  rw [child]
  dsimp only [result7579]
  try dsimp only [colour, result7580]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7581_agree : tree7581 = literal7581 := by
  rw [tree7581_def]
  rfl
theorem node7581_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7581 live7581 coloured7581 = result7581 := by
  rw [tree7581_def]
  try dsimp only [colour, result7581]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7582_agree : tree7582 = literal7582 := by
  rw [tree7582_def, tree7580_agree, tree7581_agree]
  rfl
theorem node7582_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7582 live7582 coloured7582 = result7582 := by
  rw [tree7582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7580_eq
  unfold live7580 coloured7580 at child
  try dsimp only [live7582, coloured7582]
  rw [child]
  dsimp only [result7580]
  have child := node7581_eq
  unfold live7581 coloured7581 at child
  try dsimp only [live7582, coloured7582]
  rw [child]
  dsimp only [result7581]
  try dsimp only [colour, result7582]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7583_agree : tree7583 = literal7583 := by
  rw [tree7583_def]
  rfl
theorem node7583_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7583 live7583 coloured7583 = result7583 := by
  rw [tree7583_def]
  try dsimp only [colour, result7583]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
