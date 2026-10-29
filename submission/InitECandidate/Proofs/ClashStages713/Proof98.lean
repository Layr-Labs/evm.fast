import InitECandidate.Proofs.ClashStages713.Proof97
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9408_agree : tree9408 = literal9408 := by
  rw [tree9408_def, tree9406_agree, tree9407_agree]
  rfl
theorem node9408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9408 live9408 coloured9408 = result9408 := by
  rw [tree9408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9406_eq
  unfold live9406 coloured9406 at child
  try dsimp only [live9408, coloured9408]
  rw [child]
  dsimp only [result9406]
  have child := node9407_eq
  unfold live9407 coloured9407 at child
  try dsimp only [live9408, coloured9408]
  rw [child]
  dsimp only [result9407]
  try dsimp only [colour, result9408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9409_agree : tree9409 = literal9409 := by
  rw [tree9409_def]
  rfl
theorem node9409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9409 live9409 coloured9409 = result9409 := by
  rw [tree9409_def]
  try dsimp only [colour, result9409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9410_agree : tree9410 = literal9410 := by
  rw [tree9410_def, tree9408_agree, tree9409_agree]
  rfl
theorem node9410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9410 live9410 coloured9410 = result9410 := by
  rw [tree9410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9408_eq
  unfold live9408 coloured9408 at child
  try dsimp only [live9410, coloured9410]
  rw [child]
  dsimp only [result9408]
  have child := node9409_eq
  unfold live9409 coloured9409 at child
  try dsimp only [live9410, coloured9410]
  rw [child]
  dsimp only [result9409]
  try dsimp only [colour, result9410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9411_agree : tree9411 = literal9411 := by
  rw [tree9411_def]
  rfl
theorem node9411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9411 live9411 coloured9411 = result9411 := by
  rw [tree9411_def]
  try dsimp only [colour, result9411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9412_agree : tree9412 = literal9412 := by
  rw [tree9412_def, tree9410_agree, tree9411_agree]
  rfl
theorem node9412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9412 live9412 coloured9412 = result9412 := by
  rw [tree9412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9410_eq
  unfold live9410 coloured9410 at child
  try dsimp only [live9412, coloured9412]
  rw [child]
  dsimp only [result9410]
  have child := node9411_eq
  unfold live9411 coloured9411 at child
  try dsimp only [live9412, coloured9412]
  rw [child]
  dsimp only [result9411]
  try dsimp only [colour, result9412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9413_agree : tree9413 = literal9413 := by
  rw [tree9413_def]
  rfl
theorem node9413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9413 live9413 coloured9413 = result9413 := by
  rw [tree9413_def]
  try dsimp only [colour, result9413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9414_agree : tree9414 = literal9414 := by
  rw [tree9414_def, tree9412_agree, tree9413_agree]
  rfl
theorem node9414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9414 live9414 coloured9414 = result9414 := by
  rw [tree9414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9412_eq
  unfold live9412 coloured9412 at child
  try dsimp only [live9414, coloured9414]
  rw [child]
  dsimp only [result9412]
  have child := node9413_eq
  unfold live9413 coloured9413 at child
  try dsimp only [live9414, coloured9414]
  rw [child]
  dsimp only [result9413]
  try dsimp only [colour, result9414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9415_agree : tree9415 = literal9415 := by
  rw [tree9415_def]
  rfl
theorem node9415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9415 live9415 coloured9415 = result9415 := by
  rw [tree9415_def]
  try dsimp only [colour, result9415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9416_agree : tree9416 = literal9416 := by
  rw [tree9416_def, tree9414_agree, tree9415_agree]
  rfl
theorem node9416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9416 live9416 coloured9416 = result9416 := by
  rw [tree9416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9414_eq
  unfold live9414 coloured9414 at child
  try dsimp only [live9416, coloured9416]
  rw [child]
  dsimp only [result9414]
  have child := node9415_eq
  unfold live9415 coloured9415 at child
  try dsimp only [live9416, coloured9416]
  rw [child]
  dsimp only [result9415]
  try dsimp only [colour, result9416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9417_agree : tree9417 = literal9417 := by
  rw [tree9417_def]
  rfl
theorem node9417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9417 live9417 coloured9417 = result9417 := by
  rw [tree9417_def]
  try dsimp only [colour, result9417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9418_agree : tree9418 = literal9418 := by
  rw [tree9418_def, tree9416_agree, tree9417_agree]
  rfl
theorem node9418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9418 live9418 coloured9418 = result9418 := by
  rw [tree9418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9416_eq
  unfold live9416 coloured9416 at child
  try dsimp only [live9418, coloured9418]
  rw [child]
  dsimp only [result9416]
  have child := node9417_eq
  unfold live9417 coloured9417 at child
  try dsimp only [live9418, coloured9418]
  rw [child]
  dsimp only [result9417]
  try dsimp only [colour, result9418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9419_agree : tree9419 = literal9419 := by
  rw [tree9419_def]
  rfl
theorem node9419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9419 live9419 coloured9419 = result9419 := by
  rw [tree9419_def]
  try dsimp only [colour, result9419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9420_agree : tree9420 = literal9420 := by
  rw [tree9420_def, tree9418_agree, tree9419_agree]
  rfl
theorem node9420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9420 live9420 coloured9420 = result9420 := by
  rw [tree9420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9418_eq
  unfold live9418 coloured9418 at child
  try dsimp only [live9420, coloured9420]
  rw [child]
  dsimp only [result9418]
  have child := node9419_eq
  unfold live9419 coloured9419 at child
  try dsimp only [live9420, coloured9420]
  rw [child]
  dsimp only [result9419]
  try dsimp only [colour, result9420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9421_agree : tree9421 = literal9421 := by
  rw [tree9421_def]
  rfl
theorem node9421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9421 live9421 coloured9421 = result9421 := by
  rw [tree9421_def]
  try dsimp only [colour, result9421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9422_agree : tree9422 = literal9422 := by
  rw [tree9422_def, tree9420_agree, tree9421_agree]
  rfl
theorem node9422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9422 live9422 coloured9422 = result9422 := by
  rw [tree9422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9420_eq
  unfold live9420 coloured9420 at child
  try dsimp only [live9422, coloured9422]
  rw [child]
  dsimp only [result9420]
  have child := node9421_eq
  unfold live9421 coloured9421 at child
  try dsimp only [live9422, coloured9422]
  rw [child]
  dsimp only [result9421]
  try dsimp only [colour, result9422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9423_agree : tree9423 = literal9423 := by
  rw [tree9423_def]
  rfl
theorem node9423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9423 live9423 coloured9423 = result9423 := by
  rw [tree9423_def]
  try dsimp only [colour, result9423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9424_agree : tree9424 = literal9424 := by
  rw [tree9424_def, tree9422_agree, tree9423_agree]
  rfl
theorem node9424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9424 live9424 coloured9424 = result9424 := by
  rw [tree9424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9422_eq
  unfold live9422 coloured9422 at child
  try dsimp only [live9424, coloured9424]
  rw [child]
  dsimp only [result9422]
  have child := node9423_eq
  unfold live9423 coloured9423 at child
  try dsimp only [live9424, coloured9424]
  rw [child]
  dsimp only [result9423]
  try dsimp only [colour, result9424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9425_agree : tree9425 = literal9425 := by
  rw [tree9425_def]
  rfl
theorem node9425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9425 live9425 coloured9425 = result9425 := by
  rw [tree9425_def]
  try dsimp only [colour, result9425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9426_agree : tree9426 = literal9426 := by
  rw [tree9426_def, tree9424_agree, tree9425_agree]
  rfl
theorem node9426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9426 live9426 coloured9426 = result9426 := by
  rw [tree9426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9424_eq
  unfold live9424 coloured9424 at child
  try dsimp only [live9426, coloured9426]
  rw [child]
  dsimp only [result9424]
  have child := node9425_eq
  unfold live9425 coloured9425 at child
  try dsimp only [live9426, coloured9426]
  rw [child]
  dsimp only [result9425]
  try dsimp only [colour, result9426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9427_agree : tree9427 = literal9427 := by
  rw [tree9427_def]
  rfl
theorem node9427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9427 live9427 coloured9427 = result9427 := by
  rw [tree9427_def]
  try dsimp only [colour, result9427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9428_agree : tree9428 = literal9428 := by
  rw [tree9428_def, tree9426_agree, tree9427_agree]
  rfl
theorem node9428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9428 live9428 coloured9428 = result9428 := by
  rw [tree9428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9426_eq
  unfold live9426 coloured9426 at child
  try dsimp only [live9428, coloured9428]
  rw [child]
  dsimp only [result9426]
  have child := node9427_eq
  unfold live9427 coloured9427 at child
  try dsimp only [live9428, coloured9428]
  rw [child]
  dsimp only [result9427]
  try dsimp only [colour, result9428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9429_agree : tree9429 = literal9429 := by
  rw [tree9429_def]
  rfl
theorem node9429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9429 live9429 coloured9429 = result9429 := by
  rw [tree9429_def]
  try dsimp only [colour, result9429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9430_agree : tree9430 = literal9430 := by
  rw [tree9430_def, tree9428_agree, tree9429_agree]
  rfl
theorem node9430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9430 live9430 coloured9430 = result9430 := by
  rw [tree9430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9428_eq
  unfold live9428 coloured9428 at child
  try dsimp only [live9430, coloured9430]
  rw [child]
  dsimp only [result9428]
  have child := node9429_eq
  unfold live9429 coloured9429 at child
  try dsimp only [live9430, coloured9430]
  rw [child]
  dsimp only [result9429]
  try dsimp only [colour, result9430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9431_agree : tree9431 = literal9431 := by
  rw [tree9431_def]
  rfl
theorem node9431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9431 live9431 coloured9431 = result9431 := by
  rw [tree9431_def]
  try dsimp only [colour, result9431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9432_agree : tree9432 = literal9432 := by
  rw [tree9432_def, tree9430_agree, tree9431_agree]
  rfl
theorem node9432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9432 live9432 coloured9432 = result9432 := by
  rw [tree9432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9430_eq
  unfold live9430 coloured9430 at child
  try dsimp only [live9432, coloured9432]
  rw [child]
  dsimp only [result9430]
  have child := node9431_eq
  unfold live9431 coloured9431 at child
  try dsimp only [live9432, coloured9432]
  rw [child]
  dsimp only [result9431]
  try dsimp only [colour, result9432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9433_agree : tree9433 = literal9433 := by
  rw [tree9433_def]
  rfl
theorem node9433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9433 live9433 coloured9433 = result9433 := by
  rw [tree9433_def]
  try dsimp only [colour, result9433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9434_agree : tree9434 = literal9434 := by
  rw [tree9434_def, tree9432_agree, tree9433_agree]
  rfl
theorem node9434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9434 live9434 coloured9434 = result9434 := by
  rw [tree9434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9432_eq
  unfold live9432 coloured9432 at child
  try dsimp only [live9434, coloured9434]
  rw [child]
  dsimp only [result9432]
  have child := node9433_eq
  unfold live9433 coloured9433 at child
  try dsimp only [live9434, coloured9434]
  rw [child]
  dsimp only [result9433]
  try dsimp only [colour, result9434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9435_agree : tree9435 = literal9435 := by
  rw [tree9435_def]
  rfl
theorem node9435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9435 live9435 coloured9435 = result9435 := by
  rw [tree9435_def]
  try dsimp only [colour, result9435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9436_agree : tree9436 = literal9436 := by
  rw [tree9436_def, tree9434_agree, tree9435_agree]
  rfl
theorem node9436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9436 live9436 coloured9436 = result9436 := by
  rw [tree9436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9434_eq
  unfold live9434 coloured9434 at child
  try dsimp only [live9436, coloured9436]
  rw [child]
  dsimp only [result9434]
  have child := node9435_eq
  unfold live9435 coloured9435 at child
  try dsimp only [live9436, coloured9436]
  rw [child]
  dsimp only [result9435]
  try dsimp only [colour, result9436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9437_agree : tree9437 = literal9437 := by
  rw [tree9437_def]
  rfl
theorem node9437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9437 live9437 coloured9437 = result9437 := by
  rw [tree9437_def]
  try dsimp only [colour, result9437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9438_agree : tree9438 = literal9438 := by
  rw [tree9438_def, tree9436_agree, tree9437_agree]
  rfl
theorem node9438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9438 live9438 coloured9438 = result9438 := by
  rw [tree9438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9436_eq
  unfold live9436 coloured9436 at child
  try dsimp only [live9438, coloured9438]
  rw [child]
  dsimp only [result9436]
  have child := node9437_eq
  unfold live9437 coloured9437 at child
  try dsimp only [live9438, coloured9438]
  rw [child]
  dsimp only [result9437]
  try dsimp only [colour, result9438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9439_agree : tree9439 = literal9439 := by
  rw [tree9439_def]
  rfl
theorem node9439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9439 live9439 coloured9439 = result9439 := by
  rw [tree9439_def]
  try dsimp only [colour, result9439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9440_agree : tree9440 = literal9440 := by
  rw [tree9440_def, tree9438_agree, tree9439_agree]
  rfl
theorem node9440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9440 live9440 coloured9440 = result9440 := by
  rw [tree9440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9438_eq
  unfold live9438 coloured9438 at child
  try dsimp only [live9440, coloured9440]
  rw [child]
  dsimp only [result9438]
  have child := node9439_eq
  unfold live9439 coloured9439 at child
  try dsimp only [live9440, coloured9440]
  rw [child]
  dsimp only [result9439]
  try dsimp only [colour, result9440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9441_agree : tree9441 = literal9441 := by
  rw [tree9441_def]
  rfl
theorem node9441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9441 live9441 coloured9441 = result9441 := by
  rw [tree9441_def]
  try dsimp only [colour, result9441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9442_agree : tree9442 = literal9442 := by
  rw [tree9442_def, tree9440_agree, tree9441_agree]
  rfl
theorem node9442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9442 live9442 coloured9442 = result9442 := by
  rw [tree9442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9440_eq
  unfold live9440 coloured9440 at child
  try dsimp only [live9442, coloured9442]
  rw [child]
  dsimp only [result9440]
  have child := node9441_eq
  unfold live9441 coloured9441 at child
  try dsimp only [live9442, coloured9442]
  rw [child]
  dsimp only [result9441]
  try dsimp only [colour, result9442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9443_agree : tree9443 = literal9443 := by
  rw [tree9443_def]
  rfl
theorem node9443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9443 live9443 coloured9443 = result9443 := by
  rw [tree9443_def]
  try dsimp only [colour, result9443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9444_agree : tree9444 = literal9444 := by
  rw [tree9444_def, tree9442_agree, tree9443_agree]
  rfl
theorem node9444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9444 live9444 coloured9444 = result9444 := by
  rw [tree9444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9442_eq
  unfold live9442 coloured9442 at child
  try dsimp only [live9444, coloured9444]
  rw [child]
  dsimp only [result9442]
  have child := node9443_eq
  unfold live9443 coloured9443 at child
  try dsimp only [live9444, coloured9444]
  rw [child]
  dsimp only [result9443]
  try dsimp only [colour, result9444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9445_agree : tree9445 = literal9445 := by
  rw [tree9445_def]
  rfl
theorem node9445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9445 live9445 coloured9445 = result9445 := by
  rw [tree9445_def]
  try dsimp only [colour, result9445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9446_agree : tree9446 = literal9446 := by
  rw [tree9446_def, tree9444_agree, tree9445_agree]
  rfl
theorem node9446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9446 live9446 coloured9446 = result9446 := by
  rw [tree9446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9444_eq
  unfold live9444 coloured9444 at child
  try dsimp only [live9446, coloured9446]
  rw [child]
  dsimp only [result9444]
  have child := node9445_eq
  unfold live9445 coloured9445 at child
  try dsimp only [live9446, coloured9446]
  rw [child]
  dsimp only [result9445]
  try dsimp only [colour, result9446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9447_agree : tree9447 = literal9447 := by
  rw [tree9447_def]
  rfl
theorem node9447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9447 live9447 coloured9447 = result9447 := by
  rw [tree9447_def]
  try dsimp only [colour, result9447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9448_agree : tree9448 = literal9448 := by
  rw [tree9448_def, tree9446_agree, tree9447_agree]
  rfl
theorem node9448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9448 live9448 coloured9448 = result9448 := by
  rw [tree9448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9446_eq
  unfold live9446 coloured9446 at child
  try dsimp only [live9448, coloured9448]
  rw [child]
  dsimp only [result9446]
  have child := node9447_eq
  unfold live9447 coloured9447 at child
  try dsimp only [live9448, coloured9448]
  rw [child]
  dsimp only [result9447]
  try dsimp only [colour, result9448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9449_agree : tree9449 = literal9449 := by
  rw [tree9449_def]
  rfl
theorem node9449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9449 live9449 coloured9449 = result9449 := by
  rw [tree9449_def]
  try dsimp only [colour, result9449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9450_agree : tree9450 = literal9450 := by
  rw [tree9450_def, tree9448_agree, tree9449_agree]
  rfl
theorem node9450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9450 live9450 coloured9450 = result9450 := by
  rw [tree9450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9448_eq
  unfold live9448 coloured9448 at child
  try dsimp only [live9450, coloured9450]
  rw [child]
  dsimp only [result9448]
  have child := node9449_eq
  unfold live9449 coloured9449 at child
  try dsimp only [live9450, coloured9450]
  rw [child]
  dsimp only [result9449]
  try dsimp only [colour, result9450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9451_agree : tree9451 = literal9451 := by
  rw [tree9451_def]
  rfl
theorem node9451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9451 live9451 coloured9451 = result9451 := by
  rw [tree9451_def]
  try dsimp only [colour, result9451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9452_agree : tree9452 = literal9452 := by
  rw [tree9452_def, tree9450_agree, tree9451_agree]
  rfl
theorem node9452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9452 live9452 coloured9452 = result9452 := by
  rw [tree9452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9450_eq
  unfold live9450 coloured9450 at child
  try dsimp only [live9452, coloured9452]
  rw [child]
  dsimp only [result9450]
  have child := node9451_eq
  unfold live9451 coloured9451 at child
  try dsimp only [live9452, coloured9452]
  rw [child]
  dsimp only [result9451]
  try dsimp only [colour, result9452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9453_agree : tree9453 = literal9453 := by
  rw [tree9453_def]
  rfl
theorem node9453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9453 live9453 coloured9453 = result9453 := by
  rw [tree9453_def]
  try dsimp only [colour, result9453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9454_agree : tree9454 = literal9454 := by
  rw [tree9454_def, tree9452_agree, tree9453_agree]
  rfl
theorem node9454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9454 live9454 coloured9454 = result9454 := by
  rw [tree9454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9452_eq
  unfold live9452 coloured9452 at child
  try dsimp only [live9454, coloured9454]
  rw [child]
  dsimp only [result9452]
  have child := node9453_eq
  unfold live9453 coloured9453 at child
  try dsimp only [live9454, coloured9454]
  rw [child]
  dsimp only [result9453]
  try dsimp only [colour, result9454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9455_agree : tree9455 = literal9455 := by
  rw [tree9455_def]
  rfl
theorem node9455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9455 live9455 coloured9455 = result9455 := by
  rw [tree9455_def]
  try dsimp only [colour, result9455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9456_agree : tree9456 = literal9456 := by
  rw [tree9456_def, tree9454_agree, tree9455_agree]
  rfl
theorem node9456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9456 live9456 coloured9456 = result9456 := by
  rw [tree9456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9454_eq
  unfold live9454 coloured9454 at child
  try dsimp only [live9456, coloured9456]
  rw [child]
  dsimp only [result9454]
  have child := node9455_eq
  unfold live9455 coloured9455 at child
  try dsimp only [live9456, coloured9456]
  rw [child]
  dsimp only [result9455]
  try dsimp only [colour, result9456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9457_agree : tree9457 = literal9457 := by
  rw [tree9457_def]
  rfl
theorem node9457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9457 live9457 coloured9457 = result9457 := by
  rw [tree9457_def]
  try dsimp only [colour, result9457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9458_agree : tree9458 = literal9458 := by
  rw [tree9458_def, tree9456_agree, tree9457_agree]
  rfl
theorem node9458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9458 live9458 coloured9458 = result9458 := by
  rw [tree9458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9456_eq
  unfold live9456 coloured9456 at child
  try dsimp only [live9458, coloured9458]
  rw [child]
  dsimp only [result9456]
  have child := node9457_eq
  unfold live9457 coloured9457 at child
  try dsimp only [live9458, coloured9458]
  rw [child]
  dsimp only [result9457]
  try dsimp only [colour, result9458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9459_agree : tree9459 = literal9459 := by
  rw [tree9459_def]
  rfl
theorem node9459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9459 live9459 coloured9459 = result9459 := by
  rw [tree9459_def]
  try dsimp only [colour, result9459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9460_agree : tree9460 = literal9460 := by
  rw [tree9460_def, tree9458_agree, tree9459_agree]
  rfl
theorem node9460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9460 live9460 coloured9460 = result9460 := by
  rw [tree9460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9458_eq
  unfold live9458 coloured9458 at child
  try dsimp only [live9460, coloured9460]
  rw [child]
  dsimp only [result9458]
  have child := node9459_eq
  unfold live9459 coloured9459 at child
  try dsimp only [live9460, coloured9460]
  rw [child]
  dsimp only [result9459]
  try dsimp only [colour, result9460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9461_agree : tree9461 = literal9461 := by
  rw [tree9461_def]
  rfl
theorem node9461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9461 live9461 coloured9461 = result9461 := by
  rw [tree9461_def]
  try dsimp only [colour, result9461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9462_agree : tree9462 = literal9462 := by
  rw [tree9462_def, tree9460_agree, tree9461_agree]
  rfl
theorem node9462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9462 live9462 coloured9462 = result9462 := by
  rw [tree9462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9460_eq
  unfold live9460 coloured9460 at child
  try dsimp only [live9462, coloured9462]
  rw [child]
  dsimp only [result9460]
  have child := node9461_eq
  unfold live9461 coloured9461 at child
  try dsimp only [live9462, coloured9462]
  rw [child]
  dsimp only [result9461]
  try dsimp only [colour, result9462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9463_agree : tree9463 = literal9463 := by
  rw [tree9463_def]
  rfl
theorem node9463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9463 live9463 coloured9463 = result9463 := by
  rw [tree9463_def]
  try dsimp only [colour, result9463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9464_agree : tree9464 = literal9464 := by
  rw [tree9464_def, tree9462_agree, tree9463_agree]
  rfl
theorem node9464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9464 live9464 coloured9464 = result9464 := by
  rw [tree9464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9462_eq
  unfold live9462 coloured9462 at child
  try dsimp only [live9464, coloured9464]
  rw [child]
  dsimp only [result9462]
  have child := node9463_eq
  unfold live9463 coloured9463 at child
  try dsimp only [live9464, coloured9464]
  rw [child]
  dsimp only [result9463]
  try dsimp only [colour, result9464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9465_agree : tree9465 = literal9465 := by
  rw [tree9465_def]
  rfl
theorem node9465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9465 live9465 coloured9465 = result9465 := by
  rw [tree9465_def]
  try dsimp only [colour, result9465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9466_agree : tree9466 = literal9466 := by
  rw [tree9466_def, tree9464_agree, tree9465_agree]
  rfl
theorem node9466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9466 live9466 coloured9466 = result9466 := by
  rw [tree9466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9464_eq
  unfold live9464 coloured9464 at child
  try dsimp only [live9466, coloured9466]
  rw [child]
  dsimp only [result9464]
  have child := node9465_eq
  unfold live9465 coloured9465 at child
  try dsimp only [live9466, coloured9466]
  rw [child]
  dsimp only [result9465]
  try dsimp only [colour, result9466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9467_agree : tree9467 = literal9467 := by
  rw [tree9467_def]
  rfl
theorem node9467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9467 live9467 coloured9467 = result9467 := by
  rw [tree9467_def]
  try dsimp only [colour, result9467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9468_agree : tree9468 = literal9468 := by
  rw [tree9468_def, tree9466_agree, tree9467_agree]
  rfl
theorem node9468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9468 live9468 coloured9468 = result9468 := by
  rw [tree9468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9466_eq
  unfold live9466 coloured9466 at child
  try dsimp only [live9468, coloured9468]
  rw [child]
  dsimp only [result9466]
  have child := node9467_eq
  unfold live9467 coloured9467 at child
  try dsimp only [live9468, coloured9468]
  rw [child]
  dsimp only [result9467]
  try dsimp only [colour, result9468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9469_agree : tree9469 = literal9469 := by
  rw [tree9469_def]
  rfl
theorem node9469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9469 live9469 coloured9469 = result9469 := by
  rw [tree9469_def]
  try dsimp only [colour, result9469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9470_agree : tree9470 = literal9470 := by
  rw [tree9470_def, tree9468_agree, tree9469_agree]
  rfl
theorem node9470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9470 live9470 coloured9470 = result9470 := by
  rw [tree9470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9468_eq
  unfold live9468 coloured9468 at child
  try dsimp only [live9470, coloured9470]
  rw [child]
  dsimp only [result9468]
  have child := node9469_eq
  unfold live9469 coloured9469 at child
  try dsimp only [live9470, coloured9470]
  rw [child]
  dsimp only [result9469]
  try dsimp only [colour, result9470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9471_agree : tree9471 = literal9471 := by
  rw [tree9471_def]
  rfl
theorem node9471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9471 live9471 coloured9471 = result9471 := by
  rw [tree9471_def]
  try dsimp only [colour, result9471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9472_agree : tree9472 = literal9472 := by
  rw [tree9472_def, tree9470_agree, tree9471_agree]
  rfl
theorem node9472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9472 live9472 coloured9472 = result9472 := by
  rw [tree9472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9470_eq
  unfold live9470 coloured9470 at child
  try dsimp only [live9472, coloured9472]
  rw [child]
  dsimp only [result9470]
  have child := node9471_eq
  unfold live9471 coloured9471 at child
  try dsimp only [live9472, coloured9472]
  rw [child]
  dsimp only [result9471]
  try dsimp only [colour, result9472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9473_agree : tree9473 = literal9473 := by
  rw [tree9473_def]
  rfl
theorem node9473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9473 live9473 coloured9473 = result9473 := by
  rw [tree9473_def]
  try dsimp only [colour, result9473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9474_agree : tree9474 = literal9474 := by
  rw [tree9474_def, tree9472_agree, tree9473_agree]
  rfl
theorem node9474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9474 live9474 coloured9474 = result9474 := by
  rw [tree9474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9472_eq
  unfold live9472 coloured9472 at child
  try dsimp only [live9474, coloured9474]
  rw [child]
  dsimp only [result9472]
  have child := node9473_eq
  unfold live9473 coloured9473 at child
  try dsimp only [live9474, coloured9474]
  rw [child]
  dsimp only [result9473]
  try dsimp only [colour, result9474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9475_agree : tree9475 = literal9475 := by
  rw [tree9475_def]
  rfl
theorem node9475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9475 live9475 coloured9475 = result9475 := by
  rw [tree9475_def]
  try dsimp only [colour, result9475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9476_agree : tree9476 = literal9476 := by
  rw [tree9476_def, tree9474_agree, tree9475_agree]
  rfl
theorem node9476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9476 live9476 coloured9476 = result9476 := by
  rw [tree9476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9474_eq
  unfold live9474 coloured9474 at child
  try dsimp only [live9476, coloured9476]
  rw [child]
  dsimp only [result9474]
  have child := node9475_eq
  unfold live9475 coloured9475 at child
  try dsimp only [live9476, coloured9476]
  rw [child]
  dsimp only [result9475]
  try dsimp only [colour, result9476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9477_agree : tree9477 = literal9477 := by
  rw [tree9477_def]
  rfl
theorem node9477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9477 live9477 coloured9477 = result9477 := by
  rw [tree9477_def]
  try dsimp only [colour, result9477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9478_agree : tree9478 = literal9478 := by
  rw [tree9478_def, tree9476_agree, tree9477_agree]
  rfl
theorem node9478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9478 live9478 coloured9478 = result9478 := by
  rw [tree9478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9476_eq
  unfold live9476 coloured9476 at child
  try dsimp only [live9478, coloured9478]
  rw [child]
  dsimp only [result9476]
  have child := node9477_eq
  unfold live9477 coloured9477 at child
  try dsimp only [live9478, coloured9478]
  rw [child]
  dsimp only [result9477]
  try dsimp only [colour, result9478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9479_agree : tree9479 = literal9479 := by
  rw [tree9479_def]
  rfl
theorem node9479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9479 live9479 coloured9479 = result9479 := by
  rw [tree9479_def]
  try dsimp only [colour, result9479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9480_agree : tree9480 = literal9480 := by
  rw [tree9480_def, tree9478_agree, tree9479_agree]
  rfl
theorem node9480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9480 live9480 coloured9480 = result9480 := by
  rw [tree9480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9478_eq
  unfold live9478 coloured9478 at child
  try dsimp only [live9480, coloured9480]
  rw [child]
  dsimp only [result9478]
  have child := node9479_eq
  unfold live9479 coloured9479 at child
  try dsimp only [live9480, coloured9480]
  rw [child]
  dsimp only [result9479]
  try dsimp only [colour, result9480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9481_agree : tree9481 = literal9481 := by
  rw [tree9481_def]
  rfl
theorem node9481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9481 live9481 coloured9481 = result9481 := by
  rw [tree9481_def]
  try dsimp only [colour, result9481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9482_agree : tree9482 = literal9482 := by
  rw [tree9482_def, tree9480_agree, tree9481_agree]
  rfl
theorem node9482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9482 live9482 coloured9482 = result9482 := by
  rw [tree9482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9480_eq
  unfold live9480 coloured9480 at child
  try dsimp only [live9482, coloured9482]
  rw [child]
  dsimp only [result9480]
  have child := node9481_eq
  unfold live9481 coloured9481 at child
  try dsimp only [live9482, coloured9482]
  rw [child]
  dsimp only [result9481]
  try dsimp only [colour, result9482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9483_agree : tree9483 = literal9483 := by
  rw [tree9483_def]
  rfl
theorem node9483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9483 live9483 coloured9483 = result9483 := by
  rw [tree9483_def]
  try dsimp only [colour, result9483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9484_agree : tree9484 = literal9484 := by
  rw [tree9484_def, tree9482_agree, tree9483_agree]
  rfl
theorem node9484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9484 live9484 coloured9484 = result9484 := by
  rw [tree9484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9482_eq
  unfold live9482 coloured9482 at child
  try dsimp only [live9484, coloured9484]
  rw [child]
  dsimp only [result9482]
  have child := node9483_eq
  unfold live9483 coloured9483 at child
  try dsimp only [live9484, coloured9484]
  rw [child]
  dsimp only [result9483]
  try dsimp only [colour, result9484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9485_agree : tree9485 = literal9485 := by
  rw [tree9485_def]
  rfl
theorem node9485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9485 live9485 coloured9485 = result9485 := by
  rw [tree9485_def]
  try dsimp only [colour, result9485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9486_agree : tree9486 = literal9486 := by
  rw [tree9486_def, tree9484_agree, tree9485_agree]
  rfl
theorem node9486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9486 live9486 coloured9486 = result9486 := by
  rw [tree9486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9484_eq
  unfold live9484 coloured9484 at child
  try dsimp only [live9486, coloured9486]
  rw [child]
  dsimp only [result9484]
  have child := node9485_eq
  unfold live9485 coloured9485 at child
  try dsimp only [live9486, coloured9486]
  rw [child]
  dsimp only [result9485]
  try dsimp only [colour, result9486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9487_agree : tree9487 = literal9487 := by
  rw [tree9487_def]
  rfl
theorem node9487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9487 live9487 coloured9487 = result9487 := by
  rw [tree9487_def]
  try dsimp only [colour, result9487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9488_agree : tree9488 = literal9488 := by
  rw [tree9488_def, tree9486_agree, tree9487_agree]
  rfl
theorem node9488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9488 live9488 coloured9488 = result9488 := by
  rw [tree9488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9486_eq
  unfold live9486 coloured9486 at child
  try dsimp only [live9488, coloured9488]
  rw [child]
  dsimp only [result9486]
  have child := node9487_eq
  unfold live9487 coloured9487 at child
  try dsimp only [live9488, coloured9488]
  rw [child]
  dsimp only [result9487]
  try dsimp only [colour, result9488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9489_agree : tree9489 = literal9489 := by
  rw [tree9489_def]
  rfl
theorem node9489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9489 live9489 coloured9489 = result9489 := by
  rw [tree9489_def]
  try dsimp only [colour, result9489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9490_agree : tree9490 = literal9490 := by
  rw [tree9490_def, tree9488_agree, tree9489_agree]
  rfl
theorem node9490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9490 live9490 coloured9490 = result9490 := by
  rw [tree9490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9488_eq
  unfold live9488 coloured9488 at child
  try dsimp only [live9490, coloured9490]
  rw [child]
  dsimp only [result9488]
  have child := node9489_eq
  unfold live9489 coloured9489 at child
  try dsimp only [live9490, coloured9490]
  rw [child]
  dsimp only [result9489]
  try dsimp only [colour, result9490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9491_agree : tree9491 = literal9491 := by
  rw [tree9491_def]
  rfl
theorem node9491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9491 live9491 coloured9491 = result9491 := by
  rw [tree9491_def]
  try dsimp only [colour, result9491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9492_agree : tree9492 = literal9492 := by
  rw [tree9492_def, tree9490_agree, tree9491_agree]
  rfl
theorem node9492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9492 live9492 coloured9492 = result9492 := by
  rw [tree9492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9490_eq
  unfold live9490 coloured9490 at child
  try dsimp only [live9492, coloured9492]
  rw [child]
  dsimp only [result9490]
  have child := node9491_eq
  unfold live9491 coloured9491 at child
  try dsimp only [live9492, coloured9492]
  rw [child]
  dsimp only [result9491]
  try dsimp only [colour, result9492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9493_agree : tree9493 = literal9493 := by
  rw [tree9493_def]
  rfl
theorem node9493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9493 live9493 coloured9493 = result9493 := by
  rw [tree9493_def]
  try dsimp only [colour, result9493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9494_agree : tree9494 = literal9494 := by
  rw [tree9494_def, tree9492_agree, tree9493_agree]
  rfl
theorem node9494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9494 live9494 coloured9494 = result9494 := by
  rw [tree9494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9492_eq
  unfold live9492 coloured9492 at child
  try dsimp only [live9494, coloured9494]
  rw [child]
  dsimp only [result9492]
  have child := node9493_eq
  unfold live9493 coloured9493 at child
  try dsimp only [live9494, coloured9494]
  rw [child]
  dsimp only [result9493]
  try dsimp only [colour, result9494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9495_agree : tree9495 = literal9495 := by
  rw [tree9495_def]
  rfl
theorem node9495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9495 live9495 coloured9495 = result9495 := by
  rw [tree9495_def]
  try dsimp only [colour, result9495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9496_agree : tree9496 = literal9496 := by
  rw [tree9496_def, tree9494_agree, tree9495_agree]
  rfl
theorem node9496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9496 live9496 coloured9496 = result9496 := by
  rw [tree9496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9494_eq
  unfold live9494 coloured9494 at child
  try dsimp only [live9496, coloured9496]
  rw [child]
  dsimp only [result9494]
  have child := node9495_eq
  unfold live9495 coloured9495 at child
  try dsimp only [live9496, coloured9496]
  rw [child]
  dsimp only [result9495]
  try dsimp only [colour, result9496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9497_agree : tree9497 = literal9497 := by
  rw [tree9497_def]
  rfl
theorem node9497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9497 live9497 coloured9497 = result9497 := by
  rw [tree9497_def]
  try dsimp only [colour, result9497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9498_agree : tree9498 = literal9498 := by
  rw [tree9498_def, tree9496_agree, tree9497_agree]
  rfl
theorem node9498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9498 live9498 coloured9498 = result9498 := by
  rw [tree9498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9496_eq
  unfold live9496 coloured9496 at child
  try dsimp only [live9498, coloured9498]
  rw [child]
  dsimp only [result9496]
  have child := node9497_eq
  unfold live9497 coloured9497 at child
  try dsimp only [live9498, coloured9498]
  rw [child]
  dsimp only [result9497]
  try dsimp only [colour, result9498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9499_agree : tree9499 = literal9499 := by
  rw [tree9499_def]
  rfl
theorem node9499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9499 live9499 coloured9499 = result9499 := by
  rw [tree9499_def]
  try dsimp only [colour, result9499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9500_agree : tree9500 = literal9500 := by
  rw [tree9500_def, tree9498_agree, tree9499_agree]
  rfl
theorem node9500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9500 live9500 coloured9500 = result9500 := by
  rw [tree9500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9498_eq
  unfold live9498 coloured9498 at child
  try dsimp only [live9500, coloured9500]
  rw [child]
  dsimp only [result9498]
  have child := node9499_eq
  unfold live9499 coloured9499 at child
  try dsimp only [live9500, coloured9500]
  rw [child]
  dsimp only [result9499]
  try dsimp only [colour, result9500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9501_agree : tree9501 = literal9501 := by
  rw [tree9501_def]
  rfl
theorem node9501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9501 live9501 coloured9501 = result9501 := by
  rw [tree9501_def]
  try dsimp only [colour, result9501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9502_agree : tree9502 = literal9502 := by
  rw [tree9502_def, tree9500_agree, tree9501_agree]
  rfl
theorem node9502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9502 live9502 coloured9502 = result9502 := by
  rw [tree9502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9500_eq
  unfold live9500 coloured9500 at child
  try dsimp only [live9502, coloured9502]
  rw [child]
  dsimp only [result9500]
  have child := node9501_eq
  unfold live9501 coloured9501 at child
  try dsimp only [live9502, coloured9502]
  rw [child]
  dsimp only [result9501]
  try dsimp only [colour, result9502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9503_agree : tree9503 = literal9503 := by
  rw [tree9503_def]
  rfl
theorem node9503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9503 live9503 coloured9503 = result9503 := by
  rw [tree9503_def]
  try dsimp only [colour, result9503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
