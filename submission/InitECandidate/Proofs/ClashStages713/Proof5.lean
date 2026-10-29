import InitECandidate.Proofs.ClashStages713.Proof4
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree480_agree : tree480 = literal480 := by
  rw [tree480_def, tree478_agree, tree479_agree]
  rfl
theorem node480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree480 live480 coloured480 = result480 := by
  rw [tree480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node478_eq
  unfold live478 coloured478 at child
  try dsimp only [live480, coloured480]
  rw [child]
  dsimp only [result478]
  have child := node479_eq
  unfold live479 coloured479 at child
  try dsimp only [live480, coloured480]
  rw [child]
  dsimp only [result479]
  try dsimp only [colour, result480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree481_agree : tree481 = literal481 := by
  rw [tree481_def]
  rfl
theorem node481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree481 live481 coloured481 = result481 := by
  rw [tree481_def]
  try dsimp only [colour, result481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree482_agree : tree482 = literal482 := by
  rw [tree482_def, tree480_agree, tree481_agree]
  rfl
theorem node482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree482 live482 coloured482 = result482 := by
  rw [tree482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node480_eq
  unfold live480 coloured480 at child
  try dsimp only [live482, coloured482]
  rw [child]
  dsimp only [result480]
  have child := node481_eq
  unfold live481 coloured481 at child
  try dsimp only [live482, coloured482]
  rw [child]
  dsimp only [result481]
  try dsimp only [colour, result482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree483_agree : tree483 = literal483 := by
  rw [tree483_def]
  rfl
theorem node483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree483 live483 coloured483 = result483 := by
  rw [tree483_def]
  try dsimp only [colour, result483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree484_agree : tree484 = literal484 := by
  rw [tree484_def, tree482_agree, tree483_agree]
  rfl
theorem node484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree484 live484 coloured484 = result484 := by
  rw [tree484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node482_eq
  unfold live482 coloured482 at child
  try dsimp only [live484, coloured484]
  rw [child]
  dsimp only [result482]
  have child := node483_eq
  unfold live483 coloured483 at child
  try dsimp only [live484, coloured484]
  rw [child]
  dsimp only [result483]
  try dsimp only [colour, result484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree485_agree : tree485 = literal485 := by
  rw [tree485_def]
  rfl
theorem node485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree485 live485 coloured485 = result485 := by
  rw [tree485_def]
  try dsimp only [colour, result485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree486_agree : tree486 = literal486 := by
  rw [tree486_def, tree484_agree, tree485_agree]
  rfl
theorem node486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree486 live486 coloured486 = result486 := by
  rw [tree486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node484_eq
  unfold live484 coloured484 at child
  try dsimp only [live486, coloured486]
  rw [child]
  dsimp only [result484]
  have child := node485_eq
  unfold live485 coloured485 at child
  try dsimp only [live486, coloured486]
  rw [child]
  dsimp only [result485]
  try dsimp only [colour, result486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree487_agree : tree487 = literal487 := by
  rw [tree487_def]
  rfl
theorem node487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree487 live487 coloured487 = result487 := by
  rw [tree487_def]
  try dsimp only [colour, result487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree488_agree : tree488 = literal488 := by
  rw [tree488_def, tree486_agree, tree487_agree]
  rfl
theorem node488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree488 live488 coloured488 = result488 := by
  rw [tree488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node486_eq
  unfold live486 coloured486 at child
  try dsimp only [live488, coloured488]
  rw [child]
  dsimp only [result486]
  have child := node487_eq
  unfold live487 coloured487 at child
  try dsimp only [live488, coloured488]
  rw [child]
  dsimp only [result487]
  try dsimp only [colour, result488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree489_agree : tree489 = literal489 := by
  rw [tree489_def]
  rfl
theorem node489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree489 live489 coloured489 = result489 := by
  rw [tree489_def]
  try dsimp only [colour, result489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree490_agree : tree490 = literal490 := by
  rw [tree490_def, tree488_agree, tree489_agree]
  rfl
theorem node490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree490 live490 coloured490 = result490 := by
  rw [tree490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node488_eq
  unfold live488 coloured488 at child
  try dsimp only [live490, coloured490]
  rw [child]
  dsimp only [result488]
  have child := node489_eq
  unfold live489 coloured489 at child
  try dsimp only [live490, coloured490]
  rw [child]
  dsimp only [result489]
  try dsimp only [colour, result490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree491_agree : tree491 = literal491 := by
  rw [tree491_def]
  rfl
theorem node491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree491 live491 coloured491 = result491 := by
  rw [tree491_def]
  try dsimp only [colour, result491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree492_agree : tree492 = literal492 := by
  rw [tree492_def, tree490_agree, tree491_agree]
  rfl
theorem node492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree492 live492 coloured492 = result492 := by
  rw [tree492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node490_eq
  unfold live490 coloured490 at child
  try dsimp only [live492, coloured492]
  rw [child]
  dsimp only [result490]
  have child := node491_eq
  unfold live491 coloured491 at child
  try dsimp only [live492, coloured492]
  rw [child]
  dsimp only [result491]
  try dsimp only [colour, result492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree493_agree : tree493 = literal493 := by
  rw [tree493_def]
  rfl
theorem node493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree493 live493 coloured493 = result493 := by
  rw [tree493_def]
  try dsimp only [colour, result493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree494_agree : tree494 = literal494 := by
  rw [tree494_def, tree492_agree, tree493_agree]
  rfl
theorem node494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree494 live494 coloured494 = result494 := by
  rw [tree494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node492_eq
  unfold live492 coloured492 at child
  try dsimp only [live494, coloured494]
  rw [child]
  dsimp only [result492]
  have child := node493_eq
  unfold live493 coloured493 at child
  try dsimp only [live494, coloured494]
  rw [child]
  dsimp only [result493]
  try dsimp only [colour, result494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree495_agree : tree495 = literal495 := by
  rw [tree495_def]
  rfl
theorem node495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree495 live495 coloured495 = result495 := by
  rw [tree495_def]
  try dsimp only [colour, result495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree496_agree : tree496 = literal496 := by
  rw [tree496_def, tree494_agree, tree495_agree]
  rfl
theorem node496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree496 live496 coloured496 = result496 := by
  rw [tree496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node494_eq
  unfold live494 coloured494 at child
  try dsimp only [live496, coloured496]
  rw [child]
  dsimp only [result494]
  have child := node495_eq
  unfold live495 coloured495 at child
  try dsimp only [live496, coloured496]
  rw [child]
  dsimp only [result495]
  try dsimp only [colour, result496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree497_agree : tree497 = literal497 := by
  rw [tree497_def]
  rfl
theorem node497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree497 live497 coloured497 = result497 := by
  rw [tree497_def]
  try dsimp only [colour, result497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree498_agree : tree498 = literal498 := by
  rw [tree498_def, tree496_agree, tree497_agree]
  rfl
theorem node498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree498 live498 coloured498 = result498 := by
  rw [tree498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node496_eq
  unfold live496 coloured496 at child
  try dsimp only [live498, coloured498]
  rw [child]
  dsimp only [result496]
  have child := node497_eq
  unfold live497 coloured497 at child
  try dsimp only [live498, coloured498]
  rw [child]
  dsimp only [result497]
  try dsimp only [colour, result498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree499_agree : tree499 = literal499 := by
  rw [tree499_def]
  rfl
theorem node499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree499 live499 coloured499 = result499 := by
  rw [tree499_def]
  try dsimp only [colour, result499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree500_agree : tree500 = literal500 := by
  rw [tree500_def, tree498_agree, tree499_agree]
  rfl
theorem node500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree500 live500 coloured500 = result500 := by
  rw [tree500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node498_eq
  unfold live498 coloured498 at child
  try dsimp only [live500, coloured500]
  rw [child]
  dsimp only [result498]
  have child := node499_eq
  unfold live499 coloured499 at child
  try dsimp only [live500, coloured500]
  rw [child]
  dsimp only [result499]
  try dsimp only [colour, result500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree501_agree : tree501 = literal501 := by
  rw [tree501_def]
  rfl
theorem node501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree501 live501 coloured501 = result501 := by
  rw [tree501_def]
  try dsimp only [colour, result501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree502_agree : tree502 = literal502 := by
  rw [tree502_def, tree500_agree, tree501_agree]
  rfl
theorem node502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree502 live502 coloured502 = result502 := by
  rw [tree502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node500_eq
  unfold live500 coloured500 at child
  try dsimp only [live502, coloured502]
  rw [child]
  dsimp only [result500]
  have child := node501_eq
  unfold live501 coloured501 at child
  try dsimp only [live502, coloured502]
  rw [child]
  dsimp only [result501]
  try dsimp only [colour, result502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree503_agree : tree503 = literal503 := by
  rw [tree503_def]
  rfl
theorem node503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree503 live503 coloured503 = result503 := by
  rw [tree503_def]
  try dsimp only [colour, result503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree504_agree : tree504 = literal504 := by
  rw [tree504_def, tree502_agree, tree503_agree]
  rfl
theorem node504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree504 live504 coloured504 = result504 := by
  rw [tree504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node502_eq
  unfold live502 coloured502 at child
  try dsimp only [live504, coloured504]
  rw [child]
  dsimp only [result502]
  have child := node503_eq
  unfold live503 coloured503 at child
  try dsimp only [live504, coloured504]
  rw [child]
  dsimp only [result503]
  try dsimp only [colour, result504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree505_agree : tree505 = literal505 := by
  rw [tree505_def]
  rfl
theorem node505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree505 live505 coloured505 = result505 := by
  rw [tree505_def]
  try dsimp only [colour, result505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree506_agree : tree506 = literal506 := by
  rw [tree506_def, tree504_agree, tree505_agree]
  rfl
theorem node506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree506 live506 coloured506 = result506 := by
  rw [tree506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node504_eq
  unfold live504 coloured504 at child
  try dsimp only [live506, coloured506]
  rw [child]
  dsimp only [result504]
  have child := node505_eq
  unfold live505 coloured505 at child
  try dsimp only [live506, coloured506]
  rw [child]
  dsimp only [result505]
  try dsimp only [colour, result506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree507_agree : tree507 = literal507 := by
  rw [tree507_def]
  rfl
theorem node507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree507 live507 coloured507 = result507 := by
  rw [tree507_def]
  try dsimp only [colour, result507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree508_agree : tree508 = literal508 := by
  rw [tree508_def, tree506_agree, tree507_agree]
  rfl
theorem node508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree508 live508 coloured508 = result508 := by
  rw [tree508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node506_eq
  unfold live506 coloured506 at child
  try dsimp only [live508, coloured508]
  rw [child]
  dsimp only [result506]
  have child := node507_eq
  unfold live507 coloured507 at child
  try dsimp only [live508, coloured508]
  rw [child]
  dsimp only [result507]
  try dsimp only [colour, result508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree509_agree : tree509 = literal509 := by
  rw [tree509_def]
  rfl
theorem node509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree509 live509 coloured509 = result509 := by
  rw [tree509_def]
  try dsimp only [colour, result509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree510_agree : tree510 = literal510 := by
  rw [tree510_def, tree508_agree, tree509_agree]
  rfl
theorem node510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree510 live510 coloured510 = result510 := by
  rw [tree510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node508_eq
  unfold live508 coloured508 at child
  try dsimp only [live510, coloured510]
  rw [child]
  dsimp only [result508]
  have child := node509_eq
  unfold live509 coloured509 at child
  try dsimp only [live510, coloured510]
  rw [child]
  dsimp only [result509]
  try dsimp only [colour, result510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree511_agree : tree511 = literal511 := by
  rw [tree511_def]
  rfl
theorem node511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree511 live511 coloured511 = result511 := by
  rw [tree511_def]
  try dsimp only [colour, result511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree512_agree : tree512 = literal512 := by
  rw [tree512_def, tree510_agree, tree511_agree]
  rfl
theorem node512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree512 live512 coloured512 = result512 := by
  rw [tree512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node510_eq
  unfold live510 coloured510 at child
  try dsimp only [live512, coloured512]
  rw [child]
  dsimp only [result510]
  have child := node511_eq
  unfold live511 coloured511 at child
  try dsimp only [live512, coloured512]
  rw [child]
  dsimp only [result511]
  try dsimp only [colour, result512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree513_agree : tree513 = literal513 := by
  rw [tree513_def]
  rfl
theorem node513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree513 live513 coloured513 = result513 := by
  rw [tree513_def]
  try dsimp only [colour, result513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree514_agree : tree514 = literal514 := by
  rw [tree514_def, tree512_agree, tree513_agree]
  rfl
theorem node514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree514 live514 coloured514 = result514 := by
  rw [tree514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node512_eq
  unfold live512 coloured512 at child
  try dsimp only [live514, coloured514]
  rw [child]
  dsimp only [result512]
  have child := node513_eq
  unfold live513 coloured513 at child
  try dsimp only [live514, coloured514]
  rw [child]
  dsimp only [result513]
  try dsimp only [colour, result514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree515_agree : tree515 = literal515 := by
  rw [tree515_def]
  rfl
theorem node515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree515 live515 coloured515 = result515 := by
  rw [tree515_def]
  try dsimp only [colour, result515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree516_agree : tree516 = literal516 := by
  rw [tree516_def, tree514_agree, tree515_agree]
  rfl
theorem node516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree516 live516 coloured516 = result516 := by
  rw [tree516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node514_eq
  unfold live514 coloured514 at child
  try dsimp only [live516, coloured516]
  rw [child]
  dsimp only [result514]
  have child := node515_eq
  unfold live515 coloured515 at child
  try dsimp only [live516, coloured516]
  rw [child]
  dsimp only [result515]
  try dsimp only [colour, result516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree517_agree : tree517 = literal517 := by
  rw [tree517_def]
  rfl
theorem node517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree517 live517 coloured517 = result517 := by
  rw [tree517_def]
  try dsimp only [colour, result517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree518_agree : tree518 = literal518 := by
  rw [tree518_def, tree516_agree, tree517_agree]
  rfl
theorem node518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree518 live518 coloured518 = result518 := by
  rw [tree518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node516_eq
  unfold live516 coloured516 at child
  try dsimp only [live518, coloured518]
  rw [child]
  dsimp only [result516]
  have child := node517_eq
  unfold live517 coloured517 at child
  try dsimp only [live518, coloured518]
  rw [child]
  dsimp only [result517]
  try dsimp only [colour, result518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree519_agree : tree519 = literal519 := by
  rw [tree519_def]
  rfl
theorem node519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree519 live519 coloured519 = result519 := by
  rw [tree519_def]
  try dsimp only [colour, result519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree520_agree : tree520 = literal520 := by
  rw [tree520_def, tree518_agree, tree519_agree]
  rfl
theorem node520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree520 live520 coloured520 = result520 := by
  rw [tree520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node518_eq
  unfold live518 coloured518 at child
  try dsimp only [live520, coloured520]
  rw [child]
  dsimp only [result518]
  have child := node519_eq
  unfold live519 coloured519 at child
  try dsimp only [live520, coloured520]
  rw [child]
  dsimp only [result519]
  try dsimp only [colour, result520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree521_agree : tree521 = literal521 := by
  rw [tree521_def]
  rfl
theorem node521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree521 live521 coloured521 = result521 := by
  rw [tree521_def]
  try dsimp only [colour, result521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree522_agree : tree522 = literal522 := by
  rw [tree522_def, tree520_agree, tree521_agree]
  rfl
theorem node522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree522 live522 coloured522 = result522 := by
  rw [tree522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node520_eq
  unfold live520 coloured520 at child
  try dsimp only [live522, coloured522]
  rw [child]
  dsimp only [result520]
  have child := node521_eq
  unfold live521 coloured521 at child
  try dsimp only [live522, coloured522]
  rw [child]
  dsimp only [result521]
  try dsimp only [colour, result522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree523_agree : tree523 = literal523 := by
  rw [tree523_def]
  rfl
theorem node523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree523 live523 coloured523 = result523 := by
  rw [tree523_def]
  try dsimp only [colour, result523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree524_agree : tree524 = literal524 := by
  rw [tree524_def, tree522_agree, tree523_agree]
  rfl
theorem node524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree524 live524 coloured524 = result524 := by
  rw [tree524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node522_eq
  unfold live522 coloured522 at child
  try dsimp only [live524, coloured524]
  rw [child]
  dsimp only [result522]
  have child := node523_eq
  unfold live523 coloured523 at child
  try dsimp only [live524, coloured524]
  rw [child]
  dsimp only [result523]
  try dsimp only [colour, result524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree525_agree : tree525 = literal525 := by
  rw [tree525_def]
  rfl
theorem node525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree525 live525 coloured525 = result525 := by
  rw [tree525_def]
  try dsimp only [colour, result525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree526_agree : tree526 = literal526 := by
  rw [tree526_def, tree524_agree, tree525_agree]
  rfl
theorem node526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree526 live526 coloured526 = result526 := by
  rw [tree526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node524_eq
  unfold live524 coloured524 at child
  try dsimp only [live526, coloured526]
  rw [child]
  dsimp only [result524]
  have child := node525_eq
  unfold live525 coloured525 at child
  try dsimp only [live526, coloured526]
  rw [child]
  dsimp only [result525]
  try dsimp only [colour, result526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree527_agree : tree527 = literal527 := by
  rw [tree527_def]
  rfl
theorem node527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree527 live527 coloured527 = result527 := by
  rw [tree527_def]
  try dsimp only [colour, result527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree528_agree : tree528 = literal528 := by
  rw [tree528_def, tree526_agree, tree527_agree]
  rfl
theorem node528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree528 live528 coloured528 = result528 := by
  rw [tree528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node526_eq
  unfold live526 coloured526 at child
  try dsimp only [live528, coloured528]
  rw [child]
  dsimp only [result526]
  have child := node527_eq
  unfold live527 coloured527 at child
  try dsimp only [live528, coloured528]
  rw [child]
  dsimp only [result527]
  try dsimp only [colour, result528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree529_agree : tree529 = literal529 := by
  rw [tree529_def]
  rfl
theorem node529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree529 live529 coloured529 = result529 := by
  rw [tree529_def]
  try dsimp only [colour, result529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree530_agree : tree530 = literal530 := by
  rw [tree530_def, tree528_agree, tree529_agree]
  rfl
theorem node530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree530 live530 coloured530 = result530 := by
  rw [tree530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node528_eq
  unfold live528 coloured528 at child
  try dsimp only [live530, coloured530]
  rw [child]
  dsimp only [result528]
  have child := node529_eq
  unfold live529 coloured529 at child
  try dsimp only [live530, coloured530]
  rw [child]
  dsimp only [result529]
  try dsimp only [colour, result530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree531_agree : tree531 = literal531 := by
  rw [tree531_def]
  rfl
theorem node531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree531 live531 coloured531 = result531 := by
  rw [tree531_def]
  try dsimp only [colour, result531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree532_agree : tree532 = literal532 := by
  rw [tree532_def, tree530_agree, tree531_agree]
  rfl
theorem node532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree532 live532 coloured532 = result532 := by
  rw [tree532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node530_eq
  unfold live530 coloured530 at child
  try dsimp only [live532, coloured532]
  rw [child]
  dsimp only [result530]
  have child := node531_eq
  unfold live531 coloured531 at child
  try dsimp only [live532, coloured532]
  rw [child]
  dsimp only [result531]
  try dsimp only [colour, result532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree533_agree : tree533 = literal533 := by
  rw [tree533_def]
  rfl
theorem node533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree533 live533 coloured533 = result533 := by
  rw [tree533_def]
  try dsimp only [colour, result533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree534_agree : tree534 = literal534 := by
  rw [tree534_def, tree532_agree, tree533_agree]
  rfl
theorem node534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree534 live534 coloured534 = result534 := by
  rw [tree534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node532_eq
  unfold live532 coloured532 at child
  try dsimp only [live534, coloured534]
  rw [child]
  dsimp only [result532]
  have child := node533_eq
  unfold live533 coloured533 at child
  try dsimp only [live534, coloured534]
  rw [child]
  dsimp only [result533]
  try dsimp only [colour, result534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree535_agree : tree535 = literal535 := by
  rw [tree535_def]
  rfl
theorem node535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree535 live535 coloured535 = result535 := by
  rw [tree535_def]
  try dsimp only [colour, result535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree536_agree : tree536 = literal536 := by
  rw [tree536_def, tree534_agree, tree535_agree]
  rfl
theorem node536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree536 live536 coloured536 = result536 := by
  rw [tree536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node534_eq
  unfold live534 coloured534 at child
  try dsimp only [live536, coloured536]
  rw [child]
  dsimp only [result534]
  have child := node535_eq
  unfold live535 coloured535 at child
  try dsimp only [live536, coloured536]
  rw [child]
  dsimp only [result535]
  try dsimp only [colour, result536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree537_agree : tree537 = literal537 := by
  rw [tree537_def]
  rfl
theorem node537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree537 live537 coloured537 = result537 := by
  rw [tree537_def]
  try dsimp only [colour, result537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree538_agree : tree538 = literal538 := by
  rw [tree538_def, tree536_agree, tree537_agree]
  rfl
theorem node538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree538 live538 coloured538 = result538 := by
  rw [tree538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node536_eq
  unfold live536 coloured536 at child
  try dsimp only [live538, coloured538]
  rw [child]
  dsimp only [result536]
  have child := node537_eq
  unfold live537 coloured537 at child
  try dsimp only [live538, coloured538]
  rw [child]
  dsimp only [result537]
  try dsimp only [colour, result538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree539_agree : tree539 = literal539 := by
  rw [tree539_def]
  rfl
theorem node539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree539 live539 coloured539 = result539 := by
  rw [tree539_def]
  try dsimp only [colour, result539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree540_agree : tree540 = literal540 := by
  rw [tree540_def, tree538_agree, tree539_agree]
  rfl
theorem node540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree540 live540 coloured540 = result540 := by
  rw [tree540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node538_eq
  unfold live538 coloured538 at child
  try dsimp only [live540, coloured540]
  rw [child]
  dsimp only [result538]
  have child := node539_eq
  unfold live539 coloured539 at child
  try dsimp only [live540, coloured540]
  rw [child]
  dsimp only [result539]
  try dsimp only [colour, result540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree541_agree : tree541 = literal541 := by
  rw [tree541_def]
  rfl
theorem node541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree541 live541 coloured541 = result541 := by
  rw [tree541_def]
  try dsimp only [colour, result541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree542_agree : tree542 = literal542 := by
  rw [tree542_def, tree540_agree, tree541_agree]
  rfl
theorem node542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree542 live542 coloured542 = result542 := by
  rw [tree542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node540_eq
  unfold live540 coloured540 at child
  try dsimp only [live542, coloured542]
  rw [child]
  dsimp only [result540]
  have child := node541_eq
  unfold live541 coloured541 at child
  try dsimp only [live542, coloured542]
  rw [child]
  dsimp only [result541]
  try dsimp only [colour, result542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree543_agree : tree543 = literal543 := by
  rw [tree543_def]
  rfl
theorem node543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree543 live543 coloured543 = result543 := by
  rw [tree543_def]
  try dsimp only [colour, result543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree544_agree : tree544 = literal544 := by
  rw [tree544_def, tree542_agree, tree543_agree]
  rfl
theorem node544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree544 live544 coloured544 = result544 := by
  rw [tree544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node542_eq
  unfold live542 coloured542 at child
  try dsimp only [live544, coloured544]
  rw [child]
  dsimp only [result542]
  have child := node543_eq
  unfold live543 coloured543 at child
  try dsimp only [live544, coloured544]
  rw [child]
  dsimp only [result543]
  try dsimp only [colour, result544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree545_agree : tree545 = literal545 := by
  rw [tree545_def]
  rfl
theorem node545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree545 live545 coloured545 = result545 := by
  rw [tree545_def]
  try dsimp only [colour, result545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree546_agree : tree546 = literal546 := by
  rw [tree546_def, tree544_agree, tree545_agree]
  rfl
theorem node546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree546 live546 coloured546 = result546 := by
  rw [tree546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node544_eq
  unfold live544 coloured544 at child
  try dsimp only [live546, coloured546]
  rw [child]
  dsimp only [result544]
  have child := node545_eq
  unfold live545 coloured545 at child
  try dsimp only [live546, coloured546]
  rw [child]
  dsimp only [result545]
  try dsimp only [colour, result546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree547_agree : tree547 = literal547 := by
  rw [tree547_def]
  rfl
theorem node547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree547 live547 coloured547 = result547 := by
  rw [tree547_def]
  try dsimp only [colour, result547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree548_agree : tree548 = literal548 := by
  rw [tree548_def, tree546_agree, tree547_agree]
  rfl
theorem node548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree548 live548 coloured548 = result548 := by
  rw [tree548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node546_eq
  unfold live546 coloured546 at child
  try dsimp only [live548, coloured548]
  rw [child]
  dsimp only [result546]
  have child := node547_eq
  unfold live547 coloured547 at child
  try dsimp only [live548, coloured548]
  rw [child]
  dsimp only [result547]
  try dsimp only [colour, result548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree549_agree : tree549 = literal549 := by
  rw [tree549_def]
  rfl
theorem node549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree549 live549 coloured549 = result549 := by
  rw [tree549_def]
  try dsimp only [colour, result549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree550_agree : tree550 = literal550 := by
  rw [tree550_def, tree548_agree, tree549_agree]
  rfl
theorem node550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree550 live550 coloured550 = result550 := by
  rw [tree550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node548_eq
  unfold live548 coloured548 at child
  try dsimp only [live550, coloured550]
  rw [child]
  dsimp only [result548]
  have child := node549_eq
  unfold live549 coloured549 at child
  try dsimp only [live550, coloured550]
  rw [child]
  dsimp only [result549]
  try dsimp only [colour, result550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree551_agree : tree551 = literal551 := by
  rw [tree551_def]
  rfl
theorem node551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree551 live551 coloured551 = result551 := by
  rw [tree551_def]
  try dsimp only [colour, result551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree552_agree : tree552 = literal552 := by
  rw [tree552_def, tree550_agree, tree551_agree]
  rfl
theorem node552_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree552 live552 coloured552 = result552 := by
  rw [tree552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node550_eq
  unfold live550 coloured550 at child
  try dsimp only [live552, coloured552]
  rw [child]
  dsimp only [result550]
  have child := node551_eq
  unfold live551 coloured551 at child
  try dsimp only [live552, coloured552]
  rw [child]
  dsimp only [result551]
  try dsimp only [colour, result552]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree553_agree : tree553 = literal553 := by
  rw [tree553_def]
  rfl
theorem node553_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree553 live553 coloured553 = result553 := by
  rw [tree553_def]
  try dsimp only [colour, result553]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree554_agree : tree554 = literal554 := by
  rw [tree554_def, tree552_agree, tree553_agree]
  rfl
theorem node554_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree554 live554 coloured554 = result554 := by
  rw [tree554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node552_eq
  unfold live552 coloured552 at child
  try dsimp only [live554, coloured554]
  rw [child]
  dsimp only [result552]
  have child := node553_eq
  unfold live553 coloured553 at child
  try dsimp only [live554, coloured554]
  rw [child]
  dsimp only [result553]
  try dsimp only [colour, result554]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree555_agree : tree555 = literal555 := by
  rw [tree555_def]
  rfl
theorem node555_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree555 live555 coloured555 = result555 := by
  rw [tree555_def]
  try dsimp only [colour, result555]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree556_agree : tree556 = literal556 := by
  rw [tree556_def, tree554_agree, tree555_agree]
  rfl
theorem node556_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree556 live556 coloured556 = result556 := by
  rw [tree556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node554_eq
  unfold live554 coloured554 at child
  try dsimp only [live556, coloured556]
  rw [child]
  dsimp only [result554]
  have child := node555_eq
  unfold live555 coloured555 at child
  try dsimp only [live556, coloured556]
  rw [child]
  dsimp only [result555]
  try dsimp only [colour, result556]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree557_agree : tree557 = literal557 := by
  rw [tree557_def]
  rfl
theorem node557_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree557 live557 coloured557 = result557 := by
  rw [tree557_def]
  try dsimp only [colour, result557]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree558_agree : tree558 = literal558 := by
  rw [tree558_def, tree556_agree, tree557_agree]
  rfl
theorem node558_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree558 live558 coloured558 = result558 := by
  rw [tree558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node556_eq
  unfold live556 coloured556 at child
  try dsimp only [live558, coloured558]
  rw [child]
  dsimp only [result556]
  have child := node557_eq
  unfold live557 coloured557 at child
  try dsimp only [live558, coloured558]
  rw [child]
  dsimp only [result557]
  try dsimp only [colour, result558]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree559_agree : tree559 = literal559 := by
  rw [tree559_def]
  rfl
theorem node559_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree559 live559 coloured559 = result559 := by
  rw [tree559_def]
  try dsimp only [colour, result559]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree560_agree : tree560 = literal560 := by
  rw [tree560_def, tree558_agree, tree559_agree]
  rfl
theorem node560_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree560 live560 coloured560 = result560 := by
  rw [tree560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node558_eq
  unfold live558 coloured558 at child
  try dsimp only [live560, coloured560]
  rw [child]
  dsimp only [result558]
  have child := node559_eq
  unfold live559 coloured559 at child
  try dsimp only [live560, coloured560]
  rw [child]
  dsimp only [result559]
  try dsimp only [colour, result560]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree561_agree : tree561 = literal561 := by
  rw [tree561_def]
  rfl
theorem node561_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree561 live561 coloured561 = result561 := by
  rw [tree561_def]
  try dsimp only [colour, result561]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree562_agree : tree562 = literal562 := by
  rw [tree562_def, tree560_agree, tree561_agree]
  rfl
theorem node562_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree562 live562 coloured562 = result562 := by
  rw [tree562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node560_eq
  unfold live560 coloured560 at child
  try dsimp only [live562, coloured562]
  rw [child]
  dsimp only [result560]
  have child := node561_eq
  unfold live561 coloured561 at child
  try dsimp only [live562, coloured562]
  rw [child]
  dsimp only [result561]
  try dsimp only [colour, result562]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree563_agree : tree563 = literal563 := by
  rw [tree563_def]
  rfl
theorem node563_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree563 live563 coloured563 = result563 := by
  rw [tree563_def]
  try dsimp only [colour, result563]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree564_agree : tree564 = literal564 := by
  rw [tree564_def, tree562_agree, tree563_agree]
  rfl
theorem node564_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree564 live564 coloured564 = result564 := by
  rw [tree564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node562_eq
  unfold live562 coloured562 at child
  try dsimp only [live564, coloured564]
  rw [child]
  dsimp only [result562]
  have child := node563_eq
  unfold live563 coloured563 at child
  try dsimp only [live564, coloured564]
  rw [child]
  dsimp only [result563]
  try dsimp only [colour, result564]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree565_agree : tree565 = literal565 := by
  rw [tree565_def]
  rfl
theorem node565_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree565 live565 coloured565 = result565 := by
  rw [tree565_def]
  try dsimp only [colour, result565]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree566_agree : tree566 = literal566 := by
  rw [tree566_def, tree564_agree, tree565_agree]
  rfl
theorem node566_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree566 live566 coloured566 = result566 := by
  rw [tree566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node564_eq
  unfold live564 coloured564 at child
  try dsimp only [live566, coloured566]
  rw [child]
  dsimp only [result564]
  have child := node565_eq
  unfold live565 coloured565 at child
  try dsimp only [live566, coloured566]
  rw [child]
  dsimp only [result565]
  try dsimp only [colour, result566]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree567_agree : tree567 = literal567 := by
  rw [tree567_def]
  rfl
theorem node567_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree567 live567 coloured567 = result567 := by
  rw [tree567_def]
  try dsimp only [colour, result567]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree568_agree : tree568 = literal568 := by
  rw [tree568_def, tree566_agree, tree567_agree]
  rfl
theorem node568_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree568 live568 coloured568 = result568 := by
  rw [tree568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node566_eq
  unfold live566 coloured566 at child
  try dsimp only [live568, coloured568]
  rw [child]
  dsimp only [result566]
  have child := node567_eq
  unfold live567 coloured567 at child
  try dsimp only [live568, coloured568]
  rw [child]
  dsimp only [result567]
  try dsimp only [colour, result568]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree569_agree : tree569 = literal569 := by
  rw [tree569_def]
  rfl
theorem node569_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree569 live569 coloured569 = result569 := by
  rw [tree569_def]
  try dsimp only [colour, result569]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree570_agree : tree570 = literal570 := by
  rw [tree570_def, tree568_agree, tree569_agree]
  rfl
theorem node570_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree570 live570 coloured570 = result570 := by
  rw [tree570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node568_eq
  unfold live568 coloured568 at child
  try dsimp only [live570, coloured570]
  rw [child]
  dsimp only [result568]
  have child := node569_eq
  unfold live569 coloured569 at child
  try dsimp only [live570, coloured570]
  rw [child]
  dsimp only [result569]
  try dsimp only [colour, result570]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree571_agree : tree571 = literal571 := by
  rw [tree571_def]
  rfl
theorem node571_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree571 live571 coloured571 = result571 := by
  rw [tree571_def]
  try dsimp only [colour, result571]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree572_agree : tree572 = literal572 := by
  rw [tree572_def, tree570_agree, tree571_agree]
  rfl
theorem node572_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree572 live572 coloured572 = result572 := by
  rw [tree572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node570_eq
  unfold live570 coloured570 at child
  try dsimp only [live572, coloured572]
  rw [child]
  dsimp only [result570]
  have child := node571_eq
  unfold live571 coloured571 at child
  try dsimp only [live572, coloured572]
  rw [child]
  dsimp only [result571]
  try dsimp only [colour, result572]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree573_agree : tree573 = literal573 := by
  rw [tree573_def]
  rfl
theorem node573_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree573 live573 coloured573 = result573 := by
  rw [tree573_def]
  try dsimp only [colour, result573]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree574_agree : tree574 = literal574 := by
  rw [tree574_def, tree572_agree, tree573_agree]
  rfl
theorem node574_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree574 live574 coloured574 = result574 := by
  rw [tree574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node572_eq
  unfold live572 coloured572 at child
  try dsimp only [live574, coloured574]
  rw [child]
  dsimp only [result572]
  have child := node573_eq
  unfold live573 coloured573 at child
  try dsimp only [live574, coloured574]
  rw [child]
  dsimp only [result573]
  try dsimp only [colour, result574]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree575_agree : tree575 = literal575 := by
  rw [tree575_def]
  rfl
theorem node575_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree575 live575 coloured575 = result575 := by
  rw [tree575_def]
  try dsimp only [colour, result575]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
