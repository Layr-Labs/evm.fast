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
theorem tree10464_agree_conditional
    (child0 : tree10462 = literal10462)
    (child1 : tree10463 = literal10463) : tree10464 = literal10464 := by
  rw [tree10464_def, child0, child1]
  rfl
theorem node10464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10462 live10462 coloured10462 = result10462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10463 live10463 coloured10463 = result10463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10464 live10464 coloured10464 = result10464 := by
  rw [tree10464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10462 coloured10462 at child
  try dsimp only [live10464, coloured10464]
  rw [child]
  dsimp only [result10462]
  have child := child1
  unfold live10463 coloured10463 at child
  try dsimp only [live10464, coloured10464]
  rw [child]
  dsimp only [result10463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10465_agree_conditional : tree10465 = literal10465 := by
  rw [tree10465_def]
  rfl
theorem node10465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10465 live10465 coloured10465 = result10465 := by
  rw [tree10465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10466_agree_conditional
    (child0 : tree10464 = literal10464)
    (child1 : tree10465 = literal10465) : tree10466 = literal10466 := by
  rw [tree10466_def, child0, child1]
  rfl
theorem node10466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10464 live10464 coloured10464 = result10464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10465 live10465 coloured10465 = result10465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10466 live10466 coloured10466 = result10466 := by
  rw [tree10466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10464 coloured10464 at child
  try dsimp only [live10466, coloured10466]
  rw [child]
  dsimp only [result10464]
  have child := child1
  unfold live10465 coloured10465 at child
  try dsimp only [live10466, coloured10466]
  rw [child]
  dsimp only [result10465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10467_agree_conditional : tree10467 = literal10467 := by
  rw [tree10467_def]
  rfl
theorem node10467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10467 live10467 coloured10467 = result10467 := by
  rw [tree10467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10468_agree_conditional
    (child0 : tree10466 = literal10466)
    (child1 : tree10467 = literal10467) : tree10468 = literal10468 := by
  rw [tree10468_def, child0, child1]
  rfl
theorem node10468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10466 live10466 coloured10466 = result10466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10467 live10467 coloured10467 = result10467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10468 live10468 coloured10468 = result10468 := by
  rw [tree10468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10466 coloured10466 at child
  try dsimp only [live10468, coloured10468]
  rw [child]
  dsimp only [result10466]
  have child := child1
  unfold live10467 coloured10467 at child
  try dsimp only [live10468, coloured10468]
  rw [child]
  dsimp only [result10467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10469_agree_conditional : tree10469 = literal10469 := by
  rw [tree10469_def]
  rfl
theorem node10469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10469 live10469 coloured10469 = result10469 := by
  rw [tree10469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10470_agree_conditional
    (child0 : tree10468 = literal10468)
    (child1 : tree10469 = literal10469) : tree10470 = literal10470 := by
  rw [tree10470_def, child0, child1]
  rfl
theorem node10470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10468 live10468 coloured10468 = result10468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10469 live10469 coloured10469 = result10469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10470 live10470 coloured10470 = result10470 := by
  rw [tree10470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10468 coloured10468 at child
  try dsimp only [live10470, coloured10470]
  rw [child]
  dsimp only [result10468]
  have child := child1
  unfold live10469 coloured10469 at child
  try dsimp only [live10470, coloured10470]
  rw [child]
  dsimp only [result10469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10471_agree_conditional : tree10471 = literal10471 := by
  rw [tree10471_def]
  rfl
theorem node10471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10471 live10471 coloured10471 = result10471 := by
  rw [tree10471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10472_agree_conditional
    (child0 : tree10470 = literal10470)
    (child1 : tree10471 = literal10471) : tree10472 = literal10472 := by
  rw [tree10472_def, child0, child1]
  rfl
theorem node10472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10470 live10470 coloured10470 = result10470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10471 live10471 coloured10471 = result10471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10472 live10472 coloured10472 = result10472 := by
  rw [tree10472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10470 coloured10470 at child
  try dsimp only [live10472, coloured10472]
  rw [child]
  dsimp only [result10470]
  have child := child1
  unfold live10471 coloured10471 at child
  try dsimp only [live10472, coloured10472]
  rw [child]
  dsimp only [result10471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10473_agree_conditional : tree10473 = literal10473 := by
  rw [tree10473_def]
  rfl
theorem node10473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10473 live10473 coloured10473 = result10473 := by
  rw [tree10473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10474_agree_conditional
    (child0 : tree10472 = literal10472)
    (child1 : tree10473 = literal10473) : tree10474 = literal10474 := by
  rw [tree10474_def, child0, child1]
  rfl
theorem node10474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10472 live10472 coloured10472 = result10472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10473 live10473 coloured10473 = result10473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10474 live10474 coloured10474 = result10474 := by
  rw [tree10474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10472 coloured10472 at child
  try dsimp only [live10474, coloured10474]
  rw [child]
  dsimp only [result10472]
  have child := child1
  unfold live10473 coloured10473 at child
  try dsimp only [live10474, coloured10474]
  rw [child]
  dsimp only [result10473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10475_agree_conditional : tree10475 = literal10475 := by
  rw [tree10475_def]
  rfl
theorem node10475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10475 live10475 coloured10475 = result10475 := by
  rw [tree10475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10476_agree_conditional
    (child0 : tree10474 = literal10474)
    (child1 : tree10475 = literal10475) : tree10476 = literal10476 := by
  rw [tree10476_def, child0, child1]
  rfl
theorem node10476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10474 live10474 coloured10474 = result10474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10475 live10475 coloured10475 = result10475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10476 live10476 coloured10476 = result10476 := by
  rw [tree10476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10474 coloured10474 at child
  try dsimp only [live10476, coloured10476]
  rw [child]
  dsimp only [result10474]
  have child := child1
  unfold live10475 coloured10475 at child
  try dsimp only [live10476, coloured10476]
  rw [child]
  dsimp only [result10475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10477_agree_conditional : tree10477 = literal10477 := by
  rw [tree10477_def]
  rfl
theorem node10477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10477 live10477 coloured10477 = result10477 := by
  rw [tree10477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10478_agree_conditional
    (child0 : tree10476 = literal10476)
    (child1 : tree10477 = literal10477) : tree10478 = literal10478 := by
  rw [tree10478_def, child0, child1]
  rfl
theorem node10478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10476 live10476 coloured10476 = result10476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10477 live10477 coloured10477 = result10477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10478 live10478 coloured10478 = result10478 := by
  rw [tree10478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10476 coloured10476 at child
  try dsimp only [live10478, coloured10478]
  rw [child]
  dsimp only [result10476]
  have child := child1
  unfold live10477 coloured10477 at child
  try dsimp only [live10478, coloured10478]
  rw [child]
  dsimp only [result10477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10479_agree_conditional : tree10479 = literal10479 := by
  rw [tree10479_def]
  rfl
theorem node10479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10479 live10479 coloured10479 = result10479 := by
  rw [tree10479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10480_agree_conditional
    (child0 : tree10478 = literal10478)
    (child1 : tree10479 = literal10479) : tree10480 = literal10480 := by
  rw [tree10480_def, child0, child1]
  rfl
theorem node10480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10478 live10478 coloured10478 = result10478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10479 live10479 coloured10479 = result10479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10480 live10480 coloured10480 = result10480 := by
  rw [tree10480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10478 coloured10478 at child
  try dsimp only [live10480, coloured10480]
  rw [child]
  dsimp only [result10478]
  have child := child1
  unfold live10479 coloured10479 at child
  try dsimp only [live10480, coloured10480]
  rw [child]
  dsimp only [result10479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10481_agree_conditional : tree10481 = literal10481 := by
  rw [tree10481_def]
  rfl
theorem node10481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10481 live10481 coloured10481 = result10481 := by
  rw [tree10481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10482_agree_conditional
    (child0 : tree10480 = literal10480)
    (child1 : tree10481 = literal10481) : tree10482 = literal10482 := by
  rw [tree10482_def, child0, child1]
  rfl
theorem node10482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10480 live10480 coloured10480 = result10480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10481 live10481 coloured10481 = result10481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10482 live10482 coloured10482 = result10482 := by
  rw [tree10482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10480 coloured10480 at child
  try dsimp only [live10482, coloured10482]
  rw [child]
  dsimp only [result10480]
  have child := child1
  unfold live10481 coloured10481 at child
  try dsimp only [live10482, coloured10482]
  rw [child]
  dsimp only [result10481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10483_agree_conditional : tree10483 = literal10483 := by
  rw [tree10483_def]
  rfl
theorem node10483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10483 live10483 coloured10483 = result10483 := by
  rw [tree10483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10484_agree_conditional
    (child0 : tree10482 = literal10482)
    (child1 : tree10483 = literal10483) : tree10484 = literal10484 := by
  rw [tree10484_def, child0, child1]
  rfl
theorem node10484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10482 live10482 coloured10482 = result10482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10483 live10483 coloured10483 = result10483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10484 live10484 coloured10484 = result10484 := by
  rw [tree10484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10482 coloured10482 at child
  try dsimp only [live10484, coloured10484]
  rw [child]
  dsimp only [result10482]
  have child := child1
  unfold live10483 coloured10483 at child
  try dsimp only [live10484, coloured10484]
  rw [child]
  dsimp only [result10483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10485_agree_conditional : tree10485 = literal10485 := by
  rw [tree10485_def]
  rfl
theorem node10485_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10485 live10485 coloured10485 = result10485 := by
  rw [tree10485_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10486_agree_conditional
    (child0 : tree10484 = literal10484)
    (child1 : tree10485 = literal10485) : tree10486 = literal10486 := by
  rw [tree10486_def, child0, child1]
  rfl
theorem node10486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10484 live10484 coloured10484 = result10484)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10485 live10485 coloured10485 = result10485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10486 live10486 coloured10486 = result10486 := by
  rw [tree10486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10484 coloured10484 at child
  try dsimp only [live10486, coloured10486]
  rw [child]
  dsimp only [result10484]
  have child := child1
  unfold live10485 coloured10485 at child
  try dsimp only [live10486, coloured10486]
  rw [child]
  dsimp only [result10485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10487_agree_conditional : tree10487 = literal10487 := by
  rw [tree10487_def]
  rfl
theorem node10487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10487 live10487 coloured10487 = result10487 := by
  rw [tree10487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10488_agree_conditional
    (child0 : tree10486 = literal10486)
    (child1 : tree10487 = literal10487) : tree10488 = literal10488 := by
  rw [tree10488_def, child0, child1]
  rfl
theorem node10488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10486 live10486 coloured10486 = result10486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10487 live10487 coloured10487 = result10487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10488 live10488 coloured10488 = result10488 := by
  rw [tree10488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10486 coloured10486 at child
  try dsimp only [live10488, coloured10488]
  rw [child]
  dsimp only [result10486]
  have child := child1
  unfold live10487 coloured10487 at child
  try dsimp only [live10488, coloured10488]
  rw [child]
  dsimp only [result10487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10489_agree_conditional : tree10489 = literal10489 := by
  rw [tree10489_def]
  rfl
theorem node10489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10489 live10489 coloured10489 = result10489 := by
  rw [tree10489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10490_agree_conditional
    (child0 : tree10488 = literal10488)
    (child1 : tree10489 = literal10489) : tree10490 = literal10490 := by
  rw [tree10490_def, child0, child1]
  rfl
theorem node10490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10488 live10488 coloured10488 = result10488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10489 live10489 coloured10489 = result10489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10490 live10490 coloured10490 = result10490 := by
  rw [tree10490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10488 coloured10488 at child
  try dsimp only [live10490, coloured10490]
  rw [child]
  dsimp only [result10488]
  have child := child1
  unfold live10489 coloured10489 at child
  try dsimp only [live10490, coloured10490]
  rw [child]
  dsimp only [result10489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10491_agree_conditional : tree10491 = literal10491 := by
  rw [tree10491_def]
  rfl
theorem node10491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10491 live10491 coloured10491 = result10491 := by
  rw [tree10491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10492_agree_conditional
    (child0 : tree10490 = literal10490)
    (child1 : tree10491 = literal10491) : tree10492 = literal10492 := by
  rw [tree10492_def, child0, child1]
  rfl
theorem node10492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10490 live10490 coloured10490 = result10490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10491 live10491 coloured10491 = result10491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10492 live10492 coloured10492 = result10492 := by
  rw [tree10492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10490 coloured10490 at child
  try dsimp only [live10492, coloured10492]
  rw [child]
  dsimp only [result10490]
  have child := child1
  unfold live10491 coloured10491 at child
  try dsimp only [live10492, coloured10492]
  rw [child]
  dsimp only [result10491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10493_agree_conditional : tree10493 = literal10493 := by
  rw [tree10493_def]
  rfl
theorem node10493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10493 live10493 coloured10493 = result10493 := by
  rw [tree10493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10494_agree_conditional
    (child0 : tree10492 = literal10492)
    (child1 : tree10493 = literal10493) : tree10494 = literal10494 := by
  rw [tree10494_def, child0, child1]
  rfl
theorem node10494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10492 live10492 coloured10492 = result10492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10493 live10493 coloured10493 = result10493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10494 live10494 coloured10494 = result10494 := by
  rw [tree10494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10492 coloured10492 at child
  try dsimp only [live10494, coloured10494]
  rw [child]
  dsimp only [result10492]
  have child := child1
  unfold live10493 coloured10493 at child
  try dsimp only [live10494, coloured10494]
  rw [child]
  dsimp only [result10493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10495_agree_conditional : tree10495 = literal10495 := by
  rw [tree10495_def]
  rfl
theorem node10495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10495 live10495 coloured10495 = result10495 := by
  rw [tree10495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10496_agree_conditional
    (child0 : tree10494 = literal10494)
    (child1 : tree10495 = literal10495) : tree10496 = literal10496 := by
  rw [tree10496_def, child0, child1]
  rfl
theorem node10496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10494 live10494 coloured10494 = result10494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10495 live10495 coloured10495 = result10495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10496 live10496 coloured10496 = result10496 := by
  rw [tree10496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10494 coloured10494 at child
  try dsimp only [live10496, coloured10496]
  rw [child]
  dsimp only [result10494]
  have child := child1
  unfold live10495 coloured10495 at child
  try dsimp only [live10496, coloured10496]
  rw [child]
  dsimp only [result10495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10497_agree_conditional : tree10497 = literal10497 := by
  rw [tree10497_def]
  rfl
theorem node10497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10497 live10497 coloured10497 = result10497 := by
  rw [tree10497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10498_agree_conditional
    (child0 : tree10496 = literal10496)
    (child1 : tree10497 = literal10497) : tree10498 = literal10498 := by
  rw [tree10498_def, child0, child1]
  rfl
theorem node10498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10496 live10496 coloured10496 = result10496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10497 live10497 coloured10497 = result10497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10498 live10498 coloured10498 = result10498 := by
  rw [tree10498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10496 coloured10496 at child
  try dsimp only [live10498, coloured10498]
  rw [child]
  dsimp only [result10496]
  have child := child1
  unfold live10497 coloured10497 at child
  try dsimp only [live10498, coloured10498]
  rw [child]
  dsimp only [result10497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10499_agree_conditional : tree10499 = literal10499 := by
  rw [tree10499_def]
  rfl
theorem node10499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10499 live10499 coloured10499 = result10499 := by
  rw [tree10499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10500_agree_conditional
    (child0 : tree10498 = literal10498)
    (child1 : tree10499 = literal10499) : tree10500 = literal10500 := by
  rw [tree10500_def, child0, child1]
  rfl
theorem node10500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10498 live10498 coloured10498 = result10498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10499 live10499 coloured10499 = result10499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10500 live10500 coloured10500 = result10500 := by
  rw [tree10500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10498 coloured10498 at child
  try dsimp only [live10500, coloured10500]
  rw [child]
  dsimp only [result10498]
  have child := child1
  unfold live10499 coloured10499 at child
  try dsimp only [live10500, coloured10500]
  rw [child]
  dsimp only [result10499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10501_agree_conditional : tree10501 = literal10501 := by
  rw [tree10501_def]
  rfl
theorem node10501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10501 live10501 coloured10501 = result10501 := by
  rw [tree10501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10502_agree_conditional
    (child0 : tree10500 = literal10500)
    (child1 : tree10501 = literal10501) : tree10502 = literal10502 := by
  rw [tree10502_def, child0, child1]
  rfl
theorem node10502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10500 live10500 coloured10500 = result10500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10501 live10501 coloured10501 = result10501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10502 live10502 coloured10502 = result10502 := by
  rw [tree10502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10500 coloured10500 at child
  try dsimp only [live10502, coloured10502]
  rw [child]
  dsimp only [result10500]
  have child := child1
  unfold live10501 coloured10501 at child
  try dsimp only [live10502, coloured10502]
  rw [child]
  dsimp only [result10501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10503_agree_conditional : tree10503 = literal10503 := by
  rw [tree10503_def]
  rfl
theorem node10503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10503 live10503 coloured10503 = result10503 := by
  rw [tree10503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10504_agree_conditional
    (child0 : tree10502 = literal10502)
    (child1 : tree10503 = literal10503) : tree10504 = literal10504 := by
  rw [tree10504_def, child0, child1]
  rfl
theorem node10504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10502 live10502 coloured10502 = result10502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10503 live10503 coloured10503 = result10503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10504 live10504 coloured10504 = result10504 := by
  rw [tree10504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10502 coloured10502 at child
  try dsimp only [live10504, coloured10504]
  rw [child]
  dsimp only [result10502]
  have child := child1
  unfold live10503 coloured10503 at child
  try dsimp only [live10504, coloured10504]
  rw [child]
  dsimp only [result10503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10505_agree_conditional : tree10505 = literal10505 := by
  rw [tree10505_def]
  rfl
theorem node10505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10505 live10505 coloured10505 = result10505 := by
  rw [tree10505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10506_agree_conditional
    (child0 : tree10504 = literal10504)
    (child1 : tree10505 = literal10505) : tree10506 = literal10506 := by
  rw [tree10506_def, child0, child1]
  rfl
theorem node10506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10504 live10504 coloured10504 = result10504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10505 live10505 coloured10505 = result10505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10506 live10506 coloured10506 = result10506 := by
  rw [tree10506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10504 coloured10504 at child
  try dsimp only [live10506, coloured10506]
  rw [child]
  dsimp only [result10504]
  have child := child1
  unfold live10505 coloured10505 at child
  try dsimp only [live10506, coloured10506]
  rw [child]
  dsimp only [result10505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10507_agree_conditional : tree10507 = literal10507 := by
  rw [tree10507_def]
  rfl
theorem node10507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10507 live10507 coloured10507 = result10507 := by
  rw [tree10507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10508_agree_conditional
    (child0 : tree10506 = literal10506)
    (child1 : tree10507 = literal10507) : tree10508 = literal10508 := by
  rw [tree10508_def, child0, child1]
  rfl
theorem node10508_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10506 live10506 coloured10506 = result10506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10507 live10507 coloured10507 = result10507) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10508 live10508 coloured10508 = result10508 := by
  rw [tree10508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10506 coloured10506 at child
  try dsimp only [live10508, coloured10508]
  rw [child]
  dsimp only [result10506]
  have child := child1
  unfold live10507 coloured10507 at child
  try dsimp only [live10508, coloured10508]
  rw [child]
  dsimp only [result10507]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10509_agree_conditional : tree10509 = literal10509 := by
  rw [tree10509_def]
  rfl
theorem node10509_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10509 live10509 coloured10509 = result10509 := by
  rw [tree10509_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10510_agree_conditional
    (child0 : tree10508 = literal10508)
    (child1 : tree10509 = literal10509) : tree10510 = literal10510 := by
  rw [tree10510_def, child0, child1]
  rfl
theorem node10510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10508 live10508 coloured10508 = result10508)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10509 live10509 coloured10509 = result10509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10510 live10510 coloured10510 = result10510 := by
  rw [tree10510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10508 coloured10508 at child
  try dsimp only [live10510, coloured10510]
  rw [child]
  dsimp only [result10508]
  have child := child1
  unfold live10509 coloured10509 at child
  try dsimp only [live10510, coloured10510]
  rw [child]
  dsimp only [result10509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10511_agree_conditional : tree10511 = literal10511 := by
  rw [tree10511_def]
  rfl
theorem node10511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10511 live10511 coloured10511 = result10511 := by
  rw [tree10511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10512_agree_conditional
    (child0 : tree10510 = literal10510)
    (child1 : tree10511 = literal10511) : tree10512 = literal10512 := by
  rw [tree10512_def, child0, child1]
  rfl
theorem node10512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10510 live10510 coloured10510 = result10510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10511 live10511 coloured10511 = result10511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10512 live10512 coloured10512 = result10512 := by
  rw [tree10512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10510 coloured10510 at child
  try dsimp only [live10512, coloured10512]
  rw [child]
  dsimp only [result10510]
  have child := child1
  unfold live10511 coloured10511 at child
  try dsimp only [live10512, coloured10512]
  rw [child]
  dsimp only [result10511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10513_agree_conditional : tree10513 = literal10513 := by
  rw [tree10513_def]
  rfl
theorem node10513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10513 live10513 coloured10513 = result10513 := by
  rw [tree10513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10514_agree_conditional
    (child0 : tree10512 = literal10512)
    (child1 : tree10513 = literal10513) : tree10514 = literal10514 := by
  rw [tree10514_def, child0, child1]
  rfl
theorem node10514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10512 live10512 coloured10512 = result10512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10513 live10513 coloured10513 = result10513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10514 live10514 coloured10514 = result10514 := by
  rw [tree10514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10512 coloured10512 at child
  try dsimp only [live10514, coloured10514]
  rw [child]
  dsimp only [result10512]
  have child := child1
  unfold live10513 coloured10513 at child
  try dsimp only [live10514, coloured10514]
  rw [child]
  dsimp only [result10513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10515_agree_conditional : tree10515 = literal10515 := by
  rw [tree10515_def]
  rfl
theorem node10515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10515 live10515 coloured10515 = result10515 := by
  rw [tree10515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10516_agree_conditional
    (child0 : tree10514 = literal10514)
    (child1 : tree10515 = literal10515) : tree10516 = literal10516 := by
  rw [tree10516_def, child0, child1]
  rfl
theorem node10516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10514 live10514 coloured10514 = result10514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10515 live10515 coloured10515 = result10515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10516 live10516 coloured10516 = result10516 := by
  rw [tree10516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10514 coloured10514 at child
  try dsimp only [live10516, coloured10516]
  rw [child]
  dsimp only [result10514]
  have child := child1
  unfold live10515 coloured10515 at child
  try dsimp only [live10516, coloured10516]
  rw [child]
  dsimp only [result10515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10517_agree_conditional : tree10517 = literal10517 := by
  rw [tree10517_def]
  rfl
theorem node10517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10517 live10517 coloured10517 = result10517 := by
  rw [tree10517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10518_agree_conditional
    (child0 : tree10516 = literal10516)
    (child1 : tree10517 = literal10517) : tree10518 = literal10518 := by
  rw [tree10518_def, child0, child1]
  rfl
theorem node10518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10516 live10516 coloured10516 = result10516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10517 live10517 coloured10517 = result10517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10518 live10518 coloured10518 = result10518 := by
  rw [tree10518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10516 coloured10516 at child
  try dsimp only [live10518, coloured10518]
  rw [child]
  dsimp only [result10516]
  have child := child1
  unfold live10517 coloured10517 at child
  try dsimp only [live10518, coloured10518]
  rw [child]
  dsimp only [result10517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10519_agree_conditional : tree10519 = literal10519 := by
  rw [tree10519_def]
  rfl
theorem node10519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10519 live10519 coloured10519 = result10519 := by
  rw [tree10519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10520_agree_conditional
    (child0 : tree10518 = literal10518)
    (child1 : tree10519 = literal10519) : tree10520 = literal10520 := by
  rw [tree10520_def, child0, child1]
  rfl
theorem node10520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10518 live10518 coloured10518 = result10518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10519 live10519 coloured10519 = result10519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10520 live10520 coloured10520 = result10520 := by
  rw [tree10520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10518 coloured10518 at child
  try dsimp only [live10520, coloured10520]
  rw [child]
  dsimp only [result10518]
  have child := child1
  unfold live10519 coloured10519 at child
  try dsimp only [live10520, coloured10520]
  rw [child]
  dsimp only [result10519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10521_agree_conditional : tree10521 = literal10521 := by
  rw [tree10521_def]
  rfl
theorem node10521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10521 live10521 coloured10521 = result10521 := by
  rw [tree10521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10522_agree_conditional
    (child0 : tree10520 = literal10520)
    (child1 : tree10521 = literal10521) : tree10522 = literal10522 := by
  rw [tree10522_def, child0, child1]
  rfl
theorem node10522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10520 live10520 coloured10520 = result10520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10521 live10521 coloured10521 = result10521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10522 live10522 coloured10522 = result10522 := by
  rw [tree10522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10520 coloured10520 at child
  try dsimp only [live10522, coloured10522]
  rw [child]
  dsimp only [result10520]
  have child := child1
  unfold live10521 coloured10521 at child
  try dsimp only [live10522, coloured10522]
  rw [child]
  dsimp only [result10521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10523_agree_conditional : tree10523 = literal10523 := by
  rw [tree10523_def]
  rfl
theorem node10523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10523 live10523 coloured10523 = result10523 := by
  rw [tree10523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10524_agree_conditional
    (child0 : tree10522 = literal10522)
    (child1 : tree10523 = literal10523) : tree10524 = literal10524 := by
  rw [tree10524_def, child0, child1]
  rfl
theorem node10524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10522 live10522 coloured10522 = result10522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10523 live10523 coloured10523 = result10523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10524 live10524 coloured10524 = result10524 := by
  rw [tree10524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10522 coloured10522 at child
  try dsimp only [live10524, coloured10524]
  rw [child]
  dsimp only [result10522]
  have child := child1
  unfold live10523 coloured10523 at child
  try dsimp only [live10524, coloured10524]
  rw [child]
  dsimp only [result10523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10525_agree_conditional : tree10525 = literal10525 := by
  rw [tree10525_def]
  rfl
theorem node10525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10525 live10525 coloured10525 = result10525 := by
  rw [tree10525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10526_agree_conditional
    (child0 : tree10524 = literal10524)
    (child1 : tree10525 = literal10525) : tree10526 = literal10526 := by
  rw [tree10526_def, child0, child1]
  rfl
theorem node10526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10524 live10524 coloured10524 = result10524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10525 live10525 coloured10525 = result10525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10526 live10526 coloured10526 = result10526 := by
  rw [tree10526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10524 coloured10524 at child
  try dsimp only [live10526, coloured10526]
  rw [child]
  dsimp only [result10524]
  have child := child1
  unfold live10525 coloured10525 at child
  try dsimp only [live10526, coloured10526]
  rw [child]
  dsimp only [result10525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10527_agree_conditional : tree10527 = literal10527 := by
  rw [tree10527_def]
  rfl
theorem node10527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10527 live10527 coloured10527 = result10527 := by
  rw [tree10527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10528_agree_conditional
    (child0 : tree10526 = literal10526)
    (child1 : tree10527 = literal10527) : tree10528 = literal10528 := by
  rw [tree10528_def, child0, child1]
  rfl
theorem node10528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10526 live10526 coloured10526 = result10526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10527 live10527 coloured10527 = result10527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10528 live10528 coloured10528 = result10528 := by
  rw [tree10528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10526 coloured10526 at child
  try dsimp only [live10528, coloured10528]
  rw [child]
  dsimp only [result10526]
  have child := child1
  unfold live10527 coloured10527 at child
  try dsimp only [live10528, coloured10528]
  rw [child]
  dsimp only [result10527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10529_agree_conditional : tree10529 = literal10529 := by
  rw [tree10529_def]
  rfl
theorem node10529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10529 live10529 coloured10529 = result10529 := by
  rw [tree10529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10530_agree_conditional
    (child0 : tree10528 = literal10528)
    (child1 : tree10529 = literal10529) : tree10530 = literal10530 := by
  rw [tree10530_def, child0, child1]
  rfl
theorem node10530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10528 live10528 coloured10528 = result10528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10529 live10529 coloured10529 = result10529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10530 live10530 coloured10530 = result10530 := by
  rw [tree10530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10528 coloured10528 at child
  try dsimp only [live10530, coloured10530]
  rw [child]
  dsimp only [result10528]
  have child := child1
  unfold live10529 coloured10529 at child
  try dsimp only [live10530, coloured10530]
  rw [child]
  dsimp only [result10529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10531_agree_conditional : tree10531 = literal10531 := by
  rw [tree10531_def]
  rfl
theorem node10531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10531 live10531 coloured10531 = result10531 := by
  rw [tree10531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10532_agree_conditional
    (child0 : tree10530 = literal10530)
    (child1 : tree10531 = literal10531) : tree10532 = literal10532 := by
  rw [tree10532_def, child0, child1]
  rfl
theorem node10532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10530 live10530 coloured10530 = result10530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10531 live10531 coloured10531 = result10531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10532 live10532 coloured10532 = result10532 := by
  rw [tree10532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10530 coloured10530 at child
  try dsimp only [live10532, coloured10532]
  rw [child]
  dsimp only [result10530]
  have child := child1
  unfold live10531 coloured10531 at child
  try dsimp only [live10532, coloured10532]
  rw [child]
  dsimp only [result10531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10533_agree_conditional : tree10533 = literal10533 := by
  rw [tree10533_def]
  rfl
theorem node10533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10533 live10533 coloured10533 = result10533 := by
  rw [tree10533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10534_agree_conditional
    (child0 : tree10532 = literal10532)
    (child1 : tree10533 = literal10533) : tree10534 = literal10534 := by
  rw [tree10534_def, child0, child1]
  rfl
theorem node10534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10532 live10532 coloured10532 = result10532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10533 live10533 coloured10533 = result10533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10534 live10534 coloured10534 = result10534 := by
  rw [tree10534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10532 coloured10532 at child
  try dsimp only [live10534, coloured10534]
  rw [child]
  dsimp only [result10532]
  have child := child1
  unfold live10533 coloured10533 at child
  try dsimp only [live10534, coloured10534]
  rw [child]
  dsimp only [result10533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10535_agree_conditional : tree10535 = literal10535 := by
  rw [tree10535_def]
  rfl
theorem node10535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10535 live10535 coloured10535 = result10535 := by
  rw [tree10535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10536_agree_conditional
    (child0 : tree10534 = literal10534)
    (child1 : tree10535 = literal10535) : tree10536 = literal10536 := by
  rw [tree10536_def, child0, child1]
  rfl
theorem node10536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10534 live10534 coloured10534 = result10534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10535 live10535 coloured10535 = result10535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10536 live10536 coloured10536 = result10536 := by
  rw [tree10536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10534 coloured10534 at child
  try dsimp only [live10536, coloured10536]
  rw [child]
  dsimp only [result10534]
  have child := child1
  unfold live10535 coloured10535 at child
  try dsimp only [live10536, coloured10536]
  rw [child]
  dsimp only [result10535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10537_agree_conditional : tree10537 = literal10537 := by
  rw [tree10537_def]
  rfl
theorem node10537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10537 live10537 coloured10537 = result10537 := by
  rw [tree10537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10538_agree_conditional
    (child0 : tree10536 = literal10536)
    (child1 : tree10537 = literal10537) : tree10538 = literal10538 := by
  rw [tree10538_def, child0, child1]
  rfl
theorem node10538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10536 live10536 coloured10536 = result10536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10537 live10537 coloured10537 = result10537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10538 live10538 coloured10538 = result10538 := by
  rw [tree10538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10536 coloured10536 at child
  try dsimp only [live10538, coloured10538]
  rw [child]
  dsimp only [result10536]
  have child := child1
  unfold live10537 coloured10537 at child
  try dsimp only [live10538, coloured10538]
  rw [child]
  dsimp only [result10537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10539_agree_conditional : tree10539 = literal10539 := by
  rw [tree10539_def]
  rfl
theorem node10539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10539 live10539 coloured10539 = result10539 := by
  rw [tree10539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10540_agree_conditional
    (child0 : tree10538 = literal10538)
    (child1 : tree10539 = literal10539) : tree10540 = literal10540 := by
  rw [tree10540_def, child0, child1]
  rfl
theorem node10540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10538 live10538 coloured10538 = result10538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10539 live10539 coloured10539 = result10539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10540 live10540 coloured10540 = result10540 := by
  rw [tree10540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10538 coloured10538 at child
  try dsimp only [live10540, coloured10540]
  rw [child]
  dsimp only [result10538]
  have child := child1
  unfold live10539 coloured10539 at child
  try dsimp only [live10540, coloured10540]
  rw [child]
  dsimp only [result10539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10541_agree_conditional : tree10541 = literal10541 := by
  rw [tree10541_def]
  rfl
theorem node10541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10541 live10541 coloured10541 = result10541 := by
  rw [tree10541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10542_agree_conditional
    (child0 : tree10540 = literal10540)
    (child1 : tree10541 = literal10541) : tree10542 = literal10542 := by
  rw [tree10542_def, child0, child1]
  rfl
theorem node10542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10540 live10540 coloured10540 = result10540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10541 live10541 coloured10541 = result10541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10542 live10542 coloured10542 = result10542 := by
  rw [tree10542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10540 coloured10540 at child
  try dsimp only [live10542, coloured10542]
  rw [child]
  dsimp only [result10540]
  have child := child1
  unfold live10541 coloured10541 at child
  try dsimp only [live10542, coloured10542]
  rw [child]
  dsimp only [result10541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10543_agree_conditional : tree10543 = literal10543 := by
  rw [tree10543_def]
  rfl
theorem node10543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10543 live10543 coloured10543 = result10543 := by
  rw [tree10543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10544_agree_conditional
    (child0 : tree10542 = literal10542)
    (child1 : tree10543 = literal10543) : tree10544 = literal10544 := by
  rw [tree10544_def, child0, child1]
  rfl
theorem node10544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10542 live10542 coloured10542 = result10542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10543 live10543 coloured10543 = result10543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10544 live10544 coloured10544 = result10544 := by
  rw [tree10544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10542 coloured10542 at child
  try dsimp only [live10544, coloured10544]
  rw [child]
  dsimp only [result10542]
  have child := child1
  unfold live10543 coloured10543 at child
  try dsimp only [live10544, coloured10544]
  rw [child]
  dsimp only [result10543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10545_agree_conditional : tree10545 = literal10545 := by
  rw [tree10545_def]
  rfl
theorem node10545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10545 live10545 coloured10545 = result10545 := by
  rw [tree10545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10546_agree_conditional
    (child0 : tree10544 = literal10544)
    (child1 : tree10545 = literal10545) : tree10546 = literal10546 := by
  rw [tree10546_def, child0, child1]
  rfl
theorem node10546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10544 live10544 coloured10544 = result10544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10545 live10545 coloured10545 = result10545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10546 live10546 coloured10546 = result10546 := by
  rw [tree10546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10544 coloured10544 at child
  try dsimp only [live10546, coloured10546]
  rw [child]
  dsimp only [result10544]
  have child := child1
  unfold live10545 coloured10545 at child
  try dsimp only [live10546, coloured10546]
  rw [child]
  dsimp only [result10545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10547_agree_conditional : tree10547 = literal10547 := by
  rw [tree10547_def]
  rfl
theorem node10547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10547 live10547 coloured10547 = result10547 := by
  rw [tree10547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10548_agree_conditional
    (child0 : tree10546 = literal10546)
    (child1 : tree10547 = literal10547) : tree10548 = literal10548 := by
  rw [tree10548_def, child0, child1]
  rfl
theorem node10548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10546 live10546 coloured10546 = result10546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10547 live10547 coloured10547 = result10547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10548 live10548 coloured10548 = result10548 := by
  rw [tree10548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10546 coloured10546 at child
  try dsimp only [live10548, coloured10548]
  rw [child]
  dsimp only [result10546]
  have child := child1
  unfold live10547 coloured10547 at child
  try dsimp only [live10548, coloured10548]
  rw [child]
  dsimp only [result10547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10549_agree_conditional : tree10549 = literal10549 := by
  rw [tree10549_def]
  rfl
theorem node10549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10549 live10549 coloured10549 = result10549 := by
  rw [tree10549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10550_agree_conditional
    (child0 : tree10548 = literal10548)
    (child1 : tree10549 = literal10549) : tree10550 = literal10550 := by
  rw [tree10550_def, child0, child1]
  rfl
theorem node10550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10548 live10548 coloured10548 = result10548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10549 live10549 coloured10549 = result10549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10550 live10550 coloured10550 = result10550 := by
  rw [tree10550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10548 coloured10548 at child
  try dsimp only [live10550, coloured10550]
  rw [child]
  dsimp only [result10548]
  have child := child1
  unfold live10549 coloured10549 at child
  try dsimp only [live10550, coloured10550]
  rw [child]
  dsimp only [result10549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10551_agree_conditional : tree10551 = literal10551 := by
  rw [tree10551_def]
  rfl
theorem node10551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10551 live10551 coloured10551 = result10551 := by
  rw [tree10551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10552_agree_conditional
    (child0 : tree10550 = literal10550)
    (child1 : tree10551 = literal10551) : tree10552 = literal10552 := by
  rw [tree10552_def, child0, child1]
  rfl
theorem node10552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10550 live10550 coloured10550 = result10550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10551 live10551 coloured10551 = result10551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10552 live10552 coloured10552 = result10552 := by
  rw [tree10552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10550 coloured10550 at child
  try dsimp only [live10552, coloured10552]
  rw [child]
  dsimp only [result10550]
  have child := child1
  unfold live10551 coloured10551 at child
  try dsimp only [live10552, coloured10552]
  rw [child]
  dsimp only [result10551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10553_agree_conditional : tree10553 = literal10553 := by
  rw [tree10553_def]
  rfl
theorem node10553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10553 live10553 coloured10553 = result10553 := by
  rw [tree10553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10554_agree_conditional
    (child0 : tree10552 = literal10552)
    (child1 : tree10553 = literal10553) : tree10554 = literal10554 := by
  rw [tree10554_def, child0, child1]
  rfl
theorem node10554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10552 live10552 coloured10552 = result10552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10553 live10553 coloured10553 = result10553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10554 live10554 coloured10554 = result10554 := by
  rw [tree10554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10552 coloured10552 at child
  try dsimp only [live10554, coloured10554]
  rw [child]
  dsimp only [result10552]
  have child := child1
  unfold live10553 coloured10553 at child
  try dsimp only [live10554, coloured10554]
  rw [child]
  dsimp only [result10553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10555_agree_conditional : tree10555 = literal10555 := by
  rw [tree10555_def]
  rfl
theorem node10555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10555 live10555 coloured10555 = result10555 := by
  rw [tree10555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10556_agree_conditional
    (child0 : tree10554 = literal10554)
    (child1 : tree10555 = literal10555) : tree10556 = literal10556 := by
  rw [tree10556_def, child0, child1]
  rfl
theorem node10556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10554 live10554 coloured10554 = result10554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10555 live10555 coloured10555 = result10555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10556 live10556 coloured10556 = result10556 := by
  rw [tree10556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10554 coloured10554 at child
  try dsimp only [live10556, coloured10556]
  rw [child]
  dsimp only [result10554]
  have child := child1
  unfold live10555 coloured10555 at child
  try dsimp only [live10556, coloured10556]
  rw [child]
  dsimp only [result10555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10557_agree_conditional : tree10557 = literal10557 := by
  rw [tree10557_def]
  rfl
theorem node10557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10557 live10557 coloured10557 = result10557 := by
  rw [tree10557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10558_agree_conditional
    (child0 : tree10556 = literal10556)
    (child1 : tree10557 = literal10557) : tree10558 = literal10558 := by
  rw [tree10558_def, child0, child1]
  rfl
theorem node10558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10556 live10556 coloured10556 = result10556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10557 live10557 coloured10557 = result10557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10558 live10558 coloured10558 = result10558 := by
  rw [tree10558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10556 coloured10556 at child
  try dsimp only [live10558, coloured10558]
  rw [child]
  dsimp only [result10556]
  have child := child1
  unfold live10557 coloured10557 at child
  try dsimp only [live10558, coloured10558]
  rw [child]
  dsimp only [result10557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10559_agree_conditional : tree10559 = literal10559 := by
  rw [tree10559_def]
  rfl
theorem node10559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10559 live10559 coloured10559 = result10559 := by
  rw [tree10559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
