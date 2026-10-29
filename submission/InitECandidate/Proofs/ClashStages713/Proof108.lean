import InitECandidate.Proofs.ClashStages713.Proof107
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree10368_agree : tree10368 = literal10368 := by
  rw [tree10368_def, tree10366_agree, tree10367_agree]
  rfl
theorem node10368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10368 live10368 coloured10368 = result10368 := by
  rw [tree10368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10366_eq
  unfold live10366 coloured10366 at child
  try dsimp only [live10368, coloured10368]
  rw [child]
  dsimp only [result10366]
  have child := node10367_eq
  unfold live10367 coloured10367 at child
  try dsimp only [live10368, coloured10368]
  rw [child]
  dsimp only [result10367]
  try dsimp only [colour, result10368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10369_agree : tree10369 = literal10369 := by
  rw [tree10369_def]
  rfl
theorem node10369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10369 live10369 coloured10369 = result10369 := by
  rw [tree10369_def]
  try dsimp only [colour, result10369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10370_agree : tree10370 = literal10370 := by
  rw [tree10370_def, tree10368_agree, tree10369_agree]
  rfl
theorem node10370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10370 live10370 coloured10370 = result10370 := by
  rw [tree10370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10368_eq
  unfold live10368 coloured10368 at child
  try dsimp only [live10370, coloured10370]
  rw [child]
  dsimp only [result10368]
  have child := node10369_eq
  unfold live10369 coloured10369 at child
  try dsimp only [live10370, coloured10370]
  rw [child]
  dsimp only [result10369]
  try dsimp only [colour, result10370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10371_agree : tree10371 = literal10371 := by
  rw [tree10371_def]
  rfl
theorem node10371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10371 live10371 coloured10371 = result10371 := by
  rw [tree10371_def]
  try dsimp only [colour, result10371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10372_agree : tree10372 = literal10372 := by
  rw [tree10372_def, tree10370_agree, tree10371_agree]
  rfl
theorem node10372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10372 live10372 coloured10372 = result10372 := by
  rw [tree10372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10370_eq
  unfold live10370 coloured10370 at child
  try dsimp only [live10372, coloured10372]
  rw [child]
  dsimp only [result10370]
  have child := node10371_eq
  unfold live10371 coloured10371 at child
  try dsimp only [live10372, coloured10372]
  rw [child]
  dsimp only [result10371]
  try dsimp only [colour, result10372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10373_agree : tree10373 = literal10373 := by
  rw [tree10373_def]
  rfl
theorem node10373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10373 live10373 coloured10373 = result10373 := by
  rw [tree10373_def]
  try dsimp only [colour, result10373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10374_agree : tree10374 = literal10374 := by
  rw [tree10374_def, tree10372_agree, tree10373_agree]
  rfl
theorem node10374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10374 live10374 coloured10374 = result10374 := by
  rw [tree10374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10372_eq
  unfold live10372 coloured10372 at child
  try dsimp only [live10374, coloured10374]
  rw [child]
  dsimp only [result10372]
  have child := node10373_eq
  unfold live10373 coloured10373 at child
  try dsimp only [live10374, coloured10374]
  rw [child]
  dsimp only [result10373]
  try dsimp only [colour, result10374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10375_agree : tree10375 = literal10375 := by
  rw [tree10375_def]
  rfl
theorem node10375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10375 live10375 coloured10375 = result10375 := by
  rw [tree10375_def]
  try dsimp only [colour, result10375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10376_agree : tree10376 = literal10376 := by
  rw [tree10376_def, tree10374_agree, tree10375_agree]
  rfl
theorem node10376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10376 live10376 coloured10376 = result10376 := by
  rw [tree10376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10374_eq
  unfold live10374 coloured10374 at child
  try dsimp only [live10376, coloured10376]
  rw [child]
  dsimp only [result10374]
  have child := node10375_eq
  unfold live10375 coloured10375 at child
  try dsimp only [live10376, coloured10376]
  rw [child]
  dsimp only [result10375]
  try dsimp only [colour, result10376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10377_agree : tree10377 = literal10377 := by
  rw [tree10377_def]
  rfl
theorem node10377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10377 live10377 coloured10377 = result10377 := by
  rw [tree10377_def]
  try dsimp only [colour, result10377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10378_agree : tree10378 = literal10378 := by
  rw [tree10378_def, tree10376_agree, tree10377_agree]
  rfl
theorem node10378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10378 live10378 coloured10378 = result10378 := by
  rw [tree10378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10376_eq
  unfold live10376 coloured10376 at child
  try dsimp only [live10378, coloured10378]
  rw [child]
  dsimp only [result10376]
  have child := node10377_eq
  unfold live10377 coloured10377 at child
  try dsimp only [live10378, coloured10378]
  rw [child]
  dsimp only [result10377]
  try dsimp only [colour, result10378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10379_agree : tree10379 = literal10379 := by
  rw [tree10379_def]
  rfl
theorem node10379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10379 live10379 coloured10379 = result10379 := by
  rw [tree10379_def]
  try dsimp only [colour, result10379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10380_agree : tree10380 = literal10380 := by
  rw [tree10380_def, tree10378_agree, tree10379_agree]
  rfl
theorem node10380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10380 live10380 coloured10380 = result10380 := by
  rw [tree10380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10378_eq
  unfold live10378 coloured10378 at child
  try dsimp only [live10380, coloured10380]
  rw [child]
  dsimp only [result10378]
  have child := node10379_eq
  unfold live10379 coloured10379 at child
  try dsimp only [live10380, coloured10380]
  rw [child]
  dsimp only [result10379]
  try dsimp only [colour, result10380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10381_agree : tree10381 = literal10381 := by
  rw [tree10381_def]
  rfl
theorem node10381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10381 live10381 coloured10381 = result10381 := by
  rw [tree10381_def]
  try dsimp only [colour, result10381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10382_agree : tree10382 = literal10382 := by
  rw [tree10382_def, tree10380_agree, tree10381_agree]
  rfl
theorem node10382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10382 live10382 coloured10382 = result10382 := by
  rw [tree10382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10380_eq
  unfold live10380 coloured10380 at child
  try dsimp only [live10382, coloured10382]
  rw [child]
  dsimp only [result10380]
  have child := node10381_eq
  unfold live10381 coloured10381 at child
  try dsimp only [live10382, coloured10382]
  rw [child]
  dsimp only [result10381]
  try dsimp only [colour, result10382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10383_agree : tree10383 = literal10383 := by
  rw [tree10383_def]
  rfl
theorem node10383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10383 live10383 coloured10383 = result10383 := by
  rw [tree10383_def]
  try dsimp only [colour, result10383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10384_agree : tree10384 = literal10384 := by
  rw [tree10384_def, tree10382_agree, tree10383_agree]
  rfl
theorem node10384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10384 live10384 coloured10384 = result10384 := by
  rw [tree10384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10382_eq
  unfold live10382 coloured10382 at child
  try dsimp only [live10384, coloured10384]
  rw [child]
  dsimp only [result10382]
  have child := node10383_eq
  unfold live10383 coloured10383 at child
  try dsimp only [live10384, coloured10384]
  rw [child]
  dsimp only [result10383]
  try dsimp only [colour, result10384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10385_agree : tree10385 = literal10385 := by
  rw [tree10385_def]
  rfl
theorem node10385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10385 live10385 coloured10385 = result10385 := by
  rw [tree10385_def]
  try dsimp only [colour, result10385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10386_agree : tree10386 = literal10386 := by
  rw [tree10386_def, tree10384_agree, tree10385_agree]
  rfl
theorem node10386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10386 live10386 coloured10386 = result10386 := by
  rw [tree10386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10384_eq
  unfold live10384 coloured10384 at child
  try dsimp only [live10386, coloured10386]
  rw [child]
  dsimp only [result10384]
  have child := node10385_eq
  unfold live10385 coloured10385 at child
  try dsimp only [live10386, coloured10386]
  rw [child]
  dsimp only [result10385]
  try dsimp only [colour, result10386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10387_agree : tree10387 = literal10387 := by
  rw [tree10387_def]
  rfl
theorem node10387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10387 live10387 coloured10387 = result10387 := by
  rw [tree10387_def]
  try dsimp only [colour, result10387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10388_agree : tree10388 = literal10388 := by
  rw [tree10388_def, tree10386_agree, tree10387_agree]
  rfl
theorem node10388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10388 live10388 coloured10388 = result10388 := by
  rw [tree10388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10386_eq
  unfold live10386 coloured10386 at child
  try dsimp only [live10388, coloured10388]
  rw [child]
  dsimp only [result10386]
  have child := node10387_eq
  unfold live10387 coloured10387 at child
  try dsimp only [live10388, coloured10388]
  rw [child]
  dsimp only [result10387]
  try dsimp only [colour, result10388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10389_agree : tree10389 = literal10389 := by
  rw [tree10389_def]
  rfl
theorem node10389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10389 live10389 coloured10389 = result10389 := by
  rw [tree10389_def]
  try dsimp only [colour, result10389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10390_agree : tree10390 = literal10390 := by
  rw [tree10390_def, tree10388_agree, tree10389_agree]
  rfl
theorem node10390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10390 live10390 coloured10390 = result10390 := by
  rw [tree10390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10388_eq
  unfold live10388 coloured10388 at child
  try dsimp only [live10390, coloured10390]
  rw [child]
  dsimp only [result10388]
  have child := node10389_eq
  unfold live10389 coloured10389 at child
  try dsimp only [live10390, coloured10390]
  rw [child]
  dsimp only [result10389]
  try dsimp only [colour, result10390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10391_agree : tree10391 = literal10391 := by
  rw [tree10391_def]
  rfl
theorem node10391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10391 live10391 coloured10391 = result10391 := by
  rw [tree10391_def]
  try dsimp only [colour, result10391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10392_agree : tree10392 = literal10392 := by
  rw [tree10392_def, tree10390_agree, tree10391_agree]
  rfl
theorem node10392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10392 live10392 coloured10392 = result10392 := by
  rw [tree10392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10390_eq
  unfold live10390 coloured10390 at child
  try dsimp only [live10392, coloured10392]
  rw [child]
  dsimp only [result10390]
  have child := node10391_eq
  unfold live10391 coloured10391 at child
  try dsimp only [live10392, coloured10392]
  rw [child]
  dsimp only [result10391]
  try dsimp only [colour, result10392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10393_agree : tree10393 = literal10393 := by
  rw [tree10393_def]
  rfl
theorem node10393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10393 live10393 coloured10393 = result10393 := by
  rw [tree10393_def]
  try dsimp only [colour, result10393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10394_agree : tree10394 = literal10394 := by
  rw [tree10394_def, tree10392_agree, tree10393_agree]
  rfl
theorem node10394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10394 live10394 coloured10394 = result10394 := by
  rw [tree10394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10392_eq
  unfold live10392 coloured10392 at child
  try dsimp only [live10394, coloured10394]
  rw [child]
  dsimp only [result10392]
  have child := node10393_eq
  unfold live10393 coloured10393 at child
  try dsimp only [live10394, coloured10394]
  rw [child]
  dsimp only [result10393]
  try dsimp only [colour, result10394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10395_agree : tree10395 = literal10395 := by
  rw [tree10395_def]
  rfl
theorem node10395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10395 live10395 coloured10395 = result10395 := by
  rw [tree10395_def]
  try dsimp only [colour, result10395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10396_agree : tree10396 = literal10396 := by
  rw [tree10396_def, tree10394_agree, tree10395_agree]
  rfl
theorem node10396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10396 live10396 coloured10396 = result10396 := by
  rw [tree10396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10394_eq
  unfold live10394 coloured10394 at child
  try dsimp only [live10396, coloured10396]
  rw [child]
  dsimp only [result10394]
  have child := node10395_eq
  unfold live10395 coloured10395 at child
  try dsimp only [live10396, coloured10396]
  rw [child]
  dsimp only [result10395]
  try dsimp only [colour, result10396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10397_agree : tree10397 = literal10397 := by
  rw [tree10397_def]
  rfl
theorem node10397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10397 live10397 coloured10397 = result10397 := by
  rw [tree10397_def]
  try dsimp only [colour, result10397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10398_agree : tree10398 = literal10398 := by
  rw [tree10398_def, tree10396_agree, tree10397_agree]
  rfl
theorem node10398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10398 live10398 coloured10398 = result10398 := by
  rw [tree10398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10396_eq
  unfold live10396 coloured10396 at child
  try dsimp only [live10398, coloured10398]
  rw [child]
  dsimp only [result10396]
  have child := node10397_eq
  unfold live10397 coloured10397 at child
  try dsimp only [live10398, coloured10398]
  rw [child]
  dsimp only [result10397]
  try dsimp only [colour, result10398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10399_agree : tree10399 = literal10399 := by
  rw [tree10399_def]
  rfl
theorem node10399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10399 live10399 coloured10399 = result10399 := by
  rw [tree10399_def]
  try dsimp only [colour, result10399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10400_agree : tree10400 = literal10400 := by
  rw [tree10400_def, tree10398_agree, tree10399_agree]
  rfl
theorem node10400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10400 live10400 coloured10400 = result10400 := by
  rw [tree10400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10398_eq
  unfold live10398 coloured10398 at child
  try dsimp only [live10400, coloured10400]
  rw [child]
  dsimp only [result10398]
  have child := node10399_eq
  unfold live10399 coloured10399 at child
  try dsimp only [live10400, coloured10400]
  rw [child]
  dsimp only [result10399]
  try dsimp only [colour, result10400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10401_agree : tree10401 = literal10401 := by
  rw [tree10401_def]
  rfl
theorem node10401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10401 live10401 coloured10401 = result10401 := by
  rw [tree10401_def]
  try dsimp only [colour, result10401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10402_agree : tree10402 = literal10402 := by
  rw [tree10402_def, tree10400_agree, tree10401_agree]
  rfl
theorem node10402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10402 live10402 coloured10402 = result10402 := by
  rw [tree10402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10400_eq
  unfold live10400 coloured10400 at child
  try dsimp only [live10402, coloured10402]
  rw [child]
  dsimp only [result10400]
  have child := node10401_eq
  unfold live10401 coloured10401 at child
  try dsimp only [live10402, coloured10402]
  rw [child]
  dsimp only [result10401]
  try dsimp only [colour, result10402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10403_agree : tree10403 = literal10403 := by
  rw [tree10403_def]
  rfl
theorem node10403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10403 live10403 coloured10403 = result10403 := by
  rw [tree10403_def]
  try dsimp only [colour, result10403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10404_agree : tree10404 = literal10404 := by
  rw [tree10404_def, tree10402_agree, tree10403_agree]
  rfl
theorem node10404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10404 live10404 coloured10404 = result10404 := by
  rw [tree10404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10402_eq
  unfold live10402 coloured10402 at child
  try dsimp only [live10404, coloured10404]
  rw [child]
  dsimp only [result10402]
  have child := node10403_eq
  unfold live10403 coloured10403 at child
  try dsimp only [live10404, coloured10404]
  rw [child]
  dsimp only [result10403]
  try dsimp only [colour, result10404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10405_agree : tree10405 = literal10405 := by
  rw [tree10405_def]
  rfl
theorem node10405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10405 live10405 coloured10405 = result10405 := by
  rw [tree10405_def]
  try dsimp only [colour, result10405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10406_agree : tree10406 = literal10406 := by
  rw [tree10406_def, tree10404_agree, tree10405_agree]
  rfl
theorem node10406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10406 live10406 coloured10406 = result10406 := by
  rw [tree10406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10404_eq
  unfold live10404 coloured10404 at child
  try dsimp only [live10406, coloured10406]
  rw [child]
  dsimp only [result10404]
  have child := node10405_eq
  unfold live10405 coloured10405 at child
  try dsimp only [live10406, coloured10406]
  rw [child]
  dsimp only [result10405]
  try dsimp only [colour, result10406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10407_agree : tree10407 = literal10407 := by
  rw [tree10407_def]
  rfl
theorem node10407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10407 live10407 coloured10407 = result10407 := by
  rw [tree10407_def]
  try dsimp only [colour, result10407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10408_agree : tree10408 = literal10408 := by
  rw [tree10408_def, tree10406_agree, tree10407_agree]
  rfl
theorem node10408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10408 live10408 coloured10408 = result10408 := by
  rw [tree10408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10406_eq
  unfold live10406 coloured10406 at child
  try dsimp only [live10408, coloured10408]
  rw [child]
  dsimp only [result10406]
  have child := node10407_eq
  unfold live10407 coloured10407 at child
  try dsimp only [live10408, coloured10408]
  rw [child]
  dsimp only [result10407]
  try dsimp only [colour, result10408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10409_agree : tree10409 = literal10409 := by
  rw [tree10409_def]
  rfl
theorem node10409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10409 live10409 coloured10409 = result10409 := by
  rw [tree10409_def]
  try dsimp only [colour, result10409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10410_agree : tree10410 = literal10410 := by
  rw [tree10410_def, tree10408_agree, tree10409_agree]
  rfl
theorem node10410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10410 live10410 coloured10410 = result10410 := by
  rw [tree10410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10408_eq
  unfold live10408 coloured10408 at child
  try dsimp only [live10410, coloured10410]
  rw [child]
  dsimp only [result10408]
  have child := node10409_eq
  unfold live10409 coloured10409 at child
  try dsimp only [live10410, coloured10410]
  rw [child]
  dsimp only [result10409]
  try dsimp only [colour, result10410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10411_agree : tree10411 = literal10411 := by
  rw [tree10411_def]
  rfl
theorem node10411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10411 live10411 coloured10411 = result10411 := by
  rw [tree10411_def]
  try dsimp only [colour, result10411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10412_agree : tree10412 = literal10412 := by
  rw [tree10412_def, tree10410_agree, tree10411_agree]
  rfl
theorem node10412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10412 live10412 coloured10412 = result10412 := by
  rw [tree10412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10410_eq
  unfold live10410 coloured10410 at child
  try dsimp only [live10412, coloured10412]
  rw [child]
  dsimp only [result10410]
  have child := node10411_eq
  unfold live10411 coloured10411 at child
  try dsimp only [live10412, coloured10412]
  rw [child]
  dsimp only [result10411]
  try dsimp only [colour, result10412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10413_agree : tree10413 = literal10413 := by
  rw [tree10413_def]
  rfl
theorem node10413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10413 live10413 coloured10413 = result10413 := by
  rw [tree10413_def]
  try dsimp only [colour, result10413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10414_agree : tree10414 = literal10414 := by
  rw [tree10414_def, tree10412_agree, tree10413_agree]
  rfl
theorem node10414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10414 live10414 coloured10414 = result10414 := by
  rw [tree10414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10412_eq
  unfold live10412 coloured10412 at child
  try dsimp only [live10414, coloured10414]
  rw [child]
  dsimp only [result10412]
  have child := node10413_eq
  unfold live10413 coloured10413 at child
  try dsimp only [live10414, coloured10414]
  rw [child]
  dsimp only [result10413]
  try dsimp only [colour, result10414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10415_agree : tree10415 = literal10415 := by
  rw [tree10415_def]
  rfl
theorem node10415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10415 live10415 coloured10415 = result10415 := by
  rw [tree10415_def]
  try dsimp only [colour, result10415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10416_agree : tree10416 = literal10416 := by
  rw [tree10416_def, tree10414_agree, tree10415_agree]
  rfl
theorem node10416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10416 live10416 coloured10416 = result10416 := by
  rw [tree10416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10414_eq
  unfold live10414 coloured10414 at child
  try dsimp only [live10416, coloured10416]
  rw [child]
  dsimp only [result10414]
  have child := node10415_eq
  unfold live10415 coloured10415 at child
  try dsimp only [live10416, coloured10416]
  rw [child]
  dsimp only [result10415]
  try dsimp only [colour, result10416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10417_agree : tree10417 = literal10417 := by
  rw [tree10417_def]
  rfl
theorem node10417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10417 live10417 coloured10417 = result10417 := by
  rw [tree10417_def]
  try dsimp only [colour, result10417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10418_agree : tree10418 = literal10418 := by
  rw [tree10418_def, tree10416_agree, tree10417_agree]
  rfl
theorem node10418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10418 live10418 coloured10418 = result10418 := by
  rw [tree10418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10416_eq
  unfold live10416 coloured10416 at child
  try dsimp only [live10418, coloured10418]
  rw [child]
  dsimp only [result10416]
  have child := node10417_eq
  unfold live10417 coloured10417 at child
  try dsimp only [live10418, coloured10418]
  rw [child]
  dsimp only [result10417]
  try dsimp only [colour, result10418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10419_agree : tree10419 = literal10419 := by
  rw [tree10419_def]
  rfl
theorem node10419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10419 live10419 coloured10419 = result10419 := by
  rw [tree10419_def]
  try dsimp only [colour, result10419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10420_agree : tree10420 = literal10420 := by
  rw [tree10420_def, tree10418_agree, tree10419_agree]
  rfl
theorem node10420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10420 live10420 coloured10420 = result10420 := by
  rw [tree10420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10418_eq
  unfold live10418 coloured10418 at child
  try dsimp only [live10420, coloured10420]
  rw [child]
  dsimp only [result10418]
  have child := node10419_eq
  unfold live10419 coloured10419 at child
  try dsimp only [live10420, coloured10420]
  rw [child]
  dsimp only [result10419]
  try dsimp only [colour, result10420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10421_agree : tree10421 = literal10421 := by
  rw [tree10421_def]
  rfl
theorem node10421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10421 live10421 coloured10421 = result10421 := by
  rw [tree10421_def]
  try dsimp only [colour, result10421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10422_agree : tree10422 = literal10422 := by
  rw [tree10422_def, tree10420_agree, tree10421_agree]
  rfl
theorem node10422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10422 live10422 coloured10422 = result10422 := by
  rw [tree10422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10420_eq
  unfold live10420 coloured10420 at child
  try dsimp only [live10422, coloured10422]
  rw [child]
  dsimp only [result10420]
  have child := node10421_eq
  unfold live10421 coloured10421 at child
  try dsimp only [live10422, coloured10422]
  rw [child]
  dsimp only [result10421]
  try dsimp only [colour, result10422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10423_agree : tree10423 = literal10423 := by
  rw [tree10423_def]
  rfl
theorem node10423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10423 live10423 coloured10423 = result10423 := by
  rw [tree10423_def]
  try dsimp only [colour, result10423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10424_agree : tree10424 = literal10424 := by
  rw [tree10424_def, tree10422_agree, tree10423_agree]
  rfl
theorem node10424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10424 live10424 coloured10424 = result10424 := by
  rw [tree10424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10422_eq
  unfold live10422 coloured10422 at child
  try dsimp only [live10424, coloured10424]
  rw [child]
  dsimp only [result10422]
  have child := node10423_eq
  unfold live10423 coloured10423 at child
  try dsimp only [live10424, coloured10424]
  rw [child]
  dsimp only [result10423]
  try dsimp only [colour, result10424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10425_agree : tree10425 = literal10425 := by
  rw [tree10425_def]
  rfl
theorem node10425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10425 live10425 coloured10425 = result10425 := by
  rw [tree10425_def]
  try dsimp only [colour, result10425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10426_agree : tree10426 = literal10426 := by
  rw [tree10426_def, tree10424_agree, tree10425_agree]
  rfl
theorem node10426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10426 live10426 coloured10426 = result10426 := by
  rw [tree10426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10424_eq
  unfold live10424 coloured10424 at child
  try dsimp only [live10426, coloured10426]
  rw [child]
  dsimp only [result10424]
  have child := node10425_eq
  unfold live10425 coloured10425 at child
  try dsimp only [live10426, coloured10426]
  rw [child]
  dsimp only [result10425]
  try dsimp only [colour, result10426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10427_agree : tree10427 = literal10427 := by
  rw [tree10427_def]
  rfl
theorem node10427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10427 live10427 coloured10427 = result10427 := by
  rw [tree10427_def]
  try dsimp only [colour, result10427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10428_agree : tree10428 = literal10428 := by
  rw [tree10428_def, tree10426_agree, tree10427_agree]
  rfl
theorem node10428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10428 live10428 coloured10428 = result10428 := by
  rw [tree10428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10426_eq
  unfold live10426 coloured10426 at child
  try dsimp only [live10428, coloured10428]
  rw [child]
  dsimp only [result10426]
  have child := node10427_eq
  unfold live10427 coloured10427 at child
  try dsimp only [live10428, coloured10428]
  rw [child]
  dsimp only [result10427]
  try dsimp only [colour, result10428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10429_agree : tree10429 = literal10429 := by
  rw [tree10429_def]
  rfl
theorem node10429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10429 live10429 coloured10429 = result10429 := by
  rw [tree10429_def]
  try dsimp only [colour, result10429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10430_agree : tree10430 = literal10430 := by
  rw [tree10430_def, tree10428_agree, tree10429_agree]
  rfl
theorem node10430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10430 live10430 coloured10430 = result10430 := by
  rw [tree10430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10428_eq
  unfold live10428 coloured10428 at child
  try dsimp only [live10430, coloured10430]
  rw [child]
  dsimp only [result10428]
  have child := node10429_eq
  unfold live10429 coloured10429 at child
  try dsimp only [live10430, coloured10430]
  rw [child]
  dsimp only [result10429]
  try dsimp only [colour, result10430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10431_agree : tree10431 = literal10431 := by
  rw [tree10431_def]
  rfl
theorem node10431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10431 live10431 coloured10431 = result10431 := by
  rw [tree10431_def]
  try dsimp only [colour, result10431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10432_agree : tree10432 = literal10432 := by
  rw [tree10432_def, tree10430_agree, tree10431_agree]
  rfl
theorem node10432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10432 live10432 coloured10432 = result10432 := by
  rw [tree10432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10430_eq
  unfold live10430 coloured10430 at child
  try dsimp only [live10432, coloured10432]
  rw [child]
  dsimp only [result10430]
  have child := node10431_eq
  unfold live10431 coloured10431 at child
  try dsimp only [live10432, coloured10432]
  rw [child]
  dsimp only [result10431]
  try dsimp only [colour, result10432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10433_agree : tree10433 = literal10433 := by
  rw [tree10433_def]
  rfl
theorem node10433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10433 live10433 coloured10433 = result10433 := by
  rw [tree10433_def]
  try dsimp only [colour, result10433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10434_agree : tree10434 = literal10434 := by
  rw [tree10434_def, tree10432_agree, tree10433_agree]
  rfl
theorem node10434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10434 live10434 coloured10434 = result10434 := by
  rw [tree10434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10432_eq
  unfold live10432 coloured10432 at child
  try dsimp only [live10434, coloured10434]
  rw [child]
  dsimp only [result10432]
  have child := node10433_eq
  unfold live10433 coloured10433 at child
  try dsimp only [live10434, coloured10434]
  rw [child]
  dsimp only [result10433]
  try dsimp only [colour, result10434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10435_agree : tree10435 = literal10435 := by
  rw [tree10435_def]
  rfl
theorem node10435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10435 live10435 coloured10435 = result10435 := by
  rw [tree10435_def]
  try dsimp only [colour, result10435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10436_agree : tree10436 = literal10436 := by
  rw [tree10436_def, tree10434_agree, tree10435_agree]
  rfl
theorem node10436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10436 live10436 coloured10436 = result10436 := by
  rw [tree10436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10434_eq
  unfold live10434 coloured10434 at child
  try dsimp only [live10436, coloured10436]
  rw [child]
  dsimp only [result10434]
  have child := node10435_eq
  unfold live10435 coloured10435 at child
  try dsimp only [live10436, coloured10436]
  rw [child]
  dsimp only [result10435]
  try dsimp only [colour, result10436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10437_agree : tree10437 = literal10437 := by
  rw [tree10437_def]
  rfl
theorem node10437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10437 live10437 coloured10437 = result10437 := by
  rw [tree10437_def]
  try dsimp only [colour, result10437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10438_agree : tree10438 = literal10438 := by
  rw [tree10438_def, tree10436_agree, tree10437_agree]
  rfl
theorem node10438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10438 live10438 coloured10438 = result10438 := by
  rw [tree10438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10436_eq
  unfold live10436 coloured10436 at child
  try dsimp only [live10438, coloured10438]
  rw [child]
  dsimp only [result10436]
  have child := node10437_eq
  unfold live10437 coloured10437 at child
  try dsimp only [live10438, coloured10438]
  rw [child]
  dsimp only [result10437]
  try dsimp only [colour, result10438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10439_agree : tree10439 = literal10439 := by
  rw [tree10439_def]
  rfl
theorem node10439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10439 live10439 coloured10439 = result10439 := by
  rw [tree10439_def]
  try dsimp only [colour, result10439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10440_agree : tree10440 = literal10440 := by
  rw [tree10440_def, tree10438_agree, tree10439_agree]
  rfl
theorem node10440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10440 live10440 coloured10440 = result10440 := by
  rw [tree10440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10438_eq
  unfold live10438 coloured10438 at child
  try dsimp only [live10440, coloured10440]
  rw [child]
  dsimp only [result10438]
  have child := node10439_eq
  unfold live10439 coloured10439 at child
  try dsimp only [live10440, coloured10440]
  rw [child]
  dsimp only [result10439]
  try dsimp only [colour, result10440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10441_agree : tree10441 = literal10441 := by
  rw [tree10441_def]
  rfl
theorem node10441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10441 live10441 coloured10441 = result10441 := by
  rw [tree10441_def]
  try dsimp only [colour, result10441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10442_agree : tree10442 = literal10442 := by
  rw [tree10442_def, tree10440_agree, tree10441_agree]
  rfl
theorem node10442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10442 live10442 coloured10442 = result10442 := by
  rw [tree10442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10440_eq
  unfold live10440 coloured10440 at child
  try dsimp only [live10442, coloured10442]
  rw [child]
  dsimp only [result10440]
  have child := node10441_eq
  unfold live10441 coloured10441 at child
  try dsimp only [live10442, coloured10442]
  rw [child]
  dsimp only [result10441]
  try dsimp only [colour, result10442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10443_agree : tree10443 = literal10443 := by
  rw [tree10443_def]
  rfl
theorem node10443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10443 live10443 coloured10443 = result10443 := by
  rw [tree10443_def]
  try dsimp only [colour, result10443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10444_agree : tree10444 = literal10444 := by
  rw [tree10444_def, tree10442_agree, tree10443_agree]
  rfl
theorem node10444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10444 live10444 coloured10444 = result10444 := by
  rw [tree10444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10442_eq
  unfold live10442 coloured10442 at child
  try dsimp only [live10444, coloured10444]
  rw [child]
  dsimp only [result10442]
  have child := node10443_eq
  unfold live10443 coloured10443 at child
  try dsimp only [live10444, coloured10444]
  rw [child]
  dsimp only [result10443]
  try dsimp only [colour, result10444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10445_agree : tree10445 = literal10445 := by
  rw [tree10445_def]
  rfl
theorem node10445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10445 live10445 coloured10445 = result10445 := by
  rw [tree10445_def]
  try dsimp only [colour, result10445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10446_agree : tree10446 = literal10446 := by
  rw [tree10446_def, tree10444_agree, tree10445_agree]
  rfl
theorem node10446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10446 live10446 coloured10446 = result10446 := by
  rw [tree10446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10444_eq
  unfold live10444 coloured10444 at child
  try dsimp only [live10446, coloured10446]
  rw [child]
  dsimp only [result10444]
  have child := node10445_eq
  unfold live10445 coloured10445 at child
  try dsimp only [live10446, coloured10446]
  rw [child]
  dsimp only [result10445]
  try dsimp only [colour, result10446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10447_agree : tree10447 = literal10447 := by
  rw [tree10447_def]
  rfl
theorem node10447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10447 live10447 coloured10447 = result10447 := by
  rw [tree10447_def]
  try dsimp only [colour, result10447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10448_agree : tree10448 = literal10448 := by
  rw [tree10448_def, tree10446_agree, tree10447_agree]
  rfl
theorem node10448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10448 live10448 coloured10448 = result10448 := by
  rw [tree10448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10446_eq
  unfold live10446 coloured10446 at child
  try dsimp only [live10448, coloured10448]
  rw [child]
  dsimp only [result10446]
  have child := node10447_eq
  unfold live10447 coloured10447 at child
  try dsimp only [live10448, coloured10448]
  rw [child]
  dsimp only [result10447]
  try dsimp only [colour, result10448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10449_agree : tree10449 = literal10449 := by
  rw [tree10449_def]
  rfl
theorem node10449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10449 live10449 coloured10449 = result10449 := by
  rw [tree10449_def]
  try dsimp only [colour, result10449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10450_agree : tree10450 = literal10450 := by
  rw [tree10450_def, tree10448_agree, tree10449_agree]
  rfl
theorem node10450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10450 live10450 coloured10450 = result10450 := by
  rw [tree10450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10448_eq
  unfold live10448 coloured10448 at child
  try dsimp only [live10450, coloured10450]
  rw [child]
  dsimp only [result10448]
  have child := node10449_eq
  unfold live10449 coloured10449 at child
  try dsimp only [live10450, coloured10450]
  rw [child]
  dsimp only [result10449]
  try dsimp only [colour, result10450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10451_agree : tree10451 = literal10451 := by
  rw [tree10451_def]
  rfl
theorem node10451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10451 live10451 coloured10451 = result10451 := by
  rw [tree10451_def]
  try dsimp only [colour, result10451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10452_agree : tree10452 = literal10452 := by
  rw [tree10452_def, tree10450_agree, tree10451_agree]
  rfl
theorem node10452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10452 live10452 coloured10452 = result10452 := by
  rw [tree10452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10450_eq
  unfold live10450 coloured10450 at child
  try dsimp only [live10452, coloured10452]
  rw [child]
  dsimp only [result10450]
  have child := node10451_eq
  unfold live10451 coloured10451 at child
  try dsimp only [live10452, coloured10452]
  rw [child]
  dsimp only [result10451]
  try dsimp only [colour, result10452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10453_agree : tree10453 = literal10453 := by
  rw [tree10453_def]
  rfl
theorem node10453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10453 live10453 coloured10453 = result10453 := by
  rw [tree10453_def]
  try dsimp only [colour, result10453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10454_agree : tree10454 = literal10454 := by
  rw [tree10454_def, tree10452_agree, tree10453_agree]
  rfl
theorem node10454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10454 live10454 coloured10454 = result10454 := by
  rw [tree10454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10452_eq
  unfold live10452 coloured10452 at child
  try dsimp only [live10454, coloured10454]
  rw [child]
  dsimp only [result10452]
  have child := node10453_eq
  unfold live10453 coloured10453 at child
  try dsimp only [live10454, coloured10454]
  rw [child]
  dsimp only [result10453]
  try dsimp only [colour, result10454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10455_agree : tree10455 = literal10455 := by
  rw [tree10455_def]
  rfl
theorem node10455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10455 live10455 coloured10455 = result10455 := by
  rw [tree10455_def]
  try dsimp only [colour, result10455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10456_agree : tree10456 = literal10456 := by
  rw [tree10456_def, tree10454_agree, tree10455_agree]
  rfl
theorem node10456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10456 live10456 coloured10456 = result10456 := by
  rw [tree10456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10454_eq
  unfold live10454 coloured10454 at child
  try dsimp only [live10456, coloured10456]
  rw [child]
  dsimp only [result10454]
  have child := node10455_eq
  unfold live10455 coloured10455 at child
  try dsimp only [live10456, coloured10456]
  rw [child]
  dsimp only [result10455]
  try dsimp only [colour, result10456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10457_agree : tree10457 = literal10457 := by
  rw [tree10457_def]
  rfl
theorem node10457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10457 live10457 coloured10457 = result10457 := by
  rw [tree10457_def]
  try dsimp only [colour, result10457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10458_agree : tree10458 = literal10458 := by
  rw [tree10458_def, tree10456_agree, tree10457_agree]
  rfl
theorem node10458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10458 live10458 coloured10458 = result10458 := by
  rw [tree10458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10456_eq
  unfold live10456 coloured10456 at child
  try dsimp only [live10458, coloured10458]
  rw [child]
  dsimp only [result10456]
  have child := node10457_eq
  unfold live10457 coloured10457 at child
  try dsimp only [live10458, coloured10458]
  rw [child]
  dsimp only [result10457]
  try dsimp only [colour, result10458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10459_agree : tree10459 = literal10459 := by
  rw [tree10459_def]
  rfl
theorem node10459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10459 live10459 coloured10459 = result10459 := by
  rw [tree10459_def]
  try dsimp only [colour, result10459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10460_agree : tree10460 = literal10460 := by
  rw [tree10460_def, tree10458_agree, tree10459_agree]
  rfl
theorem node10460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10460 live10460 coloured10460 = result10460 := by
  rw [tree10460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10458_eq
  unfold live10458 coloured10458 at child
  try dsimp only [live10460, coloured10460]
  rw [child]
  dsimp only [result10458]
  have child := node10459_eq
  unfold live10459 coloured10459 at child
  try dsimp only [live10460, coloured10460]
  rw [child]
  dsimp only [result10459]
  try dsimp only [colour, result10460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10461_agree : tree10461 = literal10461 := by
  rw [tree10461_def]
  rfl
theorem node10461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10461 live10461 coloured10461 = result10461 := by
  rw [tree10461_def]
  try dsimp only [colour, result10461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10462_agree : tree10462 = literal10462 := by
  rw [tree10462_def, tree10460_agree, tree10461_agree]
  rfl
theorem node10462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10462 live10462 coloured10462 = result10462 := by
  rw [tree10462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10460_eq
  unfold live10460 coloured10460 at child
  try dsimp only [live10462, coloured10462]
  rw [child]
  dsimp only [result10460]
  have child := node10461_eq
  unfold live10461 coloured10461 at child
  try dsimp only [live10462, coloured10462]
  rw [child]
  dsimp only [result10461]
  try dsimp only [colour, result10462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10463_agree : tree10463 = literal10463 := by
  rw [tree10463_def]
  rfl
theorem node10463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10463 live10463 coloured10463 = result10463 := by
  rw [tree10463_def]
  try dsimp only [colour, result10463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
