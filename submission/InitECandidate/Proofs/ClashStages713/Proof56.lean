import InitECandidate.Proofs.ClashStages713.Proof55
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree5376_agree : tree5376 = literal5376 := by
  rw [tree5376_def, tree5374_agree, tree5375_agree]
  rfl
theorem node5376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5376 live5376 coloured5376 = result5376 := by
  rw [tree5376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5374_eq
  unfold live5374 coloured5374 at child
  try dsimp only [live5376, coloured5376]
  rw [child]
  dsimp only [result5374]
  have child := node5375_eq
  unfold live5375 coloured5375 at child
  try dsimp only [live5376, coloured5376]
  rw [child]
  dsimp only [result5375]
  try dsimp only [colour, result5376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5377_agree : tree5377 = literal5377 := by
  rw [tree5377_def]
  rfl
theorem node5377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5377 live5377 coloured5377 = result5377 := by
  rw [tree5377_def]
  try dsimp only [colour, result5377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5378_agree : tree5378 = literal5378 := by
  rw [tree5378_def, tree5376_agree, tree5377_agree]
  rfl
theorem node5378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5378 live5378 coloured5378 = result5378 := by
  rw [tree5378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5376_eq
  unfold live5376 coloured5376 at child
  try dsimp only [live5378, coloured5378]
  rw [child]
  dsimp only [result5376]
  have child := node5377_eq
  unfold live5377 coloured5377 at child
  try dsimp only [live5378, coloured5378]
  rw [child]
  dsimp only [result5377]
  try dsimp only [colour, result5378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5379_agree : tree5379 = literal5379 := by
  rw [tree5379_def]
  rfl
theorem node5379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5379 live5379 coloured5379 = result5379 := by
  rw [tree5379_def]
  try dsimp only [colour, result5379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5380_agree : tree5380 = literal5380 := by
  rw [tree5380_def, tree5378_agree, tree5379_agree]
  rfl
theorem node5380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5380 live5380 coloured5380 = result5380 := by
  rw [tree5380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5378_eq
  unfold live5378 coloured5378 at child
  try dsimp only [live5380, coloured5380]
  rw [child]
  dsimp only [result5378]
  have child := node5379_eq
  unfold live5379 coloured5379 at child
  try dsimp only [live5380, coloured5380]
  rw [child]
  dsimp only [result5379]
  try dsimp only [colour, result5380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5381_agree : tree5381 = literal5381 := by
  rw [tree5381_def]
  rfl
theorem node5381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5381 live5381 coloured5381 = result5381 := by
  rw [tree5381_def]
  try dsimp only [colour, result5381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5382_agree : tree5382 = literal5382 := by
  rw [tree5382_def, tree5380_agree, tree5381_agree]
  rfl
theorem node5382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5382 live5382 coloured5382 = result5382 := by
  rw [tree5382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5380_eq
  unfold live5380 coloured5380 at child
  try dsimp only [live5382, coloured5382]
  rw [child]
  dsimp only [result5380]
  have child := node5381_eq
  unfold live5381 coloured5381 at child
  try dsimp only [live5382, coloured5382]
  rw [child]
  dsimp only [result5381]
  try dsimp only [colour, result5382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5383_agree : tree5383 = literal5383 := by
  rw [tree5383_def]
  rfl
theorem node5383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5383 live5383 coloured5383 = result5383 := by
  rw [tree5383_def]
  try dsimp only [colour, result5383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5384_agree : tree5384 = literal5384 := by
  rw [tree5384_def, tree5382_agree, tree5383_agree]
  rfl
theorem node5384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5384 live5384 coloured5384 = result5384 := by
  rw [tree5384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5382_eq
  unfold live5382 coloured5382 at child
  try dsimp only [live5384, coloured5384]
  rw [child]
  dsimp only [result5382]
  have child := node5383_eq
  unfold live5383 coloured5383 at child
  try dsimp only [live5384, coloured5384]
  rw [child]
  dsimp only [result5383]
  try dsimp only [colour, result5384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5385_agree : tree5385 = literal5385 := by
  rw [tree5385_def]
  rfl
theorem node5385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5385 live5385 coloured5385 = result5385 := by
  rw [tree5385_def]
  try dsimp only [colour, result5385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5386_agree : tree5386 = literal5386 := by
  rw [tree5386_def, tree5384_agree, tree5385_agree]
  rfl
theorem node5386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5386 live5386 coloured5386 = result5386 := by
  rw [tree5386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5384_eq
  unfold live5384 coloured5384 at child
  try dsimp only [live5386, coloured5386]
  rw [child]
  dsimp only [result5384]
  have child := node5385_eq
  unfold live5385 coloured5385 at child
  try dsimp only [live5386, coloured5386]
  rw [child]
  dsimp only [result5385]
  try dsimp only [colour, result5386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5387_agree : tree5387 = literal5387 := by
  rw [tree5387_def]
  rfl
theorem node5387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5387 live5387 coloured5387 = result5387 := by
  rw [tree5387_def]
  try dsimp only [colour, result5387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5388_agree : tree5388 = literal5388 := by
  rw [tree5388_def, tree5386_agree, tree5387_agree]
  rfl
theorem node5388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5388 live5388 coloured5388 = result5388 := by
  rw [tree5388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5386_eq
  unfold live5386 coloured5386 at child
  try dsimp only [live5388, coloured5388]
  rw [child]
  dsimp only [result5386]
  have child := node5387_eq
  unfold live5387 coloured5387 at child
  try dsimp only [live5388, coloured5388]
  rw [child]
  dsimp only [result5387]
  try dsimp only [colour, result5388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5389_agree : tree5389 = literal5389 := by
  rw [tree5389_def]
  rfl
theorem node5389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5389 live5389 coloured5389 = result5389 := by
  rw [tree5389_def]
  try dsimp only [colour, result5389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5390_agree : tree5390 = literal5390 := by
  rw [tree5390_def, tree5388_agree, tree5389_agree]
  rfl
theorem node5390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5390 live5390 coloured5390 = result5390 := by
  rw [tree5390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5388_eq
  unfold live5388 coloured5388 at child
  try dsimp only [live5390, coloured5390]
  rw [child]
  dsimp only [result5388]
  have child := node5389_eq
  unfold live5389 coloured5389 at child
  try dsimp only [live5390, coloured5390]
  rw [child]
  dsimp only [result5389]
  try dsimp only [colour, result5390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5391_agree : tree5391 = literal5391 := by
  rw [tree5391_def]
  rfl
theorem node5391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5391 live5391 coloured5391 = result5391 := by
  rw [tree5391_def]
  try dsimp only [colour, result5391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5392_agree : tree5392 = literal5392 := by
  rw [tree5392_def, tree5390_agree, tree5391_agree]
  rfl
theorem node5392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5392 live5392 coloured5392 = result5392 := by
  rw [tree5392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5390_eq
  unfold live5390 coloured5390 at child
  try dsimp only [live5392, coloured5392]
  rw [child]
  dsimp only [result5390]
  have child := node5391_eq
  unfold live5391 coloured5391 at child
  try dsimp only [live5392, coloured5392]
  rw [child]
  dsimp only [result5391]
  try dsimp only [colour, result5392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5393_agree : tree5393 = literal5393 := by
  rw [tree5393_def]
  rfl
theorem node5393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5393 live5393 coloured5393 = result5393 := by
  rw [tree5393_def]
  try dsimp only [colour, result5393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5394_agree : tree5394 = literal5394 := by
  rw [tree5394_def, tree5392_agree, tree5393_agree]
  rfl
theorem node5394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5394 live5394 coloured5394 = result5394 := by
  rw [tree5394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5392_eq
  unfold live5392 coloured5392 at child
  try dsimp only [live5394, coloured5394]
  rw [child]
  dsimp only [result5392]
  have child := node5393_eq
  unfold live5393 coloured5393 at child
  try dsimp only [live5394, coloured5394]
  rw [child]
  dsimp only [result5393]
  try dsimp only [colour, result5394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5395_agree : tree5395 = literal5395 := by
  rw [tree5395_def]
  rfl
theorem node5395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5395 live5395 coloured5395 = result5395 := by
  rw [tree5395_def]
  try dsimp only [colour, result5395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5396_agree : tree5396 = literal5396 := by
  rw [tree5396_def, tree5394_agree, tree5395_agree]
  rfl
theorem node5396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5396 live5396 coloured5396 = result5396 := by
  rw [tree5396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5394_eq
  unfold live5394 coloured5394 at child
  try dsimp only [live5396, coloured5396]
  rw [child]
  dsimp only [result5394]
  have child := node5395_eq
  unfold live5395 coloured5395 at child
  try dsimp only [live5396, coloured5396]
  rw [child]
  dsimp only [result5395]
  try dsimp only [colour, result5396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5397_agree : tree5397 = literal5397 := by
  rw [tree5397_def]
  rfl
theorem node5397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5397 live5397 coloured5397 = result5397 := by
  rw [tree5397_def]
  try dsimp only [colour, result5397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5398_agree : tree5398 = literal5398 := by
  rw [tree5398_def, tree5396_agree, tree5397_agree]
  rfl
theorem node5398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5398 live5398 coloured5398 = result5398 := by
  rw [tree5398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5396_eq
  unfold live5396 coloured5396 at child
  try dsimp only [live5398, coloured5398]
  rw [child]
  dsimp only [result5396]
  have child := node5397_eq
  unfold live5397 coloured5397 at child
  try dsimp only [live5398, coloured5398]
  rw [child]
  dsimp only [result5397]
  try dsimp only [colour, result5398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5399_agree : tree5399 = literal5399 := by
  rw [tree5399_def]
  rfl
theorem node5399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5399 live5399 coloured5399 = result5399 := by
  rw [tree5399_def]
  try dsimp only [colour, result5399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5400_agree : tree5400 = literal5400 := by
  rw [tree5400_def, tree5398_agree, tree5399_agree]
  rfl
theorem node5400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5400 live5400 coloured5400 = result5400 := by
  rw [tree5400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5398_eq
  unfold live5398 coloured5398 at child
  try dsimp only [live5400, coloured5400]
  rw [child]
  dsimp only [result5398]
  have child := node5399_eq
  unfold live5399 coloured5399 at child
  try dsimp only [live5400, coloured5400]
  rw [child]
  dsimp only [result5399]
  try dsimp only [colour, result5400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5401_agree : tree5401 = literal5401 := by
  rw [tree5401_def]
  rfl
theorem node5401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5401 live5401 coloured5401 = result5401 := by
  rw [tree5401_def]
  try dsimp only [colour, result5401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5402_agree : tree5402 = literal5402 := by
  rw [tree5402_def, tree5400_agree, tree5401_agree]
  rfl
theorem node5402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5402 live5402 coloured5402 = result5402 := by
  rw [tree5402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5400_eq
  unfold live5400 coloured5400 at child
  try dsimp only [live5402, coloured5402]
  rw [child]
  dsimp only [result5400]
  have child := node5401_eq
  unfold live5401 coloured5401 at child
  try dsimp only [live5402, coloured5402]
  rw [child]
  dsimp only [result5401]
  try dsimp only [colour, result5402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5403_agree : tree5403 = literal5403 := by
  rw [tree5403_def]
  rfl
theorem node5403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5403 live5403 coloured5403 = result5403 := by
  rw [tree5403_def]
  try dsimp only [colour, result5403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5404_agree : tree5404 = literal5404 := by
  rw [tree5404_def, tree5402_agree, tree5403_agree]
  rfl
theorem node5404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5404 live5404 coloured5404 = result5404 := by
  rw [tree5404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5402_eq
  unfold live5402 coloured5402 at child
  try dsimp only [live5404, coloured5404]
  rw [child]
  dsimp only [result5402]
  have child := node5403_eq
  unfold live5403 coloured5403 at child
  try dsimp only [live5404, coloured5404]
  rw [child]
  dsimp only [result5403]
  try dsimp only [colour, result5404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5405_agree : tree5405 = literal5405 := by
  rw [tree5405_def]
  rfl
theorem node5405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5405 live5405 coloured5405 = result5405 := by
  rw [tree5405_def]
  try dsimp only [colour, result5405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5406_agree : tree5406 = literal5406 := by
  rw [tree5406_def, tree5404_agree, tree5405_agree]
  rfl
theorem node5406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5406 live5406 coloured5406 = result5406 := by
  rw [tree5406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5404_eq
  unfold live5404 coloured5404 at child
  try dsimp only [live5406, coloured5406]
  rw [child]
  dsimp only [result5404]
  have child := node5405_eq
  unfold live5405 coloured5405 at child
  try dsimp only [live5406, coloured5406]
  rw [child]
  dsimp only [result5405]
  try dsimp only [colour, result5406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5407_agree : tree5407 = literal5407 := by
  rw [tree5407_def]
  rfl
theorem node5407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5407 live5407 coloured5407 = result5407 := by
  rw [tree5407_def]
  try dsimp only [colour, result5407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5408_agree : tree5408 = literal5408 := by
  rw [tree5408_def, tree5406_agree, tree5407_agree]
  rfl
theorem node5408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5408 live5408 coloured5408 = result5408 := by
  rw [tree5408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5406_eq
  unfold live5406 coloured5406 at child
  try dsimp only [live5408, coloured5408]
  rw [child]
  dsimp only [result5406]
  have child := node5407_eq
  unfold live5407 coloured5407 at child
  try dsimp only [live5408, coloured5408]
  rw [child]
  dsimp only [result5407]
  try dsimp only [colour, result5408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5409_agree : tree5409 = literal5409 := by
  rw [tree5409_def]
  rfl
theorem node5409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5409 live5409 coloured5409 = result5409 := by
  rw [tree5409_def]
  try dsimp only [colour, result5409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5410_agree : tree5410 = literal5410 := by
  rw [tree5410_def, tree5408_agree, tree5409_agree]
  rfl
theorem node5410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5410 live5410 coloured5410 = result5410 := by
  rw [tree5410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5408_eq
  unfold live5408 coloured5408 at child
  try dsimp only [live5410, coloured5410]
  rw [child]
  dsimp only [result5408]
  have child := node5409_eq
  unfold live5409 coloured5409 at child
  try dsimp only [live5410, coloured5410]
  rw [child]
  dsimp only [result5409]
  try dsimp only [colour, result5410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5411_agree : tree5411 = literal5411 := by
  rw [tree5411_def]
  rfl
theorem node5411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5411 live5411 coloured5411 = result5411 := by
  rw [tree5411_def]
  try dsimp only [colour, result5411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5412_agree : tree5412 = literal5412 := by
  rw [tree5412_def, tree5410_agree, tree5411_agree]
  rfl
theorem node5412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5412 live5412 coloured5412 = result5412 := by
  rw [tree5412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5410_eq
  unfold live5410 coloured5410 at child
  try dsimp only [live5412, coloured5412]
  rw [child]
  dsimp only [result5410]
  have child := node5411_eq
  unfold live5411 coloured5411 at child
  try dsimp only [live5412, coloured5412]
  rw [child]
  dsimp only [result5411]
  try dsimp only [colour, result5412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5413_agree : tree5413 = literal5413 := by
  rw [tree5413_def]
  rfl
theorem node5413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5413 live5413 coloured5413 = result5413 := by
  rw [tree5413_def]
  try dsimp only [colour, result5413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5414_agree : tree5414 = literal5414 := by
  rw [tree5414_def, tree5412_agree, tree5413_agree]
  rfl
theorem node5414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5414 live5414 coloured5414 = result5414 := by
  rw [tree5414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5412_eq
  unfold live5412 coloured5412 at child
  try dsimp only [live5414, coloured5414]
  rw [child]
  dsimp only [result5412]
  have child := node5413_eq
  unfold live5413 coloured5413 at child
  try dsimp only [live5414, coloured5414]
  rw [child]
  dsimp only [result5413]
  try dsimp only [colour, result5414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5415_agree : tree5415 = literal5415 := by
  rw [tree5415_def]
  rfl
theorem node5415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5415 live5415 coloured5415 = result5415 := by
  rw [tree5415_def]
  try dsimp only [colour, result5415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5416_agree : tree5416 = literal5416 := by
  rw [tree5416_def, tree5414_agree, tree5415_agree]
  rfl
theorem node5416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5416 live5416 coloured5416 = result5416 := by
  rw [tree5416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5414_eq
  unfold live5414 coloured5414 at child
  try dsimp only [live5416, coloured5416]
  rw [child]
  dsimp only [result5414]
  have child := node5415_eq
  unfold live5415 coloured5415 at child
  try dsimp only [live5416, coloured5416]
  rw [child]
  dsimp only [result5415]
  try dsimp only [colour, result5416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5417_agree : tree5417 = literal5417 := by
  rw [tree5417_def]
  rfl
theorem node5417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5417 live5417 coloured5417 = result5417 := by
  rw [tree5417_def]
  try dsimp only [colour, result5417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5418_agree : tree5418 = literal5418 := by
  rw [tree5418_def, tree5416_agree, tree5417_agree]
  rfl
theorem node5418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5418 live5418 coloured5418 = result5418 := by
  rw [tree5418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5416_eq
  unfold live5416 coloured5416 at child
  try dsimp only [live5418, coloured5418]
  rw [child]
  dsimp only [result5416]
  have child := node5417_eq
  unfold live5417 coloured5417 at child
  try dsimp only [live5418, coloured5418]
  rw [child]
  dsimp only [result5417]
  try dsimp only [colour, result5418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5419_agree : tree5419 = literal5419 := by
  rw [tree5419_def]
  rfl
theorem node5419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5419 live5419 coloured5419 = result5419 := by
  rw [tree5419_def]
  try dsimp only [colour, result5419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5420_agree : tree5420 = literal5420 := by
  rw [tree5420_def, tree5418_agree, tree5419_agree]
  rfl
theorem node5420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5420 live5420 coloured5420 = result5420 := by
  rw [tree5420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5418_eq
  unfold live5418 coloured5418 at child
  try dsimp only [live5420, coloured5420]
  rw [child]
  dsimp only [result5418]
  have child := node5419_eq
  unfold live5419 coloured5419 at child
  try dsimp only [live5420, coloured5420]
  rw [child]
  dsimp only [result5419]
  try dsimp only [colour, result5420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5421_agree : tree5421 = literal5421 := by
  rw [tree5421_def]
  rfl
theorem node5421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5421 live5421 coloured5421 = result5421 := by
  rw [tree5421_def]
  try dsimp only [colour, result5421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5422_agree : tree5422 = literal5422 := by
  rw [tree5422_def, tree5420_agree, tree5421_agree]
  rfl
theorem node5422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5422 live5422 coloured5422 = result5422 := by
  rw [tree5422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5420_eq
  unfold live5420 coloured5420 at child
  try dsimp only [live5422, coloured5422]
  rw [child]
  dsimp only [result5420]
  have child := node5421_eq
  unfold live5421 coloured5421 at child
  try dsimp only [live5422, coloured5422]
  rw [child]
  dsimp only [result5421]
  try dsimp only [colour, result5422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5423_agree : tree5423 = literal5423 := by
  rw [tree5423_def]
  rfl
theorem node5423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5423 live5423 coloured5423 = result5423 := by
  rw [tree5423_def]
  try dsimp only [colour, result5423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5424_agree : tree5424 = literal5424 := by
  rw [tree5424_def, tree5422_agree, tree5423_agree]
  rfl
theorem node5424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5424 live5424 coloured5424 = result5424 := by
  rw [tree5424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5422_eq
  unfold live5422 coloured5422 at child
  try dsimp only [live5424, coloured5424]
  rw [child]
  dsimp only [result5422]
  have child := node5423_eq
  unfold live5423 coloured5423 at child
  try dsimp only [live5424, coloured5424]
  rw [child]
  dsimp only [result5423]
  try dsimp only [colour, result5424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5425_agree : tree5425 = literal5425 := by
  rw [tree5425_def]
  rfl
theorem node5425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5425 live5425 coloured5425 = result5425 := by
  rw [tree5425_def]
  try dsimp only [colour, result5425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5426_agree : tree5426 = literal5426 := by
  rw [tree5426_def, tree5424_agree, tree5425_agree]
  rfl
theorem node5426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5426 live5426 coloured5426 = result5426 := by
  rw [tree5426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5424_eq
  unfold live5424 coloured5424 at child
  try dsimp only [live5426, coloured5426]
  rw [child]
  dsimp only [result5424]
  have child := node5425_eq
  unfold live5425 coloured5425 at child
  try dsimp only [live5426, coloured5426]
  rw [child]
  dsimp only [result5425]
  try dsimp only [colour, result5426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5427_agree : tree5427 = literal5427 := by
  rw [tree5427_def]
  rfl
theorem node5427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5427 live5427 coloured5427 = result5427 := by
  rw [tree5427_def]
  try dsimp only [colour, result5427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5428_agree : tree5428 = literal5428 := by
  rw [tree5428_def, tree5426_agree, tree5427_agree]
  rfl
theorem node5428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5428 live5428 coloured5428 = result5428 := by
  rw [tree5428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5426_eq
  unfold live5426 coloured5426 at child
  try dsimp only [live5428, coloured5428]
  rw [child]
  dsimp only [result5426]
  have child := node5427_eq
  unfold live5427 coloured5427 at child
  try dsimp only [live5428, coloured5428]
  rw [child]
  dsimp only [result5427]
  try dsimp only [colour, result5428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5429_agree : tree5429 = literal5429 := by
  rw [tree5429_def]
  rfl
theorem node5429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5429 live5429 coloured5429 = result5429 := by
  rw [tree5429_def]
  try dsimp only [colour, result5429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5430_agree : tree5430 = literal5430 := by
  rw [tree5430_def, tree5428_agree, tree5429_agree]
  rfl
theorem node5430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5430 live5430 coloured5430 = result5430 := by
  rw [tree5430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5428_eq
  unfold live5428 coloured5428 at child
  try dsimp only [live5430, coloured5430]
  rw [child]
  dsimp only [result5428]
  have child := node5429_eq
  unfold live5429 coloured5429 at child
  try dsimp only [live5430, coloured5430]
  rw [child]
  dsimp only [result5429]
  try dsimp only [colour, result5430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5431_agree : tree5431 = literal5431 := by
  rw [tree5431_def]
  rfl
theorem node5431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5431 live5431 coloured5431 = result5431 := by
  rw [tree5431_def]
  try dsimp only [colour, result5431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5432_agree : tree5432 = literal5432 := by
  rw [tree5432_def, tree5430_agree, tree5431_agree]
  rfl
theorem node5432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5432 live5432 coloured5432 = result5432 := by
  rw [tree5432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5430_eq
  unfold live5430 coloured5430 at child
  try dsimp only [live5432, coloured5432]
  rw [child]
  dsimp only [result5430]
  have child := node5431_eq
  unfold live5431 coloured5431 at child
  try dsimp only [live5432, coloured5432]
  rw [child]
  dsimp only [result5431]
  try dsimp only [colour, result5432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5433_agree : tree5433 = literal5433 := by
  rw [tree5433_def]
  rfl
theorem node5433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5433 live5433 coloured5433 = result5433 := by
  rw [tree5433_def]
  try dsimp only [colour, result5433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5434_agree : tree5434 = literal5434 := by
  rw [tree5434_def, tree5432_agree, tree5433_agree]
  rfl
theorem node5434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5434 live5434 coloured5434 = result5434 := by
  rw [tree5434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5432_eq
  unfold live5432 coloured5432 at child
  try dsimp only [live5434, coloured5434]
  rw [child]
  dsimp only [result5432]
  have child := node5433_eq
  unfold live5433 coloured5433 at child
  try dsimp only [live5434, coloured5434]
  rw [child]
  dsimp only [result5433]
  try dsimp only [colour, result5434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5435_agree : tree5435 = literal5435 := by
  rw [tree5435_def]
  rfl
theorem node5435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5435 live5435 coloured5435 = result5435 := by
  rw [tree5435_def]
  try dsimp only [colour, result5435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5436_agree : tree5436 = literal5436 := by
  rw [tree5436_def, tree5434_agree, tree5435_agree]
  rfl
theorem node5436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5436 live5436 coloured5436 = result5436 := by
  rw [tree5436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5434_eq
  unfold live5434 coloured5434 at child
  try dsimp only [live5436, coloured5436]
  rw [child]
  dsimp only [result5434]
  have child := node5435_eq
  unfold live5435 coloured5435 at child
  try dsimp only [live5436, coloured5436]
  rw [child]
  dsimp only [result5435]
  try dsimp only [colour, result5436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5437_agree : tree5437 = literal5437 := by
  rw [tree5437_def]
  rfl
theorem node5437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5437 live5437 coloured5437 = result5437 := by
  rw [tree5437_def]
  try dsimp only [colour, result5437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5438_agree : tree5438 = literal5438 := by
  rw [tree5438_def, tree5436_agree, tree5437_agree]
  rfl
theorem node5438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5438 live5438 coloured5438 = result5438 := by
  rw [tree5438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5436_eq
  unfold live5436 coloured5436 at child
  try dsimp only [live5438, coloured5438]
  rw [child]
  dsimp only [result5436]
  have child := node5437_eq
  unfold live5437 coloured5437 at child
  try dsimp only [live5438, coloured5438]
  rw [child]
  dsimp only [result5437]
  try dsimp only [colour, result5438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5439_agree : tree5439 = literal5439 := by
  rw [tree5439_def]
  rfl
theorem node5439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5439 live5439 coloured5439 = result5439 := by
  rw [tree5439_def]
  try dsimp only [colour, result5439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5440_agree : tree5440 = literal5440 := by
  rw [tree5440_def, tree5438_agree, tree5439_agree]
  rfl
theorem node5440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5440 live5440 coloured5440 = result5440 := by
  rw [tree5440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5438_eq
  unfold live5438 coloured5438 at child
  try dsimp only [live5440, coloured5440]
  rw [child]
  dsimp only [result5438]
  have child := node5439_eq
  unfold live5439 coloured5439 at child
  try dsimp only [live5440, coloured5440]
  rw [child]
  dsimp only [result5439]
  try dsimp only [colour, result5440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5441_agree : tree5441 = literal5441 := by
  rw [tree5441_def]
  rfl
theorem node5441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5441 live5441 coloured5441 = result5441 := by
  rw [tree5441_def]
  try dsimp only [colour, result5441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5442_agree : tree5442 = literal5442 := by
  rw [tree5442_def, tree5440_agree, tree5441_agree]
  rfl
theorem node5442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5442 live5442 coloured5442 = result5442 := by
  rw [tree5442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5440_eq
  unfold live5440 coloured5440 at child
  try dsimp only [live5442, coloured5442]
  rw [child]
  dsimp only [result5440]
  have child := node5441_eq
  unfold live5441 coloured5441 at child
  try dsimp only [live5442, coloured5442]
  rw [child]
  dsimp only [result5441]
  try dsimp only [colour, result5442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5443_agree : tree5443 = literal5443 := by
  rw [tree5443_def]
  rfl
theorem node5443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5443 live5443 coloured5443 = result5443 := by
  rw [tree5443_def]
  try dsimp only [colour, result5443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5444_agree : tree5444 = literal5444 := by
  rw [tree5444_def, tree5442_agree, tree5443_agree]
  rfl
theorem node5444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5444 live5444 coloured5444 = result5444 := by
  rw [tree5444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5442_eq
  unfold live5442 coloured5442 at child
  try dsimp only [live5444, coloured5444]
  rw [child]
  dsimp only [result5442]
  have child := node5443_eq
  unfold live5443 coloured5443 at child
  try dsimp only [live5444, coloured5444]
  rw [child]
  dsimp only [result5443]
  try dsimp only [colour, result5444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5445_agree : tree5445 = literal5445 := by
  rw [tree5445_def]
  rfl
theorem node5445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5445 live5445 coloured5445 = result5445 := by
  rw [tree5445_def]
  try dsimp only [colour, result5445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5446_agree : tree5446 = literal5446 := by
  rw [tree5446_def, tree5444_agree, tree5445_agree]
  rfl
theorem node5446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5446 live5446 coloured5446 = result5446 := by
  rw [tree5446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5444_eq
  unfold live5444 coloured5444 at child
  try dsimp only [live5446, coloured5446]
  rw [child]
  dsimp only [result5444]
  have child := node5445_eq
  unfold live5445 coloured5445 at child
  try dsimp only [live5446, coloured5446]
  rw [child]
  dsimp only [result5445]
  try dsimp only [colour, result5446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5447_agree : tree5447 = literal5447 := by
  rw [tree5447_def]
  rfl
theorem node5447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5447 live5447 coloured5447 = result5447 := by
  rw [tree5447_def]
  try dsimp only [colour, result5447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5448_agree : tree5448 = literal5448 := by
  rw [tree5448_def, tree5446_agree, tree5447_agree]
  rfl
theorem node5448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5448 live5448 coloured5448 = result5448 := by
  rw [tree5448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5446_eq
  unfold live5446 coloured5446 at child
  try dsimp only [live5448, coloured5448]
  rw [child]
  dsimp only [result5446]
  have child := node5447_eq
  unfold live5447 coloured5447 at child
  try dsimp only [live5448, coloured5448]
  rw [child]
  dsimp only [result5447]
  try dsimp only [colour, result5448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5449_agree : tree5449 = literal5449 := by
  rw [tree5449_def]
  rfl
theorem node5449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5449 live5449 coloured5449 = result5449 := by
  rw [tree5449_def]
  try dsimp only [colour, result5449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5450_agree : tree5450 = literal5450 := by
  rw [tree5450_def, tree5448_agree, tree5449_agree]
  rfl
theorem node5450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5450 live5450 coloured5450 = result5450 := by
  rw [tree5450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5448_eq
  unfold live5448 coloured5448 at child
  try dsimp only [live5450, coloured5450]
  rw [child]
  dsimp only [result5448]
  have child := node5449_eq
  unfold live5449 coloured5449 at child
  try dsimp only [live5450, coloured5450]
  rw [child]
  dsimp only [result5449]
  try dsimp only [colour, result5450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5451_agree : tree5451 = literal5451 := by
  rw [tree5451_def]
  rfl
theorem node5451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5451 live5451 coloured5451 = result5451 := by
  rw [tree5451_def]
  try dsimp only [colour, result5451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5452_agree : tree5452 = literal5452 := by
  rw [tree5452_def, tree5450_agree, tree5451_agree]
  rfl
theorem node5452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5452 live5452 coloured5452 = result5452 := by
  rw [tree5452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5450_eq
  unfold live5450 coloured5450 at child
  try dsimp only [live5452, coloured5452]
  rw [child]
  dsimp only [result5450]
  have child := node5451_eq
  unfold live5451 coloured5451 at child
  try dsimp only [live5452, coloured5452]
  rw [child]
  dsimp only [result5451]
  try dsimp only [colour, result5452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5453_agree : tree5453 = literal5453 := by
  rw [tree5453_def]
  rfl
theorem node5453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5453 live5453 coloured5453 = result5453 := by
  rw [tree5453_def]
  try dsimp only [colour, result5453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5454_agree : tree5454 = literal5454 := by
  rw [tree5454_def, tree5452_agree, tree5453_agree]
  rfl
theorem node5454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5454 live5454 coloured5454 = result5454 := by
  rw [tree5454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5452_eq
  unfold live5452 coloured5452 at child
  try dsimp only [live5454, coloured5454]
  rw [child]
  dsimp only [result5452]
  have child := node5453_eq
  unfold live5453 coloured5453 at child
  try dsimp only [live5454, coloured5454]
  rw [child]
  dsimp only [result5453]
  try dsimp only [colour, result5454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5455_agree : tree5455 = literal5455 := by
  rw [tree5455_def]
  rfl
theorem node5455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5455 live5455 coloured5455 = result5455 := by
  rw [tree5455_def]
  try dsimp only [colour, result5455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5456_agree : tree5456 = literal5456 := by
  rw [tree5456_def, tree5454_agree, tree5455_agree]
  rfl
theorem node5456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5456 live5456 coloured5456 = result5456 := by
  rw [tree5456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5454_eq
  unfold live5454 coloured5454 at child
  try dsimp only [live5456, coloured5456]
  rw [child]
  dsimp only [result5454]
  have child := node5455_eq
  unfold live5455 coloured5455 at child
  try dsimp only [live5456, coloured5456]
  rw [child]
  dsimp only [result5455]
  try dsimp only [colour, result5456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5457_agree : tree5457 = literal5457 := by
  rw [tree5457_def]
  rfl
theorem node5457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5457 live5457 coloured5457 = result5457 := by
  rw [tree5457_def]
  try dsimp only [colour, result5457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5458_agree : tree5458 = literal5458 := by
  rw [tree5458_def, tree5456_agree, tree5457_agree]
  rfl
theorem node5458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5458 live5458 coloured5458 = result5458 := by
  rw [tree5458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5456_eq
  unfold live5456 coloured5456 at child
  try dsimp only [live5458, coloured5458]
  rw [child]
  dsimp only [result5456]
  have child := node5457_eq
  unfold live5457 coloured5457 at child
  try dsimp only [live5458, coloured5458]
  rw [child]
  dsimp only [result5457]
  try dsimp only [colour, result5458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5459_agree : tree5459 = literal5459 := by
  rw [tree5459_def]
  rfl
theorem node5459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5459 live5459 coloured5459 = result5459 := by
  rw [tree5459_def]
  try dsimp only [colour, result5459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5460_agree : tree5460 = literal5460 := by
  rw [tree5460_def, tree5458_agree, tree5459_agree]
  rfl
theorem node5460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5460 live5460 coloured5460 = result5460 := by
  rw [tree5460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5458_eq
  unfold live5458 coloured5458 at child
  try dsimp only [live5460, coloured5460]
  rw [child]
  dsimp only [result5458]
  have child := node5459_eq
  unfold live5459 coloured5459 at child
  try dsimp only [live5460, coloured5460]
  rw [child]
  dsimp only [result5459]
  try dsimp only [colour, result5460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5461_agree : tree5461 = literal5461 := by
  rw [tree5461_def]
  rfl
theorem node5461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5461 live5461 coloured5461 = result5461 := by
  rw [tree5461_def]
  try dsimp only [colour, result5461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5462_agree : tree5462 = literal5462 := by
  rw [tree5462_def, tree5460_agree, tree5461_agree]
  rfl
theorem node5462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5462 live5462 coloured5462 = result5462 := by
  rw [tree5462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5460_eq
  unfold live5460 coloured5460 at child
  try dsimp only [live5462, coloured5462]
  rw [child]
  dsimp only [result5460]
  have child := node5461_eq
  unfold live5461 coloured5461 at child
  try dsimp only [live5462, coloured5462]
  rw [child]
  dsimp only [result5461]
  try dsimp only [colour, result5462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5463_agree : tree5463 = literal5463 := by
  rw [tree5463_def]
  rfl
theorem node5463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5463 live5463 coloured5463 = result5463 := by
  rw [tree5463_def]
  try dsimp only [colour, result5463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5464_agree : tree5464 = literal5464 := by
  rw [tree5464_def, tree5462_agree, tree5463_agree]
  rfl
theorem node5464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5464 live5464 coloured5464 = result5464 := by
  rw [tree5464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5462_eq
  unfold live5462 coloured5462 at child
  try dsimp only [live5464, coloured5464]
  rw [child]
  dsimp only [result5462]
  have child := node5463_eq
  unfold live5463 coloured5463 at child
  try dsimp only [live5464, coloured5464]
  rw [child]
  dsimp only [result5463]
  try dsimp only [colour, result5464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5465_agree : tree5465 = literal5465 := by
  rw [tree5465_def]
  rfl
theorem node5465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5465 live5465 coloured5465 = result5465 := by
  rw [tree5465_def]
  try dsimp only [colour, result5465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5466_agree : tree5466 = literal5466 := by
  rw [tree5466_def, tree5464_agree, tree5465_agree]
  rfl
theorem node5466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5466 live5466 coloured5466 = result5466 := by
  rw [tree5466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5464_eq
  unfold live5464 coloured5464 at child
  try dsimp only [live5466, coloured5466]
  rw [child]
  dsimp only [result5464]
  have child := node5465_eq
  unfold live5465 coloured5465 at child
  try dsimp only [live5466, coloured5466]
  rw [child]
  dsimp only [result5465]
  try dsimp only [colour, result5466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5467_agree : tree5467 = literal5467 := by
  rw [tree5467_def]
  rfl
theorem node5467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5467 live5467 coloured5467 = result5467 := by
  rw [tree5467_def]
  try dsimp only [colour, result5467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5468_agree : tree5468 = literal5468 := by
  rw [tree5468_def, tree5466_agree, tree5467_agree]
  rfl
theorem node5468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5468 live5468 coloured5468 = result5468 := by
  rw [tree5468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5466_eq
  unfold live5466 coloured5466 at child
  try dsimp only [live5468, coloured5468]
  rw [child]
  dsimp only [result5466]
  have child := node5467_eq
  unfold live5467 coloured5467 at child
  try dsimp only [live5468, coloured5468]
  rw [child]
  dsimp only [result5467]
  try dsimp only [colour, result5468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5469_agree : tree5469 = literal5469 := by
  rw [tree5469_def]
  rfl
theorem node5469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5469 live5469 coloured5469 = result5469 := by
  rw [tree5469_def]
  try dsimp only [colour, result5469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5470_agree : tree5470 = literal5470 := by
  rw [tree5470_def, tree5468_agree, tree5469_agree]
  rfl
theorem node5470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5470 live5470 coloured5470 = result5470 := by
  rw [tree5470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5468_eq
  unfold live5468 coloured5468 at child
  try dsimp only [live5470, coloured5470]
  rw [child]
  dsimp only [result5468]
  have child := node5469_eq
  unfold live5469 coloured5469 at child
  try dsimp only [live5470, coloured5470]
  rw [child]
  dsimp only [result5469]
  try dsimp only [colour, result5470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5471_agree : tree5471 = literal5471 := by
  rw [tree5471_def]
  rfl
theorem node5471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5471 live5471 coloured5471 = result5471 := by
  rw [tree5471_def]
  try dsimp only [colour, result5471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
