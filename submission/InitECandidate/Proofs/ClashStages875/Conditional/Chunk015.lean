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
theorem tree1440_agree_conditional
    (child0 : tree1438 = literal1438)
    (child1 : tree1439 = literal1439) : tree1440 = literal1440 := by
  rw [tree1440_def, child0, child1]
  rfl
theorem node1440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1438 live1438 coloured1438 = result1438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1439 live1439 coloured1439 = result1439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1440 live1440 coloured1440 = result1440 := by
  rw [tree1440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1438 coloured1438 at child
  try dsimp only [live1440, coloured1440]
  rw [child]
  dsimp only [result1438]
  have child := child1
  unfold live1439 coloured1439 at child
  try dsimp only [live1440, coloured1440]
  rw [child]
  dsimp only [result1439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1441_agree_conditional : tree1441 = literal1441 := by
  rw [tree1441_def]
  rfl
theorem node1441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1441 live1441 coloured1441 = result1441 := by
  rw [tree1441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1442_agree_conditional
    (child0 : tree1440 = literal1440)
    (child1 : tree1441 = literal1441) : tree1442 = literal1442 := by
  rw [tree1442_def, child0, child1]
  rfl
theorem node1442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1440 live1440 coloured1440 = result1440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1441 live1441 coloured1441 = result1441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1442 live1442 coloured1442 = result1442 := by
  rw [tree1442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1440 coloured1440 at child
  try dsimp only [live1442, coloured1442]
  rw [child]
  dsimp only [result1440]
  have child := child1
  unfold live1441 coloured1441 at child
  try dsimp only [live1442, coloured1442]
  rw [child]
  dsimp only [result1441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1443_agree_conditional : tree1443 = literal1443 := by
  rw [tree1443_def]
  rfl
theorem node1443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1443 live1443 coloured1443 = result1443 := by
  rw [tree1443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1444_agree_conditional
    (child0 : tree1442 = literal1442)
    (child1 : tree1443 = literal1443) : tree1444 = literal1444 := by
  rw [tree1444_def, child0, child1]
  rfl
theorem node1444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1442 live1442 coloured1442 = result1442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1443 live1443 coloured1443 = result1443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1444 live1444 coloured1444 = result1444 := by
  rw [tree1444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1442 coloured1442 at child
  try dsimp only [live1444, coloured1444]
  rw [child]
  dsimp only [result1442]
  have child := child1
  unfold live1443 coloured1443 at child
  try dsimp only [live1444, coloured1444]
  rw [child]
  dsimp only [result1443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1445_agree_conditional : tree1445 = literal1445 := by
  rw [tree1445_def]
  rfl
theorem node1445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1445 live1445 coloured1445 = result1445 := by
  rw [tree1445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1446_agree_conditional
    (child0 : tree1444 = literal1444)
    (child1 : tree1445 = literal1445) : tree1446 = literal1446 := by
  rw [tree1446_def, child0, child1]
  rfl
theorem node1446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1444 live1444 coloured1444 = result1444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1445 live1445 coloured1445 = result1445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1446 live1446 coloured1446 = result1446 := by
  rw [tree1446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1444 coloured1444 at child
  try dsimp only [live1446, coloured1446]
  rw [child]
  dsimp only [result1444]
  have child := child1
  unfold live1445 coloured1445 at child
  try dsimp only [live1446, coloured1446]
  rw [child]
  dsimp only [result1445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1447_agree_conditional : tree1447 = literal1447 := by
  rw [tree1447_def]
  rfl
theorem node1447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1447 live1447 coloured1447 = result1447 := by
  rw [tree1447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1448_agree_conditional
    (child0 : tree1446 = literal1446)
    (child1 : tree1447 = literal1447) : tree1448 = literal1448 := by
  rw [tree1448_def, child0, child1]
  rfl
theorem node1448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1446 live1446 coloured1446 = result1446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1447 live1447 coloured1447 = result1447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1448 live1448 coloured1448 = result1448 := by
  rw [tree1448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1446 coloured1446 at child
  try dsimp only [live1448, coloured1448]
  rw [child]
  dsimp only [result1446]
  have child := child1
  unfold live1447 coloured1447 at child
  try dsimp only [live1448, coloured1448]
  rw [child]
  dsimp only [result1447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1449_agree_conditional : tree1449 = literal1449 := by
  rw [tree1449_def]
  rfl
theorem node1449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1449 live1449 coloured1449 = result1449 := by
  rw [tree1449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1450_agree_conditional
    (child0 : tree1448 = literal1448)
    (child1 : tree1449 = literal1449) : tree1450 = literal1450 := by
  rw [tree1450_def, child0, child1]
  rfl
theorem node1450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1448 live1448 coloured1448 = result1448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1449 live1449 coloured1449 = result1449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1450 live1450 coloured1450 = result1450 := by
  rw [tree1450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1448 coloured1448 at child
  try dsimp only [live1450, coloured1450]
  rw [child]
  dsimp only [result1448]
  have child := child1
  unfold live1449 coloured1449 at child
  try dsimp only [live1450, coloured1450]
  rw [child]
  dsimp only [result1449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1451_agree_conditional : tree1451 = literal1451 := by
  rw [tree1451_def]
  rfl
theorem node1451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1451 live1451 coloured1451 = result1451 := by
  rw [tree1451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1452_agree_conditional
    (child0 : tree1450 = literal1450)
    (child1 : tree1451 = literal1451) : tree1452 = literal1452 := by
  rw [tree1452_def, child0, child1]
  rfl
theorem node1452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1450 live1450 coloured1450 = result1450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1451 live1451 coloured1451 = result1451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1452 live1452 coloured1452 = result1452 := by
  rw [tree1452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1450 coloured1450 at child
  try dsimp only [live1452, coloured1452]
  rw [child]
  dsimp only [result1450]
  have child := child1
  unfold live1451 coloured1451 at child
  try dsimp only [live1452, coloured1452]
  rw [child]
  dsimp only [result1451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1453_agree_conditional : tree1453 = literal1453 := by
  rw [tree1453_def]
  rfl
theorem node1453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1453 live1453 coloured1453 = result1453 := by
  rw [tree1453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1454_agree_conditional
    (child0 : tree1452 = literal1452)
    (child1 : tree1453 = literal1453) : tree1454 = literal1454 := by
  rw [tree1454_def, child0, child1]
  rfl
theorem node1454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1452 live1452 coloured1452 = result1452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1453 live1453 coloured1453 = result1453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1454 live1454 coloured1454 = result1454 := by
  rw [tree1454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1452 coloured1452 at child
  try dsimp only [live1454, coloured1454]
  rw [child]
  dsimp only [result1452]
  have child := child1
  unfold live1453 coloured1453 at child
  try dsimp only [live1454, coloured1454]
  rw [child]
  dsimp only [result1453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1455_agree_conditional : tree1455 = literal1455 := by
  rw [tree1455_def]
  rfl
theorem node1455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1455 live1455 coloured1455 = result1455 := by
  rw [tree1455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1456_agree_conditional
    (child0 : tree1454 = literal1454)
    (child1 : tree1455 = literal1455) : tree1456 = literal1456 := by
  rw [tree1456_def, child0, child1]
  rfl
theorem node1456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1454 live1454 coloured1454 = result1454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1455 live1455 coloured1455 = result1455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1456 live1456 coloured1456 = result1456 := by
  rw [tree1456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1454 coloured1454 at child
  try dsimp only [live1456, coloured1456]
  rw [child]
  dsimp only [result1454]
  have child := child1
  unfold live1455 coloured1455 at child
  try dsimp only [live1456, coloured1456]
  rw [child]
  dsimp only [result1455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1457_agree_conditional : tree1457 = literal1457 := by
  rw [tree1457_def]
  rfl
theorem node1457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1457 live1457 coloured1457 = result1457 := by
  rw [tree1457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1458_agree_conditional
    (child0 : tree1456 = literal1456)
    (child1 : tree1457 = literal1457) : tree1458 = literal1458 := by
  rw [tree1458_def, child0, child1]
  rfl
theorem node1458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1456 live1456 coloured1456 = result1456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1457 live1457 coloured1457 = result1457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1458 live1458 coloured1458 = result1458 := by
  rw [tree1458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1456 coloured1456 at child
  try dsimp only [live1458, coloured1458]
  rw [child]
  dsimp only [result1456]
  have child := child1
  unfold live1457 coloured1457 at child
  try dsimp only [live1458, coloured1458]
  rw [child]
  dsimp only [result1457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1459_agree_conditional : tree1459 = literal1459 := by
  rw [tree1459_def]
  rfl
theorem node1459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1459 live1459 coloured1459 = result1459 := by
  rw [tree1459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1460_agree_conditional : tree1460 = literal1460 := by
  rw [tree1460_def]
  rfl
theorem node1460_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1460 live1460 coloured1460 = result1460 := by
  rw [tree1460_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1461_agree_conditional
    (child0 : tree1459 = literal1459)
    (child1 : tree1460 = literal1460) : tree1461 = literal1461 := by
  rw [tree1461_def, child0, child1]
  rfl
theorem node1461_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1459 live1459 coloured1459 = result1459)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1460 live1460 coloured1460 = result1460) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1461 live1461 coloured1461 = result1461 := by
  rw [tree1461_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1459 coloured1459 at child
  try dsimp only [live1461, coloured1461]
  rw [child]
  dsimp only [result1459]
  have child := child1
  unfold live1460 coloured1460 at child
  try dsimp only [live1461, coloured1461]
  rw [child]
  dsimp only [result1460]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1462_agree_conditional : tree1462 = literal1462 := by
  rw [tree1462_def]
  rfl
theorem node1462_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1462 live1462 coloured1462 = result1462 := by
  rw [tree1462_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1463_agree_conditional : tree1463 = literal1463 := by
  rw [tree1463_def]
  rfl
theorem node1463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1463 live1463 coloured1463 = result1463 := by
  rw [tree1463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1464_agree_conditional
    (child0 : tree1462 = literal1462)
    (child1 : tree1463 = literal1463) : tree1464 = literal1464 := by
  rw [tree1464_def, child0, child1]
  rfl
theorem node1464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1462 live1462 coloured1462 = result1462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1463 live1463 coloured1463 = result1463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1464 live1464 coloured1464 = result1464 := by
  rw [tree1464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1462 coloured1462 at child
  try dsimp only [live1464, coloured1464]
  rw [child]
  dsimp only [result1462]
  have child := child1
  unfold live1463 coloured1463 at child
  try dsimp only [live1464, coloured1464]
  rw [child]
  dsimp only [result1463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1465_agree_conditional : tree1465 = literal1465 := by
  rw [tree1465_def]
  rfl
theorem node1465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1465 live1465 coloured1465 = result1465 := by
  rw [tree1465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1466_agree_conditional
    (child0 : tree1464 = literal1464)
    (child1 : tree1465 = literal1465) : tree1466 = literal1466 := by
  rw [tree1466_def, child0, child1]
  rfl
theorem node1466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1464 live1464 coloured1464 = result1464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1465 live1465 coloured1465 = result1465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1466 live1466 coloured1466 = result1466 := by
  rw [tree1466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1464 coloured1464 at child
  try dsimp only [live1466, coloured1466]
  rw [child]
  dsimp only [result1464]
  have child := child1
  unfold live1465 coloured1465 at child
  try dsimp only [live1466, coloured1466]
  rw [child]
  dsimp only [result1465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1467_agree_conditional
    (child0 : tree1461 = literal1461)
    (child1 : tree1466 = literal1466) : tree1467 = literal1467 := by
  rw [tree1467_def, child0, child1]
  rfl
theorem node1467_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1461 live1461 coloured1461 = result1461)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1466 live1466 coloured1466 = result1466) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1467 live1467 coloured1467 = result1467 := by
  rw [tree1467_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1461 coloured1461 at child
  try dsimp only [live1467, coloured1467]
  rw [child]
  dsimp only [result1461]
  have child := child1
  unfold live1466 coloured1466 at child
  try dsimp only [live1467, coloured1467]
  rw [child]
  dsimp only [result1466]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1468_agree_conditional
    (child0 : tree1458 = literal1458)
    (child1 : tree1467 = literal1467) : tree1468 = literal1468 := by
  rw [tree1468_def, child0, child1]
  rfl
theorem node1468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1458 live1458 coloured1458 = result1458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1467 live1467 coloured1467 = result1467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1468 live1468 coloured1468 = result1468 := by
  rw [tree1468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1458 coloured1458 at child
  try dsimp only [live1468, coloured1468]
  rw [child]
  dsimp only [result1458]
  have child := child1
  unfold live1467 coloured1467 at child
  try dsimp only [live1468, coloured1468]
  rw [child]
  dsimp only [result1467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1469_agree_conditional : tree1469 = literal1469 := by
  rw [tree1469_def]
  rfl
theorem node1469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1469 live1469 coloured1469 = result1469 := by
  rw [tree1469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1470_agree_conditional
    (child0 : tree1468 = literal1468)
    (child1 : tree1469 = literal1469) : tree1470 = literal1470 := by
  rw [tree1470_def, child0, child1]
  rfl
theorem node1470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1468 live1468 coloured1468 = result1468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1469 live1469 coloured1469 = result1469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1470 live1470 coloured1470 = result1470 := by
  rw [tree1470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1468 coloured1468 at child
  try dsimp only [live1470, coloured1470]
  rw [child]
  dsimp only [result1468]
  have child := child1
  unfold live1469 coloured1469 at child
  try dsimp only [live1470, coloured1470]
  rw [child]
  dsimp only [result1469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1471_agree_conditional : tree1471 = literal1471 := by
  rw [tree1471_def]
  rfl
theorem node1471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1471 live1471 coloured1471 = result1471 := by
  rw [tree1471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1472_agree_conditional
    (child0 : tree1470 = literal1470)
    (child1 : tree1471 = literal1471) : tree1472 = literal1472 := by
  rw [tree1472_def, child0, child1]
  rfl
theorem node1472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1470 live1470 coloured1470 = result1470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1471 live1471 coloured1471 = result1471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1472 live1472 coloured1472 = result1472 := by
  rw [tree1472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1470 coloured1470 at child
  try dsimp only [live1472, coloured1472]
  rw [child]
  dsimp only [result1470]
  have child := child1
  unfold live1471 coloured1471 at child
  try dsimp only [live1472, coloured1472]
  rw [child]
  dsimp only [result1471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1473_agree_conditional : tree1473 = literal1473 := by
  rw [tree1473_def]
  rfl
theorem node1473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1473 live1473 coloured1473 = result1473 := by
  rw [tree1473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1474_agree_conditional : tree1474 = literal1474 := by
  rw [tree1474_def]
  rfl
theorem node1474_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1474 live1474 coloured1474 = result1474 := by
  rw [tree1474_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1475_agree_conditional
    (child0 : tree1473 = literal1473)
    (child1 : tree1474 = literal1474) : tree1475 = literal1475 := by
  rw [tree1475_def, child0, child1]
  rfl
theorem node1475_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1473 live1473 coloured1473 = result1473)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1474 live1474 coloured1474 = result1474) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1475 live1475 coloured1475 = result1475 := by
  rw [tree1475_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1473 coloured1473 at child
  try dsimp only [live1475, coloured1475]
  rw [child]
  dsimp only [result1473]
  have child := child1
  unfold live1474 coloured1474 at child
  try dsimp only [live1475, coloured1475]
  rw [child]
  dsimp only [result1474]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1476_agree_conditional : tree1476 = literal1476 := by
  rw [tree1476_def]
  rfl
theorem node1476_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1476 live1476 coloured1476 = result1476 := by
  rw [tree1476_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1477_agree_conditional : tree1477 = literal1477 := by
  rw [tree1477_def]
  rfl
theorem node1477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1477 live1477 coloured1477 = result1477 := by
  rw [tree1477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1478_agree_conditional
    (child0 : tree1476 = literal1476)
    (child1 : tree1477 = literal1477) : tree1478 = literal1478 := by
  rw [tree1478_def, child0, child1]
  rfl
theorem node1478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1476 live1476 coloured1476 = result1476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1477 live1477 coloured1477 = result1477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1478 live1478 coloured1478 = result1478 := by
  rw [tree1478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1476 coloured1476 at child
  try dsimp only [live1478, coloured1478]
  rw [child]
  dsimp only [result1476]
  have child := child1
  unfold live1477 coloured1477 at child
  try dsimp only [live1478, coloured1478]
  rw [child]
  dsimp only [result1477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1479_agree_conditional : tree1479 = literal1479 := by
  rw [tree1479_def]
  rfl
theorem node1479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1479 live1479 coloured1479 = result1479 := by
  rw [tree1479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1480_agree_conditional
    (child0 : tree1478 = literal1478)
    (child1 : tree1479 = literal1479) : tree1480 = literal1480 := by
  rw [tree1480_def, child0, child1]
  rfl
theorem node1480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1478 live1478 coloured1478 = result1478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1479 live1479 coloured1479 = result1479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1480 live1480 coloured1480 = result1480 := by
  rw [tree1480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1478 coloured1478 at child
  try dsimp only [live1480, coloured1480]
  rw [child]
  dsimp only [result1478]
  have child := child1
  unfold live1479 coloured1479 at child
  try dsimp only [live1480, coloured1480]
  rw [child]
  dsimp only [result1479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1481_agree_conditional
    (child0 : tree1475 = literal1475)
    (child1 : tree1480 = literal1480) : tree1481 = literal1481 := by
  rw [tree1481_def, child0, child1]
  rfl
theorem node1481_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1475 live1475 coloured1475 = result1475)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1480 live1480 coloured1480 = result1480) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1481 live1481 coloured1481 = result1481 := by
  rw [tree1481_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1475 coloured1475 at child
  try dsimp only [live1481, coloured1481]
  rw [child]
  dsimp only [result1475]
  have child := child1
  unfold live1480 coloured1480 at child
  try dsimp only [live1481, coloured1481]
  rw [child]
  dsimp only [result1480]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1482_agree_conditional
    (child0 : tree1472 = literal1472)
    (child1 : tree1481 = literal1481) : tree1482 = literal1482 := by
  rw [tree1482_def, child0, child1]
  rfl
theorem node1482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1472 live1472 coloured1472 = result1472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1481 live1481 coloured1481 = result1481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1482 live1482 coloured1482 = result1482 := by
  rw [tree1482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1472 coloured1472 at child
  try dsimp only [live1482, coloured1482]
  rw [child]
  dsimp only [result1472]
  have child := child1
  unfold live1481 coloured1481 at child
  try dsimp only [live1482, coloured1482]
  rw [child]
  dsimp only [result1481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1483_agree_conditional : tree1483 = literal1483 := by
  rw [tree1483_def]
  rfl
theorem node1483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1483 live1483 coloured1483 = result1483 := by
  rw [tree1483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1484_agree_conditional
    (child0 : tree1482 = literal1482)
    (child1 : tree1483 = literal1483) : tree1484 = literal1484 := by
  rw [tree1484_def, child0, child1]
  rfl
theorem node1484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1482 live1482 coloured1482 = result1482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1483 live1483 coloured1483 = result1483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1484 live1484 coloured1484 = result1484 := by
  rw [tree1484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1482 coloured1482 at child
  try dsimp only [live1484, coloured1484]
  rw [child]
  dsimp only [result1482]
  have child := child1
  unfold live1483 coloured1483 at child
  try dsimp only [live1484, coloured1484]
  rw [child]
  dsimp only [result1483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1485_agree_conditional : tree1485 = literal1485 := by
  rw [tree1485_def]
  rfl
theorem node1485_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1485 live1485 coloured1485 = result1485 := by
  rw [tree1485_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1486_agree_conditional
    (child0 : tree1484 = literal1484)
    (child1 : tree1485 = literal1485) : tree1486 = literal1486 := by
  rw [tree1486_def, child0, child1]
  rfl
theorem node1486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1484 live1484 coloured1484 = result1484)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1485 live1485 coloured1485 = result1485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1486 live1486 coloured1486 = result1486 := by
  rw [tree1486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1484 coloured1484 at child
  try dsimp only [live1486, coloured1486]
  rw [child]
  dsimp only [result1484]
  have child := child1
  unfold live1485 coloured1485 at child
  try dsimp only [live1486, coloured1486]
  rw [child]
  dsimp only [result1485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1487_agree_conditional : tree1487 = literal1487 := by
  rw [tree1487_def]
  rfl
theorem node1487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1487 live1487 coloured1487 = result1487 := by
  rw [tree1487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1488_agree_conditional
    (child0 : tree1486 = literal1486)
    (child1 : tree1487 = literal1487) : tree1488 = literal1488 := by
  rw [tree1488_def, child0, child1]
  rfl
theorem node1488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1486 live1486 coloured1486 = result1486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1487 live1487 coloured1487 = result1487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1488 live1488 coloured1488 = result1488 := by
  rw [tree1488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1486 coloured1486 at child
  try dsimp only [live1488, coloured1488]
  rw [child]
  dsimp only [result1486]
  have child := child1
  unfold live1487 coloured1487 at child
  try dsimp only [live1488, coloured1488]
  rw [child]
  dsimp only [result1487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1489_agree_conditional : tree1489 = literal1489 := by
  rw [tree1489_def]
  rfl
theorem node1489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1489 live1489 coloured1489 = result1489 := by
  rw [tree1489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1490_agree_conditional
    (child0 : tree1488 = literal1488)
    (child1 : tree1489 = literal1489) : tree1490 = literal1490 := by
  rw [tree1490_def, child0, child1]
  rfl
theorem node1490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1488 live1488 coloured1488 = result1488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1489 live1489 coloured1489 = result1489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1490 live1490 coloured1490 = result1490 := by
  rw [tree1490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1488 coloured1488 at child
  try dsimp only [live1490, coloured1490]
  rw [child]
  dsimp only [result1488]
  have child := child1
  unfold live1489 coloured1489 at child
  try dsimp only [live1490, coloured1490]
  rw [child]
  dsimp only [result1489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1491_agree_conditional : tree1491 = literal1491 := by
  rw [tree1491_def]
  rfl
theorem node1491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1491 live1491 coloured1491 = result1491 := by
  rw [tree1491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1492_agree_conditional
    (child0 : tree1490 = literal1490)
    (child1 : tree1491 = literal1491) : tree1492 = literal1492 := by
  rw [tree1492_def, child0, child1]
  rfl
theorem node1492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1490 live1490 coloured1490 = result1490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1491 live1491 coloured1491 = result1491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1492 live1492 coloured1492 = result1492 := by
  rw [tree1492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1490 coloured1490 at child
  try dsimp only [live1492, coloured1492]
  rw [child]
  dsimp only [result1490]
  have child := child1
  unfold live1491 coloured1491 at child
  try dsimp only [live1492, coloured1492]
  rw [child]
  dsimp only [result1491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1493_agree_conditional : tree1493 = literal1493 := by
  rw [tree1493_def]
  rfl
theorem node1493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1493 live1493 coloured1493 = result1493 := by
  rw [tree1493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1494_agree_conditional
    (child0 : tree1492 = literal1492)
    (child1 : tree1493 = literal1493) : tree1494 = literal1494 := by
  rw [tree1494_def, child0, child1]
  rfl
theorem node1494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1492 live1492 coloured1492 = result1492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1493 live1493 coloured1493 = result1493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1494 live1494 coloured1494 = result1494 := by
  rw [tree1494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1492 coloured1492 at child
  try dsimp only [live1494, coloured1494]
  rw [child]
  dsimp only [result1492]
  have child := child1
  unfold live1493 coloured1493 at child
  try dsimp only [live1494, coloured1494]
  rw [child]
  dsimp only [result1493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1495_agree_conditional : tree1495 = literal1495 := by
  rw [tree1495_def]
  rfl
theorem node1495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1495 live1495 coloured1495 = result1495 := by
  rw [tree1495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1496_agree_conditional
    (child0 : tree1494 = literal1494)
    (child1 : tree1495 = literal1495) : tree1496 = literal1496 := by
  rw [tree1496_def, child0, child1]
  rfl
theorem node1496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1494 live1494 coloured1494 = result1494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1495 live1495 coloured1495 = result1495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1496 live1496 coloured1496 = result1496 := by
  rw [tree1496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1494 coloured1494 at child
  try dsimp only [live1496, coloured1496]
  rw [child]
  dsimp only [result1494]
  have child := child1
  unfold live1495 coloured1495 at child
  try dsimp only [live1496, coloured1496]
  rw [child]
  dsimp only [result1495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1497_agree_conditional : tree1497 = literal1497 := by
  rw [tree1497_def]
  rfl
theorem node1497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1497 live1497 coloured1497 = result1497 := by
  rw [tree1497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1498_agree_conditional
    (child0 : tree1496 = literal1496)
    (child1 : tree1497 = literal1497) : tree1498 = literal1498 := by
  rw [tree1498_def, child0, child1]
  rfl
theorem node1498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1496 live1496 coloured1496 = result1496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1497 live1497 coloured1497 = result1497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1498 live1498 coloured1498 = result1498 := by
  rw [tree1498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1496 coloured1496 at child
  try dsimp only [live1498, coloured1498]
  rw [child]
  dsimp only [result1496]
  have child := child1
  unfold live1497 coloured1497 at child
  try dsimp only [live1498, coloured1498]
  rw [child]
  dsimp only [result1497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1499_agree_conditional : tree1499 = literal1499 := by
  rw [tree1499_def]
  rfl
theorem node1499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1499 live1499 coloured1499 = result1499 := by
  rw [tree1499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1500_agree_conditional
    (child0 : tree1498 = literal1498)
    (child1 : tree1499 = literal1499) : tree1500 = literal1500 := by
  rw [tree1500_def, child0, child1]
  rfl
theorem node1500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1498 live1498 coloured1498 = result1498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1499 live1499 coloured1499 = result1499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1500 live1500 coloured1500 = result1500 := by
  rw [tree1500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1498 coloured1498 at child
  try dsimp only [live1500, coloured1500]
  rw [child]
  dsimp only [result1498]
  have child := child1
  unfold live1499 coloured1499 at child
  try dsimp only [live1500, coloured1500]
  rw [child]
  dsimp only [result1499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1501_agree_conditional : tree1501 = literal1501 := by
  rw [tree1501_def]
  rfl
theorem node1501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1501 live1501 coloured1501 = result1501 := by
  rw [tree1501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1502_agree_conditional
    (child0 : tree1500 = literal1500)
    (child1 : tree1501 = literal1501) : tree1502 = literal1502 := by
  rw [tree1502_def, child0, child1]
  rfl
theorem node1502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1500 live1500 coloured1500 = result1500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1501 live1501 coloured1501 = result1501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1502 live1502 coloured1502 = result1502 := by
  rw [tree1502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1500 coloured1500 at child
  try dsimp only [live1502, coloured1502]
  rw [child]
  dsimp only [result1500]
  have child := child1
  unfold live1501 coloured1501 at child
  try dsimp only [live1502, coloured1502]
  rw [child]
  dsimp only [result1501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1503_agree_conditional : tree1503 = literal1503 := by
  rw [tree1503_def]
  rfl
theorem node1503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1503 live1503 coloured1503 = result1503 := by
  rw [tree1503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1504_agree_conditional
    (child0 : tree1502 = literal1502)
    (child1 : tree1503 = literal1503) : tree1504 = literal1504 := by
  rw [tree1504_def, child0, child1]
  rfl
theorem node1504_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1502 live1502 coloured1502 = result1502)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1503 live1503 coloured1503 = result1503) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1504 live1504 coloured1504 = result1504 := by
  rw [tree1504_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1502 coloured1502 at child
  try dsimp only [live1504, coloured1504]
  rw [child]
  dsimp only [result1502]
  have child := child1
  unfold live1503 coloured1503 at child
  try dsimp only [live1504, coloured1504]
  rw [child]
  dsimp only [result1503]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1505_agree_conditional : tree1505 = literal1505 := by
  rw [tree1505_def]
  rfl
theorem node1505_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1505 live1505 coloured1505 = result1505 := by
  rw [tree1505_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1506_agree_conditional
    (child0 : tree1504 = literal1504)
    (child1 : tree1505 = literal1505) : tree1506 = literal1506 := by
  rw [tree1506_def, child0, child1]
  rfl
theorem node1506_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1504 live1504 coloured1504 = result1504)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1505 live1505 coloured1505 = result1505) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1506 live1506 coloured1506 = result1506 := by
  rw [tree1506_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1504 coloured1504 at child
  try dsimp only [live1506, coloured1506]
  rw [child]
  dsimp only [result1504]
  have child := child1
  unfold live1505 coloured1505 at child
  try dsimp only [live1506, coloured1506]
  rw [child]
  dsimp only [result1505]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1507_agree_conditional : tree1507 = literal1507 := by
  rw [tree1507_def]
  rfl
theorem node1507_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1507 live1507 coloured1507 = result1507 := by
  rw [tree1507_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1508_agree_conditional : tree1508 = literal1508 := by
  rw [tree1508_def]
  rfl
theorem node1508_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1508 live1508 coloured1508 = result1508 := by
  rw [tree1508_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1509_agree_conditional
    (child0 : tree1507 = literal1507)
    (child1 : tree1508 = literal1508) : tree1509 = literal1509 := by
  rw [tree1509_def, child0, child1]
  rfl
theorem node1509_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1507 live1507 coloured1507 = result1507)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1508 live1508 coloured1508 = result1508) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1509 live1509 coloured1509 = result1509 := by
  rw [tree1509_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1507 coloured1507 at child
  try dsimp only [live1509, coloured1509]
  rw [child]
  dsimp only [result1507]
  have child := child1
  unfold live1508 coloured1508 at child
  try dsimp only [live1509, coloured1509]
  rw [child]
  dsimp only [result1508]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1510_agree_conditional : tree1510 = literal1510 := by
  rw [tree1510_def]
  rfl
theorem node1510_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1510 live1510 coloured1510 = result1510 := by
  rw [tree1510_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1511_agree_conditional
    (child0 : tree1509 = literal1509)
    (child1 : tree1510 = literal1510) : tree1511 = literal1511 := by
  rw [tree1511_def, child0, child1]
  rfl
theorem node1511_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1509 live1509 coloured1509 = result1509)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1510 live1510 coloured1510 = result1510) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1511 live1511 coloured1511 = result1511 := by
  rw [tree1511_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1509 coloured1509 at child
  try dsimp only [live1511, coloured1511]
  rw [child]
  dsimp only [result1509]
  have child := child1
  unfold live1510 coloured1510 at child
  try dsimp only [live1511, coloured1511]
  rw [child]
  dsimp only [result1510]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1512_agree_conditional : tree1512 = literal1512 := by
  rw [tree1512_def]
  rfl
theorem node1512_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1512 live1512 coloured1512 = result1512 := by
  rw [tree1512_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1513_agree_conditional
    (child0 : tree1511 = literal1511)
    (child1 : tree1512 = literal1512) : tree1513 = literal1513 := by
  rw [tree1513_def, child0, child1]
  rfl
theorem node1513_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1511 live1511 coloured1511 = result1511)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1512 live1512 coloured1512 = result1512) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1513 live1513 coloured1513 = result1513 := by
  rw [tree1513_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1511 coloured1511 at child
  try dsimp only [live1513, coloured1513]
  rw [child]
  dsimp only [result1511]
  have child := child1
  unfold live1512 coloured1512 at child
  try dsimp only [live1513, coloured1513]
  rw [child]
  dsimp only [result1512]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1514_agree_conditional : tree1514 = literal1514 := by
  rw [tree1514_def]
  rfl
theorem node1514_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1514 live1514 coloured1514 = result1514 := by
  rw [tree1514_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1515_agree_conditional
    (child0 : tree1513 = literal1513)
    (child1 : tree1514 = literal1514) : tree1515 = literal1515 := by
  rw [tree1515_def, child0, child1]
  rfl
theorem node1515_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1513 live1513 coloured1513 = result1513)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1514 live1514 coloured1514 = result1514) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1515 live1515 coloured1515 = result1515 := by
  rw [tree1515_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1513 coloured1513 at child
  try dsimp only [live1515, coloured1515]
  rw [child]
  dsimp only [result1513]
  have child := child1
  unfold live1514 coloured1514 at child
  try dsimp only [live1515, coloured1515]
  rw [child]
  dsimp only [result1514]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1516_agree_conditional : tree1516 = literal1516 := by
  rw [tree1516_def]
  rfl
theorem node1516_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1516 live1516 coloured1516 = result1516 := by
  rw [tree1516_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1517_agree_conditional
    (child0 : tree1515 = literal1515)
    (child1 : tree1516 = literal1516) : tree1517 = literal1517 := by
  rw [tree1517_def, child0, child1]
  rfl
theorem node1517_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1515 live1515 coloured1515 = result1515)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1516 live1516 coloured1516 = result1516) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1517 live1517 coloured1517 = result1517 := by
  rw [tree1517_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1515 coloured1515 at child
  try dsimp only [live1517, coloured1517]
  rw [child]
  dsimp only [result1515]
  have child := child1
  unfold live1516 coloured1516 at child
  try dsimp only [live1517, coloured1517]
  rw [child]
  dsimp only [result1516]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1518_agree_conditional : tree1518 = literal1518 := by
  rw [tree1518_def]
  rfl
theorem node1518_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1518 live1518 coloured1518 = result1518 := by
  rw [tree1518_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1519_agree_conditional
    (child0 : tree1517 = literal1517)
    (child1 : tree1518 = literal1518) : tree1519 = literal1519 := by
  rw [tree1519_def, child0, child1]
  rfl
theorem node1519_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1517 live1517 coloured1517 = result1517)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1518 live1518 coloured1518 = result1518) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1519 live1519 coloured1519 = result1519 := by
  rw [tree1519_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1517 coloured1517 at child
  try dsimp only [live1519, coloured1519]
  rw [child]
  dsimp only [result1517]
  have child := child1
  unfold live1518 coloured1518 at child
  try dsimp only [live1519, coloured1519]
  rw [child]
  dsimp only [result1518]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1520_agree_conditional : tree1520 = literal1520 := by
  rw [tree1520_def]
  rfl
theorem node1520_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1520 live1520 coloured1520 = result1520 := by
  rw [tree1520_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1521_agree_conditional
    (child0 : tree1519 = literal1519)
    (child1 : tree1520 = literal1520) : tree1521 = literal1521 := by
  rw [tree1521_def, child0, child1]
  rfl
theorem node1521_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1519 live1519 coloured1519 = result1519)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1520 live1520 coloured1520 = result1520) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1521 live1521 coloured1521 = result1521 := by
  rw [tree1521_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1519 coloured1519 at child
  try dsimp only [live1521, coloured1521]
  rw [child]
  dsimp only [result1519]
  have child := child1
  unfold live1520 coloured1520 at child
  try dsimp only [live1521, coloured1521]
  rw [child]
  dsimp only [result1520]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1522_agree_conditional : tree1522 = literal1522 := by
  rw [tree1522_def]
  rfl
theorem node1522_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1522 live1522 coloured1522 = result1522 := by
  rw [tree1522_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1523_agree_conditional
    (child0 : tree1521 = literal1521)
    (child1 : tree1522 = literal1522) : tree1523 = literal1523 := by
  rw [tree1523_def, child0, child1]
  rfl
theorem node1523_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1521 live1521 coloured1521 = result1521)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1522 live1522 coloured1522 = result1522) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1523 live1523 coloured1523 = result1523 := by
  rw [tree1523_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1521 coloured1521 at child
  try dsimp only [live1523, coloured1523]
  rw [child]
  dsimp only [result1521]
  have child := child1
  unfold live1522 coloured1522 at child
  try dsimp only [live1523, coloured1523]
  rw [child]
  dsimp only [result1522]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1524_agree_conditional : tree1524 = literal1524 := by
  rw [tree1524_def]
  rfl
theorem node1524_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1524 live1524 coloured1524 = result1524 := by
  rw [tree1524_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1525_agree_conditional
    (child0 : tree1523 = literal1523)
    (child1 : tree1524 = literal1524) : tree1525 = literal1525 := by
  rw [tree1525_def, child0, child1]
  rfl
theorem node1525_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1523 live1523 coloured1523 = result1523)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1524 live1524 coloured1524 = result1524) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1525 live1525 coloured1525 = result1525 := by
  rw [tree1525_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1523 coloured1523 at child
  try dsimp only [live1525, coloured1525]
  rw [child]
  dsimp only [result1523]
  have child := child1
  unfold live1524 coloured1524 at child
  try dsimp only [live1525, coloured1525]
  rw [child]
  dsimp only [result1524]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1526_agree_conditional : tree1526 = literal1526 := by
  rw [tree1526_def]
  rfl
theorem node1526_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1526 live1526 coloured1526 = result1526 := by
  rw [tree1526_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1527_agree_conditional
    (child0 : tree1525 = literal1525)
    (child1 : tree1526 = literal1526) : tree1527 = literal1527 := by
  rw [tree1527_def, child0, child1]
  rfl
theorem node1527_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1525 live1525 coloured1525 = result1525)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1526 live1526 coloured1526 = result1526) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1527 live1527 coloured1527 = result1527 := by
  rw [tree1527_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1525 coloured1525 at child
  try dsimp only [live1527, coloured1527]
  rw [child]
  dsimp only [result1525]
  have child := child1
  unfold live1526 coloured1526 at child
  try dsimp only [live1527, coloured1527]
  rw [child]
  dsimp only [result1526]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1528_agree_conditional : tree1528 = literal1528 := by
  rw [tree1528_def]
  rfl
theorem node1528_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1528 live1528 coloured1528 = result1528 := by
  rw [tree1528_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1529_agree_conditional
    (child0 : tree1527 = literal1527)
    (child1 : tree1528 = literal1528) : tree1529 = literal1529 := by
  rw [tree1529_def, child0, child1]
  rfl
theorem node1529_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1527 live1527 coloured1527 = result1527)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1528 live1528 coloured1528 = result1528) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1529 live1529 coloured1529 = result1529 := by
  rw [tree1529_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1527 coloured1527 at child
  try dsimp only [live1529, coloured1529]
  rw [child]
  dsimp only [result1527]
  have child := child1
  unfold live1528 coloured1528 at child
  try dsimp only [live1529, coloured1529]
  rw [child]
  dsimp only [result1528]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1530_agree_conditional : tree1530 = literal1530 := by
  rw [tree1530_def]
  rfl
theorem node1530_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1530 live1530 coloured1530 = result1530 := by
  rw [tree1530_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1531_agree_conditional
    (child0 : tree1529 = literal1529)
    (child1 : tree1530 = literal1530) : tree1531 = literal1531 := by
  rw [tree1531_def, child0, child1]
  rfl
theorem node1531_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1529 live1529 coloured1529 = result1529)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1530 live1530 coloured1530 = result1530) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1531 live1531 coloured1531 = result1531 := by
  rw [tree1531_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1529 coloured1529 at child
  try dsimp only [live1531, coloured1531]
  rw [child]
  dsimp only [result1529]
  have child := child1
  unfold live1530 coloured1530 at child
  try dsimp only [live1531, coloured1531]
  rw [child]
  dsimp only [result1530]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1532_agree_conditional : tree1532 = literal1532 := by
  rw [tree1532_def]
  rfl
theorem node1532_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1532 live1532 coloured1532 = result1532 := by
  rw [tree1532_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1533_agree_conditional
    (child0 : tree1531 = literal1531)
    (child1 : tree1532 = literal1532) : tree1533 = literal1533 := by
  rw [tree1533_def, child0, child1]
  rfl
theorem node1533_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1531 live1531 coloured1531 = result1531)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1532 live1532 coloured1532 = result1532) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1533 live1533 coloured1533 = result1533 := by
  rw [tree1533_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1531 coloured1531 at child
  try dsimp only [live1533, coloured1533]
  rw [child]
  dsimp only [result1531]
  have child := child1
  unfold live1532 coloured1532 at child
  try dsimp only [live1533, coloured1533]
  rw [child]
  dsimp only [result1532]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1534_agree_conditional : tree1534 = literal1534 := by
  rw [tree1534_def]
  rfl
theorem node1534_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1534 live1534 coloured1534 = result1534 := by
  rw [tree1534_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1535_agree_conditional : tree1535 = literal1535 := by
  rw [tree1535_def]
  rfl
theorem node1535_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1535 live1535 coloured1535 = result1535 := by
  rw [tree1535_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages875
