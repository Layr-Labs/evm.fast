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
theorem tree5376_agree_conditional
    (child0 : tree5374 = literal5374)
    (child1 : tree5375 = literal5375) : tree5376 = literal5376 := by
  rw [tree5376_def, child0, child1]
  rfl
theorem node5376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5374 live5374 coloured5374 = result5374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5375 live5375 coloured5375 = result5375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5376 live5376 coloured5376 = result5376 := by
  rw [tree5376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5374 coloured5374 at child
  try dsimp only [live5376, coloured5376]
  rw [child]
  dsimp only [result5374]
  have child := child1
  unfold live5375 coloured5375 at child
  try dsimp only [live5376, coloured5376]
  rw [child]
  dsimp only [result5375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5377_agree_conditional : tree5377 = literal5377 := by
  rw [tree5377_def]
  rfl
theorem node5377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5377 live5377 coloured5377 = result5377 := by
  rw [tree5377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5378_agree_conditional
    (child0 : tree5376 = literal5376)
    (child1 : tree5377 = literal5377) : tree5378 = literal5378 := by
  rw [tree5378_def, child0, child1]
  rfl
theorem node5378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5376 live5376 coloured5376 = result5376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5377 live5377 coloured5377 = result5377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5378 live5378 coloured5378 = result5378 := by
  rw [tree5378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5376 coloured5376 at child
  try dsimp only [live5378, coloured5378]
  rw [child]
  dsimp only [result5376]
  have child := child1
  unfold live5377 coloured5377 at child
  try dsimp only [live5378, coloured5378]
  rw [child]
  dsimp only [result5377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5379_agree_conditional : tree5379 = literal5379 := by
  rw [tree5379_def]
  rfl
theorem node5379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5379 live5379 coloured5379 = result5379 := by
  rw [tree5379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5380_agree_conditional
    (child0 : tree5378 = literal5378)
    (child1 : tree5379 = literal5379) : tree5380 = literal5380 := by
  rw [tree5380_def, child0, child1]
  rfl
theorem node5380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5378 live5378 coloured5378 = result5378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5379 live5379 coloured5379 = result5379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5380 live5380 coloured5380 = result5380 := by
  rw [tree5380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5378 coloured5378 at child
  try dsimp only [live5380, coloured5380]
  rw [child]
  dsimp only [result5378]
  have child := child1
  unfold live5379 coloured5379 at child
  try dsimp only [live5380, coloured5380]
  rw [child]
  dsimp only [result5379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5381_agree_conditional : tree5381 = literal5381 := by
  rw [tree5381_def]
  rfl
theorem node5381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5381 live5381 coloured5381 = result5381 := by
  rw [tree5381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5382_agree_conditional
    (child0 : tree5380 = literal5380)
    (child1 : tree5381 = literal5381) : tree5382 = literal5382 := by
  rw [tree5382_def, child0, child1]
  rfl
theorem node5382_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5380 live5380 coloured5380 = result5380)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5381 live5381 coloured5381 = result5381) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5382 live5382 coloured5382 = result5382 := by
  rw [tree5382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5380 coloured5380 at child
  try dsimp only [live5382, coloured5382]
  rw [child]
  dsimp only [result5380]
  have child := child1
  unfold live5381 coloured5381 at child
  try dsimp only [live5382, coloured5382]
  rw [child]
  dsimp only [result5381]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5383_agree_conditional : tree5383 = literal5383 := by
  rw [tree5383_def]
  rfl
theorem node5383_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5383 live5383 coloured5383 = result5383 := by
  rw [tree5383_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5384_agree_conditional
    (child0 : tree5382 = literal5382)
    (child1 : tree5383 = literal5383) : tree5384 = literal5384 := by
  rw [tree5384_def, child0, child1]
  rfl
theorem node5384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5382 live5382 coloured5382 = result5382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5383 live5383 coloured5383 = result5383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5384 live5384 coloured5384 = result5384 := by
  rw [tree5384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5382 coloured5382 at child
  try dsimp only [live5384, coloured5384]
  rw [child]
  dsimp only [result5382]
  have child := child1
  unfold live5383 coloured5383 at child
  try dsimp only [live5384, coloured5384]
  rw [child]
  dsimp only [result5383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5385_agree_conditional : tree5385 = literal5385 := by
  rw [tree5385_def]
  rfl
theorem node5385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5385 live5385 coloured5385 = result5385 := by
  rw [tree5385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5386_agree_conditional
    (child0 : tree5384 = literal5384)
    (child1 : tree5385 = literal5385) : tree5386 = literal5386 := by
  rw [tree5386_def, child0, child1]
  rfl
theorem node5386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5384 live5384 coloured5384 = result5384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5385 live5385 coloured5385 = result5385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5386 live5386 coloured5386 = result5386 := by
  rw [tree5386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5384 coloured5384 at child
  try dsimp only [live5386, coloured5386]
  rw [child]
  dsimp only [result5384]
  have child := child1
  unfold live5385 coloured5385 at child
  try dsimp only [live5386, coloured5386]
  rw [child]
  dsimp only [result5385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5387_agree_conditional : tree5387 = literal5387 := by
  rw [tree5387_def]
  rfl
theorem node5387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5387 live5387 coloured5387 = result5387 := by
  rw [tree5387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5388_agree_conditional
    (child0 : tree5386 = literal5386)
    (child1 : tree5387 = literal5387) : tree5388 = literal5388 := by
  rw [tree5388_def, child0, child1]
  rfl
theorem node5388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5386 live5386 coloured5386 = result5386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5387 live5387 coloured5387 = result5387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5388 live5388 coloured5388 = result5388 := by
  rw [tree5388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5386 coloured5386 at child
  try dsimp only [live5388, coloured5388]
  rw [child]
  dsimp only [result5386]
  have child := child1
  unfold live5387 coloured5387 at child
  try dsimp only [live5388, coloured5388]
  rw [child]
  dsimp only [result5387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5389_agree_conditional : tree5389 = literal5389 := by
  rw [tree5389_def]
  rfl
theorem node5389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5389 live5389 coloured5389 = result5389 := by
  rw [tree5389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5390_agree_conditional
    (child0 : tree5388 = literal5388)
    (child1 : tree5389 = literal5389) : tree5390 = literal5390 := by
  rw [tree5390_def, child0, child1]
  rfl
theorem node5390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5388 live5388 coloured5388 = result5388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5389 live5389 coloured5389 = result5389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5390 live5390 coloured5390 = result5390 := by
  rw [tree5390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5388 coloured5388 at child
  try dsimp only [live5390, coloured5390]
  rw [child]
  dsimp only [result5388]
  have child := child1
  unfold live5389 coloured5389 at child
  try dsimp only [live5390, coloured5390]
  rw [child]
  dsimp only [result5389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5391_agree_conditional : tree5391 = literal5391 := by
  rw [tree5391_def]
  rfl
theorem node5391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5391 live5391 coloured5391 = result5391 := by
  rw [tree5391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5392_agree_conditional
    (child0 : tree5390 = literal5390)
    (child1 : tree5391 = literal5391) : tree5392 = literal5392 := by
  rw [tree5392_def, child0, child1]
  rfl
theorem node5392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5390 live5390 coloured5390 = result5390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5391 live5391 coloured5391 = result5391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5392 live5392 coloured5392 = result5392 := by
  rw [tree5392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5390 coloured5390 at child
  try dsimp only [live5392, coloured5392]
  rw [child]
  dsimp only [result5390]
  have child := child1
  unfold live5391 coloured5391 at child
  try dsimp only [live5392, coloured5392]
  rw [child]
  dsimp only [result5391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5393_agree_conditional : tree5393 = literal5393 := by
  rw [tree5393_def]
  rfl
theorem node5393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5393 live5393 coloured5393 = result5393 := by
  rw [tree5393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5394_agree_conditional
    (child0 : tree5392 = literal5392)
    (child1 : tree5393 = literal5393) : tree5394 = literal5394 := by
  rw [tree5394_def, child0, child1]
  rfl
theorem node5394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5392 live5392 coloured5392 = result5392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5393 live5393 coloured5393 = result5393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5394 live5394 coloured5394 = result5394 := by
  rw [tree5394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5392 coloured5392 at child
  try dsimp only [live5394, coloured5394]
  rw [child]
  dsimp only [result5392]
  have child := child1
  unfold live5393 coloured5393 at child
  try dsimp only [live5394, coloured5394]
  rw [child]
  dsimp only [result5393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5395_agree_conditional : tree5395 = literal5395 := by
  rw [tree5395_def]
  rfl
theorem node5395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5395 live5395 coloured5395 = result5395 := by
  rw [tree5395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5396_agree_conditional
    (child0 : tree5394 = literal5394)
    (child1 : tree5395 = literal5395) : tree5396 = literal5396 := by
  rw [tree5396_def, child0, child1]
  rfl
theorem node5396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5394 live5394 coloured5394 = result5394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5395 live5395 coloured5395 = result5395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5396 live5396 coloured5396 = result5396 := by
  rw [tree5396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5394 coloured5394 at child
  try dsimp only [live5396, coloured5396]
  rw [child]
  dsimp only [result5394]
  have child := child1
  unfold live5395 coloured5395 at child
  try dsimp only [live5396, coloured5396]
  rw [child]
  dsimp only [result5395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5397_agree_conditional : tree5397 = literal5397 := by
  rw [tree5397_def]
  rfl
theorem node5397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5397 live5397 coloured5397 = result5397 := by
  rw [tree5397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5398_agree_conditional
    (child0 : tree5396 = literal5396)
    (child1 : tree5397 = literal5397) : tree5398 = literal5398 := by
  rw [tree5398_def, child0, child1]
  rfl
theorem node5398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5396 live5396 coloured5396 = result5396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5397 live5397 coloured5397 = result5397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5398 live5398 coloured5398 = result5398 := by
  rw [tree5398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5396 coloured5396 at child
  try dsimp only [live5398, coloured5398]
  rw [child]
  dsimp only [result5396]
  have child := child1
  unfold live5397 coloured5397 at child
  try dsimp only [live5398, coloured5398]
  rw [child]
  dsimp only [result5397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5399_agree_conditional : tree5399 = literal5399 := by
  rw [tree5399_def]
  rfl
theorem node5399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5399 live5399 coloured5399 = result5399 := by
  rw [tree5399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5400_agree_conditional
    (child0 : tree5398 = literal5398)
    (child1 : tree5399 = literal5399) : tree5400 = literal5400 := by
  rw [tree5400_def, child0, child1]
  rfl
theorem node5400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5398 live5398 coloured5398 = result5398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5399 live5399 coloured5399 = result5399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5400 live5400 coloured5400 = result5400 := by
  rw [tree5400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5398 coloured5398 at child
  try dsimp only [live5400, coloured5400]
  rw [child]
  dsimp only [result5398]
  have child := child1
  unfold live5399 coloured5399 at child
  try dsimp only [live5400, coloured5400]
  rw [child]
  dsimp only [result5399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5401_agree_conditional : tree5401 = literal5401 := by
  rw [tree5401_def]
  rfl
theorem node5401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5401 live5401 coloured5401 = result5401 := by
  rw [tree5401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5402_agree_conditional
    (child0 : tree5400 = literal5400)
    (child1 : tree5401 = literal5401) : tree5402 = literal5402 := by
  rw [tree5402_def, child0, child1]
  rfl
theorem node5402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5400 live5400 coloured5400 = result5400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5401 live5401 coloured5401 = result5401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5402 live5402 coloured5402 = result5402 := by
  rw [tree5402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5400 coloured5400 at child
  try dsimp only [live5402, coloured5402]
  rw [child]
  dsimp only [result5400]
  have child := child1
  unfold live5401 coloured5401 at child
  try dsimp only [live5402, coloured5402]
  rw [child]
  dsimp only [result5401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5403_agree_conditional : tree5403 = literal5403 := by
  rw [tree5403_def]
  rfl
theorem node5403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5403 live5403 coloured5403 = result5403 := by
  rw [tree5403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5404_agree_conditional
    (child0 : tree5402 = literal5402)
    (child1 : tree5403 = literal5403) : tree5404 = literal5404 := by
  rw [tree5404_def, child0, child1]
  rfl
theorem node5404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5402 live5402 coloured5402 = result5402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5403 live5403 coloured5403 = result5403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5404 live5404 coloured5404 = result5404 := by
  rw [tree5404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5402 coloured5402 at child
  try dsimp only [live5404, coloured5404]
  rw [child]
  dsimp only [result5402]
  have child := child1
  unfold live5403 coloured5403 at child
  try dsimp only [live5404, coloured5404]
  rw [child]
  dsimp only [result5403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5405_agree_conditional : tree5405 = literal5405 := by
  rw [tree5405_def]
  rfl
theorem node5405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5405 live5405 coloured5405 = result5405 := by
  rw [tree5405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5406_agree_conditional
    (child0 : tree5404 = literal5404)
    (child1 : tree5405 = literal5405) : tree5406 = literal5406 := by
  rw [tree5406_def, child0, child1]
  rfl
theorem node5406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5404 live5404 coloured5404 = result5404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5405 live5405 coloured5405 = result5405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5406 live5406 coloured5406 = result5406 := by
  rw [tree5406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5404 coloured5404 at child
  try dsimp only [live5406, coloured5406]
  rw [child]
  dsimp only [result5404]
  have child := child1
  unfold live5405 coloured5405 at child
  try dsimp only [live5406, coloured5406]
  rw [child]
  dsimp only [result5405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5407_agree_conditional : tree5407 = literal5407 := by
  rw [tree5407_def]
  rfl
theorem node5407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5407 live5407 coloured5407 = result5407 := by
  rw [tree5407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5408_agree_conditional
    (child0 : tree5406 = literal5406)
    (child1 : tree5407 = literal5407) : tree5408 = literal5408 := by
  rw [tree5408_def, child0, child1]
  rfl
theorem node5408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5406 live5406 coloured5406 = result5406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5407 live5407 coloured5407 = result5407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5408 live5408 coloured5408 = result5408 := by
  rw [tree5408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5406 coloured5406 at child
  try dsimp only [live5408, coloured5408]
  rw [child]
  dsimp only [result5406]
  have child := child1
  unfold live5407 coloured5407 at child
  try dsimp only [live5408, coloured5408]
  rw [child]
  dsimp only [result5407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5409_agree_conditional : tree5409 = literal5409 := by
  rw [tree5409_def]
  rfl
theorem node5409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5409 live5409 coloured5409 = result5409 := by
  rw [tree5409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5410_agree_conditional
    (child0 : tree5408 = literal5408)
    (child1 : tree5409 = literal5409) : tree5410 = literal5410 := by
  rw [tree5410_def, child0, child1]
  rfl
theorem node5410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5408 live5408 coloured5408 = result5408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5409 live5409 coloured5409 = result5409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5410 live5410 coloured5410 = result5410 := by
  rw [tree5410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5408 coloured5408 at child
  try dsimp only [live5410, coloured5410]
  rw [child]
  dsimp only [result5408]
  have child := child1
  unfold live5409 coloured5409 at child
  try dsimp only [live5410, coloured5410]
  rw [child]
  dsimp only [result5409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5411_agree_conditional : tree5411 = literal5411 := by
  rw [tree5411_def]
  rfl
theorem node5411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5411 live5411 coloured5411 = result5411 := by
  rw [tree5411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5412_agree_conditional
    (child0 : tree5410 = literal5410)
    (child1 : tree5411 = literal5411) : tree5412 = literal5412 := by
  rw [tree5412_def, child0, child1]
  rfl
theorem node5412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5410 live5410 coloured5410 = result5410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5411 live5411 coloured5411 = result5411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5412 live5412 coloured5412 = result5412 := by
  rw [tree5412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5410 coloured5410 at child
  try dsimp only [live5412, coloured5412]
  rw [child]
  dsimp only [result5410]
  have child := child1
  unfold live5411 coloured5411 at child
  try dsimp only [live5412, coloured5412]
  rw [child]
  dsimp only [result5411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5413_agree_conditional : tree5413 = literal5413 := by
  rw [tree5413_def]
  rfl
theorem node5413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5413 live5413 coloured5413 = result5413 := by
  rw [tree5413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5414_agree_conditional
    (child0 : tree5412 = literal5412)
    (child1 : tree5413 = literal5413) : tree5414 = literal5414 := by
  rw [tree5414_def, child0, child1]
  rfl
theorem node5414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5412 live5412 coloured5412 = result5412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5413 live5413 coloured5413 = result5413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5414 live5414 coloured5414 = result5414 := by
  rw [tree5414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5412 coloured5412 at child
  try dsimp only [live5414, coloured5414]
  rw [child]
  dsimp only [result5412]
  have child := child1
  unfold live5413 coloured5413 at child
  try dsimp only [live5414, coloured5414]
  rw [child]
  dsimp only [result5413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5415_agree_conditional : tree5415 = literal5415 := by
  rw [tree5415_def]
  rfl
theorem node5415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5415 live5415 coloured5415 = result5415 := by
  rw [tree5415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5416_agree_conditional
    (child0 : tree5414 = literal5414)
    (child1 : tree5415 = literal5415) : tree5416 = literal5416 := by
  rw [tree5416_def, child0, child1]
  rfl
theorem node5416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5414 live5414 coloured5414 = result5414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5415 live5415 coloured5415 = result5415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5416 live5416 coloured5416 = result5416 := by
  rw [tree5416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5414 coloured5414 at child
  try dsimp only [live5416, coloured5416]
  rw [child]
  dsimp only [result5414]
  have child := child1
  unfold live5415 coloured5415 at child
  try dsimp only [live5416, coloured5416]
  rw [child]
  dsimp only [result5415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5417_agree_conditional : tree5417 = literal5417 := by
  rw [tree5417_def]
  rfl
theorem node5417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5417 live5417 coloured5417 = result5417 := by
  rw [tree5417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5418_agree_conditional
    (child0 : tree5416 = literal5416)
    (child1 : tree5417 = literal5417) : tree5418 = literal5418 := by
  rw [tree5418_def, child0, child1]
  rfl
theorem node5418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5416 live5416 coloured5416 = result5416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5417 live5417 coloured5417 = result5417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5418 live5418 coloured5418 = result5418 := by
  rw [tree5418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5416 coloured5416 at child
  try dsimp only [live5418, coloured5418]
  rw [child]
  dsimp only [result5416]
  have child := child1
  unfold live5417 coloured5417 at child
  try dsimp only [live5418, coloured5418]
  rw [child]
  dsimp only [result5417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5419_agree_conditional : tree5419 = literal5419 := by
  rw [tree5419_def]
  rfl
theorem node5419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5419 live5419 coloured5419 = result5419 := by
  rw [tree5419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5420_agree_conditional
    (child0 : tree5418 = literal5418)
    (child1 : tree5419 = literal5419) : tree5420 = literal5420 := by
  rw [tree5420_def, child0, child1]
  rfl
theorem node5420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5418 live5418 coloured5418 = result5418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5419 live5419 coloured5419 = result5419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5420 live5420 coloured5420 = result5420 := by
  rw [tree5420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5418 coloured5418 at child
  try dsimp only [live5420, coloured5420]
  rw [child]
  dsimp only [result5418]
  have child := child1
  unfold live5419 coloured5419 at child
  try dsimp only [live5420, coloured5420]
  rw [child]
  dsimp only [result5419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5421_agree_conditional : tree5421 = literal5421 := by
  rw [tree5421_def]
  rfl
theorem node5421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5421 live5421 coloured5421 = result5421 := by
  rw [tree5421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5422_agree_conditional
    (child0 : tree5420 = literal5420)
    (child1 : tree5421 = literal5421) : tree5422 = literal5422 := by
  rw [tree5422_def, child0, child1]
  rfl
theorem node5422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5420 live5420 coloured5420 = result5420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5421 live5421 coloured5421 = result5421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5422 live5422 coloured5422 = result5422 := by
  rw [tree5422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5420 coloured5420 at child
  try dsimp only [live5422, coloured5422]
  rw [child]
  dsimp only [result5420]
  have child := child1
  unfold live5421 coloured5421 at child
  try dsimp only [live5422, coloured5422]
  rw [child]
  dsimp only [result5421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5423_agree_conditional : tree5423 = literal5423 := by
  rw [tree5423_def]
  rfl
theorem node5423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5423 live5423 coloured5423 = result5423 := by
  rw [tree5423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5424_agree_conditional
    (child0 : tree5422 = literal5422)
    (child1 : tree5423 = literal5423) : tree5424 = literal5424 := by
  rw [tree5424_def, child0, child1]
  rfl
theorem node5424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5422 live5422 coloured5422 = result5422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5423 live5423 coloured5423 = result5423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5424 live5424 coloured5424 = result5424 := by
  rw [tree5424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5422 coloured5422 at child
  try dsimp only [live5424, coloured5424]
  rw [child]
  dsimp only [result5422]
  have child := child1
  unfold live5423 coloured5423 at child
  try dsimp only [live5424, coloured5424]
  rw [child]
  dsimp only [result5423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5425_agree_conditional : tree5425 = literal5425 := by
  rw [tree5425_def]
  rfl
theorem node5425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5425 live5425 coloured5425 = result5425 := by
  rw [tree5425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5426_agree_conditional
    (child0 : tree5424 = literal5424)
    (child1 : tree5425 = literal5425) : tree5426 = literal5426 := by
  rw [tree5426_def, child0, child1]
  rfl
theorem node5426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5424 live5424 coloured5424 = result5424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5425 live5425 coloured5425 = result5425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5426 live5426 coloured5426 = result5426 := by
  rw [tree5426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5424 coloured5424 at child
  try dsimp only [live5426, coloured5426]
  rw [child]
  dsimp only [result5424]
  have child := child1
  unfold live5425 coloured5425 at child
  try dsimp only [live5426, coloured5426]
  rw [child]
  dsimp only [result5425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5427_agree_conditional : tree5427 = literal5427 := by
  rw [tree5427_def]
  rfl
theorem node5427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5427 live5427 coloured5427 = result5427 := by
  rw [tree5427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5428_agree_conditional
    (child0 : tree5426 = literal5426)
    (child1 : tree5427 = literal5427) : tree5428 = literal5428 := by
  rw [tree5428_def, child0, child1]
  rfl
theorem node5428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5426 live5426 coloured5426 = result5426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5427 live5427 coloured5427 = result5427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5428 live5428 coloured5428 = result5428 := by
  rw [tree5428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5426 coloured5426 at child
  try dsimp only [live5428, coloured5428]
  rw [child]
  dsimp only [result5426]
  have child := child1
  unfold live5427 coloured5427 at child
  try dsimp only [live5428, coloured5428]
  rw [child]
  dsimp only [result5427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5429_agree_conditional : tree5429 = literal5429 := by
  rw [tree5429_def]
  rfl
theorem node5429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5429 live5429 coloured5429 = result5429 := by
  rw [tree5429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5430_agree_conditional
    (child0 : tree5428 = literal5428)
    (child1 : tree5429 = literal5429) : tree5430 = literal5430 := by
  rw [tree5430_def, child0, child1]
  rfl
theorem node5430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5428 live5428 coloured5428 = result5428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5429 live5429 coloured5429 = result5429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5430 live5430 coloured5430 = result5430 := by
  rw [tree5430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5428 coloured5428 at child
  try dsimp only [live5430, coloured5430]
  rw [child]
  dsimp only [result5428]
  have child := child1
  unfold live5429 coloured5429 at child
  try dsimp only [live5430, coloured5430]
  rw [child]
  dsimp only [result5429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5431_agree_conditional : tree5431 = literal5431 := by
  rw [tree5431_def]
  rfl
theorem node5431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5431 live5431 coloured5431 = result5431 := by
  rw [tree5431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5432_agree_conditional
    (child0 : tree5430 = literal5430)
    (child1 : tree5431 = literal5431) : tree5432 = literal5432 := by
  rw [tree5432_def, child0, child1]
  rfl
theorem node5432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5430 live5430 coloured5430 = result5430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5431 live5431 coloured5431 = result5431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5432 live5432 coloured5432 = result5432 := by
  rw [tree5432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5430 coloured5430 at child
  try dsimp only [live5432, coloured5432]
  rw [child]
  dsimp only [result5430]
  have child := child1
  unfold live5431 coloured5431 at child
  try dsimp only [live5432, coloured5432]
  rw [child]
  dsimp only [result5431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5433_agree_conditional : tree5433 = literal5433 := by
  rw [tree5433_def]
  rfl
theorem node5433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5433 live5433 coloured5433 = result5433 := by
  rw [tree5433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5434_agree_conditional
    (child0 : tree5432 = literal5432)
    (child1 : tree5433 = literal5433) : tree5434 = literal5434 := by
  rw [tree5434_def, child0, child1]
  rfl
theorem node5434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5432 live5432 coloured5432 = result5432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5433 live5433 coloured5433 = result5433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5434 live5434 coloured5434 = result5434 := by
  rw [tree5434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5432 coloured5432 at child
  try dsimp only [live5434, coloured5434]
  rw [child]
  dsimp only [result5432]
  have child := child1
  unfold live5433 coloured5433 at child
  try dsimp only [live5434, coloured5434]
  rw [child]
  dsimp only [result5433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5435_agree_conditional : tree5435 = literal5435 := by
  rw [tree5435_def]
  rfl
theorem node5435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5435 live5435 coloured5435 = result5435 := by
  rw [tree5435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5436_agree_conditional
    (child0 : tree5434 = literal5434)
    (child1 : tree5435 = literal5435) : tree5436 = literal5436 := by
  rw [tree5436_def, child0, child1]
  rfl
theorem node5436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5434 live5434 coloured5434 = result5434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5435 live5435 coloured5435 = result5435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5436 live5436 coloured5436 = result5436 := by
  rw [tree5436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5434 coloured5434 at child
  try dsimp only [live5436, coloured5436]
  rw [child]
  dsimp only [result5434]
  have child := child1
  unfold live5435 coloured5435 at child
  try dsimp only [live5436, coloured5436]
  rw [child]
  dsimp only [result5435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5437_agree_conditional : tree5437 = literal5437 := by
  rw [tree5437_def]
  rfl
theorem node5437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5437 live5437 coloured5437 = result5437 := by
  rw [tree5437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5438_agree_conditional
    (child0 : tree5436 = literal5436)
    (child1 : tree5437 = literal5437) : tree5438 = literal5438 := by
  rw [tree5438_def, child0, child1]
  rfl
theorem node5438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5436 live5436 coloured5436 = result5436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5437 live5437 coloured5437 = result5437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5438 live5438 coloured5438 = result5438 := by
  rw [tree5438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5436 coloured5436 at child
  try dsimp only [live5438, coloured5438]
  rw [child]
  dsimp only [result5436]
  have child := child1
  unfold live5437 coloured5437 at child
  try dsimp only [live5438, coloured5438]
  rw [child]
  dsimp only [result5437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5439_agree_conditional : tree5439 = literal5439 := by
  rw [tree5439_def]
  rfl
theorem node5439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5439 live5439 coloured5439 = result5439 := by
  rw [tree5439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5440_agree_conditional
    (child0 : tree5438 = literal5438)
    (child1 : tree5439 = literal5439) : tree5440 = literal5440 := by
  rw [tree5440_def, child0, child1]
  rfl
theorem node5440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5438 live5438 coloured5438 = result5438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5439 live5439 coloured5439 = result5439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5440 live5440 coloured5440 = result5440 := by
  rw [tree5440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5438 coloured5438 at child
  try dsimp only [live5440, coloured5440]
  rw [child]
  dsimp only [result5438]
  have child := child1
  unfold live5439 coloured5439 at child
  try dsimp only [live5440, coloured5440]
  rw [child]
  dsimp only [result5439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5441_agree_conditional : tree5441 = literal5441 := by
  rw [tree5441_def]
  rfl
theorem node5441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5441 live5441 coloured5441 = result5441 := by
  rw [tree5441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5442_agree_conditional
    (child0 : tree5440 = literal5440)
    (child1 : tree5441 = literal5441) : tree5442 = literal5442 := by
  rw [tree5442_def, child0, child1]
  rfl
theorem node5442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5440 live5440 coloured5440 = result5440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5441 live5441 coloured5441 = result5441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5442 live5442 coloured5442 = result5442 := by
  rw [tree5442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5440 coloured5440 at child
  try dsimp only [live5442, coloured5442]
  rw [child]
  dsimp only [result5440]
  have child := child1
  unfold live5441 coloured5441 at child
  try dsimp only [live5442, coloured5442]
  rw [child]
  dsimp only [result5441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5443_agree_conditional : tree5443 = literal5443 := by
  rw [tree5443_def]
  rfl
theorem node5443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5443 live5443 coloured5443 = result5443 := by
  rw [tree5443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5444_agree_conditional
    (child0 : tree5442 = literal5442)
    (child1 : tree5443 = literal5443) : tree5444 = literal5444 := by
  rw [tree5444_def, child0, child1]
  rfl
theorem node5444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5442 live5442 coloured5442 = result5442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5443 live5443 coloured5443 = result5443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5444 live5444 coloured5444 = result5444 := by
  rw [tree5444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5442 coloured5442 at child
  try dsimp only [live5444, coloured5444]
  rw [child]
  dsimp only [result5442]
  have child := child1
  unfold live5443 coloured5443 at child
  try dsimp only [live5444, coloured5444]
  rw [child]
  dsimp only [result5443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5445_agree_conditional : tree5445 = literal5445 := by
  rw [tree5445_def]
  rfl
theorem node5445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5445 live5445 coloured5445 = result5445 := by
  rw [tree5445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5446_agree_conditional
    (child0 : tree5444 = literal5444)
    (child1 : tree5445 = literal5445) : tree5446 = literal5446 := by
  rw [tree5446_def, child0, child1]
  rfl
theorem node5446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5444 live5444 coloured5444 = result5444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5445 live5445 coloured5445 = result5445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5446 live5446 coloured5446 = result5446 := by
  rw [tree5446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5444 coloured5444 at child
  try dsimp only [live5446, coloured5446]
  rw [child]
  dsimp only [result5444]
  have child := child1
  unfold live5445 coloured5445 at child
  try dsimp only [live5446, coloured5446]
  rw [child]
  dsimp only [result5445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5447_agree_conditional : tree5447 = literal5447 := by
  rw [tree5447_def]
  rfl
theorem node5447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5447 live5447 coloured5447 = result5447 := by
  rw [tree5447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5448_agree_conditional
    (child0 : tree5446 = literal5446)
    (child1 : tree5447 = literal5447) : tree5448 = literal5448 := by
  rw [tree5448_def, child0, child1]
  rfl
theorem node5448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5446 live5446 coloured5446 = result5446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5447 live5447 coloured5447 = result5447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5448 live5448 coloured5448 = result5448 := by
  rw [tree5448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5446 coloured5446 at child
  try dsimp only [live5448, coloured5448]
  rw [child]
  dsimp only [result5446]
  have child := child1
  unfold live5447 coloured5447 at child
  try dsimp only [live5448, coloured5448]
  rw [child]
  dsimp only [result5447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5449_agree_conditional : tree5449 = literal5449 := by
  rw [tree5449_def]
  rfl
theorem node5449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5449 live5449 coloured5449 = result5449 := by
  rw [tree5449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5450_agree_conditional
    (child0 : tree5448 = literal5448)
    (child1 : tree5449 = literal5449) : tree5450 = literal5450 := by
  rw [tree5450_def, child0, child1]
  rfl
theorem node5450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5448 live5448 coloured5448 = result5448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5449 live5449 coloured5449 = result5449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5450 live5450 coloured5450 = result5450 := by
  rw [tree5450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5448 coloured5448 at child
  try dsimp only [live5450, coloured5450]
  rw [child]
  dsimp only [result5448]
  have child := child1
  unfold live5449 coloured5449 at child
  try dsimp only [live5450, coloured5450]
  rw [child]
  dsimp only [result5449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5451_agree_conditional : tree5451 = literal5451 := by
  rw [tree5451_def]
  rfl
theorem node5451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5451 live5451 coloured5451 = result5451 := by
  rw [tree5451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5452_agree_conditional
    (child0 : tree5450 = literal5450)
    (child1 : tree5451 = literal5451) : tree5452 = literal5452 := by
  rw [tree5452_def, child0, child1]
  rfl
theorem node5452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5450 live5450 coloured5450 = result5450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5451 live5451 coloured5451 = result5451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5452 live5452 coloured5452 = result5452 := by
  rw [tree5452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5450 coloured5450 at child
  try dsimp only [live5452, coloured5452]
  rw [child]
  dsimp only [result5450]
  have child := child1
  unfold live5451 coloured5451 at child
  try dsimp only [live5452, coloured5452]
  rw [child]
  dsimp only [result5451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5453_agree_conditional : tree5453 = literal5453 := by
  rw [tree5453_def]
  rfl
theorem node5453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5453 live5453 coloured5453 = result5453 := by
  rw [tree5453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5454_agree_conditional
    (child0 : tree5452 = literal5452)
    (child1 : tree5453 = literal5453) : tree5454 = literal5454 := by
  rw [tree5454_def, child0, child1]
  rfl
theorem node5454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5452 live5452 coloured5452 = result5452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5453 live5453 coloured5453 = result5453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5454 live5454 coloured5454 = result5454 := by
  rw [tree5454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5452 coloured5452 at child
  try dsimp only [live5454, coloured5454]
  rw [child]
  dsimp only [result5452]
  have child := child1
  unfold live5453 coloured5453 at child
  try dsimp only [live5454, coloured5454]
  rw [child]
  dsimp only [result5453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5455_agree_conditional : tree5455 = literal5455 := by
  rw [tree5455_def]
  rfl
theorem node5455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5455 live5455 coloured5455 = result5455 := by
  rw [tree5455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5456_agree_conditional
    (child0 : tree5454 = literal5454)
    (child1 : tree5455 = literal5455) : tree5456 = literal5456 := by
  rw [tree5456_def, child0, child1]
  rfl
theorem node5456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5454 live5454 coloured5454 = result5454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5455 live5455 coloured5455 = result5455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5456 live5456 coloured5456 = result5456 := by
  rw [tree5456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5454 coloured5454 at child
  try dsimp only [live5456, coloured5456]
  rw [child]
  dsimp only [result5454]
  have child := child1
  unfold live5455 coloured5455 at child
  try dsimp only [live5456, coloured5456]
  rw [child]
  dsimp only [result5455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5457_agree_conditional : tree5457 = literal5457 := by
  rw [tree5457_def]
  rfl
theorem node5457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5457 live5457 coloured5457 = result5457 := by
  rw [tree5457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5458_agree_conditional
    (child0 : tree5456 = literal5456)
    (child1 : tree5457 = literal5457) : tree5458 = literal5458 := by
  rw [tree5458_def, child0, child1]
  rfl
theorem node5458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5456 live5456 coloured5456 = result5456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5457 live5457 coloured5457 = result5457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5458 live5458 coloured5458 = result5458 := by
  rw [tree5458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5456 coloured5456 at child
  try dsimp only [live5458, coloured5458]
  rw [child]
  dsimp only [result5456]
  have child := child1
  unfold live5457 coloured5457 at child
  try dsimp only [live5458, coloured5458]
  rw [child]
  dsimp only [result5457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5459_agree_conditional : tree5459 = literal5459 := by
  rw [tree5459_def]
  rfl
theorem node5459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5459 live5459 coloured5459 = result5459 := by
  rw [tree5459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5460_agree_conditional
    (child0 : tree5458 = literal5458)
    (child1 : tree5459 = literal5459) : tree5460 = literal5460 := by
  rw [tree5460_def, child0, child1]
  rfl
theorem node5460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5458 live5458 coloured5458 = result5458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5459 live5459 coloured5459 = result5459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5460 live5460 coloured5460 = result5460 := by
  rw [tree5460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5458 coloured5458 at child
  try dsimp only [live5460, coloured5460]
  rw [child]
  dsimp only [result5458]
  have child := child1
  unfold live5459 coloured5459 at child
  try dsimp only [live5460, coloured5460]
  rw [child]
  dsimp only [result5459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5461_agree_conditional : tree5461 = literal5461 := by
  rw [tree5461_def]
  rfl
theorem node5461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5461 live5461 coloured5461 = result5461 := by
  rw [tree5461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5462_agree_conditional
    (child0 : tree5460 = literal5460)
    (child1 : tree5461 = literal5461) : tree5462 = literal5462 := by
  rw [tree5462_def, child0, child1]
  rfl
theorem node5462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5460 live5460 coloured5460 = result5460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5461 live5461 coloured5461 = result5461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5462 live5462 coloured5462 = result5462 := by
  rw [tree5462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5460 coloured5460 at child
  try dsimp only [live5462, coloured5462]
  rw [child]
  dsimp only [result5460]
  have child := child1
  unfold live5461 coloured5461 at child
  try dsimp only [live5462, coloured5462]
  rw [child]
  dsimp only [result5461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5463_agree_conditional : tree5463 = literal5463 := by
  rw [tree5463_def]
  rfl
theorem node5463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5463 live5463 coloured5463 = result5463 := by
  rw [tree5463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5464_agree_conditional
    (child0 : tree5462 = literal5462)
    (child1 : tree5463 = literal5463) : tree5464 = literal5464 := by
  rw [tree5464_def, child0, child1]
  rfl
theorem node5464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5462 live5462 coloured5462 = result5462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5463 live5463 coloured5463 = result5463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5464 live5464 coloured5464 = result5464 := by
  rw [tree5464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5462 coloured5462 at child
  try dsimp only [live5464, coloured5464]
  rw [child]
  dsimp only [result5462]
  have child := child1
  unfold live5463 coloured5463 at child
  try dsimp only [live5464, coloured5464]
  rw [child]
  dsimp only [result5463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5465_agree_conditional : tree5465 = literal5465 := by
  rw [tree5465_def]
  rfl
theorem node5465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5465 live5465 coloured5465 = result5465 := by
  rw [tree5465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5466_agree_conditional
    (child0 : tree5464 = literal5464)
    (child1 : tree5465 = literal5465) : tree5466 = literal5466 := by
  rw [tree5466_def, child0, child1]
  rfl
theorem node5466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5464 live5464 coloured5464 = result5464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5465 live5465 coloured5465 = result5465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5466 live5466 coloured5466 = result5466 := by
  rw [tree5466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5464 coloured5464 at child
  try dsimp only [live5466, coloured5466]
  rw [child]
  dsimp only [result5464]
  have child := child1
  unfold live5465 coloured5465 at child
  try dsimp only [live5466, coloured5466]
  rw [child]
  dsimp only [result5465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5467_agree_conditional : tree5467 = literal5467 := by
  rw [tree5467_def]
  rfl
theorem node5467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5467 live5467 coloured5467 = result5467 := by
  rw [tree5467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5468_agree_conditional
    (child0 : tree5466 = literal5466)
    (child1 : tree5467 = literal5467) : tree5468 = literal5468 := by
  rw [tree5468_def, child0, child1]
  rfl
theorem node5468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5466 live5466 coloured5466 = result5466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5467 live5467 coloured5467 = result5467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5468 live5468 coloured5468 = result5468 := by
  rw [tree5468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5466 coloured5466 at child
  try dsimp only [live5468, coloured5468]
  rw [child]
  dsimp only [result5466]
  have child := child1
  unfold live5467 coloured5467 at child
  try dsimp only [live5468, coloured5468]
  rw [child]
  dsimp only [result5467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5469_agree_conditional : tree5469 = literal5469 := by
  rw [tree5469_def]
  rfl
theorem node5469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5469 live5469 coloured5469 = result5469 := by
  rw [tree5469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5470_agree_conditional
    (child0 : tree5468 = literal5468)
    (child1 : tree5469 = literal5469) : tree5470 = literal5470 := by
  rw [tree5470_def, child0, child1]
  rfl
theorem node5470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5468 live5468 coloured5468 = result5468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5469 live5469 coloured5469 = result5469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5470 live5470 coloured5470 = result5470 := by
  rw [tree5470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5468 coloured5468 at child
  try dsimp only [live5470, coloured5470]
  rw [child]
  dsimp only [result5468]
  have child := child1
  unfold live5469 coloured5469 at child
  try dsimp only [live5470, coloured5470]
  rw [child]
  dsimp only [result5469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5471_agree_conditional : tree5471 = literal5471 := by
  rw [tree5471_def]
  rfl
theorem node5471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5471 live5471 coloured5471 = result5471 := by
  rw [tree5471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
