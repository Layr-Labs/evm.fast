import InitECandidate.Proofs.ClashStages713.Proof14
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree1440_agree : tree1440 = literal1440 := by
  rw [tree1440_def, tree1438_agree, tree1439_agree]
  rfl
theorem node1440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1440 live1440 coloured1440 = result1440 := by
  rw [tree1440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1438_eq
  unfold live1438 coloured1438 at child
  try dsimp only [live1440, coloured1440]
  rw [child]
  dsimp only [result1438]
  have child := node1439_eq
  unfold live1439 coloured1439 at child
  try dsimp only [live1440, coloured1440]
  rw [child]
  dsimp only [result1439]
  try dsimp only [colour, result1440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1441_agree : tree1441 = literal1441 := by
  rw [tree1441_def]
  rfl
theorem node1441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1441 live1441 coloured1441 = result1441 := by
  rw [tree1441_def]
  try dsimp only [colour, result1441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1442_agree : tree1442 = literal1442 := by
  rw [tree1442_def, tree1440_agree, tree1441_agree]
  rfl
theorem node1442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1442 live1442 coloured1442 = result1442 := by
  rw [tree1442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1440_eq
  unfold live1440 coloured1440 at child
  try dsimp only [live1442, coloured1442]
  rw [child]
  dsimp only [result1440]
  have child := node1441_eq
  unfold live1441 coloured1441 at child
  try dsimp only [live1442, coloured1442]
  rw [child]
  dsimp only [result1441]
  try dsimp only [colour, result1442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1443_agree : tree1443 = literal1443 := by
  rw [tree1443_def]
  rfl
theorem node1443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1443 live1443 coloured1443 = result1443 := by
  rw [tree1443_def]
  try dsimp only [colour, result1443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1444_agree : tree1444 = literal1444 := by
  rw [tree1444_def, tree1442_agree, tree1443_agree]
  rfl
theorem node1444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1444 live1444 coloured1444 = result1444 := by
  rw [tree1444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1442_eq
  unfold live1442 coloured1442 at child
  try dsimp only [live1444, coloured1444]
  rw [child]
  dsimp only [result1442]
  have child := node1443_eq
  unfold live1443 coloured1443 at child
  try dsimp only [live1444, coloured1444]
  rw [child]
  dsimp only [result1443]
  try dsimp only [colour, result1444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1445_agree : tree1445 = literal1445 := by
  rw [tree1445_def]
  rfl
theorem node1445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1445 live1445 coloured1445 = result1445 := by
  rw [tree1445_def]
  try dsimp only [colour, result1445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1446_agree : tree1446 = literal1446 := by
  rw [tree1446_def, tree1444_agree, tree1445_agree]
  rfl
theorem node1446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1446 live1446 coloured1446 = result1446 := by
  rw [tree1446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1444_eq
  unfold live1444 coloured1444 at child
  try dsimp only [live1446, coloured1446]
  rw [child]
  dsimp only [result1444]
  have child := node1445_eq
  unfold live1445 coloured1445 at child
  try dsimp only [live1446, coloured1446]
  rw [child]
  dsimp only [result1445]
  try dsimp only [colour, result1446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1447_agree : tree1447 = literal1447 := by
  rw [tree1447_def]
  rfl
theorem node1447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1447 live1447 coloured1447 = result1447 := by
  rw [tree1447_def]
  try dsimp only [colour, result1447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1448_agree : tree1448 = literal1448 := by
  rw [tree1448_def, tree1446_agree, tree1447_agree]
  rfl
theorem node1448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1448 live1448 coloured1448 = result1448 := by
  rw [tree1448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1446_eq
  unfold live1446 coloured1446 at child
  try dsimp only [live1448, coloured1448]
  rw [child]
  dsimp only [result1446]
  have child := node1447_eq
  unfold live1447 coloured1447 at child
  try dsimp only [live1448, coloured1448]
  rw [child]
  dsimp only [result1447]
  try dsimp only [colour, result1448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1449_agree : tree1449 = literal1449 := by
  rw [tree1449_def]
  rfl
theorem node1449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1449 live1449 coloured1449 = result1449 := by
  rw [tree1449_def]
  try dsimp only [colour, result1449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1450_agree : tree1450 = literal1450 := by
  rw [tree1450_def, tree1448_agree, tree1449_agree]
  rfl
theorem node1450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1450 live1450 coloured1450 = result1450 := by
  rw [tree1450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1448_eq
  unfold live1448 coloured1448 at child
  try dsimp only [live1450, coloured1450]
  rw [child]
  dsimp only [result1448]
  have child := node1449_eq
  unfold live1449 coloured1449 at child
  try dsimp only [live1450, coloured1450]
  rw [child]
  dsimp only [result1449]
  try dsimp only [colour, result1450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1451_agree : tree1451 = literal1451 := by
  rw [tree1451_def]
  rfl
theorem node1451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1451 live1451 coloured1451 = result1451 := by
  rw [tree1451_def]
  try dsimp only [colour, result1451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1452_agree : tree1452 = literal1452 := by
  rw [tree1452_def, tree1450_agree, tree1451_agree]
  rfl
theorem node1452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1452 live1452 coloured1452 = result1452 := by
  rw [tree1452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1450_eq
  unfold live1450 coloured1450 at child
  try dsimp only [live1452, coloured1452]
  rw [child]
  dsimp only [result1450]
  have child := node1451_eq
  unfold live1451 coloured1451 at child
  try dsimp only [live1452, coloured1452]
  rw [child]
  dsimp only [result1451]
  try dsimp only [colour, result1452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1453_agree : tree1453 = literal1453 := by
  rw [tree1453_def]
  rfl
theorem node1453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1453 live1453 coloured1453 = result1453 := by
  rw [tree1453_def]
  try dsimp only [colour, result1453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1454_agree : tree1454 = literal1454 := by
  rw [tree1454_def, tree1452_agree, tree1453_agree]
  rfl
theorem node1454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1454 live1454 coloured1454 = result1454 := by
  rw [tree1454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1452_eq
  unfold live1452 coloured1452 at child
  try dsimp only [live1454, coloured1454]
  rw [child]
  dsimp only [result1452]
  have child := node1453_eq
  unfold live1453 coloured1453 at child
  try dsimp only [live1454, coloured1454]
  rw [child]
  dsimp only [result1453]
  try dsimp only [colour, result1454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1455_agree : tree1455 = literal1455 := by
  rw [tree1455_def]
  rfl
theorem node1455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1455 live1455 coloured1455 = result1455 := by
  rw [tree1455_def]
  try dsimp only [colour, result1455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1456_agree : tree1456 = literal1456 := by
  rw [tree1456_def, tree1454_agree, tree1455_agree]
  rfl
theorem node1456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1456 live1456 coloured1456 = result1456 := by
  rw [tree1456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1454_eq
  unfold live1454 coloured1454 at child
  try dsimp only [live1456, coloured1456]
  rw [child]
  dsimp only [result1454]
  have child := node1455_eq
  unfold live1455 coloured1455 at child
  try dsimp only [live1456, coloured1456]
  rw [child]
  dsimp only [result1455]
  try dsimp only [colour, result1456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1457_agree : tree1457 = literal1457 := by
  rw [tree1457_def]
  rfl
theorem node1457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1457 live1457 coloured1457 = result1457 := by
  rw [tree1457_def]
  try dsimp only [colour, result1457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1458_agree : tree1458 = literal1458 := by
  rw [tree1458_def, tree1456_agree, tree1457_agree]
  rfl
theorem node1458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1458 live1458 coloured1458 = result1458 := by
  rw [tree1458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1456_eq
  unfold live1456 coloured1456 at child
  try dsimp only [live1458, coloured1458]
  rw [child]
  dsimp only [result1456]
  have child := node1457_eq
  unfold live1457 coloured1457 at child
  try dsimp only [live1458, coloured1458]
  rw [child]
  dsimp only [result1457]
  try dsimp only [colour, result1458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1459_agree : tree1459 = literal1459 := by
  rw [tree1459_def]
  rfl
theorem node1459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1459 live1459 coloured1459 = result1459 := by
  rw [tree1459_def]
  try dsimp only [colour, result1459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1460_agree : tree1460 = literal1460 := by
  rw [tree1460_def, tree1458_agree, tree1459_agree]
  rfl
theorem node1460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1460 live1460 coloured1460 = result1460 := by
  rw [tree1460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1458_eq
  unfold live1458 coloured1458 at child
  try dsimp only [live1460, coloured1460]
  rw [child]
  dsimp only [result1458]
  have child := node1459_eq
  unfold live1459 coloured1459 at child
  try dsimp only [live1460, coloured1460]
  rw [child]
  dsimp only [result1459]
  try dsimp only [colour, result1460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1461_agree : tree1461 = literal1461 := by
  rw [tree1461_def]
  rfl
theorem node1461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1461 live1461 coloured1461 = result1461 := by
  rw [tree1461_def]
  try dsimp only [colour, result1461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1462_agree : tree1462 = literal1462 := by
  rw [tree1462_def, tree1460_agree, tree1461_agree]
  rfl
theorem node1462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1462 live1462 coloured1462 = result1462 := by
  rw [tree1462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1460_eq
  unfold live1460 coloured1460 at child
  try dsimp only [live1462, coloured1462]
  rw [child]
  dsimp only [result1460]
  have child := node1461_eq
  unfold live1461 coloured1461 at child
  try dsimp only [live1462, coloured1462]
  rw [child]
  dsimp only [result1461]
  try dsimp only [colour, result1462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1463_agree : tree1463 = literal1463 := by
  rw [tree1463_def]
  rfl
theorem node1463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1463 live1463 coloured1463 = result1463 := by
  rw [tree1463_def]
  try dsimp only [colour, result1463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1464_agree : tree1464 = literal1464 := by
  rw [tree1464_def, tree1462_agree, tree1463_agree]
  rfl
theorem node1464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1464 live1464 coloured1464 = result1464 := by
  rw [tree1464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1462_eq
  unfold live1462 coloured1462 at child
  try dsimp only [live1464, coloured1464]
  rw [child]
  dsimp only [result1462]
  have child := node1463_eq
  unfold live1463 coloured1463 at child
  try dsimp only [live1464, coloured1464]
  rw [child]
  dsimp only [result1463]
  try dsimp only [colour, result1464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1465_agree : tree1465 = literal1465 := by
  rw [tree1465_def]
  rfl
theorem node1465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1465 live1465 coloured1465 = result1465 := by
  rw [tree1465_def]
  try dsimp only [colour, result1465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1466_agree : tree1466 = literal1466 := by
  rw [tree1466_def, tree1464_agree, tree1465_agree]
  rfl
theorem node1466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1466 live1466 coloured1466 = result1466 := by
  rw [tree1466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1464_eq
  unfold live1464 coloured1464 at child
  try dsimp only [live1466, coloured1466]
  rw [child]
  dsimp only [result1464]
  have child := node1465_eq
  unfold live1465 coloured1465 at child
  try dsimp only [live1466, coloured1466]
  rw [child]
  dsimp only [result1465]
  try dsimp only [colour, result1466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1467_agree : tree1467 = literal1467 := by
  rw [tree1467_def]
  rfl
theorem node1467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1467 live1467 coloured1467 = result1467 := by
  rw [tree1467_def]
  try dsimp only [colour, result1467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1468_agree : tree1468 = literal1468 := by
  rw [tree1468_def, tree1466_agree, tree1467_agree]
  rfl
theorem node1468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1468 live1468 coloured1468 = result1468 := by
  rw [tree1468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1466_eq
  unfold live1466 coloured1466 at child
  try dsimp only [live1468, coloured1468]
  rw [child]
  dsimp only [result1466]
  have child := node1467_eq
  unfold live1467 coloured1467 at child
  try dsimp only [live1468, coloured1468]
  rw [child]
  dsimp only [result1467]
  try dsimp only [colour, result1468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1469_agree : tree1469 = literal1469 := by
  rw [tree1469_def]
  rfl
theorem node1469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1469 live1469 coloured1469 = result1469 := by
  rw [tree1469_def]
  try dsimp only [colour, result1469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1470_agree : tree1470 = literal1470 := by
  rw [tree1470_def, tree1468_agree, tree1469_agree]
  rfl
theorem node1470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1470 live1470 coloured1470 = result1470 := by
  rw [tree1470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1468_eq
  unfold live1468 coloured1468 at child
  try dsimp only [live1470, coloured1470]
  rw [child]
  dsimp only [result1468]
  have child := node1469_eq
  unfold live1469 coloured1469 at child
  try dsimp only [live1470, coloured1470]
  rw [child]
  dsimp only [result1469]
  try dsimp only [colour, result1470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1471_agree : tree1471 = literal1471 := by
  rw [tree1471_def]
  rfl
theorem node1471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1471 live1471 coloured1471 = result1471 := by
  rw [tree1471_def]
  try dsimp only [colour, result1471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1472_agree : tree1472 = literal1472 := by
  rw [tree1472_def, tree1470_agree, tree1471_agree]
  rfl
theorem node1472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1472 live1472 coloured1472 = result1472 := by
  rw [tree1472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1470_eq
  unfold live1470 coloured1470 at child
  try dsimp only [live1472, coloured1472]
  rw [child]
  dsimp only [result1470]
  have child := node1471_eq
  unfold live1471 coloured1471 at child
  try dsimp only [live1472, coloured1472]
  rw [child]
  dsimp only [result1471]
  try dsimp only [colour, result1472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1473_agree : tree1473 = literal1473 := by
  rw [tree1473_def]
  rfl
theorem node1473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1473 live1473 coloured1473 = result1473 := by
  rw [tree1473_def]
  try dsimp only [colour, result1473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1474_agree : tree1474 = literal1474 := by
  rw [tree1474_def, tree1472_agree, tree1473_agree]
  rfl
theorem node1474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1474 live1474 coloured1474 = result1474 := by
  rw [tree1474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1472_eq
  unfold live1472 coloured1472 at child
  try dsimp only [live1474, coloured1474]
  rw [child]
  dsimp only [result1472]
  have child := node1473_eq
  unfold live1473 coloured1473 at child
  try dsimp only [live1474, coloured1474]
  rw [child]
  dsimp only [result1473]
  try dsimp only [colour, result1474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1475_agree : tree1475 = literal1475 := by
  rw [tree1475_def]
  rfl
theorem node1475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1475 live1475 coloured1475 = result1475 := by
  rw [tree1475_def]
  try dsimp only [colour, result1475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1476_agree : tree1476 = literal1476 := by
  rw [tree1476_def, tree1474_agree, tree1475_agree]
  rfl
theorem node1476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1476 live1476 coloured1476 = result1476 := by
  rw [tree1476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1474_eq
  unfold live1474 coloured1474 at child
  try dsimp only [live1476, coloured1476]
  rw [child]
  dsimp only [result1474]
  have child := node1475_eq
  unfold live1475 coloured1475 at child
  try dsimp only [live1476, coloured1476]
  rw [child]
  dsimp only [result1475]
  try dsimp only [colour, result1476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1477_agree : tree1477 = literal1477 := by
  rw [tree1477_def]
  rfl
theorem node1477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1477 live1477 coloured1477 = result1477 := by
  rw [tree1477_def]
  try dsimp only [colour, result1477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1478_agree : tree1478 = literal1478 := by
  rw [tree1478_def, tree1476_agree, tree1477_agree]
  rfl
theorem node1478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1478 live1478 coloured1478 = result1478 := by
  rw [tree1478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1476_eq
  unfold live1476 coloured1476 at child
  try dsimp only [live1478, coloured1478]
  rw [child]
  dsimp only [result1476]
  have child := node1477_eq
  unfold live1477 coloured1477 at child
  try dsimp only [live1478, coloured1478]
  rw [child]
  dsimp only [result1477]
  try dsimp only [colour, result1478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1479_agree : tree1479 = literal1479 := by
  rw [tree1479_def]
  rfl
theorem node1479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1479 live1479 coloured1479 = result1479 := by
  rw [tree1479_def]
  try dsimp only [colour, result1479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1480_agree : tree1480 = literal1480 := by
  rw [tree1480_def, tree1478_agree, tree1479_agree]
  rfl
theorem node1480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1480 live1480 coloured1480 = result1480 := by
  rw [tree1480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1478_eq
  unfold live1478 coloured1478 at child
  try dsimp only [live1480, coloured1480]
  rw [child]
  dsimp only [result1478]
  have child := node1479_eq
  unfold live1479 coloured1479 at child
  try dsimp only [live1480, coloured1480]
  rw [child]
  dsimp only [result1479]
  try dsimp only [colour, result1480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1481_agree : tree1481 = literal1481 := by
  rw [tree1481_def]
  rfl
theorem node1481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1481 live1481 coloured1481 = result1481 := by
  rw [tree1481_def]
  try dsimp only [colour, result1481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1482_agree : tree1482 = literal1482 := by
  rw [tree1482_def, tree1480_agree, tree1481_agree]
  rfl
theorem node1482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1482 live1482 coloured1482 = result1482 := by
  rw [tree1482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1480_eq
  unfold live1480 coloured1480 at child
  try dsimp only [live1482, coloured1482]
  rw [child]
  dsimp only [result1480]
  have child := node1481_eq
  unfold live1481 coloured1481 at child
  try dsimp only [live1482, coloured1482]
  rw [child]
  dsimp only [result1481]
  try dsimp only [colour, result1482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1483_agree : tree1483 = literal1483 := by
  rw [tree1483_def]
  rfl
theorem node1483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1483 live1483 coloured1483 = result1483 := by
  rw [tree1483_def]
  try dsimp only [colour, result1483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1484_agree : tree1484 = literal1484 := by
  rw [tree1484_def, tree1482_agree, tree1483_agree]
  rfl
theorem node1484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1484 live1484 coloured1484 = result1484 := by
  rw [tree1484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1482_eq
  unfold live1482 coloured1482 at child
  try dsimp only [live1484, coloured1484]
  rw [child]
  dsimp only [result1482]
  have child := node1483_eq
  unfold live1483 coloured1483 at child
  try dsimp only [live1484, coloured1484]
  rw [child]
  dsimp only [result1483]
  try dsimp only [colour, result1484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1485_agree : tree1485 = literal1485 := by
  rw [tree1485_def]
  rfl
theorem node1485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1485 live1485 coloured1485 = result1485 := by
  rw [tree1485_def]
  try dsimp only [colour, result1485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1486_agree : tree1486 = literal1486 := by
  rw [tree1486_def, tree1484_agree, tree1485_agree]
  rfl
theorem node1486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1486 live1486 coloured1486 = result1486 := by
  rw [tree1486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1484_eq
  unfold live1484 coloured1484 at child
  try dsimp only [live1486, coloured1486]
  rw [child]
  dsimp only [result1484]
  have child := node1485_eq
  unfold live1485 coloured1485 at child
  try dsimp only [live1486, coloured1486]
  rw [child]
  dsimp only [result1485]
  try dsimp only [colour, result1486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1487_agree : tree1487 = literal1487 := by
  rw [tree1487_def]
  rfl
theorem node1487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1487 live1487 coloured1487 = result1487 := by
  rw [tree1487_def]
  try dsimp only [colour, result1487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1488_agree : tree1488 = literal1488 := by
  rw [tree1488_def, tree1486_agree, tree1487_agree]
  rfl
theorem node1488_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1488 live1488 coloured1488 = result1488 := by
  rw [tree1488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1486_eq
  unfold live1486 coloured1486 at child
  try dsimp only [live1488, coloured1488]
  rw [child]
  dsimp only [result1486]
  have child := node1487_eq
  unfold live1487 coloured1487 at child
  try dsimp only [live1488, coloured1488]
  rw [child]
  dsimp only [result1487]
  try dsimp only [colour, result1488]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1489_agree : tree1489 = literal1489 := by
  rw [tree1489_def]
  rfl
theorem node1489_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1489 live1489 coloured1489 = result1489 := by
  rw [tree1489_def]
  try dsimp only [colour, result1489]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1490_agree : tree1490 = literal1490 := by
  rw [tree1490_def, tree1488_agree, tree1489_agree]
  rfl
theorem node1490_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1490 live1490 coloured1490 = result1490 := by
  rw [tree1490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1488_eq
  unfold live1488 coloured1488 at child
  try dsimp only [live1490, coloured1490]
  rw [child]
  dsimp only [result1488]
  have child := node1489_eq
  unfold live1489 coloured1489 at child
  try dsimp only [live1490, coloured1490]
  rw [child]
  dsimp only [result1489]
  try dsimp only [colour, result1490]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1491_agree : tree1491 = literal1491 := by
  rw [tree1491_def]
  rfl
theorem node1491_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1491 live1491 coloured1491 = result1491 := by
  rw [tree1491_def]
  try dsimp only [colour, result1491]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1492_agree : tree1492 = literal1492 := by
  rw [tree1492_def, tree1490_agree, tree1491_agree]
  rfl
theorem node1492_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1492 live1492 coloured1492 = result1492 := by
  rw [tree1492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1490_eq
  unfold live1490 coloured1490 at child
  try dsimp only [live1492, coloured1492]
  rw [child]
  dsimp only [result1490]
  have child := node1491_eq
  unfold live1491 coloured1491 at child
  try dsimp only [live1492, coloured1492]
  rw [child]
  dsimp only [result1491]
  try dsimp only [colour, result1492]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1493_agree : tree1493 = literal1493 := by
  rw [tree1493_def]
  rfl
theorem node1493_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1493 live1493 coloured1493 = result1493 := by
  rw [tree1493_def]
  try dsimp only [colour, result1493]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1494_agree : tree1494 = literal1494 := by
  rw [tree1494_def, tree1492_agree, tree1493_agree]
  rfl
theorem node1494_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1494 live1494 coloured1494 = result1494 := by
  rw [tree1494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1492_eq
  unfold live1492 coloured1492 at child
  try dsimp only [live1494, coloured1494]
  rw [child]
  dsimp only [result1492]
  have child := node1493_eq
  unfold live1493 coloured1493 at child
  try dsimp only [live1494, coloured1494]
  rw [child]
  dsimp only [result1493]
  try dsimp only [colour, result1494]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1495_agree : tree1495 = literal1495 := by
  rw [tree1495_def]
  rfl
theorem node1495_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1495 live1495 coloured1495 = result1495 := by
  rw [tree1495_def]
  try dsimp only [colour, result1495]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1496_agree : tree1496 = literal1496 := by
  rw [tree1496_def, tree1494_agree, tree1495_agree]
  rfl
theorem node1496_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1496 live1496 coloured1496 = result1496 := by
  rw [tree1496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1494_eq
  unfold live1494 coloured1494 at child
  try dsimp only [live1496, coloured1496]
  rw [child]
  dsimp only [result1494]
  have child := node1495_eq
  unfold live1495 coloured1495 at child
  try dsimp only [live1496, coloured1496]
  rw [child]
  dsimp only [result1495]
  try dsimp only [colour, result1496]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1497_agree : tree1497 = literal1497 := by
  rw [tree1497_def]
  rfl
theorem node1497_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1497 live1497 coloured1497 = result1497 := by
  rw [tree1497_def]
  try dsimp only [colour, result1497]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1498_agree : tree1498 = literal1498 := by
  rw [tree1498_def, tree1496_agree, tree1497_agree]
  rfl
theorem node1498_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1498 live1498 coloured1498 = result1498 := by
  rw [tree1498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1496_eq
  unfold live1496 coloured1496 at child
  try dsimp only [live1498, coloured1498]
  rw [child]
  dsimp only [result1496]
  have child := node1497_eq
  unfold live1497 coloured1497 at child
  try dsimp only [live1498, coloured1498]
  rw [child]
  dsimp only [result1497]
  try dsimp only [colour, result1498]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1499_agree : tree1499 = literal1499 := by
  rw [tree1499_def]
  rfl
theorem node1499_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1499 live1499 coloured1499 = result1499 := by
  rw [tree1499_def]
  try dsimp only [colour, result1499]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1500_agree : tree1500 = literal1500 := by
  rw [tree1500_def, tree1498_agree, tree1499_agree]
  rfl
theorem node1500_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1500 live1500 coloured1500 = result1500 := by
  rw [tree1500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1498_eq
  unfold live1498 coloured1498 at child
  try dsimp only [live1500, coloured1500]
  rw [child]
  dsimp only [result1498]
  have child := node1499_eq
  unfold live1499 coloured1499 at child
  try dsimp only [live1500, coloured1500]
  rw [child]
  dsimp only [result1499]
  try dsimp only [colour, result1500]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1501_agree : tree1501 = literal1501 := by
  rw [tree1501_def]
  rfl
theorem node1501_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1501 live1501 coloured1501 = result1501 := by
  rw [tree1501_def]
  try dsimp only [colour, result1501]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1502_agree : tree1502 = literal1502 := by
  rw [tree1502_def, tree1500_agree, tree1501_agree]
  rfl
theorem node1502_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1502 live1502 coloured1502 = result1502 := by
  rw [tree1502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1500_eq
  unfold live1500 coloured1500 at child
  try dsimp only [live1502, coloured1502]
  rw [child]
  dsimp only [result1500]
  have child := node1501_eq
  unfold live1501 coloured1501 at child
  try dsimp only [live1502, coloured1502]
  rw [child]
  dsimp only [result1501]
  try dsimp only [colour, result1502]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1503_agree : tree1503 = literal1503 := by
  rw [tree1503_def]
  rfl
theorem node1503_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1503 live1503 coloured1503 = result1503 := by
  rw [tree1503_def]
  try dsimp only [colour, result1503]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1504_agree : tree1504 = literal1504 := by
  rw [tree1504_def, tree1502_agree, tree1503_agree]
  rfl
theorem node1504_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1504 live1504 coloured1504 = result1504 := by
  rw [tree1504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1502_eq
  unfold live1502 coloured1502 at child
  try dsimp only [live1504, coloured1504]
  rw [child]
  dsimp only [result1502]
  have child := node1503_eq
  unfold live1503 coloured1503 at child
  try dsimp only [live1504, coloured1504]
  rw [child]
  dsimp only [result1503]
  try dsimp only [colour, result1504]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1505_agree : tree1505 = literal1505 := by
  rw [tree1505_def]
  rfl
theorem node1505_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1505 live1505 coloured1505 = result1505 := by
  rw [tree1505_def]
  try dsimp only [colour, result1505]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1506_agree : tree1506 = literal1506 := by
  rw [tree1506_def, tree1504_agree, tree1505_agree]
  rfl
theorem node1506_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1506 live1506 coloured1506 = result1506 := by
  rw [tree1506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1504_eq
  unfold live1504 coloured1504 at child
  try dsimp only [live1506, coloured1506]
  rw [child]
  dsimp only [result1504]
  have child := node1505_eq
  unfold live1505 coloured1505 at child
  try dsimp only [live1506, coloured1506]
  rw [child]
  dsimp only [result1505]
  try dsimp only [colour, result1506]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1507_agree : tree1507 = literal1507 := by
  rw [tree1507_def]
  rfl
theorem node1507_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1507 live1507 coloured1507 = result1507 := by
  rw [tree1507_def]
  try dsimp only [colour, result1507]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1508_agree : tree1508 = literal1508 := by
  rw [tree1508_def, tree1506_agree, tree1507_agree]
  rfl
theorem node1508_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1508 live1508 coloured1508 = result1508 := by
  rw [tree1508_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1506_eq
  unfold live1506 coloured1506 at child
  try dsimp only [live1508, coloured1508]
  rw [child]
  dsimp only [result1506]
  have child := node1507_eq
  unfold live1507 coloured1507 at child
  try dsimp only [live1508, coloured1508]
  rw [child]
  dsimp only [result1507]
  try dsimp only [colour, result1508]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1509_agree : tree1509 = literal1509 := by
  rw [tree1509_def]
  rfl
theorem node1509_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1509 live1509 coloured1509 = result1509 := by
  rw [tree1509_def]
  try dsimp only [colour, result1509]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1510_agree : tree1510 = literal1510 := by
  rw [tree1510_def, tree1508_agree, tree1509_agree]
  rfl
theorem node1510_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1510 live1510 coloured1510 = result1510 := by
  rw [tree1510_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1508_eq
  unfold live1508 coloured1508 at child
  try dsimp only [live1510, coloured1510]
  rw [child]
  dsimp only [result1508]
  have child := node1509_eq
  unfold live1509 coloured1509 at child
  try dsimp only [live1510, coloured1510]
  rw [child]
  dsimp only [result1509]
  try dsimp only [colour, result1510]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1511_agree : tree1511 = literal1511 := by
  rw [tree1511_def]
  rfl
theorem node1511_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1511 live1511 coloured1511 = result1511 := by
  rw [tree1511_def]
  try dsimp only [colour, result1511]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1512_agree : tree1512 = literal1512 := by
  rw [tree1512_def, tree1510_agree, tree1511_agree]
  rfl
theorem node1512_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1512 live1512 coloured1512 = result1512 := by
  rw [tree1512_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1510_eq
  unfold live1510 coloured1510 at child
  try dsimp only [live1512, coloured1512]
  rw [child]
  dsimp only [result1510]
  have child := node1511_eq
  unfold live1511 coloured1511 at child
  try dsimp only [live1512, coloured1512]
  rw [child]
  dsimp only [result1511]
  try dsimp only [colour, result1512]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1513_agree : tree1513 = literal1513 := by
  rw [tree1513_def]
  rfl
theorem node1513_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1513 live1513 coloured1513 = result1513 := by
  rw [tree1513_def]
  try dsimp only [colour, result1513]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1514_agree : tree1514 = literal1514 := by
  rw [tree1514_def, tree1512_agree, tree1513_agree]
  rfl
theorem node1514_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1514 live1514 coloured1514 = result1514 := by
  rw [tree1514_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1512_eq
  unfold live1512 coloured1512 at child
  try dsimp only [live1514, coloured1514]
  rw [child]
  dsimp only [result1512]
  have child := node1513_eq
  unfold live1513 coloured1513 at child
  try dsimp only [live1514, coloured1514]
  rw [child]
  dsimp only [result1513]
  try dsimp only [colour, result1514]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1515_agree : tree1515 = literal1515 := by
  rw [tree1515_def]
  rfl
theorem node1515_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1515 live1515 coloured1515 = result1515 := by
  rw [tree1515_def]
  try dsimp only [colour, result1515]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1516_agree : tree1516 = literal1516 := by
  rw [tree1516_def, tree1514_agree, tree1515_agree]
  rfl
theorem node1516_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1516 live1516 coloured1516 = result1516 := by
  rw [tree1516_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1514_eq
  unfold live1514 coloured1514 at child
  try dsimp only [live1516, coloured1516]
  rw [child]
  dsimp only [result1514]
  have child := node1515_eq
  unfold live1515 coloured1515 at child
  try dsimp only [live1516, coloured1516]
  rw [child]
  dsimp only [result1515]
  try dsimp only [colour, result1516]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1517_agree : tree1517 = literal1517 := by
  rw [tree1517_def]
  rfl
theorem node1517_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1517 live1517 coloured1517 = result1517 := by
  rw [tree1517_def]
  try dsimp only [colour, result1517]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1518_agree : tree1518 = literal1518 := by
  rw [tree1518_def, tree1516_agree, tree1517_agree]
  rfl
theorem node1518_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1518 live1518 coloured1518 = result1518 := by
  rw [tree1518_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1516_eq
  unfold live1516 coloured1516 at child
  try dsimp only [live1518, coloured1518]
  rw [child]
  dsimp only [result1516]
  have child := node1517_eq
  unfold live1517 coloured1517 at child
  try dsimp only [live1518, coloured1518]
  rw [child]
  dsimp only [result1517]
  try dsimp only [colour, result1518]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1519_agree : tree1519 = literal1519 := by
  rw [tree1519_def]
  rfl
theorem node1519_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1519 live1519 coloured1519 = result1519 := by
  rw [tree1519_def]
  try dsimp only [colour, result1519]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1520_agree : tree1520 = literal1520 := by
  rw [tree1520_def, tree1518_agree, tree1519_agree]
  rfl
theorem node1520_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1520 live1520 coloured1520 = result1520 := by
  rw [tree1520_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1518_eq
  unfold live1518 coloured1518 at child
  try dsimp only [live1520, coloured1520]
  rw [child]
  dsimp only [result1518]
  have child := node1519_eq
  unfold live1519 coloured1519 at child
  try dsimp only [live1520, coloured1520]
  rw [child]
  dsimp only [result1519]
  try dsimp only [colour, result1520]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1521_agree : tree1521 = literal1521 := by
  rw [tree1521_def]
  rfl
theorem node1521_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1521 live1521 coloured1521 = result1521 := by
  rw [tree1521_def]
  try dsimp only [colour, result1521]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1522_agree : tree1522 = literal1522 := by
  rw [tree1522_def, tree1520_agree, tree1521_agree]
  rfl
theorem node1522_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1522 live1522 coloured1522 = result1522 := by
  rw [tree1522_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1520_eq
  unfold live1520 coloured1520 at child
  try dsimp only [live1522, coloured1522]
  rw [child]
  dsimp only [result1520]
  have child := node1521_eq
  unfold live1521 coloured1521 at child
  try dsimp only [live1522, coloured1522]
  rw [child]
  dsimp only [result1521]
  try dsimp only [colour, result1522]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1523_agree : tree1523 = literal1523 := by
  rw [tree1523_def]
  rfl
theorem node1523_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1523 live1523 coloured1523 = result1523 := by
  rw [tree1523_def]
  try dsimp only [colour, result1523]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1524_agree : tree1524 = literal1524 := by
  rw [tree1524_def, tree1522_agree, tree1523_agree]
  rfl
theorem node1524_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1524 live1524 coloured1524 = result1524 := by
  rw [tree1524_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1522_eq
  unfold live1522 coloured1522 at child
  try dsimp only [live1524, coloured1524]
  rw [child]
  dsimp only [result1522]
  have child := node1523_eq
  unfold live1523 coloured1523 at child
  try dsimp only [live1524, coloured1524]
  rw [child]
  dsimp only [result1523]
  try dsimp only [colour, result1524]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1525_agree : tree1525 = literal1525 := by
  rw [tree1525_def]
  rfl
theorem node1525_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1525 live1525 coloured1525 = result1525 := by
  rw [tree1525_def]
  try dsimp only [colour, result1525]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1526_agree : tree1526 = literal1526 := by
  rw [tree1526_def, tree1524_agree, tree1525_agree]
  rfl
theorem node1526_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1526 live1526 coloured1526 = result1526 := by
  rw [tree1526_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1524_eq
  unfold live1524 coloured1524 at child
  try dsimp only [live1526, coloured1526]
  rw [child]
  dsimp only [result1524]
  have child := node1525_eq
  unfold live1525 coloured1525 at child
  try dsimp only [live1526, coloured1526]
  rw [child]
  dsimp only [result1525]
  try dsimp only [colour, result1526]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1527_agree : tree1527 = literal1527 := by
  rw [tree1527_def]
  rfl
theorem node1527_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1527 live1527 coloured1527 = result1527 := by
  rw [tree1527_def]
  try dsimp only [colour, result1527]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1528_agree : tree1528 = literal1528 := by
  rw [tree1528_def, tree1526_agree, tree1527_agree]
  rfl
theorem node1528_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1528 live1528 coloured1528 = result1528 := by
  rw [tree1528_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1526_eq
  unfold live1526 coloured1526 at child
  try dsimp only [live1528, coloured1528]
  rw [child]
  dsimp only [result1526]
  have child := node1527_eq
  unfold live1527 coloured1527 at child
  try dsimp only [live1528, coloured1528]
  rw [child]
  dsimp only [result1527]
  try dsimp only [colour, result1528]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1529_agree : tree1529 = literal1529 := by
  rw [tree1529_def]
  rfl
theorem node1529_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1529 live1529 coloured1529 = result1529 := by
  rw [tree1529_def]
  try dsimp only [colour, result1529]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1530_agree : tree1530 = literal1530 := by
  rw [tree1530_def, tree1528_agree, tree1529_agree]
  rfl
theorem node1530_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1530 live1530 coloured1530 = result1530 := by
  rw [tree1530_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1528_eq
  unfold live1528 coloured1528 at child
  try dsimp only [live1530, coloured1530]
  rw [child]
  dsimp only [result1528]
  have child := node1529_eq
  unfold live1529 coloured1529 at child
  try dsimp only [live1530, coloured1530]
  rw [child]
  dsimp only [result1529]
  try dsimp only [colour, result1530]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1531_agree : tree1531 = literal1531 := by
  rw [tree1531_def]
  rfl
theorem node1531_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1531 live1531 coloured1531 = result1531 := by
  rw [tree1531_def]
  try dsimp only [colour, result1531]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1532_agree : tree1532 = literal1532 := by
  rw [tree1532_def, tree1530_agree, tree1531_agree]
  rfl
theorem node1532_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1532 live1532 coloured1532 = result1532 := by
  rw [tree1532_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1530_eq
  unfold live1530 coloured1530 at child
  try dsimp only [live1532, coloured1532]
  rw [child]
  dsimp only [result1530]
  have child := node1531_eq
  unfold live1531 coloured1531 at child
  try dsimp only [live1532, coloured1532]
  rw [child]
  dsimp only [result1531]
  try dsimp only [colour, result1532]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1533_agree : tree1533 = literal1533 := by
  rw [tree1533_def]
  rfl
theorem node1533_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1533 live1533 coloured1533 = result1533 := by
  rw [tree1533_def]
  try dsimp only [colour, result1533]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1534_agree : tree1534 = literal1534 := by
  rw [tree1534_def, tree1532_agree, tree1533_agree]
  rfl
theorem node1534_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1534 live1534 coloured1534 = result1534 := by
  rw [tree1534_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1532_eq
  unfold live1532 coloured1532 at child
  try dsimp only [live1534, coloured1534]
  rw [child]
  dsimp only [result1532]
  have child := node1533_eq
  unfold live1533 coloured1533 at child
  try dsimp only [live1534, coloured1534]
  rw [child]
  dsimp only [result1533]
  try dsimp only [colour, result1534]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1535_agree : tree1535 = literal1535 := by
  rw [tree1535_def]
  rfl
theorem node1535_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1535 live1535 coloured1535 = result1535 := by
  rw [tree1535_def]
  try dsimp only [colour, result1535]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
