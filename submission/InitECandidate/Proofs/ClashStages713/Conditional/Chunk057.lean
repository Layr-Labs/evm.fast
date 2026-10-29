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
theorem tree5472_agree_conditional
    (child0 : tree5470 = literal5470)
    (child1 : tree5471 = literal5471) : tree5472 = literal5472 := by
  rw [tree5472_def, child0, child1]
  rfl
theorem node5472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5470 live5470 coloured5470 = result5470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5471 live5471 coloured5471 = result5471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5472 live5472 coloured5472 = result5472 := by
  rw [tree5472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5470 coloured5470 at child
  try dsimp only [live5472, coloured5472]
  rw [child]
  dsimp only [result5470]
  have child := child1
  unfold live5471 coloured5471 at child
  try dsimp only [live5472, coloured5472]
  rw [child]
  dsimp only [result5471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5473_agree_conditional : tree5473 = literal5473 := by
  rw [tree5473_def]
  rfl
theorem node5473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5473 live5473 coloured5473 = result5473 := by
  rw [tree5473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5474_agree_conditional
    (child0 : tree5472 = literal5472)
    (child1 : tree5473 = literal5473) : tree5474 = literal5474 := by
  rw [tree5474_def, child0, child1]
  rfl
theorem node5474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5472 live5472 coloured5472 = result5472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5473 live5473 coloured5473 = result5473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5474 live5474 coloured5474 = result5474 := by
  rw [tree5474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5472 coloured5472 at child
  try dsimp only [live5474, coloured5474]
  rw [child]
  dsimp only [result5472]
  have child := child1
  unfold live5473 coloured5473 at child
  try dsimp only [live5474, coloured5474]
  rw [child]
  dsimp only [result5473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5475_agree_conditional : tree5475 = literal5475 := by
  rw [tree5475_def]
  rfl
theorem node5475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5475 live5475 coloured5475 = result5475 := by
  rw [tree5475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5476_agree_conditional
    (child0 : tree5474 = literal5474)
    (child1 : tree5475 = literal5475) : tree5476 = literal5476 := by
  rw [tree5476_def, child0, child1]
  rfl
theorem node5476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5474 live5474 coloured5474 = result5474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5475 live5475 coloured5475 = result5475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5476 live5476 coloured5476 = result5476 := by
  rw [tree5476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5474 coloured5474 at child
  try dsimp only [live5476, coloured5476]
  rw [child]
  dsimp only [result5474]
  have child := child1
  unfold live5475 coloured5475 at child
  try dsimp only [live5476, coloured5476]
  rw [child]
  dsimp only [result5475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5477_agree_conditional : tree5477 = literal5477 := by
  rw [tree5477_def]
  rfl
theorem node5477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5477 live5477 coloured5477 = result5477 := by
  rw [tree5477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5478_agree_conditional
    (child0 : tree5476 = literal5476)
    (child1 : tree5477 = literal5477) : tree5478 = literal5478 := by
  rw [tree5478_def, child0, child1]
  rfl
theorem node5478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5476 live5476 coloured5476 = result5476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5477 live5477 coloured5477 = result5477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5478 live5478 coloured5478 = result5478 := by
  rw [tree5478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5476 coloured5476 at child
  try dsimp only [live5478, coloured5478]
  rw [child]
  dsimp only [result5476]
  have child := child1
  unfold live5477 coloured5477 at child
  try dsimp only [live5478, coloured5478]
  rw [child]
  dsimp only [result5477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5479_agree_conditional : tree5479 = literal5479 := by
  rw [tree5479_def]
  rfl
theorem node5479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5479 live5479 coloured5479 = result5479 := by
  rw [tree5479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5480_agree_conditional
    (child0 : tree5478 = literal5478)
    (child1 : tree5479 = literal5479) : tree5480 = literal5480 := by
  rw [tree5480_def, child0, child1]
  rfl
theorem node5480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5478 live5478 coloured5478 = result5478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5479 live5479 coloured5479 = result5479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5480 live5480 coloured5480 = result5480 := by
  rw [tree5480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5478 coloured5478 at child
  try dsimp only [live5480, coloured5480]
  rw [child]
  dsimp only [result5478]
  have child := child1
  unfold live5479 coloured5479 at child
  try dsimp only [live5480, coloured5480]
  rw [child]
  dsimp only [result5479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5481_agree_conditional : tree5481 = literal5481 := by
  rw [tree5481_def]
  rfl
theorem node5481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5481 live5481 coloured5481 = result5481 := by
  rw [tree5481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5482_agree_conditional
    (child0 : tree5480 = literal5480)
    (child1 : tree5481 = literal5481) : tree5482 = literal5482 := by
  rw [tree5482_def, child0, child1]
  rfl
theorem node5482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5480 live5480 coloured5480 = result5480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5481 live5481 coloured5481 = result5481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5482 live5482 coloured5482 = result5482 := by
  rw [tree5482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5480 coloured5480 at child
  try dsimp only [live5482, coloured5482]
  rw [child]
  dsimp only [result5480]
  have child := child1
  unfold live5481 coloured5481 at child
  try dsimp only [live5482, coloured5482]
  rw [child]
  dsimp only [result5481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5483_agree_conditional : tree5483 = literal5483 := by
  rw [tree5483_def]
  rfl
theorem node5483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5483 live5483 coloured5483 = result5483 := by
  rw [tree5483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5484_agree_conditional
    (child0 : tree5482 = literal5482)
    (child1 : tree5483 = literal5483) : tree5484 = literal5484 := by
  rw [tree5484_def, child0, child1]
  rfl
theorem node5484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5482 live5482 coloured5482 = result5482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5483 live5483 coloured5483 = result5483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5484 live5484 coloured5484 = result5484 := by
  rw [tree5484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5482 coloured5482 at child
  try dsimp only [live5484, coloured5484]
  rw [child]
  dsimp only [result5482]
  have child := child1
  unfold live5483 coloured5483 at child
  try dsimp only [live5484, coloured5484]
  rw [child]
  dsimp only [result5483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5485_agree_conditional : tree5485 = literal5485 := by
  rw [tree5485_def]
  rfl
theorem node5485_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5485 live5485 coloured5485 = result5485 := by
  rw [tree5485_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5486_agree_conditional
    (child0 : tree5484 = literal5484)
    (child1 : tree5485 = literal5485) : tree5486 = literal5486 := by
  rw [tree5486_def, child0, child1]
  rfl
theorem node5486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5484 live5484 coloured5484 = result5484)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5485 live5485 coloured5485 = result5485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5486 live5486 coloured5486 = result5486 := by
  rw [tree5486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5484 coloured5484 at child
  try dsimp only [live5486, coloured5486]
  rw [child]
  dsimp only [result5484]
  have child := child1
  unfold live5485 coloured5485 at child
  try dsimp only [live5486, coloured5486]
  rw [child]
  dsimp only [result5485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5487_agree_conditional : tree5487 = literal5487 := by
  rw [tree5487_def]
  rfl
theorem node5487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5487 live5487 coloured5487 = result5487 := by
  rw [tree5487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5488_agree_conditional
    (child0 : tree5486 = literal5486)
    (child1 : tree5487 = literal5487) : tree5488 = literal5488 := by
  rw [tree5488_def, child0, child1]
  rfl
theorem node5488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5486 live5486 coloured5486 = result5486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5487 live5487 coloured5487 = result5487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5488 live5488 coloured5488 = result5488 := by
  rw [tree5488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5486 coloured5486 at child
  try dsimp only [live5488, coloured5488]
  rw [child]
  dsimp only [result5486]
  have child := child1
  unfold live5487 coloured5487 at child
  try dsimp only [live5488, coloured5488]
  rw [child]
  dsimp only [result5487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5489_agree_conditional : tree5489 = literal5489 := by
  rw [tree5489_def]
  rfl
theorem node5489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5489 live5489 coloured5489 = result5489 := by
  rw [tree5489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5490_agree_conditional
    (child0 : tree5488 = literal5488)
    (child1 : tree5489 = literal5489) : tree5490 = literal5490 := by
  rw [tree5490_def, child0, child1]
  rfl
theorem node5490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5488 live5488 coloured5488 = result5488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5489 live5489 coloured5489 = result5489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5490 live5490 coloured5490 = result5490 := by
  rw [tree5490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5488 coloured5488 at child
  try dsimp only [live5490, coloured5490]
  rw [child]
  dsimp only [result5488]
  have child := child1
  unfold live5489 coloured5489 at child
  try dsimp only [live5490, coloured5490]
  rw [child]
  dsimp only [result5489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5491_agree_conditional : tree5491 = literal5491 := by
  rw [tree5491_def]
  rfl
theorem node5491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5491 live5491 coloured5491 = result5491 := by
  rw [tree5491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5492_agree_conditional
    (child0 : tree5490 = literal5490)
    (child1 : tree5491 = literal5491) : tree5492 = literal5492 := by
  rw [tree5492_def, child0, child1]
  rfl
theorem node5492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5490 live5490 coloured5490 = result5490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5491 live5491 coloured5491 = result5491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5492 live5492 coloured5492 = result5492 := by
  rw [tree5492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5490 coloured5490 at child
  try dsimp only [live5492, coloured5492]
  rw [child]
  dsimp only [result5490]
  have child := child1
  unfold live5491 coloured5491 at child
  try dsimp only [live5492, coloured5492]
  rw [child]
  dsimp only [result5491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5493_agree_conditional : tree5493 = literal5493 := by
  rw [tree5493_def]
  rfl
theorem node5493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5493 live5493 coloured5493 = result5493 := by
  rw [tree5493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5494_agree_conditional
    (child0 : tree5492 = literal5492)
    (child1 : tree5493 = literal5493) : tree5494 = literal5494 := by
  rw [tree5494_def, child0, child1]
  rfl
theorem node5494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5492 live5492 coloured5492 = result5492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5493 live5493 coloured5493 = result5493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5494 live5494 coloured5494 = result5494 := by
  rw [tree5494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5492 coloured5492 at child
  try dsimp only [live5494, coloured5494]
  rw [child]
  dsimp only [result5492]
  have child := child1
  unfold live5493 coloured5493 at child
  try dsimp only [live5494, coloured5494]
  rw [child]
  dsimp only [result5493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5495_agree_conditional : tree5495 = literal5495 := by
  rw [tree5495_def]
  rfl
theorem node5495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5495 live5495 coloured5495 = result5495 := by
  rw [tree5495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5496_agree_conditional
    (child0 : tree5494 = literal5494)
    (child1 : tree5495 = literal5495) : tree5496 = literal5496 := by
  rw [tree5496_def, child0, child1]
  rfl
theorem node5496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5494 live5494 coloured5494 = result5494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5495 live5495 coloured5495 = result5495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5496 live5496 coloured5496 = result5496 := by
  rw [tree5496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5494 coloured5494 at child
  try dsimp only [live5496, coloured5496]
  rw [child]
  dsimp only [result5494]
  have child := child1
  unfold live5495 coloured5495 at child
  try dsimp only [live5496, coloured5496]
  rw [child]
  dsimp only [result5495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5497_agree_conditional : tree5497 = literal5497 := by
  rw [tree5497_def]
  rfl
theorem node5497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5497 live5497 coloured5497 = result5497 := by
  rw [tree5497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5498_agree_conditional
    (child0 : tree5496 = literal5496)
    (child1 : tree5497 = literal5497) : tree5498 = literal5498 := by
  rw [tree5498_def, child0, child1]
  rfl
theorem node5498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5496 live5496 coloured5496 = result5496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5497 live5497 coloured5497 = result5497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5498 live5498 coloured5498 = result5498 := by
  rw [tree5498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5496 coloured5496 at child
  try dsimp only [live5498, coloured5498]
  rw [child]
  dsimp only [result5496]
  have child := child1
  unfold live5497 coloured5497 at child
  try dsimp only [live5498, coloured5498]
  rw [child]
  dsimp only [result5497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5499_agree_conditional : tree5499 = literal5499 := by
  rw [tree5499_def]
  rfl
theorem node5499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5499 live5499 coloured5499 = result5499 := by
  rw [tree5499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5500_agree_conditional
    (child0 : tree5498 = literal5498)
    (child1 : tree5499 = literal5499) : tree5500 = literal5500 := by
  rw [tree5500_def, child0, child1]
  rfl
theorem node5500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5498 live5498 coloured5498 = result5498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5499 live5499 coloured5499 = result5499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5500 live5500 coloured5500 = result5500 := by
  rw [tree5500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5498 coloured5498 at child
  try dsimp only [live5500, coloured5500]
  rw [child]
  dsimp only [result5498]
  have child := child1
  unfold live5499 coloured5499 at child
  try dsimp only [live5500, coloured5500]
  rw [child]
  dsimp only [result5499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5501_agree_conditional : tree5501 = literal5501 := by
  rw [tree5501_def]
  rfl
theorem node5501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5501 live5501 coloured5501 = result5501 := by
  rw [tree5501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5502_agree_conditional
    (child0 : tree5500 = literal5500)
    (child1 : tree5501 = literal5501) : tree5502 = literal5502 := by
  rw [tree5502_def, child0, child1]
  rfl
theorem node5502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5500 live5500 coloured5500 = result5500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5501 live5501 coloured5501 = result5501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5502 live5502 coloured5502 = result5502 := by
  rw [tree5502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5500 coloured5500 at child
  try dsimp only [live5502, coloured5502]
  rw [child]
  dsimp only [result5500]
  have child := child1
  unfold live5501 coloured5501 at child
  try dsimp only [live5502, coloured5502]
  rw [child]
  dsimp only [result5501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5503_agree_conditional : tree5503 = literal5503 := by
  rw [tree5503_def]
  rfl
theorem node5503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5503 live5503 coloured5503 = result5503 := by
  rw [tree5503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5504_agree_conditional
    (child0 : tree5502 = literal5502)
    (child1 : tree5503 = literal5503) : tree5504 = literal5504 := by
  rw [tree5504_def, child0, child1]
  rfl
theorem node5504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5502 live5502 coloured5502 = result5502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5503 live5503 coloured5503 = result5503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5504 live5504 coloured5504 = result5504 := by
  rw [tree5504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5502 coloured5502 at child
  try dsimp only [live5504, coloured5504]
  rw [child]
  dsimp only [result5502]
  have child := child1
  unfold live5503 coloured5503 at child
  try dsimp only [live5504, coloured5504]
  rw [child]
  dsimp only [result5503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5505_agree_conditional : tree5505 = literal5505 := by
  rw [tree5505_def]
  rfl
theorem node5505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5505 live5505 coloured5505 = result5505 := by
  rw [tree5505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5506_agree_conditional
    (child0 : tree5504 = literal5504)
    (child1 : tree5505 = literal5505) : tree5506 = literal5506 := by
  rw [tree5506_def, child0, child1]
  rfl
theorem node5506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5504 live5504 coloured5504 = result5504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5505 live5505 coloured5505 = result5505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5506 live5506 coloured5506 = result5506 := by
  rw [tree5506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5504 coloured5504 at child
  try dsimp only [live5506, coloured5506]
  rw [child]
  dsimp only [result5504]
  have child := child1
  unfold live5505 coloured5505 at child
  try dsimp only [live5506, coloured5506]
  rw [child]
  dsimp only [result5505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5507_agree_conditional : tree5507 = literal5507 := by
  rw [tree5507_def]
  rfl
theorem node5507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5507 live5507 coloured5507 = result5507 := by
  rw [tree5507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5508_agree_conditional
    (child0 : tree5506 = literal5506)
    (child1 : tree5507 = literal5507) : tree5508 = literal5508 := by
  rw [tree5508_def, child0, child1]
  rfl
theorem node5508_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5506 live5506 coloured5506 = result5506)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5507 live5507 coloured5507 = result5507) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5508 live5508 coloured5508 = result5508 := by
  rw [tree5508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5506 coloured5506 at child
  try dsimp only [live5508, coloured5508]
  rw [child]
  dsimp only [result5506]
  have child := child1
  unfold live5507 coloured5507 at child
  try dsimp only [live5508, coloured5508]
  rw [child]
  dsimp only [result5507]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5509_agree_conditional : tree5509 = literal5509 := by
  rw [tree5509_def]
  rfl
theorem node5509_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5509 live5509 coloured5509 = result5509 := by
  rw [tree5509_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5510_agree_conditional
    (child0 : tree5508 = literal5508)
    (child1 : tree5509 = literal5509) : tree5510 = literal5510 := by
  rw [tree5510_def, child0, child1]
  rfl
theorem node5510_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5508 live5508 coloured5508 = result5508)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5509 live5509 coloured5509 = result5509) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5510 live5510 coloured5510 = result5510 := by
  rw [tree5510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5508 coloured5508 at child
  try dsimp only [live5510, coloured5510]
  rw [child]
  dsimp only [result5508]
  have child := child1
  unfold live5509 coloured5509 at child
  try dsimp only [live5510, coloured5510]
  rw [child]
  dsimp only [result5509]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5511_agree_conditional : tree5511 = literal5511 := by
  rw [tree5511_def]
  rfl
theorem node5511_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5511 live5511 coloured5511 = result5511 := by
  rw [tree5511_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5512_agree_conditional
    (child0 : tree5510 = literal5510)
    (child1 : tree5511 = literal5511) : tree5512 = literal5512 := by
  rw [tree5512_def, child0, child1]
  rfl
theorem node5512_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5510 live5510 coloured5510 = result5510)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5511 live5511 coloured5511 = result5511) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5512 live5512 coloured5512 = result5512 := by
  rw [tree5512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5510 coloured5510 at child
  try dsimp only [live5512, coloured5512]
  rw [child]
  dsimp only [result5510]
  have child := child1
  unfold live5511 coloured5511 at child
  try dsimp only [live5512, coloured5512]
  rw [child]
  dsimp only [result5511]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5513_agree_conditional : tree5513 = literal5513 := by
  rw [tree5513_def]
  rfl
theorem node5513_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5513 live5513 coloured5513 = result5513 := by
  rw [tree5513_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5514_agree_conditional
    (child0 : tree5512 = literal5512)
    (child1 : tree5513 = literal5513) : tree5514 = literal5514 := by
  rw [tree5514_def, child0, child1]
  rfl
theorem node5514_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5512 live5512 coloured5512 = result5512)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5513 live5513 coloured5513 = result5513) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5514 live5514 coloured5514 = result5514 := by
  rw [tree5514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5512 coloured5512 at child
  try dsimp only [live5514, coloured5514]
  rw [child]
  dsimp only [result5512]
  have child := child1
  unfold live5513 coloured5513 at child
  try dsimp only [live5514, coloured5514]
  rw [child]
  dsimp only [result5513]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5515_agree_conditional : tree5515 = literal5515 := by
  rw [tree5515_def]
  rfl
theorem node5515_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5515 live5515 coloured5515 = result5515 := by
  rw [tree5515_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5516_agree_conditional
    (child0 : tree5514 = literal5514)
    (child1 : tree5515 = literal5515) : tree5516 = literal5516 := by
  rw [tree5516_def, child0, child1]
  rfl
theorem node5516_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5514 live5514 coloured5514 = result5514)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5515 live5515 coloured5515 = result5515) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5516 live5516 coloured5516 = result5516 := by
  rw [tree5516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5514 coloured5514 at child
  try dsimp only [live5516, coloured5516]
  rw [child]
  dsimp only [result5514]
  have child := child1
  unfold live5515 coloured5515 at child
  try dsimp only [live5516, coloured5516]
  rw [child]
  dsimp only [result5515]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5517_agree_conditional : tree5517 = literal5517 := by
  rw [tree5517_def]
  rfl
theorem node5517_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5517 live5517 coloured5517 = result5517 := by
  rw [tree5517_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5518_agree_conditional
    (child0 : tree5516 = literal5516)
    (child1 : tree5517 = literal5517) : tree5518 = literal5518 := by
  rw [tree5518_def, child0, child1]
  rfl
theorem node5518_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5516 live5516 coloured5516 = result5516)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5517 live5517 coloured5517 = result5517) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5518 live5518 coloured5518 = result5518 := by
  rw [tree5518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5516 coloured5516 at child
  try dsimp only [live5518, coloured5518]
  rw [child]
  dsimp only [result5516]
  have child := child1
  unfold live5517 coloured5517 at child
  try dsimp only [live5518, coloured5518]
  rw [child]
  dsimp only [result5517]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5519_agree_conditional : tree5519 = literal5519 := by
  rw [tree5519_def]
  rfl
theorem node5519_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5519 live5519 coloured5519 = result5519 := by
  rw [tree5519_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5520_agree_conditional
    (child0 : tree5518 = literal5518)
    (child1 : tree5519 = literal5519) : tree5520 = literal5520 := by
  rw [tree5520_def, child0, child1]
  rfl
theorem node5520_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5518 live5518 coloured5518 = result5518)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5519 live5519 coloured5519 = result5519) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5520 live5520 coloured5520 = result5520 := by
  rw [tree5520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5518 coloured5518 at child
  try dsimp only [live5520, coloured5520]
  rw [child]
  dsimp only [result5518]
  have child := child1
  unfold live5519 coloured5519 at child
  try dsimp only [live5520, coloured5520]
  rw [child]
  dsimp only [result5519]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5521_agree_conditional : tree5521 = literal5521 := by
  rw [tree5521_def]
  rfl
theorem node5521_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5521 live5521 coloured5521 = result5521 := by
  rw [tree5521_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5522_agree_conditional
    (child0 : tree5520 = literal5520)
    (child1 : tree5521 = literal5521) : tree5522 = literal5522 := by
  rw [tree5522_def, child0, child1]
  rfl
theorem node5522_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5520 live5520 coloured5520 = result5520)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5521 live5521 coloured5521 = result5521) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5522 live5522 coloured5522 = result5522 := by
  rw [tree5522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5520 coloured5520 at child
  try dsimp only [live5522, coloured5522]
  rw [child]
  dsimp only [result5520]
  have child := child1
  unfold live5521 coloured5521 at child
  try dsimp only [live5522, coloured5522]
  rw [child]
  dsimp only [result5521]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5523_agree_conditional : tree5523 = literal5523 := by
  rw [tree5523_def]
  rfl
theorem node5523_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5523 live5523 coloured5523 = result5523 := by
  rw [tree5523_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5524_agree_conditional
    (child0 : tree5522 = literal5522)
    (child1 : tree5523 = literal5523) : tree5524 = literal5524 := by
  rw [tree5524_def, child0, child1]
  rfl
theorem node5524_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5522 live5522 coloured5522 = result5522)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5523 live5523 coloured5523 = result5523) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5524 live5524 coloured5524 = result5524 := by
  rw [tree5524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5522 coloured5522 at child
  try dsimp only [live5524, coloured5524]
  rw [child]
  dsimp only [result5522]
  have child := child1
  unfold live5523 coloured5523 at child
  try dsimp only [live5524, coloured5524]
  rw [child]
  dsimp only [result5523]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5525_agree_conditional : tree5525 = literal5525 := by
  rw [tree5525_def]
  rfl
theorem node5525_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5525 live5525 coloured5525 = result5525 := by
  rw [tree5525_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5526_agree_conditional
    (child0 : tree5524 = literal5524)
    (child1 : tree5525 = literal5525) : tree5526 = literal5526 := by
  rw [tree5526_def, child0, child1]
  rfl
theorem node5526_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5524 live5524 coloured5524 = result5524)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5525 live5525 coloured5525 = result5525) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5526 live5526 coloured5526 = result5526 := by
  rw [tree5526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5524 coloured5524 at child
  try dsimp only [live5526, coloured5526]
  rw [child]
  dsimp only [result5524]
  have child := child1
  unfold live5525 coloured5525 at child
  try dsimp only [live5526, coloured5526]
  rw [child]
  dsimp only [result5525]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5527_agree_conditional : tree5527 = literal5527 := by
  rw [tree5527_def]
  rfl
theorem node5527_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5527 live5527 coloured5527 = result5527 := by
  rw [tree5527_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5528_agree_conditional
    (child0 : tree5526 = literal5526)
    (child1 : tree5527 = literal5527) : tree5528 = literal5528 := by
  rw [tree5528_def, child0, child1]
  rfl
theorem node5528_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5526 live5526 coloured5526 = result5526)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5527 live5527 coloured5527 = result5527) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5528 live5528 coloured5528 = result5528 := by
  rw [tree5528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5526 coloured5526 at child
  try dsimp only [live5528, coloured5528]
  rw [child]
  dsimp only [result5526]
  have child := child1
  unfold live5527 coloured5527 at child
  try dsimp only [live5528, coloured5528]
  rw [child]
  dsimp only [result5527]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5529_agree_conditional : tree5529 = literal5529 := by
  rw [tree5529_def]
  rfl
theorem node5529_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5529 live5529 coloured5529 = result5529 := by
  rw [tree5529_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5530_agree_conditional
    (child0 : tree5528 = literal5528)
    (child1 : tree5529 = literal5529) : tree5530 = literal5530 := by
  rw [tree5530_def, child0, child1]
  rfl
theorem node5530_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5528 live5528 coloured5528 = result5528)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5529 live5529 coloured5529 = result5529) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5530 live5530 coloured5530 = result5530 := by
  rw [tree5530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5528 coloured5528 at child
  try dsimp only [live5530, coloured5530]
  rw [child]
  dsimp only [result5528]
  have child := child1
  unfold live5529 coloured5529 at child
  try dsimp only [live5530, coloured5530]
  rw [child]
  dsimp only [result5529]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5531_agree_conditional : tree5531 = literal5531 := by
  rw [tree5531_def]
  rfl
theorem node5531_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5531 live5531 coloured5531 = result5531 := by
  rw [tree5531_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5532_agree_conditional
    (child0 : tree5530 = literal5530)
    (child1 : tree5531 = literal5531) : tree5532 = literal5532 := by
  rw [tree5532_def, child0, child1]
  rfl
theorem node5532_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5530 live5530 coloured5530 = result5530)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5531 live5531 coloured5531 = result5531) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5532 live5532 coloured5532 = result5532 := by
  rw [tree5532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5530 coloured5530 at child
  try dsimp only [live5532, coloured5532]
  rw [child]
  dsimp only [result5530]
  have child := child1
  unfold live5531 coloured5531 at child
  try dsimp only [live5532, coloured5532]
  rw [child]
  dsimp only [result5531]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5533_agree_conditional : tree5533 = literal5533 := by
  rw [tree5533_def]
  rfl
theorem node5533_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5533 live5533 coloured5533 = result5533 := by
  rw [tree5533_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5534_agree_conditional
    (child0 : tree5532 = literal5532)
    (child1 : tree5533 = literal5533) : tree5534 = literal5534 := by
  rw [tree5534_def, child0, child1]
  rfl
theorem node5534_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5532 live5532 coloured5532 = result5532)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5533 live5533 coloured5533 = result5533) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5534 live5534 coloured5534 = result5534 := by
  rw [tree5534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5532 coloured5532 at child
  try dsimp only [live5534, coloured5534]
  rw [child]
  dsimp only [result5532]
  have child := child1
  unfold live5533 coloured5533 at child
  try dsimp only [live5534, coloured5534]
  rw [child]
  dsimp only [result5533]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5535_agree_conditional : tree5535 = literal5535 := by
  rw [tree5535_def]
  rfl
theorem node5535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5535 live5535 coloured5535 = result5535 := by
  rw [tree5535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5536_agree_conditional
    (child0 : tree5534 = literal5534)
    (child1 : tree5535 = literal5535) : tree5536 = literal5536 := by
  rw [tree5536_def, child0, child1]
  rfl
theorem node5536_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5534 live5534 coloured5534 = result5534)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5535 live5535 coloured5535 = result5535) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5536 live5536 coloured5536 = result5536 := by
  rw [tree5536_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5534 coloured5534 at child
  try dsimp only [live5536, coloured5536]
  rw [child]
  dsimp only [result5534]
  have child := child1
  unfold live5535 coloured5535 at child
  try dsimp only [live5536, coloured5536]
  rw [child]
  dsimp only [result5535]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5537_agree_conditional : tree5537 = literal5537 := by
  rw [tree5537_def]
  rfl
theorem node5537_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5537 live5537 coloured5537 = result5537 := by
  rw [tree5537_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5538_agree_conditional
    (child0 : tree5536 = literal5536)
    (child1 : tree5537 = literal5537) : tree5538 = literal5538 := by
  rw [tree5538_def, child0, child1]
  rfl
theorem node5538_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5536 live5536 coloured5536 = result5536)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5537 live5537 coloured5537 = result5537) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5538 live5538 coloured5538 = result5538 := by
  rw [tree5538_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5536 coloured5536 at child
  try dsimp only [live5538, coloured5538]
  rw [child]
  dsimp only [result5536]
  have child := child1
  unfold live5537 coloured5537 at child
  try dsimp only [live5538, coloured5538]
  rw [child]
  dsimp only [result5537]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5539_agree_conditional : tree5539 = literal5539 := by
  rw [tree5539_def]
  rfl
theorem node5539_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5539 live5539 coloured5539 = result5539 := by
  rw [tree5539_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5540_agree_conditional
    (child0 : tree5538 = literal5538)
    (child1 : tree5539 = literal5539) : tree5540 = literal5540 := by
  rw [tree5540_def, child0, child1]
  rfl
theorem node5540_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5538 live5538 coloured5538 = result5538)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5539 live5539 coloured5539 = result5539) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5540 live5540 coloured5540 = result5540 := by
  rw [tree5540_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5538 coloured5538 at child
  try dsimp only [live5540, coloured5540]
  rw [child]
  dsimp only [result5538]
  have child := child1
  unfold live5539 coloured5539 at child
  try dsimp only [live5540, coloured5540]
  rw [child]
  dsimp only [result5539]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5541_agree_conditional : tree5541 = literal5541 := by
  rw [tree5541_def]
  rfl
theorem node5541_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5541 live5541 coloured5541 = result5541 := by
  rw [tree5541_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5542_agree_conditional
    (child0 : tree5540 = literal5540)
    (child1 : tree5541 = literal5541) : tree5542 = literal5542 := by
  rw [tree5542_def, child0, child1]
  rfl
theorem node5542_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5540 live5540 coloured5540 = result5540)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5541 live5541 coloured5541 = result5541) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5542 live5542 coloured5542 = result5542 := by
  rw [tree5542_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5540 coloured5540 at child
  try dsimp only [live5542, coloured5542]
  rw [child]
  dsimp only [result5540]
  have child := child1
  unfold live5541 coloured5541 at child
  try dsimp only [live5542, coloured5542]
  rw [child]
  dsimp only [result5541]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5543_agree_conditional : tree5543 = literal5543 := by
  rw [tree5543_def]
  rfl
theorem node5543_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5543 live5543 coloured5543 = result5543 := by
  rw [tree5543_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5544_agree_conditional
    (child0 : tree5542 = literal5542)
    (child1 : tree5543 = literal5543) : tree5544 = literal5544 := by
  rw [tree5544_def, child0, child1]
  rfl
theorem node5544_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5542 live5542 coloured5542 = result5542)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5543 live5543 coloured5543 = result5543) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5544 live5544 coloured5544 = result5544 := by
  rw [tree5544_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5542 coloured5542 at child
  try dsimp only [live5544, coloured5544]
  rw [child]
  dsimp only [result5542]
  have child := child1
  unfold live5543 coloured5543 at child
  try dsimp only [live5544, coloured5544]
  rw [child]
  dsimp only [result5543]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5545_agree_conditional : tree5545 = literal5545 := by
  rw [tree5545_def]
  rfl
theorem node5545_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5545 live5545 coloured5545 = result5545 := by
  rw [tree5545_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5546_agree_conditional
    (child0 : tree5544 = literal5544)
    (child1 : tree5545 = literal5545) : tree5546 = literal5546 := by
  rw [tree5546_def, child0, child1]
  rfl
theorem node5546_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5544 live5544 coloured5544 = result5544)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5545 live5545 coloured5545 = result5545) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5546 live5546 coloured5546 = result5546 := by
  rw [tree5546_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5544 coloured5544 at child
  try dsimp only [live5546, coloured5546]
  rw [child]
  dsimp only [result5544]
  have child := child1
  unfold live5545 coloured5545 at child
  try dsimp only [live5546, coloured5546]
  rw [child]
  dsimp only [result5545]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5547_agree_conditional : tree5547 = literal5547 := by
  rw [tree5547_def]
  rfl
theorem node5547_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5547 live5547 coloured5547 = result5547 := by
  rw [tree5547_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5548_agree_conditional
    (child0 : tree5546 = literal5546)
    (child1 : tree5547 = literal5547) : tree5548 = literal5548 := by
  rw [tree5548_def, child0, child1]
  rfl
theorem node5548_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5546 live5546 coloured5546 = result5546)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5547 live5547 coloured5547 = result5547) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5548 live5548 coloured5548 = result5548 := by
  rw [tree5548_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5546 coloured5546 at child
  try dsimp only [live5548, coloured5548]
  rw [child]
  dsimp only [result5546]
  have child := child1
  unfold live5547 coloured5547 at child
  try dsimp only [live5548, coloured5548]
  rw [child]
  dsimp only [result5547]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5549_agree_conditional : tree5549 = literal5549 := by
  rw [tree5549_def]
  rfl
theorem node5549_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5549 live5549 coloured5549 = result5549 := by
  rw [tree5549_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5550_agree_conditional
    (child0 : tree5548 = literal5548)
    (child1 : tree5549 = literal5549) : tree5550 = literal5550 := by
  rw [tree5550_def, child0, child1]
  rfl
theorem node5550_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5548 live5548 coloured5548 = result5548)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5549 live5549 coloured5549 = result5549) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5550 live5550 coloured5550 = result5550 := by
  rw [tree5550_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5548 coloured5548 at child
  try dsimp only [live5550, coloured5550]
  rw [child]
  dsimp only [result5548]
  have child := child1
  unfold live5549 coloured5549 at child
  try dsimp only [live5550, coloured5550]
  rw [child]
  dsimp only [result5549]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5551_agree_conditional : tree5551 = literal5551 := by
  rw [tree5551_def]
  rfl
theorem node5551_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5551 live5551 coloured5551 = result5551 := by
  rw [tree5551_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5552_agree_conditional
    (child0 : tree5550 = literal5550)
    (child1 : tree5551 = literal5551) : tree5552 = literal5552 := by
  rw [tree5552_def, child0, child1]
  rfl
theorem node5552_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5550 live5550 coloured5550 = result5550)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5551 live5551 coloured5551 = result5551) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5552 live5552 coloured5552 = result5552 := by
  rw [tree5552_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5550 coloured5550 at child
  try dsimp only [live5552, coloured5552]
  rw [child]
  dsimp only [result5550]
  have child := child1
  unfold live5551 coloured5551 at child
  try dsimp only [live5552, coloured5552]
  rw [child]
  dsimp only [result5551]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5553_agree_conditional : tree5553 = literal5553 := by
  rw [tree5553_def]
  rfl
theorem node5553_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5553 live5553 coloured5553 = result5553 := by
  rw [tree5553_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5554_agree_conditional
    (child0 : tree5552 = literal5552)
    (child1 : tree5553 = literal5553) : tree5554 = literal5554 := by
  rw [tree5554_def, child0, child1]
  rfl
theorem node5554_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5552 live5552 coloured5552 = result5552)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5553 live5553 coloured5553 = result5553) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5554 live5554 coloured5554 = result5554 := by
  rw [tree5554_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5552 coloured5552 at child
  try dsimp only [live5554, coloured5554]
  rw [child]
  dsimp only [result5552]
  have child := child1
  unfold live5553 coloured5553 at child
  try dsimp only [live5554, coloured5554]
  rw [child]
  dsimp only [result5553]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5555_agree_conditional : tree5555 = literal5555 := by
  rw [tree5555_def]
  rfl
theorem node5555_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5555 live5555 coloured5555 = result5555 := by
  rw [tree5555_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5556_agree_conditional
    (child0 : tree5554 = literal5554)
    (child1 : tree5555 = literal5555) : tree5556 = literal5556 := by
  rw [tree5556_def, child0, child1]
  rfl
theorem node5556_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5554 live5554 coloured5554 = result5554)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5555 live5555 coloured5555 = result5555) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5556 live5556 coloured5556 = result5556 := by
  rw [tree5556_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5554 coloured5554 at child
  try dsimp only [live5556, coloured5556]
  rw [child]
  dsimp only [result5554]
  have child := child1
  unfold live5555 coloured5555 at child
  try dsimp only [live5556, coloured5556]
  rw [child]
  dsimp only [result5555]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5557_agree_conditional : tree5557 = literal5557 := by
  rw [tree5557_def]
  rfl
theorem node5557_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5557 live5557 coloured5557 = result5557 := by
  rw [tree5557_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5558_agree_conditional
    (child0 : tree5556 = literal5556)
    (child1 : tree5557 = literal5557) : tree5558 = literal5558 := by
  rw [tree5558_def, child0, child1]
  rfl
theorem node5558_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5556 live5556 coloured5556 = result5556)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5557 live5557 coloured5557 = result5557) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5558 live5558 coloured5558 = result5558 := by
  rw [tree5558_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5556 coloured5556 at child
  try dsimp only [live5558, coloured5558]
  rw [child]
  dsimp only [result5556]
  have child := child1
  unfold live5557 coloured5557 at child
  try dsimp only [live5558, coloured5558]
  rw [child]
  dsimp only [result5557]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5559_agree_conditional : tree5559 = literal5559 := by
  rw [tree5559_def]
  rfl
theorem node5559_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5559 live5559 coloured5559 = result5559 := by
  rw [tree5559_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5560_agree_conditional
    (child0 : tree5558 = literal5558)
    (child1 : tree5559 = literal5559) : tree5560 = literal5560 := by
  rw [tree5560_def, child0, child1]
  rfl
theorem node5560_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5558 live5558 coloured5558 = result5558)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5559 live5559 coloured5559 = result5559) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5560 live5560 coloured5560 = result5560 := by
  rw [tree5560_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5558 coloured5558 at child
  try dsimp only [live5560, coloured5560]
  rw [child]
  dsimp only [result5558]
  have child := child1
  unfold live5559 coloured5559 at child
  try dsimp only [live5560, coloured5560]
  rw [child]
  dsimp only [result5559]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5561_agree_conditional : tree5561 = literal5561 := by
  rw [tree5561_def]
  rfl
theorem node5561_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5561 live5561 coloured5561 = result5561 := by
  rw [tree5561_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5562_agree_conditional
    (child0 : tree5560 = literal5560)
    (child1 : tree5561 = literal5561) : tree5562 = literal5562 := by
  rw [tree5562_def, child0, child1]
  rfl
theorem node5562_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5560 live5560 coloured5560 = result5560)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5561 live5561 coloured5561 = result5561) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5562 live5562 coloured5562 = result5562 := by
  rw [tree5562_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5560 coloured5560 at child
  try dsimp only [live5562, coloured5562]
  rw [child]
  dsimp only [result5560]
  have child := child1
  unfold live5561 coloured5561 at child
  try dsimp only [live5562, coloured5562]
  rw [child]
  dsimp only [result5561]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5563_agree_conditional : tree5563 = literal5563 := by
  rw [tree5563_def]
  rfl
theorem node5563_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5563 live5563 coloured5563 = result5563 := by
  rw [tree5563_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5564_agree_conditional
    (child0 : tree5562 = literal5562)
    (child1 : tree5563 = literal5563) : tree5564 = literal5564 := by
  rw [tree5564_def, child0, child1]
  rfl
theorem node5564_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5562 live5562 coloured5562 = result5562)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5563 live5563 coloured5563 = result5563) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5564 live5564 coloured5564 = result5564 := by
  rw [tree5564_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5562 coloured5562 at child
  try dsimp only [live5564, coloured5564]
  rw [child]
  dsimp only [result5562]
  have child := child1
  unfold live5563 coloured5563 at child
  try dsimp only [live5564, coloured5564]
  rw [child]
  dsimp only [result5563]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5565_agree_conditional : tree5565 = literal5565 := by
  rw [tree5565_def]
  rfl
theorem node5565_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5565 live5565 coloured5565 = result5565 := by
  rw [tree5565_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5566_agree_conditional
    (child0 : tree5564 = literal5564)
    (child1 : tree5565 = literal5565) : tree5566 = literal5566 := by
  rw [tree5566_def, child0, child1]
  rfl
theorem node5566_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5564 live5564 coloured5564 = result5564)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5565 live5565 coloured5565 = result5565) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5566 live5566 coloured5566 = result5566 := by
  rw [tree5566_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5564 coloured5564 at child
  try dsimp only [live5566, coloured5566]
  rw [child]
  dsimp only [result5564]
  have child := child1
  unfold live5565 coloured5565 at child
  try dsimp only [live5566, coloured5566]
  rw [child]
  dsimp only [result5565]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5567_agree_conditional : tree5567 = literal5567 := by
  rw [tree5567_def]
  rfl
theorem node5567_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5567 live5567 coloured5567 = result5567 := by
  rw [tree5567_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
