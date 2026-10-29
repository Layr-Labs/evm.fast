import InitECandidate.Proofs.ClashStages874.Proof3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages874
theorem tree384_agree : tree384 = literal384 := by
  rw [tree384_def]
  rfl
theorem node384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree384 live384 coloured384 = result384 := by
  rw [tree384_def]
  try dsimp only [colour, result384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree385_agree : tree385 = literal385 := by
  rw [tree385_def]
  rfl
theorem node385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree385 live385 coloured385 = result385 := by
  rw [tree385_def]
  try dsimp only [colour, result385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree386_agree : tree386 = literal386 := by
  rw [tree386_def, tree384_agree, tree385_agree]
  rfl
theorem node386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree386 live386 coloured386 = result386 := by
  rw [tree386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node384_eq
  unfold live384 coloured384 at child
  try dsimp only [live386, coloured386]
  rw [child]
  dsimp only [result384]
  have child := node385_eq
  unfold live385 coloured385 at child
  try dsimp only [live386, coloured386]
  rw [child]
  dsimp only [result385]
  try dsimp only [colour, result386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree387_agree : tree387 = literal387 := by
  rw [tree387_def, tree383_agree, tree386_agree]
  rfl
theorem node387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree387 live387 coloured387 = result387 := by
  rw [tree387_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node383_eq
  unfold live383 coloured383 at child
  try dsimp only [live387, coloured387]
  rw [child]
  dsimp only [result383]
  have child := node386_eq
  unfold live386 coloured386 at child
  try dsimp only [live387, coloured387]
  rw [child]
  dsimp only [result386]
  try dsimp only [colour, result387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree388_agree : tree388 = literal388 := by
  rw [tree388_def]
  rfl
theorem node388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree388 live388 coloured388 = result388 := by
  rw [tree388_def]
  try dsimp only [colour, result388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree389_agree : tree389 = literal389 := by
  rw [tree389_def, tree387_agree, tree388_agree]
  rfl
theorem node389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree389 live389 coloured389 = result389 := by
  rw [tree389_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node387_eq
  unfold live387 coloured387 at child
  try dsimp only [live389, coloured389]
  rw [child]
  dsimp only [result387]
  have child := node388_eq
  unfold live388 coloured388 at child
  try dsimp only [live389, coloured389]
  rw [child]
  dsimp only [result388]
  try dsimp only [colour, result389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree390_agree : tree390 = literal390 := by
  rw [tree390_def, tree352_agree, tree389_agree]
  rfl
theorem node390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree390 live390 coloured390 = result390 := by
  rw [tree390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node352_eq
  unfold live352 coloured352 at child
  try dsimp only [live390, coloured390]
  rw [child]
  dsimp only [result352]
  have child := node389_eq
  unfold live389 coloured389 at child
  try dsimp only [live390, coloured390]
  rw [child]
  dsimp only [result389]
  try dsimp only [colour, result390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree391_agree : tree391 = literal391 := by
  rw [tree391_def]
  rfl
theorem node391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree391 live391 coloured391 = result391 := by
  rw [tree391_def]
  try dsimp only [colour, result391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree392_agree : tree392 = literal392 := by
  rw [tree392_def, tree390_agree, tree391_agree]
  rfl
theorem node392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree392 live392 coloured392 = result392 := by
  rw [tree392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node390_eq
  unfold live390 coloured390 at child
  try dsimp only [live392, coloured392]
  rw [child]
  dsimp only [result390]
  have child := node391_eq
  unfold live391 coloured391 at child
  try dsimp only [live392, coloured392]
  rw [child]
  dsimp only [result391]
  try dsimp only [colour, result392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree393_agree : tree393 = literal393 := by
  rw [tree393_def]
  rfl
theorem node393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree393 live393 coloured393 = result393 := by
  rw [tree393_def]
  try dsimp only [colour, result393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree394_agree : tree394 = literal394 := by
  rw [tree394_def, tree392_agree, tree393_agree]
  rfl
theorem node394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree394 live394 coloured394 = result394 := by
  rw [tree394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node392_eq
  unfold live392 coloured392 at child
  try dsimp only [live394, coloured394]
  rw [child]
  dsimp only [result392]
  have child := node393_eq
  unfold live393 coloured393 at child
  try dsimp only [live394, coloured394]
  rw [child]
  dsimp only [result393]
  try dsimp only [colour, result394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree395_agree : tree395 = literal395 := by
  rw [tree395_def]
  rfl
theorem node395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree395 live395 coloured395 = result395 := by
  rw [tree395_def]
  try dsimp only [colour, result395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree396_agree : tree396 = literal396 := by
  rw [tree396_def, tree394_agree, tree395_agree]
  rfl
theorem node396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree396 live396 coloured396 = result396 := by
  rw [tree396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node394_eq
  unfold live394 coloured394 at child
  try dsimp only [live396, coloured396]
  rw [child]
  dsimp only [result394]
  have child := node395_eq
  unfold live395 coloured395 at child
  try dsimp only [live396, coloured396]
  rw [child]
  dsimp only [result395]
  try dsimp only [colour, result396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree397_agree : tree397 = literal397 := by
  rw [tree397_def]
  rfl
theorem node397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree397 live397 coloured397 = result397 := by
  rw [tree397_def]
  try dsimp only [colour, result397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree398_agree : tree398 = literal398 := by
  rw [tree398_def]
  rfl
theorem node398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree398 live398 coloured398 = result398 := by
  rw [tree398_def]
  try dsimp only [colour, result398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree399_agree : tree399 = literal399 := by
  rw [tree399_def, tree397_agree, tree398_agree]
  rfl
theorem node399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree399 live399 coloured399 = result399 := by
  rw [tree399_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node397_eq
  unfold live397 coloured397 at child
  try dsimp only [live399, coloured399]
  rw [child]
  dsimp only [result397]
  have child := node398_eq
  unfold live398 coloured398 at child
  try dsimp only [live399, coloured399]
  rw [child]
  dsimp only [result398]
  try dsimp only [colour, result399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree400_agree : tree400 = literal400 := by
  rw [tree400_def]
  rfl
theorem node400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree400 live400 coloured400 = result400 := by
  rw [tree400_def]
  try dsimp only [colour, result400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree401_agree : tree401 = literal401 := by
  rw [tree401_def]
  rfl
theorem node401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree401 live401 coloured401 = result401 := by
  rw [tree401_def]
  try dsimp only [colour, result401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree402_agree : tree402 = literal402 := by
  rw [tree402_def, tree400_agree, tree401_agree]
  rfl
theorem node402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree402 live402 coloured402 = result402 := by
  rw [tree402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node400_eq
  unfold live400 coloured400 at child
  try dsimp only [live402, coloured402]
  rw [child]
  dsimp only [result400]
  have child := node401_eq
  unfold live401 coloured401 at child
  try dsimp only [live402, coloured402]
  rw [child]
  dsimp only [result401]
  try dsimp only [colour, result402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree403_agree : tree403 = literal403 := by
  rw [tree403_def]
  rfl
theorem node403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree403 live403 coloured403 = result403 := by
  rw [tree403_def]
  try dsimp only [colour, result403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree404_agree : tree404 = literal404 := by
  rw [tree404_def, tree402_agree, tree403_agree]
  rfl
theorem node404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree404 live404 coloured404 = result404 := by
  rw [tree404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node402_eq
  unfold live402 coloured402 at child
  try dsimp only [live404, coloured404]
  rw [child]
  dsimp only [result402]
  have child := node403_eq
  unfold live403 coloured403 at child
  try dsimp only [live404, coloured404]
  rw [child]
  dsimp only [result403]
  try dsimp only [colour, result404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree405_agree : tree405 = literal405 := by
  rw [tree405_def]
  rfl
theorem node405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree405 live405 coloured405 = result405 := by
  rw [tree405_def]
  try dsimp only [colour, result405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree406_agree : tree406 = literal406 := by
  rw [tree406_def]
  rfl
theorem node406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree406 live406 coloured406 = result406 := by
  rw [tree406_def]
  try dsimp only [colour, result406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree407_agree : tree407 = literal407 := by
  rw [tree407_def, tree405_agree, tree406_agree]
  rfl
theorem node407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree407 live407 coloured407 = result407 := by
  rw [tree407_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node405_eq
  unfold live405 coloured405 at child
  try dsimp only [live407, coloured407]
  rw [child]
  dsimp only [result405]
  have child := node406_eq
  unfold live406 coloured406 at child
  try dsimp only [live407, coloured407]
  rw [child]
  dsimp only [result406]
  try dsimp only [colour, result407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree408_agree : tree408 = literal408 := by
  rw [tree408_def, tree404_agree, tree407_agree]
  rfl
theorem node408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree408 live408 coloured408 = result408 := by
  rw [tree408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node404_eq
  unfold live404 coloured404 at child
  try dsimp only [live408, coloured408]
  rw [child]
  dsimp only [result404]
  have child := node407_eq
  unfold live407 coloured407 at child
  try dsimp only [live408, coloured408]
  rw [child]
  dsimp only [result407]
  try dsimp only [colour, result408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree409_agree : tree409 = literal409 := by
  rw [tree409_def]
  rfl
theorem node409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree409 live409 coloured409 = result409 := by
  rw [tree409_def]
  try dsimp only [colour, result409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree410_agree : tree410 = literal410 := by
  rw [tree410_def, tree408_agree, tree409_agree]
  rfl
theorem node410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree410 live410 coloured410 = result410 := by
  rw [tree410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node408_eq
  unfold live408 coloured408 at child
  try dsimp only [live410, coloured410]
  rw [child]
  dsimp only [result408]
  have child := node409_eq
  unfold live409 coloured409 at child
  try dsimp only [live410, coloured410]
  rw [child]
  dsimp only [result409]
  try dsimp only [colour, result410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree411_agree : tree411 = literal411 := by
  rw [tree411_def, tree399_agree, tree410_agree]
  rfl
theorem node411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree411 live411 coloured411 = result411 := by
  rw [tree411_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node399_eq
  unfold live399 coloured399 at child
  try dsimp only [live411, coloured411]
  rw [child]
  dsimp only [result399]
  have child := node410_eq
  unfold live410 coloured410 at child
  try dsimp only [live411, coloured411]
  rw [child]
  dsimp only [result410]
  try dsimp only [colour, result411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree412_agree : tree412 = literal412 := by
  rw [tree412_def]
  rfl
theorem node412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree412 live412 coloured412 = result412 := by
  rw [tree412_def]
  try dsimp only [colour, result412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree413_agree : tree413 = literal413 := by
  rw [tree413_def, tree411_agree, tree412_agree]
  rfl
theorem node413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree413 live413 coloured413 = result413 := by
  rw [tree413_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node411_eq
  unfold live411 coloured411 at child
  try dsimp only [live413, coloured413]
  rw [child]
  dsimp only [result411]
  have child := node412_eq
  unfold live412 coloured412 at child
  try dsimp only [live413, coloured413]
  rw [child]
  dsimp only [result412]
  try dsimp only [colour, result413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree414_agree : tree414 = literal414 := by
  rw [tree414_def]
  rfl
theorem node414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree414 live414 coloured414 = result414 := by
  rw [tree414_def]
  try dsimp only [colour, result414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree415_agree : tree415 = literal415 := by
  rw [tree415_def, tree413_agree, tree414_agree]
  rfl
theorem node415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree415 live415 coloured415 = result415 := by
  rw [tree415_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node413_eq
  unfold live413 coloured413 at child
  try dsimp only [live415, coloured415]
  rw [child]
  dsimp only [result413]
  have child := node414_eq
  unfold live414 coloured414 at child
  try dsimp only [live415, coloured415]
  rw [child]
  dsimp only [result414]
  try dsimp only [colour, result415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree416_agree : tree416 = literal416 := by
  rw [tree416_def]
  rfl
theorem node416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree416 live416 coloured416 = result416 := by
  rw [tree416_def]
  try dsimp only [colour, result416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree417_agree : tree417 = literal417 := by
  rw [tree417_def, tree415_agree, tree416_agree]
  rfl
theorem node417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree417 live417 coloured417 = result417 := by
  rw [tree417_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node415_eq
  unfold live415 coloured415 at child
  try dsimp only [live417, coloured417]
  rw [child]
  dsimp only [result415]
  have child := node416_eq
  unfold live416 coloured416 at child
  try dsimp only [live417, coloured417]
  rw [child]
  dsimp only [result416]
  try dsimp only [colour, result417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree418_agree : tree418 = literal418 := by
  rw [tree418_def]
  rfl
theorem node418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree418 live418 coloured418 = result418 := by
  rw [tree418_def]
  try dsimp only [colour, result418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree419_agree : tree419 = literal419 := by
  rw [tree419_def]
  rfl
theorem node419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree419 live419 coloured419 = result419 := by
  rw [tree419_def]
  try dsimp only [colour, result419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree420_agree : tree420 = literal420 := by
  rw [tree420_def, tree418_agree, tree419_agree]
  rfl
theorem node420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree420 live420 coloured420 = result420 := by
  rw [tree420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node418_eq
  unfold live418 coloured418 at child
  try dsimp only [live420, coloured420]
  rw [child]
  dsimp only [result418]
  have child := node419_eq
  unfold live419 coloured419 at child
  try dsimp only [live420, coloured420]
  rw [child]
  dsimp only [result419]
  try dsimp only [colour, result420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree421_agree : tree421 = literal421 := by
  rw [tree421_def]
  rfl
theorem node421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree421 live421 coloured421 = result421 := by
  rw [tree421_def]
  try dsimp only [colour, result421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree422_agree : tree422 = literal422 := by
  rw [tree422_def]
  rfl
theorem node422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree422 live422 coloured422 = result422 := by
  rw [tree422_def]
  try dsimp only [colour, result422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree423_agree : tree423 = literal423 := by
  rw [tree423_def, tree421_agree, tree422_agree]
  rfl
theorem node423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree423 live423 coloured423 = result423 := by
  rw [tree423_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node421_eq
  unfold live421 coloured421 at child
  try dsimp only [live423, coloured423]
  rw [child]
  dsimp only [result421]
  have child := node422_eq
  unfold live422 coloured422 at child
  try dsimp only [live423, coloured423]
  rw [child]
  dsimp only [result422]
  try dsimp only [colour, result423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree424_agree : tree424 = literal424 := by
  rw [tree424_def]
  rfl
theorem node424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree424 live424 coloured424 = result424 := by
  rw [tree424_def]
  try dsimp only [colour, result424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree425_agree : tree425 = literal425 := by
  rw [tree425_def, tree423_agree, tree424_agree]
  rfl
theorem node425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree425 live425 coloured425 = result425 := by
  rw [tree425_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node423_eq
  unfold live423 coloured423 at child
  try dsimp only [live425, coloured425]
  rw [child]
  dsimp only [result423]
  have child := node424_eq
  unfold live424 coloured424 at child
  try dsimp only [live425, coloured425]
  rw [child]
  dsimp only [result424]
  try dsimp only [colour, result425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree426_agree : tree426 = literal426 := by
  rw [tree426_def, tree420_agree, tree425_agree]
  rfl
theorem node426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree426 live426 coloured426 = result426 := by
  rw [tree426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node420_eq
  unfold live420 coloured420 at child
  try dsimp only [live426, coloured426]
  rw [child]
  dsimp only [result420]
  have child := node425_eq
  unfold live425 coloured425 at child
  try dsimp only [live426, coloured426]
  rw [child]
  dsimp only [result425]
  try dsimp only [colour, result426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree427_agree : tree427 = literal427 := by
  rw [tree427_def, tree417_agree, tree426_agree]
  rfl
theorem node427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree427 live427 coloured427 = result427 := by
  rw [tree427_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node417_eq
  unfold live417 coloured417 at child
  try dsimp only [live427, coloured427]
  rw [child]
  dsimp only [result417]
  have child := node426_eq
  unfold live426 coloured426 at child
  try dsimp only [live427, coloured427]
  rw [child]
  dsimp only [result426]
  try dsimp only [colour, result427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree428_agree : tree428 = literal428 := by
  rw [tree428_def]
  rfl
theorem node428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree428 live428 coloured428 = result428 := by
  rw [tree428_def]
  try dsimp only [colour, result428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree429_agree : tree429 = literal429 := by
  rw [tree429_def, tree427_agree, tree428_agree]
  rfl
theorem node429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree429 live429 coloured429 = result429 := by
  rw [tree429_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node427_eq
  unfold live427 coloured427 at child
  try dsimp only [live429, coloured429]
  rw [child]
  dsimp only [result427]
  have child := node428_eq
  unfold live428 coloured428 at child
  try dsimp only [live429, coloured429]
  rw [child]
  dsimp only [result428]
  try dsimp only [colour, result429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree430_agree : tree430 = literal430 := by
  rw [tree430_def]
  rfl
theorem node430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree430 live430 coloured430 = result430 := by
  rw [tree430_def]
  try dsimp only [colour, result430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree431_agree : tree431 = literal431 := by
  rw [tree431_def, tree429_agree, tree430_agree]
  rfl
theorem node431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree431 live431 coloured431 = result431 := by
  rw [tree431_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node429_eq
  unfold live429 coloured429 at child
  try dsimp only [live431, coloured431]
  rw [child]
  dsimp only [result429]
  have child := node430_eq
  unfold live430 coloured430 at child
  try dsimp only [live431, coloured431]
  rw [child]
  dsimp only [result430]
  try dsimp only [colour, result431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree432_agree : tree432 = literal432 := by
  rw [tree432_def]
  rfl
theorem node432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree432 live432 coloured432 = result432 := by
  rw [tree432_def]
  try dsimp only [colour, result432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree433_agree : tree433 = literal433 := by
  rw [tree433_def]
  rfl
theorem node433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree433 live433 coloured433 = result433 := by
  rw [tree433_def]
  try dsimp only [colour, result433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree434_agree : tree434 = literal434 := by
  rw [tree434_def, tree432_agree, tree433_agree]
  rfl
theorem node434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree434 live434 coloured434 = result434 := by
  rw [tree434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node432_eq
  unfold live432 coloured432 at child
  try dsimp only [live434, coloured434]
  rw [child]
  dsimp only [result432]
  have child := node433_eq
  unfold live433 coloured433 at child
  try dsimp only [live434, coloured434]
  rw [child]
  dsimp only [result433]
  try dsimp only [colour, result434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree435_agree : tree435 = literal435 := by
  rw [tree435_def]
  rfl
theorem node435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree435 live435 coloured435 = result435 := by
  rw [tree435_def]
  try dsimp only [colour, result435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree436_agree : tree436 = literal436 := by
  rw [tree436_def, tree434_agree, tree435_agree]
  rfl
theorem node436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree436 live436 coloured436 = result436 := by
  rw [tree436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node434_eq
  unfold live434 coloured434 at child
  try dsimp only [live436, coloured436]
  rw [child]
  dsimp only [result434]
  have child := node435_eq
  unfold live435 coloured435 at child
  try dsimp only [live436, coloured436]
  rw [child]
  dsimp only [result435]
  try dsimp only [colour, result436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree437_agree : tree437 = literal437 := by
  rw [tree437_def]
  rfl
theorem node437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree437 live437 coloured437 = result437 := by
  rw [tree437_def]
  try dsimp only [colour, result437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree438_agree : tree438 = literal438 := by
  rw [tree438_def]
  rfl
theorem node438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree438 live438 coloured438 = result438 := by
  rw [tree438_def]
  try dsimp only [colour, result438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree439_agree : tree439 = literal439 := by
  rw [tree439_def, tree437_agree, tree438_agree]
  rfl
theorem node439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree439 live439 coloured439 = result439 := by
  rw [tree439_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node437_eq
  unfold live437 coloured437 at child
  try dsimp only [live439, coloured439]
  rw [child]
  dsimp only [result437]
  have child := node438_eq
  unfold live438 coloured438 at child
  try dsimp only [live439, coloured439]
  rw [child]
  dsimp only [result438]
  try dsimp only [colour, result439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree440_agree : tree440 = literal440 := by
  rw [tree440_def, tree436_agree, tree439_agree]
  rfl
theorem node440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree440 live440 coloured440 = result440 := by
  rw [tree440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node436_eq
  unfold live436 coloured436 at child
  try dsimp only [live440, coloured440]
  rw [child]
  dsimp only [result436]
  have child := node439_eq
  unfold live439 coloured439 at child
  try dsimp only [live440, coloured440]
  rw [child]
  dsimp only [result439]
  try dsimp only [colour, result440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree441_agree : tree441 = literal441 := by
  rw [tree441_def]
  rfl
theorem node441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree441 live441 coloured441 = result441 := by
  rw [tree441_def]
  try dsimp only [colour, result441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree442_agree : tree442 = literal442 := by
  rw [tree442_def, tree440_agree, tree441_agree]
  rfl
theorem node442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree442 live442 coloured442 = result442 := by
  rw [tree442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node440_eq
  unfold live440 coloured440 at child
  try dsimp only [live442, coloured442]
  rw [child]
  dsimp only [result440]
  have child := node441_eq
  unfold live441 coloured441 at child
  try dsimp only [live442, coloured442]
  rw [child]
  dsimp only [result441]
  try dsimp only [colour, result442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree443_agree : tree443 = literal443 := by
  rw [tree443_def, tree431_agree, tree442_agree]
  rfl
theorem node443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree443 live443 coloured443 = result443 := by
  rw [tree443_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node431_eq
  unfold live431 coloured431 at child
  try dsimp only [live443, coloured443]
  rw [child]
  dsimp only [result431]
  have child := node442_eq
  unfold live442 coloured442 at child
  try dsimp only [live443, coloured443]
  rw [child]
  dsimp only [result442]
  try dsimp only [colour, result443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree444_agree : tree444 = literal444 := by
  rw [tree444_def]
  rfl
theorem node444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree444 live444 coloured444 = result444 := by
  rw [tree444_def]
  try dsimp only [colour, result444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree445_agree : tree445 = literal445 := by
  rw [tree445_def, tree443_agree, tree444_agree]
  rfl
theorem node445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree445 live445 coloured445 = result445 := by
  rw [tree445_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node443_eq
  unfold live443 coloured443 at child
  try dsimp only [live445, coloured445]
  rw [child]
  dsimp only [result443]
  have child := node444_eq
  unfold live444 coloured444 at child
  try dsimp only [live445, coloured445]
  rw [child]
  dsimp only [result444]
  try dsimp only [colour, result445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree446_agree : tree446 = literal446 := by
  rw [tree446_def]
  rfl
theorem node446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree446 live446 coloured446 = result446 := by
  rw [tree446_def]
  try dsimp only [colour, result446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree447_agree : tree447 = literal447 := by
  rw [tree447_def, tree445_agree, tree446_agree]
  rfl
theorem node447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree447 live447 coloured447 = result447 := by
  rw [tree447_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node445_eq
  unfold live445 coloured445 at child
  try dsimp only [live447, coloured447]
  rw [child]
  dsimp only [result445]
  have child := node446_eq
  unfold live446 coloured446 at child
  try dsimp only [live447, coloured447]
  rw [child]
  dsimp only [result446]
  try dsimp only [colour, result447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree448_agree : tree448 = literal448 := by
  rw [tree448_def]
  rfl
theorem node448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree448 live448 coloured448 = result448 := by
  rw [tree448_def]
  try dsimp only [colour, result448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree449_agree : tree449 = literal449 := by
  rw [tree449_def, tree447_agree, tree448_agree]
  rfl
theorem node449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree449 live449 coloured449 = result449 := by
  rw [tree449_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node447_eq
  unfold live447 coloured447 at child
  try dsimp only [live449, coloured449]
  rw [child]
  dsimp only [result447]
  have child := node448_eq
  unfold live448 coloured448 at child
  try dsimp only [live449, coloured449]
  rw [child]
  dsimp only [result448]
  try dsimp only [colour, result449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree450_agree : tree450 = literal450 := by
  rw [tree450_def]
  rfl
theorem node450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree450 live450 coloured450 = result450 := by
  rw [tree450_def]
  try dsimp only [colour, result450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree451_agree : tree451 = literal451 := by
  rw [tree451_def]
  rfl
theorem node451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree451 live451 coloured451 = result451 := by
  rw [tree451_def]
  try dsimp only [colour, result451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree452_agree : tree452 = literal452 := by
  rw [tree452_def, tree450_agree, tree451_agree]
  rfl
theorem node452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree452 live452 coloured452 = result452 := by
  rw [tree452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node450_eq
  unfold live450 coloured450 at child
  try dsimp only [live452, coloured452]
  rw [child]
  dsimp only [result450]
  have child := node451_eq
  unfold live451 coloured451 at child
  try dsimp only [live452, coloured452]
  rw [child]
  dsimp only [result451]
  try dsimp only [colour, result452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree453_agree : tree453 = literal453 := by
  rw [tree453_def]
  rfl
theorem node453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree453 live453 coloured453 = result453 := by
  rw [tree453_def]
  try dsimp only [colour, result453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree454_agree : tree454 = literal454 := by
  rw [tree454_def]
  rfl
theorem node454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree454 live454 coloured454 = result454 := by
  rw [tree454_def]
  try dsimp only [colour, result454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree455_agree : tree455 = literal455 := by
  rw [tree455_def, tree453_agree, tree454_agree]
  rfl
theorem node455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree455 live455 coloured455 = result455 := by
  rw [tree455_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node453_eq
  unfold live453 coloured453 at child
  try dsimp only [live455, coloured455]
  rw [child]
  dsimp only [result453]
  have child := node454_eq
  unfold live454 coloured454 at child
  try dsimp only [live455, coloured455]
  rw [child]
  dsimp only [result454]
  try dsimp only [colour, result455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree456_agree : tree456 = literal456 := by
  rw [tree456_def]
  rfl
theorem node456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree456 live456 coloured456 = result456 := by
  rw [tree456_def]
  try dsimp only [colour, result456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree457_agree : tree457 = literal457 := by
  rw [tree457_def, tree455_agree, tree456_agree]
  rfl
theorem node457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree457 live457 coloured457 = result457 := by
  rw [tree457_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node455_eq
  unfold live455 coloured455 at child
  try dsimp only [live457, coloured457]
  rw [child]
  dsimp only [result455]
  have child := node456_eq
  unfold live456 coloured456 at child
  try dsimp only [live457, coloured457]
  rw [child]
  dsimp only [result456]
  try dsimp only [colour, result457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree458_agree : tree458 = literal458 := by
  rw [tree458_def, tree452_agree, tree457_agree]
  rfl
theorem node458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree458 live458 coloured458 = result458 := by
  rw [tree458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node452_eq
  unfold live452 coloured452 at child
  try dsimp only [live458, coloured458]
  rw [child]
  dsimp only [result452]
  have child := node457_eq
  unfold live457 coloured457 at child
  try dsimp only [live458, coloured458]
  rw [child]
  dsimp only [result457]
  try dsimp only [colour, result458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree459_agree : tree459 = literal459 := by
  rw [tree459_def, tree449_agree, tree458_agree]
  rfl
theorem node459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree459 live459 coloured459 = result459 := by
  rw [tree459_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node449_eq
  unfold live449 coloured449 at child
  try dsimp only [live459, coloured459]
  rw [child]
  dsimp only [result449]
  have child := node458_eq
  unfold live458 coloured458 at child
  try dsimp only [live459, coloured459]
  rw [child]
  dsimp only [result458]
  try dsimp only [colour, result459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree460_agree : tree460 = literal460 := by
  rw [tree460_def]
  rfl
theorem node460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree460 live460 coloured460 = result460 := by
  rw [tree460_def]
  try dsimp only [colour, result460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree461_agree : tree461 = literal461 := by
  rw [tree461_def, tree459_agree, tree460_agree]
  rfl
theorem node461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree461 live461 coloured461 = result461 := by
  rw [tree461_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node459_eq
  unfold live459 coloured459 at child
  try dsimp only [live461, coloured461]
  rw [child]
  dsimp only [result459]
  have child := node460_eq
  unfold live460 coloured460 at child
  try dsimp only [live461, coloured461]
  rw [child]
  dsimp only [result460]
  try dsimp only [colour, result461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree462_agree : tree462 = literal462 := by
  rw [tree462_def]
  rfl
theorem node462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree462 live462 coloured462 = result462 := by
  rw [tree462_def]
  try dsimp only [colour, result462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree463_agree : tree463 = literal463 := by
  rw [tree463_def, tree461_agree, tree462_agree]
  rfl
theorem node463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree463 live463 coloured463 = result463 := by
  rw [tree463_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node461_eq
  unfold live461 coloured461 at child
  try dsimp only [live463, coloured463]
  rw [child]
  dsimp only [result461]
  have child := node462_eq
  unfold live462 coloured462 at child
  try dsimp only [live463, coloured463]
  rw [child]
  dsimp only [result462]
  try dsimp only [colour, result463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree464_agree : tree464 = literal464 := by
  rw [tree464_def]
  rfl
theorem node464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree464 live464 coloured464 = result464 := by
  rw [tree464_def]
  try dsimp only [colour, result464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree465_agree : tree465 = literal465 := by
  rw [tree465_def, tree463_agree, tree464_agree]
  rfl
theorem node465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree465 live465 coloured465 = result465 := by
  rw [tree465_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node463_eq
  unfold live463 coloured463 at child
  try dsimp only [live465, coloured465]
  rw [child]
  dsimp only [result463]
  have child := node464_eq
  unfold live464 coloured464 at child
  try dsimp only [live465, coloured465]
  rw [child]
  dsimp only [result464]
  try dsimp only [colour, result465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree466_agree : tree466 = literal466 := by
  rw [tree466_def]
  rfl
theorem node466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree466 live466 coloured466 = result466 := by
  rw [tree466_def]
  try dsimp only [colour, result466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree467_agree : tree467 = literal467 := by
  rw [tree467_def]
  rfl
theorem node467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree467 live467 coloured467 = result467 := by
  rw [tree467_def]
  try dsimp only [colour, result467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree468_agree : tree468 = literal468 := by
  rw [tree468_def, tree466_agree, tree467_agree]
  rfl
theorem node468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree468 live468 coloured468 = result468 := by
  rw [tree468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node466_eq
  unfold live466 coloured466 at child
  try dsimp only [live468, coloured468]
  rw [child]
  dsimp only [result466]
  have child := node467_eq
  unfold live467 coloured467 at child
  try dsimp only [live468, coloured468]
  rw [child]
  dsimp only [result467]
  try dsimp only [colour, result468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree469_agree : tree469 = literal469 := by
  rw [tree469_def]
  rfl
theorem node469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree469 live469 coloured469 = result469 := by
  rw [tree469_def]
  try dsimp only [colour, result469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree470_agree : tree470 = literal470 := by
  rw [tree470_def, tree468_agree, tree469_agree]
  rfl
theorem node470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree470 live470 coloured470 = result470 := by
  rw [tree470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node468_eq
  unfold live468 coloured468 at child
  try dsimp only [live470, coloured470]
  rw [child]
  dsimp only [result468]
  have child := node469_eq
  unfold live469 coloured469 at child
  try dsimp only [live470, coloured470]
  rw [child]
  dsimp only [result469]
  try dsimp only [colour, result470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree471_agree : tree471 = literal471 := by
  rw [tree471_def]
  rfl
theorem node471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree471 live471 coloured471 = result471 := by
  rw [tree471_def]
  try dsimp only [colour, result471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree472_agree : tree472 = literal472 := by
  rw [tree472_def, tree470_agree, tree471_agree]
  rfl
theorem node472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree472 live472 coloured472 = result472 := by
  rw [tree472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node470_eq
  unfold live470 coloured470 at child
  try dsimp only [live472, coloured472]
  rw [child]
  dsimp only [result470]
  have child := node471_eq
  unfold live471 coloured471 at child
  try dsimp only [live472, coloured472]
  rw [child]
  dsimp only [result471]
  try dsimp only [colour, result472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree473_agree : tree473 = literal473 := by
  rw [tree473_def]
  rfl
theorem node473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree473 live473 coloured473 = result473 := by
  rw [tree473_def]
  try dsimp only [colour, result473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree474_agree : tree474 = literal474 := by
  rw [tree474_def, tree472_agree, tree473_agree]
  rfl
theorem node474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree474 live474 coloured474 = result474 := by
  rw [tree474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node472_eq
  unfold live472 coloured472 at child
  try dsimp only [live474, coloured474]
  rw [child]
  dsimp only [result472]
  have child := node473_eq
  unfold live473 coloured473 at child
  try dsimp only [live474, coloured474]
  rw [child]
  dsimp only [result473]
  try dsimp only [colour, result474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree475_agree : tree475 = literal475 := by
  rw [tree475_def]
  rfl
theorem node475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree475 live475 coloured475 = result475 := by
  rw [tree475_def]
  try dsimp only [colour, result475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree476_agree : tree476 = literal476 := by
  rw [tree476_def, tree474_agree, tree475_agree]
  rfl
theorem node476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree476 live476 coloured476 = result476 := by
  rw [tree476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node474_eq
  unfold live474 coloured474 at child
  try dsimp only [live476, coloured476]
  rw [child]
  dsimp only [result474]
  have child := node475_eq
  unfold live475 coloured475 at child
  try dsimp only [live476, coloured476]
  rw [child]
  dsimp only [result475]
  try dsimp only [colour, result476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree477_agree : tree477 = literal477 := by
  rw [tree477_def]
  rfl
theorem node477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree477 live477 coloured477 = result477 := by
  rw [tree477_def]
  try dsimp only [colour, result477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree478_agree : tree478 = literal478 := by
  rw [tree478_def, tree476_agree, tree477_agree]
  rfl
theorem node478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree478 live478 coloured478 = result478 := by
  rw [tree478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node476_eq
  unfold live476 coloured476 at child
  try dsimp only [live478, coloured478]
  rw [child]
  dsimp only [result476]
  have child := node477_eq
  unfold live477 coloured477 at child
  try dsimp only [live478, coloured478]
  rw [child]
  dsimp only [result477]
  try dsimp only [colour, result478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree479_agree : tree479 = literal479 := by
  rw [tree479_def]
  rfl
theorem node479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree479 live479 coloured479 = result479 := by
  rw [tree479_def]
  try dsimp only [colour, result479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages874
