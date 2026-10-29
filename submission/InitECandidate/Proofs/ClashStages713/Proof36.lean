import InitECandidate.Proofs.ClashStages713.Proof35
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3456_agree : tree3456 = literal3456 := by
  rw [tree3456_def, tree3454_agree, tree3455_agree]
  rfl
theorem node3456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3456 live3456 coloured3456 = result3456 := by
  rw [tree3456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3454_eq
  unfold live3454 coloured3454 at child
  try dsimp only [live3456, coloured3456]
  rw [child]
  dsimp only [result3454]
  have child := node3455_eq
  unfold live3455 coloured3455 at child
  try dsimp only [live3456, coloured3456]
  rw [child]
  dsimp only [result3455]
  try dsimp only [colour, result3456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3457_agree : tree3457 = literal3457 := by
  rw [tree3457_def]
  rfl
theorem node3457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3457 live3457 coloured3457 = result3457 := by
  rw [tree3457_def]
  try dsimp only [colour, result3457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3458_agree : tree3458 = literal3458 := by
  rw [tree3458_def, tree3456_agree, tree3457_agree]
  rfl
theorem node3458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3458 live3458 coloured3458 = result3458 := by
  rw [tree3458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3456_eq
  unfold live3456 coloured3456 at child
  try dsimp only [live3458, coloured3458]
  rw [child]
  dsimp only [result3456]
  have child := node3457_eq
  unfold live3457 coloured3457 at child
  try dsimp only [live3458, coloured3458]
  rw [child]
  dsimp only [result3457]
  try dsimp only [colour, result3458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3459_agree : tree3459 = literal3459 := by
  rw [tree3459_def]
  rfl
theorem node3459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3459 live3459 coloured3459 = result3459 := by
  rw [tree3459_def]
  try dsimp only [colour, result3459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3460_agree : tree3460 = literal3460 := by
  rw [tree3460_def, tree3458_agree, tree3459_agree]
  rfl
theorem node3460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3460 live3460 coloured3460 = result3460 := by
  rw [tree3460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3458_eq
  unfold live3458 coloured3458 at child
  try dsimp only [live3460, coloured3460]
  rw [child]
  dsimp only [result3458]
  have child := node3459_eq
  unfold live3459 coloured3459 at child
  try dsimp only [live3460, coloured3460]
  rw [child]
  dsimp only [result3459]
  try dsimp only [colour, result3460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3461_agree : tree3461 = literal3461 := by
  rw [tree3461_def]
  rfl
theorem node3461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3461 live3461 coloured3461 = result3461 := by
  rw [tree3461_def]
  try dsimp only [colour, result3461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3462_agree : tree3462 = literal3462 := by
  rw [tree3462_def, tree3460_agree, tree3461_agree]
  rfl
theorem node3462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3462 live3462 coloured3462 = result3462 := by
  rw [tree3462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3460_eq
  unfold live3460 coloured3460 at child
  try dsimp only [live3462, coloured3462]
  rw [child]
  dsimp only [result3460]
  have child := node3461_eq
  unfold live3461 coloured3461 at child
  try dsimp only [live3462, coloured3462]
  rw [child]
  dsimp only [result3461]
  try dsimp only [colour, result3462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3463_agree : tree3463 = literal3463 := by
  rw [tree3463_def]
  rfl
theorem node3463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3463 live3463 coloured3463 = result3463 := by
  rw [tree3463_def]
  try dsimp only [colour, result3463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3464_agree : tree3464 = literal3464 := by
  rw [tree3464_def, tree3462_agree, tree3463_agree]
  rfl
theorem node3464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3464 live3464 coloured3464 = result3464 := by
  rw [tree3464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3462_eq
  unfold live3462 coloured3462 at child
  try dsimp only [live3464, coloured3464]
  rw [child]
  dsimp only [result3462]
  have child := node3463_eq
  unfold live3463 coloured3463 at child
  try dsimp only [live3464, coloured3464]
  rw [child]
  dsimp only [result3463]
  try dsimp only [colour, result3464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3465_agree : tree3465 = literal3465 := by
  rw [tree3465_def]
  rfl
theorem node3465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3465 live3465 coloured3465 = result3465 := by
  rw [tree3465_def]
  try dsimp only [colour, result3465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3466_agree : tree3466 = literal3466 := by
  rw [tree3466_def, tree3464_agree, tree3465_agree]
  rfl
theorem node3466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3466 live3466 coloured3466 = result3466 := by
  rw [tree3466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3464_eq
  unfold live3464 coloured3464 at child
  try dsimp only [live3466, coloured3466]
  rw [child]
  dsimp only [result3464]
  have child := node3465_eq
  unfold live3465 coloured3465 at child
  try dsimp only [live3466, coloured3466]
  rw [child]
  dsimp only [result3465]
  try dsimp only [colour, result3466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3467_agree : tree3467 = literal3467 := by
  rw [tree3467_def]
  rfl
theorem node3467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3467 live3467 coloured3467 = result3467 := by
  rw [tree3467_def]
  try dsimp only [colour, result3467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3468_agree : tree3468 = literal3468 := by
  rw [tree3468_def, tree3466_agree, tree3467_agree]
  rfl
theorem node3468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3468 live3468 coloured3468 = result3468 := by
  rw [tree3468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3466_eq
  unfold live3466 coloured3466 at child
  try dsimp only [live3468, coloured3468]
  rw [child]
  dsimp only [result3466]
  have child := node3467_eq
  unfold live3467 coloured3467 at child
  try dsimp only [live3468, coloured3468]
  rw [child]
  dsimp only [result3467]
  try dsimp only [colour, result3468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3469_agree : tree3469 = literal3469 := by
  rw [tree3469_def]
  rfl
theorem node3469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3469 live3469 coloured3469 = result3469 := by
  rw [tree3469_def]
  try dsimp only [colour, result3469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3470_agree : tree3470 = literal3470 := by
  rw [tree3470_def, tree3468_agree, tree3469_agree]
  rfl
theorem node3470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3470 live3470 coloured3470 = result3470 := by
  rw [tree3470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3468_eq
  unfold live3468 coloured3468 at child
  try dsimp only [live3470, coloured3470]
  rw [child]
  dsimp only [result3468]
  have child := node3469_eq
  unfold live3469 coloured3469 at child
  try dsimp only [live3470, coloured3470]
  rw [child]
  dsimp only [result3469]
  try dsimp only [colour, result3470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3471_agree : tree3471 = literal3471 := by
  rw [tree3471_def]
  rfl
theorem node3471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3471 live3471 coloured3471 = result3471 := by
  rw [tree3471_def]
  try dsimp only [colour, result3471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3472_agree : tree3472 = literal3472 := by
  rw [tree3472_def, tree3470_agree, tree3471_agree]
  rfl
theorem node3472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3472 live3472 coloured3472 = result3472 := by
  rw [tree3472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3470_eq
  unfold live3470 coloured3470 at child
  try dsimp only [live3472, coloured3472]
  rw [child]
  dsimp only [result3470]
  have child := node3471_eq
  unfold live3471 coloured3471 at child
  try dsimp only [live3472, coloured3472]
  rw [child]
  dsimp only [result3471]
  try dsimp only [colour, result3472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3473_agree : tree3473 = literal3473 := by
  rw [tree3473_def]
  rfl
theorem node3473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3473 live3473 coloured3473 = result3473 := by
  rw [tree3473_def]
  try dsimp only [colour, result3473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3474_agree : tree3474 = literal3474 := by
  rw [tree3474_def, tree3472_agree, tree3473_agree]
  rfl
theorem node3474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3474 live3474 coloured3474 = result3474 := by
  rw [tree3474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3472_eq
  unfold live3472 coloured3472 at child
  try dsimp only [live3474, coloured3474]
  rw [child]
  dsimp only [result3472]
  have child := node3473_eq
  unfold live3473 coloured3473 at child
  try dsimp only [live3474, coloured3474]
  rw [child]
  dsimp only [result3473]
  try dsimp only [colour, result3474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3475_agree : tree3475 = literal3475 := by
  rw [tree3475_def]
  rfl
theorem node3475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3475 live3475 coloured3475 = result3475 := by
  rw [tree3475_def]
  try dsimp only [colour, result3475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3476_agree : tree3476 = literal3476 := by
  rw [tree3476_def, tree3474_agree, tree3475_agree]
  rfl
theorem node3476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3476 live3476 coloured3476 = result3476 := by
  rw [tree3476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3474_eq
  unfold live3474 coloured3474 at child
  try dsimp only [live3476, coloured3476]
  rw [child]
  dsimp only [result3474]
  have child := node3475_eq
  unfold live3475 coloured3475 at child
  try dsimp only [live3476, coloured3476]
  rw [child]
  dsimp only [result3475]
  try dsimp only [colour, result3476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3477_agree : tree3477 = literal3477 := by
  rw [tree3477_def]
  rfl
theorem node3477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3477 live3477 coloured3477 = result3477 := by
  rw [tree3477_def]
  try dsimp only [colour, result3477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3478_agree : tree3478 = literal3478 := by
  rw [tree3478_def, tree3476_agree, tree3477_agree]
  rfl
theorem node3478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3478 live3478 coloured3478 = result3478 := by
  rw [tree3478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3476_eq
  unfold live3476 coloured3476 at child
  try dsimp only [live3478, coloured3478]
  rw [child]
  dsimp only [result3476]
  have child := node3477_eq
  unfold live3477 coloured3477 at child
  try dsimp only [live3478, coloured3478]
  rw [child]
  dsimp only [result3477]
  try dsimp only [colour, result3478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3479_agree : tree3479 = literal3479 := by
  rw [tree3479_def]
  rfl
theorem node3479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3479 live3479 coloured3479 = result3479 := by
  rw [tree3479_def]
  try dsimp only [colour, result3479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3480_agree : tree3480 = literal3480 := by
  rw [tree3480_def, tree3478_agree, tree3479_agree]
  rfl
theorem node3480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3480 live3480 coloured3480 = result3480 := by
  rw [tree3480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3478_eq
  unfold live3478 coloured3478 at child
  try dsimp only [live3480, coloured3480]
  rw [child]
  dsimp only [result3478]
  have child := node3479_eq
  unfold live3479 coloured3479 at child
  try dsimp only [live3480, coloured3480]
  rw [child]
  dsimp only [result3479]
  try dsimp only [colour, result3480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3481_agree : tree3481 = literal3481 := by
  rw [tree3481_def]
  rfl
theorem node3481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3481 live3481 coloured3481 = result3481 := by
  rw [tree3481_def]
  try dsimp only [colour, result3481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3482_agree : tree3482 = literal3482 := by
  rw [tree3482_def, tree3480_agree, tree3481_agree]
  rfl
theorem node3482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3482 live3482 coloured3482 = result3482 := by
  rw [tree3482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3480_eq
  unfold live3480 coloured3480 at child
  try dsimp only [live3482, coloured3482]
  rw [child]
  dsimp only [result3480]
  have child := node3481_eq
  unfold live3481 coloured3481 at child
  try dsimp only [live3482, coloured3482]
  rw [child]
  dsimp only [result3481]
  try dsimp only [colour, result3482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3483_agree : tree3483 = literal3483 := by
  rw [tree3483_def]
  rfl
theorem node3483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3483 live3483 coloured3483 = result3483 := by
  rw [tree3483_def]
  try dsimp only [colour, result3483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3484_agree : tree3484 = literal3484 := by
  rw [tree3484_def, tree3482_agree, tree3483_agree]
  rfl
theorem node3484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3484 live3484 coloured3484 = result3484 := by
  rw [tree3484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3482_eq
  unfold live3482 coloured3482 at child
  try dsimp only [live3484, coloured3484]
  rw [child]
  dsimp only [result3482]
  have child := node3483_eq
  unfold live3483 coloured3483 at child
  try dsimp only [live3484, coloured3484]
  rw [child]
  dsimp only [result3483]
  try dsimp only [colour, result3484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3485_agree : tree3485 = literal3485 := by
  rw [tree3485_def]
  rfl
theorem node3485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3485 live3485 coloured3485 = result3485 := by
  rw [tree3485_def]
  try dsimp only [colour, result3485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3486_agree : tree3486 = literal3486 := by
  rw [tree3486_def, tree3484_agree, tree3485_agree]
  rfl
theorem node3486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3486 live3486 coloured3486 = result3486 := by
  rw [tree3486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3484_eq
  unfold live3484 coloured3484 at child
  try dsimp only [live3486, coloured3486]
  rw [child]
  dsimp only [result3484]
  have child := node3485_eq
  unfold live3485 coloured3485 at child
  try dsimp only [live3486, coloured3486]
  rw [child]
  dsimp only [result3485]
  try dsimp only [colour, result3486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3487_agree : tree3487 = literal3487 := by
  rw [tree3487_def]
  rfl
theorem node3487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3487 live3487 coloured3487 = result3487 := by
  rw [tree3487_def]
  try dsimp only [colour, result3487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3488_agree : tree3488 = literal3488 := by
  rw [tree3488_def, tree3486_agree, tree3487_agree]
  rfl
theorem node3488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3488 live3488 coloured3488 = result3488 := by
  rw [tree3488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3486_eq
  unfold live3486 coloured3486 at child
  try dsimp only [live3488, coloured3488]
  rw [child]
  dsimp only [result3486]
  have child := node3487_eq
  unfold live3487 coloured3487 at child
  try dsimp only [live3488, coloured3488]
  rw [child]
  dsimp only [result3487]
  try dsimp only [colour, result3488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3489_agree : tree3489 = literal3489 := by
  rw [tree3489_def]
  rfl
theorem node3489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3489 live3489 coloured3489 = result3489 := by
  rw [tree3489_def]
  try dsimp only [colour, result3489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3490_agree : tree3490 = literal3490 := by
  rw [tree3490_def, tree3488_agree, tree3489_agree]
  rfl
theorem node3490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3490 live3490 coloured3490 = result3490 := by
  rw [tree3490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3488_eq
  unfold live3488 coloured3488 at child
  try dsimp only [live3490, coloured3490]
  rw [child]
  dsimp only [result3488]
  have child := node3489_eq
  unfold live3489 coloured3489 at child
  try dsimp only [live3490, coloured3490]
  rw [child]
  dsimp only [result3489]
  try dsimp only [colour, result3490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3491_agree : tree3491 = literal3491 := by
  rw [tree3491_def]
  rfl
theorem node3491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3491 live3491 coloured3491 = result3491 := by
  rw [tree3491_def]
  try dsimp only [colour, result3491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3492_agree : tree3492 = literal3492 := by
  rw [tree3492_def, tree3490_agree, tree3491_agree]
  rfl
theorem node3492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3492 live3492 coloured3492 = result3492 := by
  rw [tree3492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3490_eq
  unfold live3490 coloured3490 at child
  try dsimp only [live3492, coloured3492]
  rw [child]
  dsimp only [result3490]
  have child := node3491_eq
  unfold live3491 coloured3491 at child
  try dsimp only [live3492, coloured3492]
  rw [child]
  dsimp only [result3491]
  try dsimp only [colour, result3492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3493_agree : tree3493 = literal3493 := by
  rw [tree3493_def]
  rfl
theorem node3493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3493 live3493 coloured3493 = result3493 := by
  rw [tree3493_def]
  try dsimp only [colour, result3493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3494_agree : tree3494 = literal3494 := by
  rw [tree3494_def, tree3492_agree, tree3493_agree]
  rfl
theorem node3494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3494 live3494 coloured3494 = result3494 := by
  rw [tree3494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3492_eq
  unfold live3492 coloured3492 at child
  try dsimp only [live3494, coloured3494]
  rw [child]
  dsimp only [result3492]
  have child := node3493_eq
  unfold live3493 coloured3493 at child
  try dsimp only [live3494, coloured3494]
  rw [child]
  dsimp only [result3493]
  try dsimp only [colour, result3494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3495_agree : tree3495 = literal3495 := by
  rw [tree3495_def]
  rfl
theorem node3495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3495 live3495 coloured3495 = result3495 := by
  rw [tree3495_def]
  try dsimp only [colour, result3495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3496_agree : tree3496 = literal3496 := by
  rw [tree3496_def, tree3494_agree, tree3495_agree]
  rfl
theorem node3496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3496 live3496 coloured3496 = result3496 := by
  rw [tree3496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3494_eq
  unfold live3494 coloured3494 at child
  try dsimp only [live3496, coloured3496]
  rw [child]
  dsimp only [result3494]
  have child := node3495_eq
  unfold live3495 coloured3495 at child
  try dsimp only [live3496, coloured3496]
  rw [child]
  dsimp only [result3495]
  try dsimp only [colour, result3496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3497_agree : tree3497 = literal3497 := by
  rw [tree3497_def]
  rfl
theorem node3497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3497 live3497 coloured3497 = result3497 := by
  rw [tree3497_def]
  try dsimp only [colour, result3497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3498_agree : tree3498 = literal3498 := by
  rw [tree3498_def, tree3496_agree, tree3497_agree]
  rfl
theorem node3498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3498 live3498 coloured3498 = result3498 := by
  rw [tree3498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3496_eq
  unfold live3496 coloured3496 at child
  try dsimp only [live3498, coloured3498]
  rw [child]
  dsimp only [result3496]
  have child := node3497_eq
  unfold live3497 coloured3497 at child
  try dsimp only [live3498, coloured3498]
  rw [child]
  dsimp only [result3497]
  try dsimp only [colour, result3498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3499_agree : tree3499 = literal3499 := by
  rw [tree3499_def]
  rfl
theorem node3499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3499 live3499 coloured3499 = result3499 := by
  rw [tree3499_def]
  try dsimp only [colour, result3499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3500_agree : tree3500 = literal3500 := by
  rw [tree3500_def, tree3498_agree, tree3499_agree]
  rfl
theorem node3500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3500 live3500 coloured3500 = result3500 := by
  rw [tree3500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3498_eq
  unfold live3498 coloured3498 at child
  try dsimp only [live3500, coloured3500]
  rw [child]
  dsimp only [result3498]
  have child := node3499_eq
  unfold live3499 coloured3499 at child
  try dsimp only [live3500, coloured3500]
  rw [child]
  dsimp only [result3499]
  try dsimp only [colour, result3500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3501_agree : tree3501 = literal3501 := by
  rw [tree3501_def]
  rfl
theorem node3501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3501 live3501 coloured3501 = result3501 := by
  rw [tree3501_def]
  try dsimp only [colour, result3501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3502_agree : tree3502 = literal3502 := by
  rw [tree3502_def, tree3500_agree, tree3501_agree]
  rfl
theorem node3502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3502 live3502 coloured3502 = result3502 := by
  rw [tree3502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3500_eq
  unfold live3500 coloured3500 at child
  try dsimp only [live3502, coloured3502]
  rw [child]
  dsimp only [result3500]
  have child := node3501_eq
  unfold live3501 coloured3501 at child
  try dsimp only [live3502, coloured3502]
  rw [child]
  dsimp only [result3501]
  try dsimp only [colour, result3502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3503_agree : tree3503 = literal3503 := by
  rw [tree3503_def]
  rfl
theorem node3503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3503 live3503 coloured3503 = result3503 := by
  rw [tree3503_def]
  try dsimp only [colour, result3503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3504_agree : tree3504 = literal3504 := by
  rw [tree3504_def, tree3502_agree, tree3503_agree]
  rfl
theorem node3504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3504 live3504 coloured3504 = result3504 := by
  rw [tree3504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3502_eq
  unfold live3502 coloured3502 at child
  try dsimp only [live3504, coloured3504]
  rw [child]
  dsimp only [result3502]
  have child := node3503_eq
  unfold live3503 coloured3503 at child
  try dsimp only [live3504, coloured3504]
  rw [child]
  dsimp only [result3503]
  try dsimp only [colour, result3504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3505_agree : tree3505 = literal3505 := by
  rw [tree3505_def]
  rfl
theorem node3505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3505 live3505 coloured3505 = result3505 := by
  rw [tree3505_def]
  try dsimp only [colour, result3505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3506_agree : tree3506 = literal3506 := by
  rw [tree3506_def, tree3504_agree, tree3505_agree]
  rfl
theorem node3506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3506 live3506 coloured3506 = result3506 := by
  rw [tree3506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3504_eq
  unfold live3504 coloured3504 at child
  try dsimp only [live3506, coloured3506]
  rw [child]
  dsimp only [result3504]
  have child := node3505_eq
  unfold live3505 coloured3505 at child
  try dsimp only [live3506, coloured3506]
  rw [child]
  dsimp only [result3505]
  try dsimp only [colour, result3506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3507_agree : tree3507 = literal3507 := by
  rw [tree3507_def]
  rfl
theorem node3507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3507 live3507 coloured3507 = result3507 := by
  rw [tree3507_def]
  try dsimp only [colour, result3507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3508_agree : tree3508 = literal3508 := by
  rw [tree3508_def, tree3506_agree, tree3507_agree]
  rfl
theorem node3508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3508 live3508 coloured3508 = result3508 := by
  rw [tree3508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3506_eq
  unfold live3506 coloured3506 at child
  try dsimp only [live3508, coloured3508]
  rw [child]
  dsimp only [result3506]
  have child := node3507_eq
  unfold live3507 coloured3507 at child
  try dsimp only [live3508, coloured3508]
  rw [child]
  dsimp only [result3507]
  try dsimp only [colour, result3508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3509_agree : tree3509 = literal3509 := by
  rw [tree3509_def]
  rfl
theorem node3509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3509 live3509 coloured3509 = result3509 := by
  rw [tree3509_def]
  try dsimp only [colour, result3509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3510_agree : tree3510 = literal3510 := by
  rw [tree3510_def, tree3508_agree, tree3509_agree]
  rfl
theorem node3510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3510 live3510 coloured3510 = result3510 := by
  rw [tree3510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3508_eq
  unfold live3508 coloured3508 at child
  try dsimp only [live3510, coloured3510]
  rw [child]
  dsimp only [result3508]
  have child := node3509_eq
  unfold live3509 coloured3509 at child
  try dsimp only [live3510, coloured3510]
  rw [child]
  dsimp only [result3509]
  try dsimp only [colour, result3510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3511_agree : tree3511 = literal3511 := by
  rw [tree3511_def]
  rfl
theorem node3511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3511 live3511 coloured3511 = result3511 := by
  rw [tree3511_def]
  try dsimp only [colour, result3511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3512_agree : tree3512 = literal3512 := by
  rw [tree3512_def, tree3510_agree, tree3511_agree]
  rfl
theorem node3512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3512 live3512 coloured3512 = result3512 := by
  rw [tree3512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3510_eq
  unfold live3510 coloured3510 at child
  try dsimp only [live3512, coloured3512]
  rw [child]
  dsimp only [result3510]
  have child := node3511_eq
  unfold live3511 coloured3511 at child
  try dsimp only [live3512, coloured3512]
  rw [child]
  dsimp only [result3511]
  try dsimp only [colour, result3512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3513_agree : tree3513 = literal3513 := by
  rw [tree3513_def]
  rfl
theorem node3513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3513 live3513 coloured3513 = result3513 := by
  rw [tree3513_def]
  try dsimp only [colour, result3513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3514_agree : tree3514 = literal3514 := by
  rw [tree3514_def, tree3512_agree, tree3513_agree]
  rfl
theorem node3514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3514 live3514 coloured3514 = result3514 := by
  rw [tree3514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3512_eq
  unfold live3512 coloured3512 at child
  try dsimp only [live3514, coloured3514]
  rw [child]
  dsimp only [result3512]
  have child := node3513_eq
  unfold live3513 coloured3513 at child
  try dsimp only [live3514, coloured3514]
  rw [child]
  dsimp only [result3513]
  try dsimp only [colour, result3514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3515_agree : tree3515 = literal3515 := by
  rw [tree3515_def]
  rfl
theorem node3515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3515 live3515 coloured3515 = result3515 := by
  rw [tree3515_def]
  try dsimp only [colour, result3515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3516_agree : tree3516 = literal3516 := by
  rw [tree3516_def, tree3514_agree, tree3515_agree]
  rfl
theorem node3516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3516 live3516 coloured3516 = result3516 := by
  rw [tree3516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3514_eq
  unfold live3514 coloured3514 at child
  try dsimp only [live3516, coloured3516]
  rw [child]
  dsimp only [result3514]
  have child := node3515_eq
  unfold live3515 coloured3515 at child
  try dsimp only [live3516, coloured3516]
  rw [child]
  dsimp only [result3515]
  try dsimp only [colour, result3516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3517_agree : tree3517 = literal3517 := by
  rw [tree3517_def]
  rfl
theorem node3517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3517 live3517 coloured3517 = result3517 := by
  rw [tree3517_def]
  try dsimp only [colour, result3517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3518_agree : tree3518 = literal3518 := by
  rw [tree3518_def, tree3516_agree, tree3517_agree]
  rfl
theorem node3518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3518 live3518 coloured3518 = result3518 := by
  rw [tree3518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3516_eq
  unfold live3516 coloured3516 at child
  try dsimp only [live3518, coloured3518]
  rw [child]
  dsimp only [result3516]
  have child := node3517_eq
  unfold live3517 coloured3517 at child
  try dsimp only [live3518, coloured3518]
  rw [child]
  dsimp only [result3517]
  try dsimp only [colour, result3518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3519_agree : tree3519 = literal3519 := by
  rw [tree3519_def]
  rfl
theorem node3519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3519 live3519 coloured3519 = result3519 := by
  rw [tree3519_def]
  try dsimp only [colour, result3519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3520_agree : tree3520 = literal3520 := by
  rw [tree3520_def, tree3518_agree, tree3519_agree]
  rfl
theorem node3520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3520 live3520 coloured3520 = result3520 := by
  rw [tree3520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3518_eq
  unfold live3518 coloured3518 at child
  try dsimp only [live3520, coloured3520]
  rw [child]
  dsimp only [result3518]
  have child := node3519_eq
  unfold live3519 coloured3519 at child
  try dsimp only [live3520, coloured3520]
  rw [child]
  dsimp only [result3519]
  try dsimp only [colour, result3520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3521_agree : tree3521 = literal3521 := by
  rw [tree3521_def]
  rfl
theorem node3521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3521 live3521 coloured3521 = result3521 := by
  rw [tree3521_def]
  try dsimp only [colour, result3521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3522_agree : tree3522 = literal3522 := by
  rw [tree3522_def, tree3520_agree, tree3521_agree]
  rfl
theorem node3522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3522 live3522 coloured3522 = result3522 := by
  rw [tree3522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3520_eq
  unfold live3520 coloured3520 at child
  try dsimp only [live3522, coloured3522]
  rw [child]
  dsimp only [result3520]
  have child := node3521_eq
  unfold live3521 coloured3521 at child
  try dsimp only [live3522, coloured3522]
  rw [child]
  dsimp only [result3521]
  try dsimp only [colour, result3522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3523_agree : tree3523 = literal3523 := by
  rw [tree3523_def]
  rfl
theorem node3523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3523 live3523 coloured3523 = result3523 := by
  rw [tree3523_def]
  try dsimp only [colour, result3523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3524_agree : tree3524 = literal3524 := by
  rw [tree3524_def, tree3522_agree, tree3523_agree]
  rfl
theorem node3524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3524 live3524 coloured3524 = result3524 := by
  rw [tree3524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3522_eq
  unfold live3522 coloured3522 at child
  try dsimp only [live3524, coloured3524]
  rw [child]
  dsimp only [result3522]
  have child := node3523_eq
  unfold live3523 coloured3523 at child
  try dsimp only [live3524, coloured3524]
  rw [child]
  dsimp only [result3523]
  try dsimp only [colour, result3524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3525_agree : tree3525 = literal3525 := by
  rw [tree3525_def]
  rfl
theorem node3525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3525 live3525 coloured3525 = result3525 := by
  rw [tree3525_def]
  try dsimp only [colour, result3525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3526_agree : tree3526 = literal3526 := by
  rw [tree3526_def, tree3524_agree, tree3525_agree]
  rfl
theorem node3526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3526 live3526 coloured3526 = result3526 := by
  rw [tree3526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3524_eq
  unfold live3524 coloured3524 at child
  try dsimp only [live3526, coloured3526]
  rw [child]
  dsimp only [result3524]
  have child := node3525_eq
  unfold live3525 coloured3525 at child
  try dsimp only [live3526, coloured3526]
  rw [child]
  dsimp only [result3525]
  try dsimp only [colour, result3526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3527_agree : tree3527 = literal3527 := by
  rw [tree3527_def]
  rfl
theorem node3527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3527 live3527 coloured3527 = result3527 := by
  rw [tree3527_def]
  try dsimp only [colour, result3527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3528_agree : tree3528 = literal3528 := by
  rw [tree3528_def, tree3526_agree, tree3527_agree]
  rfl
theorem node3528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3528 live3528 coloured3528 = result3528 := by
  rw [tree3528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3526_eq
  unfold live3526 coloured3526 at child
  try dsimp only [live3528, coloured3528]
  rw [child]
  dsimp only [result3526]
  have child := node3527_eq
  unfold live3527 coloured3527 at child
  try dsimp only [live3528, coloured3528]
  rw [child]
  dsimp only [result3527]
  try dsimp only [colour, result3528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3529_agree : tree3529 = literal3529 := by
  rw [tree3529_def]
  rfl
theorem node3529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3529 live3529 coloured3529 = result3529 := by
  rw [tree3529_def]
  try dsimp only [colour, result3529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3530_agree : tree3530 = literal3530 := by
  rw [tree3530_def, tree3528_agree, tree3529_agree]
  rfl
theorem node3530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3530 live3530 coloured3530 = result3530 := by
  rw [tree3530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3528_eq
  unfold live3528 coloured3528 at child
  try dsimp only [live3530, coloured3530]
  rw [child]
  dsimp only [result3528]
  have child := node3529_eq
  unfold live3529 coloured3529 at child
  try dsimp only [live3530, coloured3530]
  rw [child]
  dsimp only [result3529]
  try dsimp only [colour, result3530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3531_agree : tree3531 = literal3531 := by
  rw [tree3531_def]
  rfl
theorem node3531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3531 live3531 coloured3531 = result3531 := by
  rw [tree3531_def]
  try dsimp only [colour, result3531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3532_agree : tree3532 = literal3532 := by
  rw [tree3532_def, tree3530_agree, tree3531_agree]
  rfl
theorem node3532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3532 live3532 coloured3532 = result3532 := by
  rw [tree3532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3530_eq
  unfold live3530 coloured3530 at child
  try dsimp only [live3532, coloured3532]
  rw [child]
  dsimp only [result3530]
  have child := node3531_eq
  unfold live3531 coloured3531 at child
  try dsimp only [live3532, coloured3532]
  rw [child]
  dsimp only [result3531]
  try dsimp only [colour, result3532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3533_agree : tree3533 = literal3533 := by
  rw [tree3533_def]
  rfl
theorem node3533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3533 live3533 coloured3533 = result3533 := by
  rw [tree3533_def]
  try dsimp only [colour, result3533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3534_agree : tree3534 = literal3534 := by
  rw [tree3534_def, tree3532_agree, tree3533_agree]
  rfl
theorem node3534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3534 live3534 coloured3534 = result3534 := by
  rw [tree3534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3532_eq
  unfold live3532 coloured3532 at child
  try dsimp only [live3534, coloured3534]
  rw [child]
  dsimp only [result3532]
  have child := node3533_eq
  unfold live3533 coloured3533 at child
  try dsimp only [live3534, coloured3534]
  rw [child]
  dsimp only [result3533]
  try dsimp only [colour, result3534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3535_agree : tree3535 = literal3535 := by
  rw [tree3535_def]
  rfl
theorem node3535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3535 live3535 coloured3535 = result3535 := by
  rw [tree3535_def]
  try dsimp only [colour, result3535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3536_agree : tree3536 = literal3536 := by
  rw [tree3536_def, tree3534_agree, tree3535_agree]
  rfl
theorem node3536_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3536 live3536 coloured3536 = result3536 := by
  rw [tree3536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3534_eq
  unfold live3534 coloured3534 at child
  try dsimp only [live3536, coloured3536]
  rw [child]
  dsimp only [result3534]
  have child := node3535_eq
  unfold live3535 coloured3535 at child
  try dsimp only [live3536, coloured3536]
  rw [child]
  dsimp only [result3535]
  try dsimp only [colour, result3536]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3537_agree : tree3537 = literal3537 := by
  rw [tree3537_def]
  rfl
theorem node3537_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3537 live3537 coloured3537 = result3537 := by
  rw [tree3537_def]
  try dsimp only [colour, result3537]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3538_agree : tree3538 = literal3538 := by
  rw [tree3538_def, tree3536_agree, tree3537_agree]
  rfl
theorem node3538_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3538 live3538 coloured3538 = result3538 := by
  rw [tree3538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3536_eq
  unfold live3536 coloured3536 at child
  try dsimp only [live3538, coloured3538]
  rw [child]
  dsimp only [result3536]
  have child := node3537_eq
  unfold live3537 coloured3537 at child
  try dsimp only [live3538, coloured3538]
  rw [child]
  dsimp only [result3537]
  try dsimp only [colour, result3538]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3539_agree : tree3539 = literal3539 := by
  rw [tree3539_def]
  rfl
theorem node3539_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3539 live3539 coloured3539 = result3539 := by
  rw [tree3539_def]
  try dsimp only [colour, result3539]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3540_agree : tree3540 = literal3540 := by
  rw [tree3540_def, tree3538_agree, tree3539_agree]
  rfl
theorem node3540_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3540 live3540 coloured3540 = result3540 := by
  rw [tree3540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3538_eq
  unfold live3538 coloured3538 at child
  try dsimp only [live3540, coloured3540]
  rw [child]
  dsimp only [result3538]
  have child := node3539_eq
  unfold live3539 coloured3539 at child
  try dsimp only [live3540, coloured3540]
  rw [child]
  dsimp only [result3539]
  try dsimp only [colour, result3540]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3541_agree : tree3541 = literal3541 := by
  rw [tree3541_def]
  rfl
theorem node3541_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3541 live3541 coloured3541 = result3541 := by
  rw [tree3541_def]
  try dsimp only [colour, result3541]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3542_agree : tree3542 = literal3542 := by
  rw [tree3542_def, tree3540_agree, tree3541_agree]
  rfl
theorem node3542_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3542 live3542 coloured3542 = result3542 := by
  rw [tree3542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3540_eq
  unfold live3540 coloured3540 at child
  try dsimp only [live3542, coloured3542]
  rw [child]
  dsimp only [result3540]
  have child := node3541_eq
  unfold live3541 coloured3541 at child
  try dsimp only [live3542, coloured3542]
  rw [child]
  dsimp only [result3541]
  try dsimp only [colour, result3542]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3543_agree : tree3543 = literal3543 := by
  rw [tree3543_def]
  rfl
theorem node3543_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3543 live3543 coloured3543 = result3543 := by
  rw [tree3543_def]
  try dsimp only [colour, result3543]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3544_agree : tree3544 = literal3544 := by
  rw [tree3544_def, tree3542_agree, tree3543_agree]
  rfl
theorem node3544_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3544 live3544 coloured3544 = result3544 := by
  rw [tree3544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3542_eq
  unfold live3542 coloured3542 at child
  try dsimp only [live3544, coloured3544]
  rw [child]
  dsimp only [result3542]
  have child := node3543_eq
  unfold live3543 coloured3543 at child
  try dsimp only [live3544, coloured3544]
  rw [child]
  dsimp only [result3543]
  try dsimp only [colour, result3544]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3545_agree : tree3545 = literal3545 := by
  rw [tree3545_def]
  rfl
theorem node3545_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3545 live3545 coloured3545 = result3545 := by
  rw [tree3545_def]
  try dsimp only [colour, result3545]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3546_agree : tree3546 = literal3546 := by
  rw [tree3546_def, tree3544_agree, tree3545_agree]
  rfl
theorem node3546_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3546 live3546 coloured3546 = result3546 := by
  rw [tree3546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3544_eq
  unfold live3544 coloured3544 at child
  try dsimp only [live3546, coloured3546]
  rw [child]
  dsimp only [result3544]
  have child := node3545_eq
  unfold live3545 coloured3545 at child
  try dsimp only [live3546, coloured3546]
  rw [child]
  dsimp only [result3545]
  try dsimp only [colour, result3546]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3547_agree : tree3547 = literal3547 := by
  rw [tree3547_def]
  rfl
theorem node3547_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3547 live3547 coloured3547 = result3547 := by
  rw [tree3547_def]
  try dsimp only [colour, result3547]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3548_agree : tree3548 = literal3548 := by
  rw [tree3548_def, tree3546_agree, tree3547_agree]
  rfl
theorem node3548_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3548 live3548 coloured3548 = result3548 := by
  rw [tree3548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3546_eq
  unfold live3546 coloured3546 at child
  try dsimp only [live3548, coloured3548]
  rw [child]
  dsimp only [result3546]
  have child := node3547_eq
  unfold live3547 coloured3547 at child
  try dsimp only [live3548, coloured3548]
  rw [child]
  dsimp only [result3547]
  try dsimp only [colour, result3548]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3549_agree : tree3549 = literal3549 := by
  rw [tree3549_def]
  rfl
theorem node3549_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3549 live3549 coloured3549 = result3549 := by
  rw [tree3549_def]
  try dsimp only [colour, result3549]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3550_agree : tree3550 = literal3550 := by
  rw [tree3550_def, tree3548_agree, tree3549_agree]
  rfl
theorem node3550_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3550 live3550 coloured3550 = result3550 := by
  rw [tree3550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3548_eq
  unfold live3548 coloured3548 at child
  try dsimp only [live3550, coloured3550]
  rw [child]
  dsimp only [result3548]
  have child := node3549_eq
  unfold live3549 coloured3549 at child
  try dsimp only [live3550, coloured3550]
  rw [child]
  dsimp only [result3549]
  try dsimp only [colour, result3550]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3551_agree : tree3551 = literal3551 := by
  rw [tree3551_def]
  rfl
theorem node3551_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3551 live3551 coloured3551 = result3551 := by
  rw [tree3551_def]
  try dsimp only [colour, result3551]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
