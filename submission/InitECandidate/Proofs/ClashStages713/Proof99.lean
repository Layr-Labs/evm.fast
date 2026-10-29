import InitECandidate.Proofs.ClashStages713.Proof98
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9504_agree : tree9504 = literal9504 := by
  rw [tree9504_def, tree9502_agree, tree9503_agree]
  rfl
theorem node9504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9504 live9504 coloured9504 = result9504 := by
  rw [tree9504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9502_eq
  unfold live9502 coloured9502 at child
  try dsimp only [live9504, coloured9504]
  rw [child]
  dsimp only [result9502]
  have child := node9503_eq
  unfold live9503 coloured9503 at child
  try dsimp only [live9504, coloured9504]
  rw [child]
  dsimp only [result9503]
  try dsimp only [colour, result9504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9505_agree : tree9505 = literal9505 := by
  rw [tree9505_def]
  rfl
theorem node9505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9505 live9505 coloured9505 = result9505 := by
  rw [tree9505_def]
  try dsimp only [colour, result9505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9506_agree : tree9506 = literal9506 := by
  rw [tree9506_def, tree9504_agree, tree9505_agree]
  rfl
theorem node9506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9506 live9506 coloured9506 = result9506 := by
  rw [tree9506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9504_eq
  unfold live9504 coloured9504 at child
  try dsimp only [live9506, coloured9506]
  rw [child]
  dsimp only [result9504]
  have child := node9505_eq
  unfold live9505 coloured9505 at child
  try dsimp only [live9506, coloured9506]
  rw [child]
  dsimp only [result9505]
  try dsimp only [colour, result9506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9507_agree : tree9507 = literal9507 := by
  rw [tree9507_def]
  rfl
theorem node9507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9507 live9507 coloured9507 = result9507 := by
  rw [tree9507_def]
  try dsimp only [colour, result9507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9508_agree : tree9508 = literal9508 := by
  rw [tree9508_def, tree9506_agree, tree9507_agree]
  rfl
theorem node9508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9508 live9508 coloured9508 = result9508 := by
  rw [tree9508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9506_eq
  unfold live9506 coloured9506 at child
  try dsimp only [live9508, coloured9508]
  rw [child]
  dsimp only [result9506]
  have child := node9507_eq
  unfold live9507 coloured9507 at child
  try dsimp only [live9508, coloured9508]
  rw [child]
  dsimp only [result9507]
  try dsimp only [colour, result9508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9509_agree : tree9509 = literal9509 := by
  rw [tree9509_def]
  rfl
theorem node9509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9509 live9509 coloured9509 = result9509 := by
  rw [tree9509_def]
  try dsimp only [colour, result9509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9510_agree : tree9510 = literal9510 := by
  rw [tree9510_def, tree9508_agree, tree9509_agree]
  rfl
theorem node9510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9510 live9510 coloured9510 = result9510 := by
  rw [tree9510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9508_eq
  unfold live9508 coloured9508 at child
  try dsimp only [live9510, coloured9510]
  rw [child]
  dsimp only [result9508]
  have child := node9509_eq
  unfold live9509 coloured9509 at child
  try dsimp only [live9510, coloured9510]
  rw [child]
  dsimp only [result9509]
  try dsimp only [colour, result9510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9511_agree : tree9511 = literal9511 := by
  rw [tree9511_def]
  rfl
theorem node9511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9511 live9511 coloured9511 = result9511 := by
  rw [tree9511_def]
  try dsimp only [colour, result9511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9512_agree : tree9512 = literal9512 := by
  rw [tree9512_def, tree9510_agree, tree9511_agree]
  rfl
theorem node9512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9512 live9512 coloured9512 = result9512 := by
  rw [tree9512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9510_eq
  unfold live9510 coloured9510 at child
  try dsimp only [live9512, coloured9512]
  rw [child]
  dsimp only [result9510]
  have child := node9511_eq
  unfold live9511 coloured9511 at child
  try dsimp only [live9512, coloured9512]
  rw [child]
  dsimp only [result9511]
  try dsimp only [colour, result9512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9513_agree : tree9513 = literal9513 := by
  rw [tree9513_def]
  rfl
theorem node9513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9513 live9513 coloured9513 = result9513 := by
  rw [tree9513_def]
  try dsimp only [colour, result9513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9514_agree : tree9514 = literal9514 := by
  rw [tree9514_def, tree9512_agree, tree9513_agree]
  rfl
theorem node9514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9514 live9514 coloured9514 = result9514 := by
  rw [tree9514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9512_eq
  unfold live9512 coloured9512 at child
  try dsimp only [live9514, coloured9514]
  rw [child]
  dsimp only [result9512]
  have child := node9513_eq
  unfold live9513 coloured9513 at child
  try dsimp only [live9514, coloured9514]
  rw [child]
  dsimp only [result9513]
  try dsimp only [colour, result9514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9515_agree : tree9515 = literal9515 := by
  rw [tree9515_def]
  rfl
theorem node9515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9515 live9515 coloured9515 = result9515 := by
  rw [tree9515_def]
  try dsimp only [colour, result9515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9516_agree : tree9516 = literal9516 := by
  rw [tree9516_def, tree9514_agree, tree9515_agree]
  rfl
theorem node9516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9516 live9516 coloured9516 = result9516 := by
  rw [tree9516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9514_eq
  unfold live9514 coloured9514 at child
  try dsimp only [live9516, coloured9516]
  rw [child]
  dsimp only [result9514]
  have child := node9515_eq
  unfold live9515 coloured9515 at child
  try dsimp only [live9516, coloured9516]
  rw [child]
  dsimp only [result9515]
  try dsimp only [colour, result9516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9517_agree : tree9517 = literal9517 := by
  rw [tree9517_def]
  rfl
theorem node9517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9517 live9517 coloured9517 = result9517 := by
  rw [tree9517_def]
  try dsimp only [colour, result9517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9518_agree : tree9518 = literal9518 := by
  rw [tree9518_def, tree9516_agree, tree9517_agree]
  rfl
theorem node9518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9518 live9518 coloured9518 = result9518 := by
  rw [tree9518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9516_eq
  unfold live9516 coloured9516 at child
  try dsimp only [live9518, coloured9518]
  rw [child]
  dsimp only [result9516]
  have child := node9517_eq
  unfold live9517 coloured9517 at child
  try dsimp only [live9518, coloured9518]
  rw [child]
  dsimp only [result9517]
  try dsimp only [colour, result9518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9519_agree : tree9519 = literal9519 := by
  rw [tree9519_def]
  rfl
theorem node9519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9519 live9519 coloured9519 = result9519 := by
  rw [tree9519_def]
  try dsimp only [colour, result9519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9520_agree : tree9520 = literal9520 := by
  rw [tree9520_def, tree9518_agree, tree9519_agree]
  rfl
theorem node9520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9520 live9520 coloured9520 = result9520 := by
  rw [tree9520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9518_eq
  unfold live9518 coloured9518 at child
  try dsimp only [live9520, coloured9520]
  rw [child]
  dsimp only [result9518]
  have child := node9519_eq
  unfold live9519 coloured9519 at child
  try dsimp only [live9520, coloured9520]
  rw [child]
  dsimp only [result9519]
  try dsimp only [colour, result9520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9521_agree : tree9521 = literal9521 := by
  rw [tree9521_def]
  rfl
theorem node9521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9521 live9521 coloured9521 = result9521 := by
  rw [tree9521_def]
  try dsimp only [colour, result9521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9522_agree : tree9522 = literal9522 := by
  rw [tree9522_def, tree9520_agree, tree9521_agree]
  rfl
theorem node9522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9522 live9522 coloured9522 = result9522 := by
  rw [tree9522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9520_eq
  unfold live9520 coloured9520 at child
  try dsimp only [live9522, coloured9522]
  rw [child]
  dsimp only [result9520]
  have child := node9521_eq
  unfold live9521 coloured9521 at child
  try dsimp only [live9522, coloured9522]
  rw [child]
  dsimp only [result9521]
  try dsimp only [colour, result9522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9523_agree : tree9523 = literal9523 := by
  rw [tree9523_def]
  rfl
theorem node9523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9523 live9523 coloured9523 = result9523 := by
  rw [tree9523_def]
  try dsimp only [colour, result9523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9524_agree : tree9524 = literal9524 := by
  rw [tree9524_def, tree9522_agree, tree9523_agree]
  rfl
theorem node9524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9524 live9524 coloured9524 = result9524 := by
  rw [tree9524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9522_eq
  unfold live9522 coloured9522 at child
  try dsimp only [live9524, coloured9524]
  rw [child]
  dsimp only [result9522]
  have child := node9523_eq
  unfold live9523 coloured9523 at child
  try dsimp only [live9524, coloured9524]
  rw [child]
  dsimp only [result9523]
  try dsimp only [colour, result9524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9525_agree : tree9525 = literal9525 := by
  rw [tree9525_def]
  rfl
theorem node9525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9525 live9525 coloured9525 = result9525 := by
  rw [tree9525_def]
  try dsimp only [colour, result9525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9526_agree : tree9526 = literal9526 := by
  rw [tree9526_def, tree9524_agree, tree9525_agree]
  rfl
theorem node9526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9526 live9526 coloured9526 = result9526 := by
  rw [tree9526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9524_eq
  unfold live9524 coloured9524 at child
  try dsimp only [live9526, coloured9526]
  rw [child]
  dsimp only [result9524]
  have child := node9525_eq
  unfold live9525 coloured9525 at child
  try dsimp only [live9526, coloured9526]
  rw [child]
  dsimp only [result9525]
  try dsimp only [colour, result9526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9527_agree : tree9527 = literal9527 := by
  rw [tree9527_def]
  rfl
theorem node9527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9527 live9527 coloured9527 = result9527 := by
  rw [tree9527_def]
  try dsimp only [colour, result9527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9528_agree : tree9528 = literal9528 := by
  rw [tree9528_def, tree9526_agree, tree9527_agree]
  rfl
theorem node9528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9528 live9528 coloured9528 = result9528 := by
  rw [tree9528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9526_eq
  unfold live9526 coloured9526 at child
  try dsimp only [live9528, coloured9528]
  rw [child]
  dsimp only [result9526]
  have child := node9527_eq
  unfold live9527 coloured9527 at child
  try dsimp only [live9528, coloured9528]
  rw [child]
  dsimp only [result9527]
  try dsimp only [colour, result9528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9529_agree : tree9529 = literal9529 := by
  rw [tree9529_def]
  rfl
theorem node9529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9529 live9529 coloured9529 = result9529 := by
  rw [tree9529_def]
  try dsimp only [colour, result9529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9530_agree : tree9530 = literal9530 := by
  rw [tree9530_def, tree9528_agree, tree9529_agree]
  rfl
theorem node9530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9530 live9530 coloured9530 = result9530 := by
  rw [tree9530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9528_eq
  unfold live9528 coloured9528 at child
  try dsimp only [live9530, coloured9530]
  rw [child]
  dsimp only [result9528]
  have child := node9529_eq
  unfold live9529 coloured9529 at child
  try dsimp only [live9530, coloured9530]
  rw [child]
  dsimp only [result9529]
  try dsimp only [colour, result9530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9531_agree : tree9531 = literal9531 := by
  rw [tree9531_def]
  rfl
theorem node9531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9531 live9531 coloured9531 = result9531 := by
  rw [tree9531_def]
  try dsimp only [colour, result9531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9532_agree : tree9532 = literal9532 := by
  rw [tree9532_def, tree9530_agree, tree9531_agree]
  rfl
theorem node9532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9532 live9532 coloured9532 = result9532 := by
  rw [tree9532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9530_eq
  unfold live9530 coloured9530 at child
  try dsimp only [live9532, coloured9532]
  rw [child]
  dsimp only [result9530]
  have child := node9531_eq
  unfold live9531 coloured9531 at child
  try dsimp only [live9532, coloured9532]
  rw [child]
  dsimp only [result9531]
  try dsimp only [colour, result9532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9533_agree : tree9533 = literal9533 := by
  rw [tree9533_def]
  rfl
theorem node9533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9533 live9533 coloured9533 = result9533 := by
  rw [tree9533_def]
  try dsimp only [colour, result9533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9534_agree : tree9534 = literal9534 := by
  rw [tree9534_def, tree9532_agree, tree9533_agree]
  rfl
theorem node9534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9534 live9534 coloured9534 = result9534 := by
  rw [tree9534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9532_eq
  unfold live9532 coloured9532 at child
  try dsimp only [live9534, coloured9534]
  rw [child]
  dsimp only [result9532]
  have child := node9533_eq
  unfold live9533 coloured9533 at child
  try dsimp only [live9534, coloured9534]
  rw [child]
  dsimp only [result9533]
  try dsimp only [colour, result9534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9535_agree : tree9535 = literal9535 := by
  rw [tree9535_def]
  rfl
theorem node9535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9535 live9535 coloured9535 = result9535 := by
  rw [tree9535_def]
  try dsimp only [colour, result9535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9536_agree : tree9536 = literal9536 := by
  rw [tree9536_def, tree9534_agree, tree9535_agree]
  rfl
theorem node9536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9536 live9536 coloured9536 = result9536 := by
  rw [tree9536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9534_eq
  unfold live9534 coloured9534 at child
  try dsimp only [live9536, coloured9536]
  rw [child]
  dsimp only [result9534]
  have child := node9535_eq
  unfold live9535 coloured9535 at child
  try dsimp only [live9536, coloured9536]
  rw [child]
  dsimp only [result9535]
  try dsimp only [colour, result9536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9537_agree : tree9537 = literal9537 := by
  rw [tree9537_def]
  rfl
theorem node9537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9537 live9537 coloured9537 = result9537 := by
  rw [tree9537_def]
  try dsimp only [colour, result9537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9538_agree : tree9538 = literal9538 := by
  rw [tree9538_def, tree9536_agree, tree9537_agree]
  rfl
theorem node9538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9538 live9538 coloured9538 = result9538 := by
  rw [tree9538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9536_eq
  unfold live9536 coloured9536 at child
  try dsimp only [live9538, coloured9538]
  rw [child]
  dsimp only [result9536]
  have child := node9537_eq
  unfold live9537 coloured9537 at child
  try dsimp only [live9538, coloured9538]
  rw [child]
  dsimp only [result9537]
  try dsimp only [colour, result9538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9539_agree : tree9539 = literal9539 := by
  rw [tree9539_def]
  rfl
theorem node9539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9539 live9539 coloured9539 = result9539 := by
  rw [tree9539_def]
  try dsimp only [colour, result9539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9540_agree : tree9540 = literal9540 := by
  rw [tree9540_def, tree9538_agree, tree9539_agree]
  rfl
theorem node9540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9540 live9540 coloured9540 = result9540 := by
  rw [tree9540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9538_eq
  unfold live9538 coloured9538 at child
  try dsimp only [live9540, coloured9540]
  rw [child]
  dsimp only [result9538]
  have child := node9539_eq
  unfold live9539 coloured9539 at child
  try dsimp only [live9540, coloured9540]
  rw [child]
  dsimp only [result9539]
  try dsimp only [colour, result9540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9541_agree : tree9541 = literal9541 := by
  rw [tree9541_def]
  rfl
theorem node9541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9541 live9541 coloured9541 = result9541 := by
  rw [tree9541_def]
  try dsimp only [colour, result9541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9542_agree : tree9542 = literal9542 := by
  rw [tree9542_def, tree9540_agree, tree9541_agree]
  rfl
theorem node9542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9542 live9542 coloured9542 = result9542 := by
  rw [tree9542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9540_eq
  unfold live9540 coloured9540 at child
  try dsimp only [live9542, coloured9542]
  rw [child]
  dsimp only [result9540]
  have child := node9541_eq
  unfold live9541 coloured9541 at child
  try dsimp only [live9542, coloured9542]
  rw [child]
  dsimp only [result9541]
  try dsimp only [colour, result9542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9543_agree : tree9543 = literal9543 := by
  rw [tree9543_def]
  rfl
theorem node9543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9543 live9543 coloured9543 = result9543 := by
  rw [tree9543_def]
  try dsimp only [colour, result9543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9544_agree : tree9544 = literal9544 := by
  rw [tree9544_def, tree9542_agree, tree9543_agree]
  rfl
theorem node9544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9544 live9544 coloured9544 = result9544 := by
  rw [tree9544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9542_eq
  unfold live9542 coloured9542 at child
  try dsimp only [live9544, coloured9544]
  rw [child]
  dsimp only [result9542]
  have child := node9543_eq
  unfold live9543 coloured9543 at child
  try dsimp only [live9544, coloured9544]
  rw [child]
  dsimp only [result9543]
  try dsimp only [colour, result9544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9545_agree : tree9545 = literal9545 := by
  rw [tree9545_def]
  rfl
theorem node9545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9545 live9545 coloured9545 = result9545 := by
  rw [tree9545_def]
  try dsimp only [colour, result9545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9546_agree : tree9546 = literal9546 := by
  rw [tree9546_def, tree9544_agree, tree9545_agree]
  rfl
theorem node9546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9546 live9546 coloured9546 = result9546 := by
  rw [tree9546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9544_eq
  unfold live9544 coloured9544 at child
  try dsimp only [live9546, coloured9546]
  rw [child]
  dsimp only [result9544]
  have child := node9545_eq
  unfold live9545 coloured9545 at child
  try dsimp only [live9546, coloured9546]
  rw [child]
  dsimp only [result9545]
  try dsimp only [colour, result9546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9547_agree : tree9547 = literal9547 := by
  rw [tree9547_def]
  rfl
theorem node9547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9547 live9547 coloured9547 = result9547 := by
  rw [tree9547_def]
  try dsimp only [colour, result9547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9548_agree : tree9548 = literal9548 := by
  rw [tree9548_def, tree9546_agree, tree9547_agree]
  rfl
theorem node9548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9548 live9548 coloured9548 = result9548 := by
  rw [tree9548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9546_eq
  unfold live9546 coloured9546 at child
  try dsimp only [live9548, coloured9548]
  rw [child]
  dsimp only [result9546]
  have child := node9547_eq
  unfold live9547 coloured9547 at child
  try dsimp only [live9548, coloured9548]
  rw [child]
  dsimp only [result9547]
  try dsimp only [colour, result9548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9549_agree : tree9549 = literal9549 := by
  rw [tree9549_def]
  rfl
theorem node9549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9549 live9549 coloured9549 = result9549 := by
  rw [tree9549_def]
  try dsimp only [colour, result9549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9550_agree : tree9550 = literal9550 := by
  rw [tree9550_def, tree9548_agree, tree9549_agree]
  rfl
theorem node9550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9550 live9550 coloured9550 = result9550 := by
  rw [tree9550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9548_eq
  unfold live9548 coloured9548 at child
  try dsimp only [live9550, coloured9550]
  rw [child]
  dsimp only [result9548]
  have child := node9549_eq
  unfold live9549 coloured9549 at child
  try dsimp only [live9550, coloured9550]
  rw [child]
  dsimp only [result9549]
  try dsimp only [colour, result9550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9551_agree : tree9551 = literal9551 := by
  rw [tree9551_def]
  rfl
theorem node9551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9551 live9551 coloured9551 = result9551 := by
  rw [tree9551_def]
  try dsimp only [colour, result9551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9552_agree : tree9552 = literal9552 := by
  rw [tree9552_def, tree9550_agree, tree9551_agree]
  rfl
theorem node9552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9552 live9552 coloured9552 = result9552 := by
  rw [tree9552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9550_eq
  unfold live9550 coloured9550 at child
  try dsimp only [live9552, coloured9552]
  rw [child]
  dsimp only [result9550]
  have child := node9551_eq
  unfold live9551 coloured9551 at child
  try dsimp only [live9552, coloured9552]
  rw [child]
  dsimp only [result9551]
  try dsimp only [colour, result9552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9553_agree : tree9553 = literal9553 := by
  rw [tree9553_def]
  rfl
theorem node9553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9553 live9553 coloured9553 = result9553 := by
  rw [tree9553_def]
  try dsimp only [colour, result9553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9554_agree : tree9554 = literal9554 := by
  rw [tree9554_def, tree9552_agree, tree9553_agree]
  rfl
theorem node9554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9554 live9554 coloured9554 = result9554 := by
  rw [tree9554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9552_eq
  unfold live9552 coloured9552 at child
  try dsimp only [live9554, coloured9554]
  rw [child]
  dsimp only [result9552]
  have child := node9553_eq
  unfold live9553 coloured9553 at child
  try dsimp only [live9554, coloured9554]
  rw [child]
  dsimp only [result9553]
  try dsimp only [colour, result9554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9555_agree : tree9555 = literal9555 := by
  rw [tree9555_def]
  rfl
theorem node9555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9555 live9555 coloured9555 = result9555 := by
  rw [tree9555_def]
  try dsimp only [colour, result9555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9556_agree : tree9556 = literal9556 := by
  rw [tree9556_def, tree9554_agree, tree9555_agree]
  rfl
theorem node9556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9556 live9556 coloured9556 = result9556 := by
  rw [tree9556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9554_eq
  unfold live9554 coloured9554 at child
  try dsimp only [live9556, coloured9556]
  rw [child]
  dsimp only [result9554]
  have child := node9555_eq
  unfold live9555 coloured9555 at child
  try dsimp only [live9556, coloured9556]
  rw [child]
  dsimp only [result9555]
  try dsimp only [colour, result9556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9557_agree : tree9557 = literal9557 := by
  rw [tree9557_def]
  rfl
theorem node9557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9557 live9557 coloured9557 = result9557 := by
  rw [tree9557_def]
  try dsimp only [colour, result9557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9558_agree : tree9558 = literal9558 := by
  rw [tree9558_def, tree9556_agree, tree9557_agree]
  rfl
theorem node9558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9558 live9558 coloured9558 = result9558 := by
  rw [tree9558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9556_eq
  unfold live9556 coloured9556 at child
  try dsimp only [live9558, coloured9558]
  rw [child]
  dsimp only [result9556]
  have child := node9557_eq
  unfold live9557 coloured9557 at child
  try dsimp only [live9558, coloured9558]
  rw [child]
  dsimp only [result9557]
  try dsimp only [colour, result9558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9559_agree : tree9559 = literal9559 := by
  rw [tree9559_def]
  rfl
theorem node9559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9559 live9559 coloured9559 = result9559 := by
  rw [tree9559_def]
  try dsimp only [colour, result9559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9560_agree : tree9560 = literal9560 := by
  rw [tree9560_def, tree9558_agree, tree9559_agree]
  rfl
theorem node9560_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9560 live9560 coloured9560 = result9560 := by
  rw [tree9560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9558_eq
  unfold live9558 coloured9558 at child
  try dsimp only [live9560, coloured9560]
  rw [child]
  dsimp only [result9558]
  have child := node9559_eq
  unfold live9559 coloured9559 at child
  try dsimp only [live9560, coloured9560]
  rw [child]
  dsimp only [result9559]
  try dsimp only [colour, result9560]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9561_agree : tree9561 = literal9561 := by
  rw [tree9561_def]
  rfl
theorem node9561_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9561 live9561 coloured9561 = result9561 := by
  rw [tree9561_def]
  try dsimp only [colour, result9561]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9562_agree : tree9562 = literal9562 := by
  rw [tree9562_def, tree9560_agree, tree9561_agree]
  rfl
theorem node9562_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9562 live9562 coloured9562 = result9562 := by
  rw [tree9562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9560_eq
  unfold live9560 coloured9560 at child
  try dsimp only [live9562, coloured9562]
  rw [child]
  dsimp only [result9560]
  have child := node9561_eq
  unfold live9561 coloured9561 at child
  try dsimp only [live9562, coloured9562]
  rw [child]
  dsimp only [result9561]
  try dsimp only [colour, result9562]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9563_agree : tree9563 = literal9563 := by
  rw [tree9563_def]
  rfl
theorem node9563_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9563 live9563 coloured9563 = result9563 := by
  rw [tree9563_def]
  try dsimp only [colour, result9563]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9564_agree : tree9564 = literal9564 := by
  rw [tree9564_def, tree9562_agree, tree9563_agree]
  rfl
theorem node9564_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9564 live9564 coloured9564 = result9564 := by
  rw [tree9564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9562_eq
  unfold live9562 coloured9562 at child
  try dsimp only [live9564, coloured9564]
  rw [child]
  dsimp only [result9562]
  have child := node9563_eq
  unfold live9563 coloured9563 at child
  try dsimp only [live9564, coloured9564]
  rw [child]
  dsimp only [result9563]
  try dsimp only [colour, result9564]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9565_agree : tree9565 = literal9565 := by
  rw [tree9565_def]
  rfl
theorem node9565_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9565 live9565 coloured9565 = result9565 := by
  rw [tree9565_def]
  try dsimp only [colour, result9565]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9566_agree : tree9566 = literal9566 := by
  rw [tree9566_def, tree9564_agree, tree9565_agree]
  rfl
theorem node9566_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9566 live9566 coloured9566 = result9566 := by
  rw [tree9566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9564_eq
  unfold live9564 coloured9564 at child
  try dsimp only [live9566, coloured9566]
  rw [child]
  dsimp only [result9564]
  have child := node9565_eq
  unfold live9565 coloured9565 at child
  try dsimp only [live9566, coloured9566]
  rw [child]
  dsimp only [result9565]
  try dsimp only [colour, result9566]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9567_agree : tree9567 = literal9567 := by
  rw [tree9567_def]
  rfl
theorem node9567_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9567 live9567 coloured9567 = result9567 := by
  rw [tree9567_def]
  try dsimp only [colour, result9567]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9568_agree : tree9568 = literal9568 := by
  rw [tree9568_def, tree9566_agree, tree9567_agree]
  rfl
theorem node9568_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9568 live9568 coloured9568 = result9568 := by
  rw [tree9568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9566_eq
  unfold live9566 coloured9566 at child
  try dsimp only [live9568, coloured9568]
  rw [child]
  dsimp only [result9566]
  have child := node9567_eq
  unfold live9567 coloured9567 at child
  try dsimp only [live9568, coloured9568]
  rw [child]
  dsimp only [result9567]
  try dsimp only [colour, result9568]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9569_agree : tree9569 = literal9569 := by
  rw [tree9569_def]
  rfl
theorem node9569_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9569 live9569 coloured9569 = result9569 := by
  rw [tree9569_def]
  try dsimp only [colour, result9569]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9570_agree : tree9570 = literal9570 := by
  rw [tree9570_def, tree9568_agree, tree9569_agree]
  rfl
theorem node9570_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9570 live9570 coloured9570 = result9570 := by
  rw [tree9570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9568_eq
  unfold live9568 coloured9568 at child
  try dsimp only [live9570, coloured9570]
  rw [child]
  dsimp only [result9568]
  have child := node9569_eq
  unfold live9569 coloured9569 at child
  try dsimp only [live9570, coloured9570]
  rw [child]
  dsimp only [result9569]
  try dsimp only [colour, result9570]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9571_agree : tree9571 = literal9571 := by
  rw [tree9571_def]
  rfl
theorem node9571_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9571 live9571 coloured9571 = result9571 := by
  rw [tree9571_def]
  try dsimp only [colour, result9571]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9572_agree : tree9572 = literal9572 := by
  rw [tree9572_def, tree9570_agree, tree9571_agree]
  rfl
theorem node9572_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9572 live9572 coloured9572 = result9572 := by
  rw [tree9572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9570_eq
  unfold live9570 coloured9570 at child
  try dsimp only [live9572, coloured9572]
  rw [child]
  dsimp only [result9570]
  have child := node9571_eq
  unfold live9571 coloured9571 at child
  try dsimp only [live9572, coloured9572]
  rw [child]
  dsimp only [result9571]
  try dsimp only [colour, result9572]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9573_agree : tree9573 = literal9573 := by
  rw [tree9573_def]
  rfl
theorem node9573_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9573 live9573 coloured9573 = result9573 := by
  rw [tree9573_def]
  try dsimp only [colour, result9573]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9574_agree : tree9574 = literal9574 := by
  rw [tree9574_def, tree9572_agree, tree9573_agree]
  rfl
theorem node9574_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9574 live9574 coloured9574 = result9574 := by
  rw [tree9574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9572_eq
  unfold live9572 coloured9572 at child
  try dsimp only [live9574, coloured9574]
  rw [child]
  dsimp only [result9572]
  have child := node9573_eq
  unfold live9573 coloured9573 at child
  try dsimp only [live9574, coloured9574]
  rw [child]
  dsimp only [result9573]
  try dsimp only [colour, result9574]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9575_agree : tree9575 = literal9575 := by
  rw [tree9575_def]
  rfl
theorem node9575_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9575 live9575 coloured9575 = result9575 := by
  rw [tree9575_def]
  try dsimp only [colour, result9575]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9576_agree : tree9576 = literal9576 := by
  rw [tree9576_def, tree9574_agree, tree9575_agree]
  rfl
theorem node9576_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9576 live9576 coloured9576 = result9576 := by
  rw [tree9576_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9574_eq
  unfold live9574 coloured9574 at child
  try dsimp only [live9576, coloured9576]
  rw [child]
  dsimp only [result9574]
  have child := node9575_eq
  unfold live9575 coloured9575 at child
  try dsimp only [live9576, coloured9576]
  rw [child]
  dsimp only [result9575]
  try dsimp only [colour, result9576]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9577_agree : tree9577 = literal9577 := by
  rw [tree9577_def]
  rfl
theorem node9577_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9577 live9577 coloured9577 = result9577 := by
  rw [tree9577_def]
  try dsimp only [colour, result9577]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9578_agree : tree9578 = literal9578 := by
  rw [tree9578_def, tree9576_agree, tree9577_agree]
  rfl
theorem node9578_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9578 live9578 coloured9578 = result9578 := by
  rw [tree9578_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9576_eq
  unfold live9576 coloured9576 at child
  try dsimp only [live9578, coloured9578]
  rw [child]
  dsimp only [result9576]
  have child := node9577_eq
  unfold live9577 coloured9577 at child
  try dsimp only [live9578, coloured9578]
  rw [child]
  dsimp only [result9577]
  try dsimp only [colour, result9578]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9579_agree : tree9579 = literal9579 := by
  rw [tree9579_def]
  rfl
theorem node9579_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9579 live9579 coloured9579 = result9579 := by
  rw [tree9579_def]
  try dsimp only [colour, result9579]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9580_agree : tree9580 = literal9580 := by
  rw [tree9580_def, tree9578_agree, tree9579_agree]
  rfl
theorem node9580_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9580 live9580 coloured9580 = result9580 := by
  rw [tree9580_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9578_eq
  unfold live9578 coloured9578 at child
  try dsimp only [live9580, coloured9580]
  rw [child]
  dsimp only [result9578]
  have child := node9579_eq
  unfold live9579 coloured9579 at child
  try dsimp only [live9580, coloured9580]
  rw [child]
  dsimp only [result9579]
  try dsimp only [colour, result9580]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9581_agree : tree9581 = literal9581 := by
  rw [tree9581_def]
  rfl
theorem node9581_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9581 live9581 coloured9581 = result9581 := by
  rw [tree9581_def]
  try dsimp only [colour, result9581]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9582_agree : tree9582 = literal9582 := by
  rw [tree9582_def, tree9580_agree, tree9581_agree]
  rfl
theorem node9582_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9582 live9582 coloured9582 = result9582 := by
  rw [tree9582_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9580_eq
  unfold live9580 coloured9580 at child
  try dsimp only [live9582, coloured9582]
  rw [child]
  dsimp only [result9580]
  have child := node9581_eq
  unfold live9581 coloured9581 at child
  try dsimp only [live9582, coloured9582]
  rw [child]
  dsimp only [result9581]
  try dsimp only [colour, result9582]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9583_agree : tree9583 = literal9583 := by
  rw [tree9583_def]
  rfl
theorem node9583_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9583 live9583 coloured9583 = result9583 := by
  rw [tree9583_def]
  try dsimp only [colour, result9583]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9584_agree : tree9584 = literal9584 := by
  rw [tree9584_def, tree9582_agree, tree9583_agree]
  rfl
theorem node9584_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9584 live9584 coloured9584 = result9584 := by
  rw [tree9584_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9582_eq
  unfold live9582 coloured9582 at child
  try dsimp only [live9584, coloured9584]
  rw [child]
  dsimp only [result9582]
  have child := node9583_eq
  unfold live9583 coloured9583 at child
  try dsimp only [live9584, coloured9584]
  rw [child]
  dsimp only [result9583]
  try dsimp only [colour, result9584]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9585_agree : tree9585 = literal9585 := by
  rw [tree9585_def]
  rfl
theorem node9585_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9585 live9585 coloured9585 = result9585 := by
  rw [tree9585_def]
  try dsimp only [colour, result9585]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9586_agree : tree9586 = literal9586 := by
  rw [tree9586_def, tree9584_agree, tree9585_agree]
  rfl
theorem node9586_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9586 live9586 coloured9586 = result9586 := by
  rw [tree9586_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9584_eq
  unfold live9584 coloured9584 at child
  try dsimp only [live9586, coloured9586]
  rw [child]
  dsimp only [result9584]
  have child := node9585_eq
  unfold live9585 coloured9585 at child
  try dsimp only [live9586, coloured9586]
  rw [child]
  dsimp only [result9585]
  try dsimp only [colour, result9586]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9587_agree : tree9587 = literal9587 := by
  rw [tree9587_def]
  rfl
theorem node9587_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9587 live9587 coloured9587 = result9587 := by
  rw [tree9587_def]
  try dsimp only [colour, result9587]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9588_agree : tree9588 = literal9588 := by
  rw [tree9588_def, tree9586_agree, tree9587_agree]
  rfl
theorem node9588_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9588 live9588 coloured9588 = result9588 := by
  rw [tree9588_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9586_eq
  unfold live9586 coloured9586 at child
  try dsimp only [live9588, coloured9588]
  rw [child]
  dsimp only [result9586]
  have child := node9587_eq
  unfold live9587 coloured9587 at child
  try dsimp only [live9588, coloured9588]
  rw [child]
  dsimp only [result9587]
  try dsimp only [colour, result9588]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9589_agree : tree9589 = literal9589 := by
  rw [tree9589_def]
  rfl
theorem node9589_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9589 live9589 coloured9589 = result9589 := by
  rw [tree9589_def]
  try dsimp only [colour, result9589]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9590_agree : tree9590 = literal9590 := by
  rw [tree9590_def, tree9588_agree, tree9589_agree]
  rfl
theorem node9590_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9590 live9590 coloured9590 = result9590 := by
  rw [tree9590_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9588_eq
  unfold live9588 coloured9588 at child
  try dsimp only [live9590, coloured9590]
  rw [child]
  dsimp only [result9588]
  have child := node9589_eq
  unfold live9589 coloured9589 at child
  try dsimp only [live9590, coloured9590]
  rw [child]
  dsimp only [result9589]
  try dsimp only [colour, result9590]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9591_agree : tree9591 = literal9591 := by
  rw [tree9591_def]
  rfl
theorem node9591_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9591 live9591 coloured9591 = result9591 := by
  rw [tree9591_def]
  try dsimp only [colour, result9591]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9592_agree : tree9592 = literal9592 := by
  rw [tree9592_def, tree9590_agree, tree9591_agree]
  rfl
theorem node9592_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9592 live9592 coloured9592 = result9592 := by
  rw [tree9592_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9590_eq
  unfold live9590 coloured9590 at child
  try dsimp only [live9592, coloured9592]
  rw [child]
  dsimp only [result9590]
  have child := node9591_eq
  unfold live9591 coloured9591 at child
  try dsimp only [live9592, coloured9592]
  rw [child]
  dsimp only [result9591]
  try dsimp only [colour, result9592]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9593_agree : tree9593 = literal9593 := by
  rw [tree9593_def]
  rfl
theorem node9593_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9593 live9593 coloured9593 = result9593 := by
  rw [tree9593_def]
  try dsimp only [colour, result9593]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9594_agree : tree9594 = literal9594 := by
  rw [tree9594_def, tree9592_agree, tree9593_agree]
  rfl
theorem node9594_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9594 live9594 coloured9594 = result9594 := by
  rw [tree9594_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9592_eq
  unfold live9592 coloured9592 at child
  try dsimp only [live9594, coloured9594]
  rw [child]
  dsimp only [result9592]
  have child := node9593_eq
  unfold live9593 coloured9593 at child
  try dsimp only [live9594, coloured9594]
  rw [child]
  dsimp only [result9593]
  try dsimp only [colour, result9594]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9595_agree : tree9595 = literal9595 := by
  rw [tree9595_def]
  rfl
theorem node9595_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9595 live9595 coloured9595 = result9595 := by
  rw [tree9595_def]
  try dsimp only [colour, result9595]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9596_agree : tree9596 = literal9596 := by
  rw [tree9596_def, tree9594_agree, tree9595_agree]
  rfl
theorem node9596_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9596 live9596 coloured9596 = result9596 := by
  rw [tree9596_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9594_eq
  unfold live9594 coloured9594 at child
  try dsimp only [live9596, coloured9596]
  rw [child]
  dsimp only [result9594]
  have child := node9595_eq
  unfold live9595 coloured9595 at child
  try dsimp only [live9596, coloured9596]
  rw [child]
  dsimp only [result9595]
  try dsimp only [colour, result9596]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9597_agree : tree9597 = literal9597 := by
  rw [tree9597_def]
  rfl
theorem node9597_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9597 live9597 coloured9597 = result9597 := by
  rw [tree9597_def]
  try dsimp only [colour, result9597]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9598_agree : tree9598 = literal9598 := by
  rw [tree9598_def, tree9596_agree, tree9597_agree]
  rfl
theorem node9598_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9598 live9598 coloured9598 = result9598 := by
  rw [tree9598_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9596_eq
  unfold live9596 coloured9596 at child
  try dsimp only [live9598, coloured9598]
  rw [child]
  dsimp only [result9596]
  have child := node9597_eq
  unfold live9597 coloured9597 at child
  try dsimp only [live9598, coloured9598]
  rw [child]
  dsimp only [result9597]
  try dsimp only [colour, result9598]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9599_agree : tree9599 = literal9599 := by
  rw [tree9599_def]
  rfl
theorem node9599_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9599 live9599 coloured9599 = result9599 := by
  rw [tree9599_def]
  try dsimp only [colour, result9599]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
