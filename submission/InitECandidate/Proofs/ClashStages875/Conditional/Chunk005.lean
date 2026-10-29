import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages875.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages875
theorem tree480_agree_conditional
    (child0 : tree478 = literal478)
    (child1 : tree479 = literal479) : tree480 = literal480 := by
  rw [tree480_def, child0, child1]
  rfl
theorem node480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree478 live478 coloured478 = result478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree479 live479 coloured479 = result479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree480 live480 coloured480 = result480 := by
  rw [tree480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live478 coloured478 at child
  try dsimp only [live480, coloured480]
  rw [child]
  dsimp only [result478]
  have child := child1
  unfold live479 coloured479 at child
  try dsimp only [live480, coloured480]
  rw [child]
  dsimp only [result479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree481_agree_conditional : tree481 = literal481 := by
  rw [tree481_def]
  rfl
theorem node481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree481 live481 coloured481 = result481 := by
  rw [tree481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree482_agree_conditional
    (child0 : tree480 = literal480)
    (child1 : tree481 = literal481) : tree482 = literal482 := by
  rw [tree482_def, child0, child1]
  rfl
theorem node482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree480 live480 coloured480 = result480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree481 live481 coloured481 = result481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree482 live482 coloured482 = result482 := by
  rw [tree482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live480 coloured480 at child
  try dsimp only [live482, coloured482]
  rw [child]
  dsimp only [result480]
  have child := child1
  unfold live481 coloured481 at child
  try dsimp only [live482, coloured482]
  rw [child]
  dsimp only [result481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree483_agree_conditional : tree483 = literal483 := by
  rw [tree483_def]
  rfl
theorem node483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree483 live483 coloured483 = result483 := by
  rw [tree483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree484_agree_conditional : tree484 = literal484 := by
  rw [tree484_def]
  rfl
theorem node484_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree484 live484 coloured484 = result484 := by
  rw [tree484_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree485_agree_conditional
    (child0 : tree483 = literal483)
    (child1 : tree484 = literal484) : tree485 = literal485 := by
  rw [tree485_def, child0, child1]
  rfl
theorem node485_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree483 live483 coloured483 = result483)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree484 live484 coloured484 = result484) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree485 live485 coloured485 = result485 := by
  rw [tree485_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live483 coloured483 at child
  try dsimp only [live485, coloured485]
  rw [child]
  dsimp only [result483]
  have child := child1
  unfold live484 coloured484 at child
  try dsimp only [live485, coloured485]
  rw [child]
  dsimp only [result484]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree486_agree_conditional : tree486 = literal486 := by
  rw [tree486_def]
  rfl
theorem node486_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree486 live486 coloured486 = result486 := by
  rw [tree486_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree487_agree_conditional : tree487 = literal487 := by
  rw [tree487_def]
  rfl
theorem node487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree487 live487 coloured487 = result487 := by
  rw [tree487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree488_agree_conditional
    (child0 : tree486 = literal486)
    (child1 : tree487 = literal487) : tree488 = literal488 := by
  rw [tree488_def, child0, child1]
  rfl
theorem node488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree486 live486 coloured486 = result486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree487 live487 coloured487 = result487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree488 live488 coloured488 = result488 := by
  rw [tree488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live486 coloured486 at child
  try dsimp only [live488, coloured488]
  rw [child]
  dsimp only [result486]
  have child := child1
  unfold live487 coloured487 at child
  try dsimp only [live488, coloured488]
  rw [child]
  dsimp only [result487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree489_agree_conditional : tree489 = literal489 := by
  rw [tree489_def]
  rfl
theorem node489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree489 live489 coloured489 = result489 := by
  rw [tree489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree490_agree_conditional : tree490 = literal490 := by
  rw [tree490_def]
  rfl
theorem node490_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree490 live490 coloured490 = result490 := by
  rw [tree490_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree491_agree_conditional
    (child0 : tree489 = literal489)
    (child1 : tree490 = literal490) : tree491 = literal491 := by
  rw [tree491_def, child0, child1]
  rfl
theorem node491_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree489 live489 coloured489 = result489)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree490 live490 coloured490 = result490) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree491 live491 coloured491 = result491 := by
  rw [tree491_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live489 coloured489 at child
  try dsimp only [live491, coloured491]
  rw [child]
  dsimp only [result489]
  have child := child1
  unfold live490 coloured490 at child
  try dsimp only [live491, coloured491]
  rw [child]
  dsimp only [result490]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree492_agree_conditional : tree492 = literal492 := by
  rw [tree492_def]
  rfl
theorem node492_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree492 live492 coloured492 = result492 := by
  rw [tree492_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree493_agree_conditional
    (child0 : tree491 = literal491)
    (child1 : tree492 = literal492) : tree493 = literal493 := by
  rw [tree493_def, child0, child1]
  rfl
theorem node493_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree491 live491 coloured491 = result491)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree492 live492 coloured492 = result492) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree493 live493 coloured493 = result493 := by
  rw [tree493_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live491 coloured491 at child
  try dsimp only [live493, coloured493]
  rw [child]
  dsimp only [result491]
  have child := child1
  unfold live492 coloured492 at child
  try dsimp only [live493, coloured493]
  rw [child]
  dsimp only [result492]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree494_agree_conditional
    (child0 : tree488 = literal488)
    (child1 : tree493 = literal493) : tree494 = literal494 := by
  rw [tree494_def, child0, child1]
  rfl
theorem node494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree488 live488 coloured488 = result488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree493 live493 coloured493 = result493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree494 live494 coloured494 = result494 := by
  rw [tree494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live488 coloured488 at child
  try dsimp only [live494, coloured494]
  rw [child]
  dsimp only [result488]
  have child := child1
  unfold live493 coloured493 at child
  try dsimp only [live494, coloured494]
  rw [child]
  dsimp only [result493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree495_agree_conditional
    (child0 : tree485 = literal485)
    (child1 : tree494 = literal494) : tree495 = literal495 := by
  rw [tree495_def, child0, child1]
  rfl
theorem node495_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree485 live485 coloured485 = result485)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree494 live494 coloured494 = result494) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree495 live495 coloured495 = result495 := by
  rw [tree495_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live485 coloured485 at child
  try dsimp only [live495, coloured495]
  rw [child]
  dsimp only [result485]
  have child := child1
  unfold live494 coloured494 at child
  try dsimp only [live495, coloured495]
  rw [child]
  dsimp only [result494]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree496_agree_conditional : tree496 = literal496 := by
  rw [tree496_def]
  rfl
theorem node496_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree496 live496 coloured496 = result496 := by
  rw [tree496_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree497_agree_conditional
    (child0 : tree495 = literal495)
    (child1 : tree496 = literal496) : tree497 = literal497 := by
  rw [tree497_def, child0, child1]
  rfl
theorem node497_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree495 live495 coloured495 = result495)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree496 live496 coloured496 = result496) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree497 live497 coloured497 = result497 := by
  rw [tree497_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live495 coloured495 at child
  try dsimp only [live497, coloured497]
  rw [child]
  dsimp only [result495]
  have child := child1
  unfold live496 coloured496 at child
  try dsimp only [live497, coloured497]
  rw [child]
  dsimp only [result496]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree498_agree_conditional : tree498 = literal498 := by
  rw [tree498_def]
  rfl
theorem node498_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree498 live498 coloured498 = result498 := by
  rw [tree498_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree499_agree_conditional
    (child0 : tree497 = literal497)
    (child1 : tree498 = literal498) : tree499 = literal499 := by
  rw [tree499_def, child0, child1]
  rfl
theorem node499_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree497 live497 coloured497 = result497)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree498 live498 coloured498 = result498) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree499 live499 coloured499 = result499 := by
  rw [tree499_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live497 coloured497 at child
  try dsimp only [live499, coloured499]
  rw [child]
  dsimp only [result497]
  have child := child1
  unfold live498 coloured498 at child
  try dsimp only [live499, coloured499]
  rw [child]
  dsimp only [result498]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree500_agree_conditional : tree500 = literal500 := by
  rw [tree500_def]
  rfl
theorem node500_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree500 live500 coloured500 = result500 := by
  rw [tree500_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree501_agree_conditional
    (child0 : tree499 = literal499)
    (child1 : tree500 = literal500) : tree501 = literal501 := by
  rw [tree501_def, child0, child1]
  rfl
theorem node501_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree499 live499 coloured499 = result499)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree500 live500 coloured500 = result500) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree501 live501 coloured501 = result501 := by
  rw [tree501_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live499 coloured499 at child
  try dsimp only [live501, coloured501]
  rw [child]
  dsimp only [result499]
  have child := child1
  unfold live500 coloured500 at child
  try dsimp only [live501, coloured501]
  rw [child]
  dsimp only [result500]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree502_agree_conditional : tree502 = literal502 := by
  rw [tree502_def]
  rfl
theorem node502_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree502 live502 coloured502 = result502 := by
  rw [tree502_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree503_agree_conditional
    (child0 : tree501 = literal501)
    (child1 : tree502 = literal502) : tree503 = literal503 := by
  rw [tree503_def, child0, child1]
  rfl
theorem node503_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree501 live501 coloured501 = result501)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree502 live502 coloured502 = result502) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree503 live503 coloured503 = result503 := by
  rw [tree503_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live501 coloured501 at child
  try dsimp only [live503, coloured503]
  rw [child]
  dsimp only [result501]
  have child := child1
  unfold live502 coloured502 at child
  try dsimp only [live503, coloured503]
  rw [child]
  dsimp only [result502]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree504_agree_conditional : tree504 = literal504 := by
  rw [tree504_def]
  rfl
theorem node504_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree504 live504 coloured504 = result504 := by
  rw [tree504_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree505_agree_conditional : tree505 = literal505 := by
  rw [tree505_def]
  rfl
theorem node505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree505 live505 coloured505 = result505 := by
  rw [tree505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree506_agree_conditional
    (child0 : tree504 = literal504)
    (child1 : tree505 = literal505) : tree506 = literal506 := by
  rw [tree506_def, child0, child1]
  rfl
theorem node506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree504 live504 coloured504 = result504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree505 live505 coloured505 = result505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree506 live506 coloured506 = result506 := by
  rw [tree506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live504 coloured504 at child
  try dsimp only [live506, coloured506]
  rw [child]
  dsimp only [result504]
  have child := child1
  unfold live505 coloured505 at child
  try dsimp only [live506, coloured506]
  rw [child]
  dsimp only [result505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree507_agree_conditional
    (child0 : tree503 = literal503)
    (child1 : tree506 = literal506) : tree507 = literal507 := by
  rw [tree507_def, child0, child1]
  rfl
theorem node507_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree503 live503 coloured503 = result503)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree506 live506 coloured506 = result506) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree507 live507 coloured507 = result507 := by
  rw [tree507_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live503 coloured503 at child
  try dsimp only [live507, coloured507]
  rw [child]
  dsimp only [result503]
  have child := child1
  unfold live506 coloured506 at child
  try dsimp only [live507, coloured507]
  rw [child]
  dsimp only [result506]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree508_agree_conditional : tree508 = literal508 := by
  rw [tree508_def]
  rfl
theorem node508_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree508 live508 coloured508 = result508 := by
  rw [tree508_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree509_agree_conditional
    (child0 : tree507 = literal507)
    (child1 : tree508 = literal508) : tree509 = literal509 := by
  rw [tree509_def, child0, child1]
  rfl
theorem node509_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree507 live507 coloured507 = result507)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree508 live508 coloured508 = result508) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree509 live509 coloured509 = result509 := by
  rw [tree509_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live507 coloured507 at child
  try dsimp only [live509, coloured509]
  rw [child]
  dsimp only [result507]
  have child := child1
  unfold live508 coloured508 at child
  try dsimp only [live509, coloured509]
  rw [child]
  dsimp only [result508]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree510_agree_conditional
    (child0 : tree482 = literal482)
    (child1 : tree509 = literal509) : tree510 = literal510 := by
  rw [tree510_def, child0, child1]
  rfl
theorem node510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree482 live482 coloured482 = result482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree509 live509 coloured509 = result509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree510 live510 coloured510 = result510 := by
  rw [tree510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live482 coloured482 at child
  try dsimp only [live510, coloured510]
  rw [child]
  dsimp only [result482]
  have child := child1
  unfold live509 coloured509 at child
  try dsimp only [live510, coloured510]
  rw [child]
  dsimp only [result509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree511_agree_conditional : tree511 = literal511 := by
  rw [tree511_def]
  rfl
theorem node511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree511 live511 coloured511 = result511 := by
  rw [tree511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree512_agree_conditional
    (child0 : tree510 = literal510)
    (child1 : tree511 = literal511) : tree512 = literal512 := by
  rw [tree512_def, child0, child1]
  rfl
theorem node512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree510 live510 coloured510 = result510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree511 live511 coloured511 = result511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree512 live512 coloured512 = result512 := by
  rw [tree512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live510 coloured510 at child
  try dsimp only [live512, coloured512]
  rw [child]
  dsimp only [result510]
  have child := child1
  unfold live511 coloured511 at child
  try dsimp only [live512, coloured512]
  rw [child]
  dsimp only [result511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree513_agree_conditional : tree513 = literal513 := by
  rw [tree513_def]
  rfl
theorem node513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree513 live513 coloured513 = result513 := by
  rw [tree513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree514_agree_conditional
    (child0 : tree512 = literal512)
    (child1 : tree513 = literal513) : tree514 = literal514 := by
  rw [tree514_def, child0, child1]
  rfl
theorem node514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree512 live512 coloured512 = result512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree513 live513 coloured513 = result513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree514 live514 coloured514 = result514 := by
  rw [tree514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live512 coloured512 at child
  try dsimp only [live514, coloured514]
  rw [child]
  dsimp only [result512]
  have child := child1
  unfold live513 coloured513 at child
  try dsimp only [live514, coloured514]
  rw [child]
  dsimp only [result513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree515_agree_conditional : tree515 = literal515 := by
  rw [tree515_def]
  rfl
theorem node515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree515 live515 coloured515 = result515 := by
  rw [tree515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree516_agree_conditional
    (child0 : tree514 = literal514)
    (child1 : tree515 = literal515) : tree516 = literal516 := by
  rw [tree516_def, child0, child1]
  rfl
theorem node516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree514 live514 coloured514 = result514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree515 live515 coloured515 = result515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree516 live516 coloured516 = result516 := by
  rw [tree516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live514 coloured514 at child
  try dsimp only [live516, coloured516]
  rw [child]
  dsimp only [result514]
  have child := child1
  unfold live515 coloured515 at child
  try dsimp only [live516, coloured516]
  rw [child]
  dsimp only [result515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree517_agree_conditional : tree517 = literal517 := by
  rw [tree517_def]
  rfl
theorem node517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree517 live517 coloured517 = result517 := by
  rw [tree517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree518_agree_conditional
    (child0 : tree516 = literal516)
    (child1 : tree517 = literal517) : tree518 = literal518 := by
  rw [tree518_def, child0, child1]
  rfl
theorem node518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree516 live516 coloured516 = result516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree517 live517 coloured517 = result517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree518 live518 coloured518 = result518 := by
  rw [tree518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live516 coloured516 at child
  try dsimp only [live518, coloured518]
  rw [child]
  dsimp only [result516]
  have child := child1
  unfold live517 coloured517 at child
  try dsimp only [live518, coloured518]
  rw [child]
  dsimp only [result517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree519_agree_conditional : tree519 = literal519 := by
  rw [tree519_def]
  rfl
theorem node519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree519 live519 coloured519 = result519 := by
  rw [tree519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree520_agree_conditional
    (child0 : tree518 = literal518)
    (child1 : tree519 = literal519) : tree520 = literal520 := by
  rw [tree520_def, child0, child1]
  rfl
theorem node520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree518 live518 coloured518 = result518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree519 live519 coloured519 = result519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree520 live520 coloured520 = result520 := by
  rw [tree520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live518 coloured518 at child
  try dsimp only [live520, coloured520]
  rw [child]
  dsimp only [result518]
  have child := child1
  unfold live519 coloured519 at child
  try dsimp only [live520, coloured520]
  rw [child]
  dsimp only [result519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree521_agree_conditional : tree521 = literal521 := by
  rw [tree521_def]
  rfl
theorem node521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree521 live521 coloured521 = result521 := by
  rw [tree521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree522_agree_conditional
    (child0 : tree520 = literal520)
    (child1 : tree521 = literal521) : tree522 = literal522 := by
  rw [tree522_def, child0, child1]
  rfl
theorem node522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree520 live520 coloured520 = result520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree521 live521 coloured521 = result521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree522 live522 coloured522 = result522 := by
  rw [tree522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live520 coloured520 at child
  try dsimp only [live522, coloured522]
  rw [child]
  dsimp only [result520]
  have child := child1
  unfold live521 coloured521 at child
  try dsimp only [live522, coloured522]
  rw [child]
  dsimp only [result521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree523_agree_conditional : tree523 = literal523 := by
  rw [tree523_def]
  rfl
theorem node523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree523 live523 coloured523 = result523 := by
  rw [tree523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree524_agree_conditional
    (child0 : tree522 = literal522)
    (child1 : tree523 = literal523) : tree524 = literal524 := by
  rw [tree524_def, child0, child1]
  rfl
theorem node524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree522 live522 coloured522 = result522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree523 live523 coloured523 = result523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree524 live524 coloured524 = result524 := by
  rw [tree524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live522 coloured522 at child
  try dsimp only [live524, coloured524]
  rw [child]
  dsimp only [result522]
  have child := child1
  unfold live523 coloured523 at child
  try dsimp only [live524, coloured524]
  rw [child]
  dsimp only [result523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree525_agree_conditional : tree525 = literal525 := by
  rw [tree525_def]
  rfl
theorem node525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree525 live525 coloured525 = result525 := by
  rw [tree525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree526_agree_conditional
    (child0 : tree524 = literal524)
    (child1 : tree525 = literal525) : tree526 = literal526 := by
  rw [tree526_def, child0, child1]
  rfl
theorem node526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree524 live524 coloured524 = result524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree525 live525 coloured525 = result525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree526 live526 coloured526 = result526 := by
  rw [tree526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live524 coloured524 at child
  try dsimp only [live526, coloured526]
  rw [child]
  dsimp only [result524]
  have child := child1
  unfold live525 coloured525 at child
  try dsimp only [live526, coloured526]
  rw [child]
  dsimp only [result525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree527_agree_conditional : tree527 = literal527 := by
  rw [tree527_def]
  rfl
theorem node527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree527 live527 coloured527 = result527 := by
  rw [tree527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree528_agree_conditional
    (child0 : tree526 = literal526)
    (child1 : tree527 = literal527) : tree528 = literal528 := by
  rw [tree528_def, child0, child1]
  rfl
theorem node528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree526 live526 coloured526 = result526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree527 live527 coloured527 = result527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree528 live528 coloured528 = result528 := by
  rw [tree528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live526 coloured526 at child
  try dsimp only [live528, coloured528]
  rw [child]
  dsimp only [result526]
  have child := child1
  unfold live527 coloured527 at child
  try dsimp only [live528, coloured528]
  rw [child]
  dsimp only [result527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree529_agree_conditional : tree529 = literal529 := by
  rw [tree529_def]
  rfl
theorem node529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree529 live529 coloured529 = result529 := by
  rw [tree529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree530_agree_conditional
    (child0 : tree528 = literal528)
    (child1 : tree529 = literal529) : tree530 = literal530 := by
  rw [tree530_def, child0, child1]
  rfl
theorem node530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree528 live528 coloured528 = result528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree529 live529 coloured529 = result529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree530 live530 coloured530 = result530 := by
  rw [tree530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live528 coloured528 at child
  try dsimp only [live530, coloured530]
  rw [child]
  dsimp only [result528]
  have child := child1
  unfold live529 coloured529 at child
  try dsimp only [live530, coloured530]
  rw [child]
  dsimp only [result529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree531_agree_conditional : tree531 = literal531 := by
  rw [tree531_def]
  rfl
theorem node531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree531 live531 coloured531 = result531 := by
  rw [tree531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree532_agree_conditional
    (child0 : tree530 = literal530)
    (child1 : tree531 = literal531) : tree532 = literal532 := by
  rw [tree532_def, child0, child1]
  rfl
theorem node532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree530 live530 coloured530 = result530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree531 live531 coloured531 = result531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree532 live532 coloured532 = result532 := by
  rw [tree532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live530 coloured530 at child
  try dsimp only [live532, coloured532]
  rw [child]
  dsimp only [result530]
  have child := child1
  unfold live531 coloured531 at child
  try dsimp only [live532, coloured532]
  rw [child]
  dsimp only [result531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree533_agree_conditional : tree533 = literal533 := by
  rw [tree533_def]
  rfl
theorem node533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree533 live533 coloured533 = result533 := by
  rw [tree533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree534_agree_conditional
    (child0 : tree532 = literal532)
    (child1 : tree533 = literal533) : tree534 = literal534 := by
  rw [tree534_def, child0, child1]
  rfl
theorem node534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree532 live532 coloured532 = result532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree533 live533 coloured533 = result533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree534 live534 coloured534 = result534 := by
  rw [tree534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live532 coloured532 at child
  try dsimp only [live534, coloured534]
  rw [child]
  dsimp only [result532]
  have child := child1
  unfold live533 coloured533 at child
  try dsimp only [live534, coloured534]
  rw [child]
  dsimp only [result533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree535_agree_conditional : tree535 = literal535 := by
  rw [tree535_def]
  rfl
theorem node535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree535 live535 coloured535 = result535 := by
  rw [tree535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree536_agree_conditional
    (child0 : tree534 = literal534)
    (child1 : tree535 = literal535) : tree536 = literal536 := by
  rw [tree536_def, child0, child1]
  rfl
theorem node536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree534 live534 coloured534 = result534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree535 live535 coloured535 = result535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree536 live536 coloured536 = result536 := by
  rw [tree536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live534 coloured534 at child
  try dsimp only [live536, coloured536]
  rw [child]
  dsimp only [result534]
  have child := child1
  unfold live535 coloured535 at child
  try dsimp only [live536, coloured536]
  rw [child]
  dsimp only [result535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree537_agree_conditional : tree537 = literal537 := by
  rw [tree537_def]
  rfl
theorem node537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree537 live537 coloured537 = result537 := by
  rw [tree537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree538_agree_conditional
    (child0 : tree536 = literal536)
    (child1 : tree537 = literal537) : tree538 = literal538 := by
  rw [tree538_def, child0, child1]
  rfl
theorem node538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree536 live536 coloured536 = result536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree537 live537 coloured537 = result537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree538 live538 coloured538 = result538 := by
  rw [tree538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live536 coloured536 at child
  try dsimp only [live538, coloured538]
  rw [child]
  dsimp only [result536]
  have child := child1
  unfold live537 coloured537 at child
  try dsimp only [live538, coloured538]
  rw [child]
  dsimp only [result537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree539_agree_conditional : tree539 = literal539 := by
  rw [tree539_def]
  rfl
theorem node539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree539 live539 coloured539 = result539 := by
  rw [tree539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree540_agree_conditional
    (child0 : tree538 = literal538)
    (child1 : tree539 = literal539) : tree540 = literal540 := by
  rw [tree540_def, child0, child1]
  rfl
theorem node540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree538 live538 coloured538 = result538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree539 live539 coloured539 = result539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree540 live540 coloured540 = result540 := by
  rw [tree540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live538 coloured538 at child
  try dsimp only [live540, coloured540]
  rw [child]
  dsimp only [result538]
  have child := child1
  unfold live539 coloured539 at child
  try dsimp only [live540, coloured540]
  rw [child]
  dsimp only [result539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree541_agree_conditional : tree541 = literal541 := by
  rw [tree541_def]
  rfl
theorem node541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree541 live541 coloured541 = result541 := by
  rw [tree541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree542_agree_conditional
    (child0 : tree540 = literal540)
    (child1 : tree541 = literal541) : tree542 = literal542 := by
  rw [tree542_def, child0, child1]
  rfl
theorem node542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree540 live540 coloured540 = result540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree541 live541 coloured541 = result541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree542 live542 coloured542 = result542 := by
  rw [tree542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live540 coloured540 at child
  try dsimp only [live542, coloured542]
  rw [child]
  dsimp only [result540]
  have child := child1
  unfold live541 coloured541 at child
  try dsimp only [live542, coloured542]
  rw [child]
  dsimp only [result541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree543_agree_conditional : tree543 = literal543 := by
  rw [tree543_def]
  rfl
theorem node543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree543 live543 coloured543 = result543 := by
  rw [tree543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree544_agree_conditional
    (child0 : tree542 = literal542)
    (child1 : tree543 = literal543) : tree544 = literal544 := by
  rw [tree544_def, child0, child1]
  rfl
theorem node544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree542 live542 coloured542 = result542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree543 live543 coloured543 = result543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree544 live544 coloured544 = result544 := by
  rw [tree544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live542 coloured542 at child
  try dsimp only [live544, coloured544]
  rw [child]
  dsimp only [result542]
  have child := child1
  unfold live543 coloured543 at child
  try dsimp only [live544, coloured544]
  rw [child]
  dsimp only [result543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree545_agree_conditional : tree545 = literal545 := by
  rw [tree545_def]
  rfl
theorem node545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree545 live545 coloured545 = result545 := by
  rw [tree545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree546_agree_conditional
    (child0 : tree544 = literal544)
    (child1 : tree545 = literal545) : tree546 = literal546 := by
  rw [tree546_def, child0, child1]
  rfl
theorem node546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree544 live544 coloured544 = result544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree545 live545 coloured545 = result545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree546 live546 coloured546 = result546 := by
  rw [tree546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live544 coloured544 at child
  try dsimp only [live546, coloured546]
  rw [child]
  dsimp only [result544]
  have child := child1
  unfold live545 coloured545 at child
  try dsimp only [live546, coloured546]
  rw [child]
  dsimp only [result545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree547_agree_conditional : tree547 = literal547 := by
  rw [tree547_def]
  rfl
theorem node547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree547 live547 coloured547 = result547 := by
  rw [tree547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree548_agree_conditional
    (child0 : tree546 = literal546)
    (child1 : tree547 = literal547) : tree548 = literal548 := by
  rw [tree548_def, child0, child1]
  rfl
theorem node548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree546 live546 coloured546 = result546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree547 live547 coloured547 = result547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree548 live548 coloured548 = result548 := by
  rw [tree548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live546 coloured546 at child
  try dsimp only [live548, coloured548]
  rw [child]
  dsimp only [result546]
  have child := child1
  unfold live547 coloured547 at child
  try dsimp only [live548, coloured548]
  rw [child]
  dsimp only [result547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree549_agree_conditional : tree549 = literal549 := by
  rw [tree549_def]
  rfl
theorem node549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree549 live549 coloured549 = result549 := by
  rw [tree549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree550_agree_conditional
    (child0 : tree548 = literal548)
    (child1 : tree549 = literal549) : tree550 = literal550 := by
  rw [tree550_def, child0, child1]
  rfl
theorem node550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree548 live548 coloured548 = result548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree549 live549 coloured549 = result549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree550 live550 coloured550 = result550 := by
  rw [tree550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live548 coloured548 at child
  try dsimp only [live550, coloured550]
  rw [child]
  dsimp only [result548]
  have child := child1
  unfold live549 coloured549 at child
  try dsimp only [live550, coloured550]
  rw [child]
  dsimp only [result549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree551_agree_conditional : tree551 = literal551 := by
  rw [tree551_def]
  rfl
theorem node551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree551 live551 coloured551 = result551 := by
  rw [tree551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree552_agree_conditional
    (child0 : tree550 = literal550)
    (child1 : tree551 = literal551) : tree552 = literal552 := by
  rw [tree552_def, child0, child1]
  rfl
theorem node552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree550 live550 coloured550 = result550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree551 live551 coloured551 = result551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree552 live552 coloured552 = result552 := by
  rw [tree552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live550 coloured550 at child
  try dsimp only [live552, coloured552]
  rw [child]
  dsimp only [result550]
  have child := child1
  unfold live551 coloured551 at child
  try dsimp only [live552, coloured552]
  rw [child]
  dsimp only [result551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree553_agree_conditional : tree553 = literal553 := by
  rw [tree553_def]
  rfl
theorem node553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree553 live553 coloured553 = result553 := by
  rw [tree553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree554_agree_conditional
    (child0 : tree552 = literal552)
    (child1 : tree553 = literal553) : tree554 = literal554 := by
  rw [tree554_def, child0, child1]
  rfl
theorem node554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree552 live552 coloured552 = result552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree553 live553 coloured553 = result553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree554 live554 coloured554 = result554 := by
  rw [tree554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live552 coloured552 at child
  try dsimp only [live554, coloured554]
  rw [child]
  dsimp only [result552]
  have child := child1
  unfold live553 coloured553 at child
  try dsimp only [live554, coloured554]
  rw [child]
  dsimp only [result553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree555_agree_conditional : tree555 = literal555 := by
  rw [tree555_def]
  rfl
theorem node555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree555 live555 coloured555 = result555 := by
  rw [tree555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree556_agree_conditional
    (child0 : tree554 = literal554)
    (child1 : tree555 = literal555) : tree556 = literal556 := by
  rw [tree556_def, child0, child1]
  rfl
theorem node556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree554 live554 coloured554 = result554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree555 live555 coloured555 = result555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree556 live556 coloured556 = result556 := by
  rw [tree556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live554 coloured554 at child
  try dsimp only [live556, coloured556]
  rw [child]
  dsimp only [result554]
  have child := child1
  unfold live555 coloured555 at child
  try dsimp only [live556, coloured556]
  rw [child]
  dsimp only [result555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree557_agree_conditional : tree557 = literal557 := by
  rw [tree557_def]
  rfl
theorem node557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree557 live557 coloured557 = result557 := by
  rw [tree557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree558_agree_conditional
    (child0 : tree556 = literal556)
    (child1 : tree557 = literal557) : tree558 = literal558 := by
  rw [tree558_def, child0, child1]
  rfl
theorem node558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree556 live556 coloured556 = result556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree557 live557 coloured557 = result557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree558 live558 coloured558 = result558 := by
  rw [tree558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live556 coloured556 at child
  try dsimp only [live558, coloured558]
  rw [child]
  dsimp only [result556]
  have child := child1
  unfold live557 coloured557 at child
  try dsimp only [live558, coloured558]
  rw [child]
  dsimp only [result557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree559_agree_conditional : tree559 = literal559 := by
  rw [tree559_def]
  rfl
theorem node559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree559 live559 coloured559 = result559 := by
  rw [tree559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree560_agree_conditional
    (child0 : tree558 = literal558)
    (child1 : tree559 = literal559) : tree560 = literal560 := by
  rw [tree560_def, child0, child1]
  rfl
theorem node560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree558 live558 coloured558 = result558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree559 live559 coloured559 = result559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree560 live560 coloured560 = result560 := by
  rw [tree560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live558 coloured558 at child
  try dsimp only [live560, coloured560]
  rw [child]
  dsimp only [result558]
  have child := child1
  unfold live559 coloured559 at child
  try dsimp only [live560, coloured560]
  rw [child]
  dsimp only [result559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree561_agree_conditional : tree561 = literal561 := by
  rw [tree561_def]
  rfl
theorem node561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree561 live561 coloured561 = result561 := by
  rw [tree561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree562_agree_conditional
    (child0 : tree560 = literal560)
    (child1 : tree561 = literal561) : tree562 = literal562 := by
  rw [tree562_def, child0, child1]
  rfl
theorem node562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree560 live560 coloured560 = result560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree561 live561 coloured561 = result561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree562 live562 coloured562 = result562 := by
  rw [tree562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live560 coloured560 at child
  try dsimp only [live562, coloured562]
  rw [child]
  dsimp only [result560]
  have child := child1
  unfold live561 coloured561 at child
  try dsimp only [live562, coloured562]
  rw [child]
  dsimp only [result561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree563_agree_conditional : tree563 = literal563 := by
  rw [tree563_def]
  rfl
theorem node563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree563 live563 coloured563 = result563 := by
  rw [tree563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree564_agree_conditional
    (child0 : tree562 = literal562)
    (child1 : tree563 = literal563) : tree564 = literal564 := by
  rw [tree564_def, child0, child1]
  rfl
theorem node564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree562 live562 coloured562 = result562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree563 live563 coloured563 = result563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree564 live564 coloured564 = result564 := by
  rw [tree564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live562 coloured562 at child
  try dsimp only [live564, coloured564]
  rw [child]
  dsimp only [result562]
  have child := child1
  unfold live563 coloured563 at child
  try dsimp only [live564, coloured564]
  rw [child]
  dsimp only [result563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree565_agree_conditional : tree565 = literal565 := by
  rw [tree565_def]
  rfl
theorem node565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree565 live565 coloured565 = result565 := by
  rw [tree565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree566_agree_conditional
    (child0 : tree564 = literal564)
    (child1 : tree565 = literal565) : tree566 = literal566 := by
  rw [tree566_def, child0, child1]
  rfl
theorem node566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree564 live564 coloured564 = result564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree565 live565 coloured565 = result565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree566 live566 coloured566 = result566 := by
  rw [tree566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live564 coloured564 at child
  try dsimp only [live566, coloured566]
  rw [child]
  dsimp only [result564]
  have child := child1
  unfold live565 coloured565 at child
  try dsimp only [live566, coloured566]
  rw [child]
  dsimp only [result565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree567_agree_conditional : tree567 = literal567 := by
  rw [tree567_def]
  rfl
theorem node567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree567 live567 coloured567 = result567 := by
  rw [tree567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree568_agree_conditional
    (child0 : tree566 = literal566)
    (child1 : tree567 = literal567) : tree568 = literal568 := by
  rw [tree568_def, child0, child1]
  rfl
theorem node568_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree566 live566 coloured566 = result566)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree567 live567 coloured567 = result567) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree568 live568 coloured568 = result568 := by
  rw [tree568_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live566 coloured566 at child
  try dsimp only [live568, coloured568]
  rw [child]
  dsimp only [result566]
  have child := child1
  unfold live567 coloured567 at child
  try dsimp only [live568, coloured568]
  rw [child]
  dsimp only [result567]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree569_agree_conditional : tree569 = literal569 := by
  rw [tree569_def]
  rfl
theorem node569_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree569 live569 coloured569 = result569 := by
  rw [tree569_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree570_agree_conditional
    (child0 : tree568 = literal568)
    (child1 : tree569 = literal569) : tree570 = literal570 := by
  rw [tree570_def, child0, child1]
  rfl
theorem node570_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree568 live568 coloured568 = result568)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree569 live569 coloured569 = result569) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree570 live570 coloured570 = result570 := by
  rw [tree570_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live568 coloured568 at child
  try dsimp only [live570, coloured570]
  rw [child]
  dsimp only [result568]
  have child := child1
  unfold live569 coloured569 at child
  try dsimp only [live570, coloured570]
  rw [child]
  dsimp only [result569]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree571_agree_conditional : tree571 = literal571 := by
  rw [tree571_def]
  rfl
theorem node571_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree571 live571 coloured571 = result571 := by
  rw [tree571_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree572_agree_conditional
    (child0 : tree570 = literal570)
    (child1 : tree571 = literal571) : tree572 = literal572 := by
  rw [tree572_def, child0, child1]
  rfl
theorem node572_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree570 live570 coloured570 = result570)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree571 live571 coloured571 = result571) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree572 live572 coloured572 = result572 := by
  rw [tree572_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live570 coloured570 at child
  try dsimp only [live572, coloured572]
  rw [child]
  dsimp only [result570]
  have child := child1
  unfold live571 coloured571 at child
  try dsimp only [live572, coloured572]
  rw [child]
  dsimp only [result571]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree573_agree_conditional : tree573 = literal573 := by
  rw [tree573_def]
  rfl
theorem node573_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree573 live573 coloured573 = result573 := by
  rw [tree573_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree574_agree_conditional
    (child0 : tree572 = literal572)
    (child1 : tree573 = literal573) : tree574 = literal574 := by
  rw [tree574_def, child0, child1]
  rfl
theorem node574_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree572 live572 coloured572 = result572)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree573 live573 coloured573 = result573) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree574 live574 coloured574 = result574 := by
  rw [tree574_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live572 coloured572 at child
  try dsimp only [live574, coloured574]
  rw [child]
  dsimp only [result572]
  have child := child1
  unfold live573 coloured573 at child
  try dsimp only [live574, coloured574]
  rw [child]
  dsimp only [result573]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree575_agree_conditional : tree575 = literal575 := by
  rw [tree575_def]
  rfl
theorem node575_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree575 live575 coloured575 = result575 := by
  rw [tree575_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages875
