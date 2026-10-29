import InitECandidate.Proofs.ClashStages233.Proof13
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages233
theorem tree1344_agree : tree1344 = literal1344 := by
  rw [tree1344_def]
  rfl
theorem node1344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1344 live1344 coloured1344 = result1344 := by
  rw [tree1344_def]
  try dsimp only [colour, result1344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1345_agree : tree1345 = literal1345 := by
  rw [tree1345_def, tree1343_agree, tree1344_agree]
  rfl
theorem node1345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1345 live1345 coloured1345 = result1345 := by
  rw [tree1345_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1343_eq
  unfold live1343 coloured1343 at child
  try dsimp only [live1345, coloured1345]
  rw [child]
  dsimp only [result1343]
  have child := node1344_eq
  unfold live1344 coloured1344 at child
  try dsimp only [live1345, coloured1345]
  rw [child]
  dsimp only [result1344]
  try dsimp only [colour, result1345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1346_agree : tree1346 = literal1346 := by
  rw [tree1346_def]
  rfl
theorem node1346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1346 live1346 coloured1346 = result1346 := by
  rw [tree1346_def]
  try dsimp only [colour, result1346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1347_agree : tree1347 = literal1347 := by
  rw [tree1347_def]
  rfl
theorem node1347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1347 live1347 coloured1347 = result1347 := by
  rw [tree1347_def]
  try dsimp only [colour, result1347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1348_agree : tree1348 = literal1348 := by
  rw [tree1348_def, tree1346_agree, tree1347_agree]
  rfl
theorem node1348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1348 live1348 coloured1348 = result1348 := by
  rw [tree1348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1346_eq
  unfold live1346 coloured1346 at child
  try dsimp only [live1348, coloured1348]
  rw [child]
  dsimp only [result1346]
  have child := node1347_eq
  unfold live1347 coloured1347 at child
  try dsimp only [live1348, coloured1348]
  rw [child]
  dsimp only [result1347]
  try dsimp only [colour, result1348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1349_agree : tree1349 = literal1349 := by
  rw [tree1349_def]
  rfl
theorem node1349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1349 live1349 coloured1349 = result1349 := by
  rw [tree1349_def]
  try dsimp only [colour, result1349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1350_agree : tree1350 = literal1350 := by
  rw [tree1350_def, tree1348_agree, tree1349_agree]
  rfl
theorem node1350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1350 live1350 coloured1350 = result1350 := by
  rw [tree1350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1348_eq
  unfold live1348 coloured1348 at child
  try dsimp only [live1350, coloured1350]
  rw [child]
  dsimp only [result1348]
  have child := node1349_eq
  unfold live1349 coloured1349 at child
  try dsimp only [live1350, coloured1350]
  rw [child]
  dsimp only [result1349]
  try dsimp only [colour, result1350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1351_agree : tree1351 = literal1351 := by
  rw [tree1351_def, tree1345_agree, tree1350_agree]
  rfl
theorem node1351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1351 live1351 coloured1351 = result1351 := by
  rw [tree1351_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1345_eq
  unfold live1345 coloured1345 at child
  try dsimp only [live1351, coloured1351]
  rw [child]
  dsimp only [result1345]
  have child := node1350_eq
  unfold live1350 coloured1350 at child
  try dsimp only [live1351, coloured1351]
  rw [child]
  dsimp only [result1350]
  try dsimp only [colour, result1351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1352_agree : tree1352 = literal1352 := by
  rw [tree1352_def, tree1342_agree, tree1351_agree]
  rfl
theorem node1352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1352 live1352 coloured1352 = result1352 := by
  rw [tree1352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1342_eq
  unfold live1342 coloured1342 at child
  try dsimp only [live1352, coloured1352]
  rw [child]
  dsimp only [result1342]
  have child := node1351_eq
  unfold live1351 coloured1351 at child
  try dsimp only [live1352, coloured1352]
  rw [child]
  dsimp only [result1351]
  try dsimp only [colour, result1352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1353_agree : tree1353 = literal1353 := by
  rw [tree1353_def]
  rfl
theorem node1353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1353 live1353 coloured1353 = result1353 := by
  rw [tree1353_def]
  try dsimp only [colour, result1353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1354_agree : tree1354 = literal1354 := by
  rw [tree1354_def, tree1352_agree, tree1353_agree]
  rfl
theorem node1354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1354 live1354 coloured1354 = result1354 := by
  rw [tree1354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1352_eq
  unfold live1352 coloured1352 at child
  try dsimp only [live1354, coloured1354]
  rw [child]
  dsimp only [result1352]
  have child := node1353_eq
  unfold live1353 coloured1353 at child
  try dsimp only [live1354, coloured1354]
  rw [child]
  dsimp only [result1353]
  try dsimp only [colour, result1354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1355_agree : tree1355 = literal1355 := by
  rw [tree1355_def]
  rfl
theorem node1355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1355 live1355 coloured1355 = result1355 := by
  rw [tree1355_def]
  try dsimp only [colour, result1355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1356_agree : tree1356 = literal1356 := by
  rw [tree1356_def, tree1354_agree, tree1355_agree]
  rfl
theorem node1356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1356 live1356 coloured1356 = result1356 := by
  rw [tree1356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1354_eq
  unfold live1354 coloured1354 at child
  try dsimp only [live1356, coloured1356]
  rw [child]
  dsimp only [result1354]
  have child := node1355_eq
  unfold live1355 coloured1355 at child
  try dsimp only [live1356, coloured1356]
  rw [child]
  dsimp only [result1355]
  try dsimp only [colour, result1356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1357_agree : tree1357 = literal1357 := by
  rw [tree1357_def]
  rfl
theorem node1357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1357 live1357 coloured1357 = result1357 := by
  rw [tree1357_def]
  try dsimp only [colour, result1357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1358_agree : tree1358 = literal1358 := by
  rw [tree1358_def, tree1356_agree, tree1357_agree]
  rfl
theorem node1358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1358 live1358 coloured1358 = result1358 := by
  rw [tree1358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1356_eq
  unfold live1356 coloured1356 at child
  try dsimp only [live1358, coloured1358]
  rw [child]
  dsimp only [result1356]
  have child := node1357_eq
  unfold live1357 coloured1357 at child
  try dsimp only [live1358, coloured1358]
  rw [child]
  dsimp only [result1357]
  try dsimp only [colour, result1358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1359_agree : tree1359 = literal1359 := by
  rw [tree1359_def]
  rfl
theorem node1359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1359 live1359 coloured1359 = result1359 := by
  rw [tree1359_def]
  try dsimp only [colour, result1359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1360_agree : tree1360 = literal1360 := by
  rw [tree1360_def, tree1358_agree, tree1359_agree]
  rfl
theorem node1360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1360 live1360 coloured1360 = result1360 := by
  rw [tree1360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1358_eq
  unfold live1358 coloured1358 at child
  try dsimp only [live1360, coloured1360]
  rw [child]
  dsimp only [result1358]
  have child := node1359_eq
  unfold live1359 coloured1359 at child
  try dsimp only [live1360, coloured1360]
  rw [child]
  dsimp only [result1359]
  try dsimp only [colour, result1360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1361_agree : tree1361 = literal1361 := by
  rw [tree1361_def]
  rfl
theorem node1361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1361 live1361 coloured1361 = result1361 := by
  rw [tree1361_def]
  try dsimp only [colour, result1361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1362_agree : tree1362 = literal1362 := by
  rw [tree1362_def]
  rfl
theorem node1362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1362 live1362 coloured1362 = result1362 := by
  rw [tree1362_def]
  try dsimp only [colour, result1362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1363_agree : tree1363 = literal1363 := by
  rw [tree1363_def, tree1361_agree, tree1362_agree]
  rfl
theorem node1363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1363 live1363 coloured1363 = result1363 := by
  rw [tree1363_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1361_eq
  unfold live1361 coloured1361 at child
  try dsimp only [live1363, coloured1363]
  rw [child]
  dsimp only [result1361]
  have child := node1362_eq
  unfold live1362 coloured1362 at child
  try dsimp only [live1363, coloured1363]
  rw [child]
  dsimp only [result1362]
  try dsimp only [colour, result1363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1364_agree : tree1364 = literal1364 := by
  rw [tree1364_def]
  rfl
theorem node1364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1364 live1364 coloured1364 = result1364 := by
  rw [tree1364_def]
  try dsimp only [colour, result1364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1365_agree : tree1365 = literal1365 := by
  rw [tree1365_def]
  rfl
theorem node1365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1365 live1365 coloured1365 = result1365 := by
  rw [tree1365_def]
  try dsimp only [colour, result1365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1366_agree : tree1366 = literal1366 := by
  rw [tree1366_def, tree1364_agree, tree1365_agree]
  rfl
theorem node1366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1366 live1366 coloured1366 = result1366 := by
  rw [tree1366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1364_eq
  unfold live1364 coloured1364 at child
  try dsimp only [live1366, coloured1366]
  rw [child]
  dsimp only [result1364]
  have child := node1365_eq
  unfold live1365 coloured1365 at child
  try dsimp only [live1366, coloured1366]
  rw [child]
  dsimp only [result1365]
  try dsimp only [colour, result1366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1367_agree : tree1367 = literal1367 := by
  rw [tree1367_def]
  rfl
theorem node1367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1367 live1367 coloured1367 = result1367 := by
  rw [tree1367_def]
  try dsimp only [colour, result1367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1368_agree : tree1368 = literal1368 := by
  rw [tree1368_def, tree1366_agree, tree1367_agree]
  rfl
theorem node1368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1368 live1368 coloured1368 = result1368 := by
  rw [tree1368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1366_eq
  unfold live1366 coloured1366 at child
  try dsimp only [live1368, coloured1368]
  rw [child]
  dsimp only [result1366]
  have child := node1367_eq
  unfold live1367 coloured1367 at child
  try dsimp only [live1368, coloured1368]
  rw [child]
  dsimp only [result1367]
  try dsimp only [colour, result1368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1369_agree : tree1369 = literal1369 := by
  rw [tree1369_def, tree1363_agree, tree1368_agree]
  rfl
theorem node1369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1369 live1369 coloured1369 = result1369 := by
  rw [tree1369_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1363_eq
  unfold live1363 coloured1363 at child
  try dsimp only [live1369, coloured1369]
  rw [child]
  dsimp only [result1363]
  have child := node1368_eq
  unfold live1368 coloured1368 at child
  try dsimp only [live1369, coloured1369]
  rw [child]
  dsimp only [result1368]
  try dsimp only [colour, result1369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1370_agree : tree1370 = literal1370 := by
  rw [tree1370_def, tree1360_agree, tree1369_agree]
  rfl
theorem node1370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1370 live1370 coloured1370 = result1370 := by
  rw [tree1370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1360_eq
  unfold live1360 coloured1360 at child
  try dsimp only [live1370, coloured1370]
  rw [child]
  dsimp only [result1360]
  have child := node1369_eq
  unfold live1369 coloured1369 at child
  try dsimp only [live1370, coloured1370]
  rw [child]
  dsimp only [result1369]
  try dsimp only [colour, result1370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1371_agree : tree1371 = literal1371 := by
  rw [tree1371_def]
  rfl
theorem node1371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1371 live1371 coloured1371 = result1371 := by
  rw [tree1371_def]
  try dsimp only [colour, result1371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1372_agree : tree1372 = literal1372 := by
  rw [tree1372_def, tree1370_agree, tree1371_agree]
  rfl
theorem node1372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1372 live1372 coloured1372 = result1372 := by
  rw [tree1372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1370_eq
  unfold live1370 coloured1370 at child
  try dsimp only [live1372, coloured1372]
  rw [child]
  dsimp only [result1370]
  have child := node1371_eq
  unfold live1371 coloured1371 at child
  try dsimp only [live1372, coloured1372]
  rw [child]
  dsimp only [result1371]
  try dsimp only [colour, result1372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1373_agree : tree1373 = literal1373 := by
  rw [tree1373_def]
  rfl
theorem node1373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1373 live1373 coloured1373 = result1373 := by
  rw [tree1373_def]
  try dsimp only [colour, result1373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1374_agree : tree1374 = literal1374 := by
  rw [tree1374_def, tree1372_agree, tree1373_agree]
  rfl
theorem node1374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1374 live1374 coloured1374 = result1374 := by
  rw [tree1374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1372_eq
  unfold live1372 coloured1372 at child
  try dsimp only [live1374, coloured1374]
  rw [child]
  dsimp only [result1372]
  have child := node1373_eq
  unfold live1373 coloured1373 at child
  try dsimp only [live1374, coloured1374]
  rw [child]
  dsimp only [result1373]
  try dsimp only [colour, result1374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1375_agree : tree1375 = literal1375 := by
  rw [tree1375_def]
  rfl
theorem node1375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1375 live1375 coloured1375 = result1375 := by
  rw [tree1375_def]
  try dsimp only [colour, result1375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1376_agree : tree1376 = literal1376 := by
  rw [tree1376_def, tree1374_agree, tree1375_agree]
  rfl
theorem node1376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1376 live1376 coloured1376 = result1376 := by
  rw [tree1376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1374_eq
  unfold live1374 coloured1374 at child
  try dsimp only [live1376, coloured1376]
  rw [child]
  dsimp only [result1374]
  have child := node1375_eq
  unfold live1375 coloured1375 at child
  try dsimp only [live1376, coloured1376]
  rw [child]
  dsimp only [result1375]
  try dsimp only [colour, result1376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1377_agree : tree1377 = literal1377 := by
  rw [tree1377_def]
  rfl
theorem node1377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1377 live1377 coloured1377 = result1377 := by
  rw [tree1377_def]
  try dsimp only [colour, result1377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1378_agree : tree1378 = literal1378 := by
  rw [tree1378_def, tree1376_agree, tree1377_agree]
  rfl
theorem node1378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1378 live1378 coloured1378 = result1378 := by
  rw [tree1378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1376_eq
  unfold live1376 coloured1376 at child
  try dsimp only [live1378, coloured1378]
  rw [child]
  dsimp only [result1376]
  have child := node1377_eq
  unfold live1377 coloured1377 at child
  try dsimp only [live1378, coloured1378]
  rw [child]
  dsimp only [result1377]
  try dsimp only [colour, result1378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1379_agree : tree1379 = literal1379 := by
  rw [tree1379_def]
  rfl
theorem node1379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1379 live1379 coloured1379 = result1379 := by
  rw [tree1379_def]
  try dsimp only [colour, result1379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1380_agree : tree1380 = literal1380 := by
  rw [tree1380_def]
  rfl
theorem node1380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1380 live1380 coloured1380 = result1380 := by
  rw [tree1380_def]
  try dsimp only [colour, result1380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1381_agree : tree1381 = literal1381 := by
  rw [tree1381_def, tree1379_agree, tree1380_agree]
  rfl
theorem node1381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1381 live1381 coloured1381 = result1381 := by
  rw [tree1381_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1379_eq
  unfold live1379 coloured1379 at child
  try dsimp only [live1381, coloured1381]
  rw [child]
  dsimp only [result1379]
  have child := node1380_eq
  unfold live1380 coloured1380 at child
  try dsimp only [live1381, coloured1381]
  rw [child]
  dsimp only [result1380]
  try dsimp only [colour, result1381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1382_agree : tree1382 = literal1382 := by
  rw [tree1382_def]
  rfl
theorem node1382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1382 live1382 coloured1382 = result1382 := by
  rw [tree1382_def]
  try dsimp only [colour, result1382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1383_agree : tree1383 = literal1383 := by
  rw [tree1383_def]
  rfl
theorem node1383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1383 live1383 coloured1383 = result1383 := by
  rw [tree1383_def]
  try dsimp only [colour, result1383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1384_agree : tree1384 = literal1384 := by
  rw [tree1384_def, tree1382_agree, tree1383_agree]
  rfl
theorem node1384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1384 live1384 coloured1384 = result1384 := by
  rw [tree1384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1382_eq
  unfold live1382 coloured1382 at child
  try dsimp only [live1384, coloured1384]
  rw [child]
  dsimp only [result1382]
  have child := node1383_eq
  unfold live1383 coloured1383 at child
  try dsimp only [live1384, coloured1384]
  rw [child]
  dsimp only [result1383]
  try dsimp only [colour, result1384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1385_agree : tree1385 = literal1385 := by
  rw [tree1385_def]
  rfl
theorem node1385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1385 live1385 coloured1385 = result1385 := by
  rw [tree1385_def]
  try dsimp only [colour, result1385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1386_agree : tree1386 = literal1386 := by
  rw [tree1386_def, tree1384_agree, tree1385_agree]
  rfl
theorem node1386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1386 live1386 coloured1386 = result1386 := by
  rw [tree1386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1384_eq
  unfold live1384 coloured1384 at child
  try dsimp only [live1386, coloured1386]
  rw [child]
  dsimp only [result1384]
  have child := node1385_eq
  unfold live1385 coloured1385 at child
  try dsimp only [live1386, coloured1386]
  rw [child]
  dsimp only [result1385]
  try dsimp only [colour, result1386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1387_agree : tree1387 = literal1387 := by
  rw [tree1387_def, tree1381_agree, tree1386_agree]
  rfl
theorem node1387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1387 live1387 coloured1387 = result1387 := by
  rw [tree1387_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1381_eq
  unfold live1381 coloured1381 at child
  try dsimp only [live1387, coloured1387]
  rw [child]
  dsimp only [result1381]
  have child := node1386_eq
  unfold live1386 coloured1386 at child
  try dsimp only [live1387, coloured1387]
  rw [child]
  dsimp only [result1386]
  try dsimp only [colour, result1387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1388_agree : tree1388 = literal1388 := by
  rw [tree1388_def, tree1378_agree, tree1387_agree]
  rfl
theorem node1388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1388 live1388 coloured1388 = result1388 := by
  rw [tree1388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1378_eq
  unfold live1378 coloured1378 at child
  try dsimp only [live1388, coloured1388]
  rw [child]
  dsimp only [result1378]
  have child := node1387_eq
  unfold live1387 coloured1387 at child
  try dsimp only [live1388, coloured1388]
  rw [child]
  dsimp only [result1387]
  try dsimp only [colour, result1388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1389_agree : tree1389 = literal1389 := by
  rw [tree1389_def]
  rfl
theorem node1389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1389 live1389 coloured1389 = result1389 := by
  rw [tree1389_def]
  try dsimp only [colour, result1389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1390_agree : tree1390 = literal1390 := by
  rw [tree1390_def, tree1388_agree, tree1389_agree]
  rfl
theorem node1390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1390 live1390 coloured1390 = result1390 := by
  rw [tree1390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1388_eq
  unfold live1388 coloured1388 at child
  try dsimp only [live1390, coloured1390]
  rw [child]
  dsimp only [result1388]
  have child := node1389_eq
  unfold live1389 coloured1389 at child
  try dsimp only [live1390, coloured1390]
  rw [child]
  dsimp only [result1389]
  try dsimp only [colour, result1390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1391_agree : tree1391 = literal1391 := by
  rw [tree1391_def]
  rfl
theorem node1391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1391 live1391 coloured1391 = result1391 := by
  rw [tree1391_def]
  try dsimp only [colour, result1391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1392_agree : tree1392 = literal1392 := by
  rw [tree1392_def, tree1390_agree, tree1391_agree]
  rfl
theorem node1392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1392 live1392 coloured1392 = result1392 := by
  rw [tree1392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1390_eq
  unfold live1390 coloured1390 at child
  try dsimp only [live1392, coloured1392]
  rw [child]
  dsimp only [result1390]
  have child := node1391_eq
  unfold live1391 coloured1391 at child
  try dsimp only [live1392, coloured1392]
  rw [child]
  dsimp only [result1391]
  try dsimp only [colour, result1392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1393_agree : tree1393 = literal1393 := by
  rw [tree1393_def]
  rfl
theorem node1393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1393 live1393 coloured1393 = result1393 := by
  rw [tree1393_def]
  try dsimp only [colour, result1393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1394_agree : tree1394 = literal1394 := by
  rw [tree1394_def, tree1392_agree, tree1393_agree]
  rfl
theorem node1394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1394 live1394 coloured1394 = result1394 := by
  rw [tree1394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1392_eq
  unfold live1392 coloured1392 at child
  try dsimp only [live1394, coloured1394]
  rw [child]
  dsimp only [result1392]
  have child := node1393_eq
  unfold live1393 coloured1393 at child
  try dsimp only [live1394, coloured1394]
  rw [child]
  dsimp only [result1393]
  try dsimp only [colour, result1394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1395_agree : tree1395 = literal1395 := by
  rw [tree1395_def]
  rfl
theorem node1395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1395 live1395 coloured1395 = result1395 := by
  rw [tree1395_def]
  try dsimp only [colour, result1395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1396_agree : tree1396 = literal1396 := by
  rw [tree1396_def, tree1394_agree, tree1395_agree]
  rfl
theorem node1396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1396 live1396 coloured1396 = result1396 := by
  rw [tree1396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1394_eq
  unfold live1394 coloured1394 at child
  try dsimp only [live1396, coloured1396]
  rw [child]
  dsimp only [result1394]
  have child := node1395_eq
  unfold live1395 coloured1395 at child
  try dsimp only [live1396, coloured1396]
  rw [child]
  dsimp only [result1395]
  try dsimp only [colour, result1396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1397_agree : tree1397 = literal1397 := by
  rw [tree1397_def]
  rfl
theorem node1397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1397 live1397 coloured1397 = result1397 := by
  rw [tree1397_def]
  try dsimp only [colour, result1397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1398_agree : tree1398 = literal1398 := by
  rw [tree1398_def]
  rfl
theorem node1398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1398 live1398 coloured1398 = result1398 := by
  rw [tree1398_def]
  try dsimp only [colour, result1398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1399_agree : tree1399 = literal1399 := by
  rw [tree1399_def, tree1397_agree, tree1398_agree]
  rfl
theorem node1399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1399 live1399 coloured1399 = result1399 := by
  rw [tree1399_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1397_eq
  unfold live1397 coloured1397 at child
  try dsimp only [live1399, coloured1399]
  rw [child]
  dsimp only [result1397]
  have child := node1398_eq
  unfold live1398 coloured1398 at child
  try dsimp only [live1399, coloured1399]
  rw [child]
  dsimp only [result1398]
  try dsimp only [colour, result1399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1400_agree : tree1400 = literal1400 := by
  rw [tree1400_def]
  rfl
theorem node1400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1400 live1400 coloured1400 = result1400 := by
  rw [tree1400_def]
  try dsimp only [colour, result1400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1401_agree : tree1401 = literal1401 := by
  rw [tree1401_def]
  rfl
theorem node1401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1401 live1401 coloured1401 = result1401 := by
  rw [tree1401_def]
  try dsimp only [colour, result1401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1402_agree : tree1402 = literal1402 := by
  rw [tree1402_def, tree1400_agree, tree1401_agree]
  rfl
theorem node1402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1402 live1402 coloured1402 = result1402 := by
  rw [tree1402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1400_eq
  unfold live1400 coloured1400 at child
  try dsimp only [live1402, coloured1402]
  rw [child]
  dsimp only [result1400]
  have child := node1401_eq
  unfold live1401 coloured1401 at child
  try dsimp only [live1402, coloured1402]
  rw [child]
  dsimp only [result1401]
  try dsimp only [colour, result1402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1403_agree : tree1403 = literal1403 := by
  rw [tree1403_def]
  rfl
theorem node1403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1403 live1403 coloured1403 = result1403 := by
  rw [tree1403_def]
  try dsimp only [colour, result1403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1404_agree : tree1404 = literal1404 := by
  rw [tree1404_def, tree1402_agree, tree1403_agree]
  rfl
theorem node1404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1404 live1404 coloured1404 = result1404 := by
  rw [tree1404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1402_eq
  unfold live1402 coloured1402 at child
  try dsimp only [live1404, coloured1404]
  rw [child]
  dsimp only [result1402]
  have child := node1403_eq
  unfold live1403 coloured1403 at child
  try dsimp only [live1404, coloured1404]
  rw [child]
  dsimp only [result1403]
  try dsimp only [colour, result1404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1405_agree : tree1405 = literal1405 := by
  rw [tree1405_def, tree1399_agree, tree1404_agree]
  rfl
theorem node1405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1405 live1405 coloured1405 = result1405 := by
  rw [tree1405_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1399_eq
  unfold live1399 coloured1399 at child
  try dsimp only [live1405, coloured1405]
  rw [child]
  dsimp only [result1399]
  have child := node1404_eq
  unfold live1404 coloured1404 at child
  try dsimp only [live1405, coloured1405]
  rw [child]
  dsimp only [result1404]
  try dsimp only [colour, result1405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1406_agree : tree1406 = literal1406 := by
  rw [tree1406_def, tree1396_agree, tree1405_agree]
  rfl
theorem node1406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1406 live1406 coloured1406 = result1406 := by
  rw [tree1406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1396_eq
  unfold live1396 coloured1396 at child
  try dsimp only [live1406, coloured1406]
  rw [child]
  dsimp only [result1396]
  have child := node1405_eq
  unfold live1405 coloured1405 at child
  try dsimp only [live1406, coloured1406]
  rw [child]
  dsimp only [result1405]
  try dsimp only [colour, result1406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1407_agree : tree1407 = literal1407 := by
  rw [tree1407_def]
  rfl
theorem node1407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1407 live1407 coloured1407 = result1407 := by
  rw [tree1407_def]
  try dsimp only [colour, result1407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1408_agree : tree1408 = literal1408 := by
  rw [tree1408_def, tree1406_agree, tree1407_agree]
  rfl
theorem node1408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1408 live1408 coloured1408 = result1408 := by
  rw [tree1408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1406_eq
  unfold live1406 coloured1406 at child
  try dsimp only [live1408, coloured1408]
  rw [child]
  dsimp only [result1406]
  have child := node1407_eq
  unfold live1407 coloured1407 at child
  try dsimp only [live1408, coloured1408]
  rw [child]
  dsimp only [result1407]
  try dsimp only [colour, result1408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1409_agree : tree1409 = literal1409 := by
  rw [tree1409_def]
  rfl
theorem node1409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1409 live1409 coloured1409 = result1409 := by
  rw [tree1409_def]
  try dsimp only [colour, result1409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1410_agree : tree1410 = literal1410 := by
  rw [tree1410_def, tree1408_agree, tree1409_agree]
  rfl
theorem node1410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1410 live1410 coloured1410 = result1410 := by
  rw [tree1410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1408_eq
  unfold live1408 coloured1408 at child
  try dsimp only [live1410, coloured1410]
  rw [child]
  dsimp only [result1408]
  have child := node1409_eq
  unfold live1409 coloured1409 at child
  try dsimp only [live1410, coloured1410]
  rw [child]
  dsimp only [result1409]
  try dsimp only [colour, result1410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1411_agree : tree1411 = literal1411 := by
  rw [tree1411_def]
  rfl
theorem node1411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1411 live1411 coloured1411 = result1411 := by
  rw [tree1411_def]
  try dsimp only [colour, result1411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1412_agree : tree1412 = literal1412 := by
  rw [tree1412_def]
  rfl
theorem node1412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1412 live1412 coloured1412 = result1412 := by
  rw [tree1412_def]
  try dsimp only [colour, result1412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1413_agree : tree1413 = literal1413 := by
  rw [tree1413_def, tree1411_agree, tree1412_agree]
  rfl
theorem node1413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1413 live1413 coloured1413 = result1413 := by
  rw [tree1413_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1411_eq
  unfold live1411 coloured1411 at child
  try dsimp only [live1413, coloured1413]
  rw [child]
  dsimp only [result1411]
  have child := node1412_eq
  unfold live1412 coloured1412 at child
  try dsimp only [live1413, coloured1413]
  rw [child]
  dsimp only [result1412]
  try dsimp only [colour, result1413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1414_agree : tree1414 = literal1414 := by
  rw [tree1414_def]
  rfl
theorem node1414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1414 live1414 coloured1414 = result1414 := by
  rw [tree1414_def]
  try dsimp only [colour, result1414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1415_agree : tree1415 = literal1415 := by
  rw [tree1415_def]
  rfl
theorem node1415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1415 live1415 coloured1415 = result1415 := by
  rw [tree1415_def]
  try dsimp only [colour, result1415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1416_agree : tree1416 = literal1416 := by
  rw [tree1416_def, tree1414_agree, tree1415_agree]
  rfl
theorem node1416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1416 live1416 coloured1416 = result1416 := by
  rw [tree1416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1414_eq
  unfold live1414 coloured1414 at child
  try dsimp only [live1416, coloured1416]
  rw [child]
  dsimp only [result1414]
  have child := node1415_eq
  unfold live1415 coloured1415 at child
  try dsimp only [live1416, coloured1416]
  rw [child]
  dsimp only [result1415]
  try dsimp only [colour, result1416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1417_agree : tree1417 = literal1417 := by
  rw [tree1417_def]
  rfl
theorem node1417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1417 live1417 coloured1417 = result1417 := by
  rw [tree1417_def]
  try dsimp only [colour, result1417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1418_agree : tree1418 = literal1418 := by
  rw [tree1418_def, tree1416_agree, tree1417_agree]
  rfl
theorem node1418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1418 live1418 coloured1418 = result1418 := by
  rw [tree1418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1416_eq
  unfold live1416 coloured1416 at child
  try dsimp only [live1418, coloured1418]
  rw [child]
  dsimp only [result1416]
  have child := node1417_eq
  unfold live1417 coloured1417 at child
  try dsimp only [live1418, coloured1418]
  rw [child]
  dsimp only [result1417]
  try dsimp only [colour, result1418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1419_agree : tree1419 = literal1419 := by
  rw [tree1419_def, tree1413_agree, tree1418_agree]
  rfl
theorem node1419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1419 live1419 coloured1419 = result1419 := by
  rw [tree1419_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1413_eq
  unfold live1413 coloured1413 at child
  try dsimp only [live1419, coloured1419]
  rw [child]
  dsimp only [result1413]
  have child := node1418_eq
  unfold live1418 coloured1418 at child
  try dsimp only [live1419, coloured1419]
  rw [child]
  dsimp only [result1418]
  try dsimp only [colour, result1419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1420_agree : tree1420 = literal1420 := by
  rw [tree1420_def, tree1410_agree, tree1419_agree]
  rfl
theorem node1420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1420 live1420 coloured1420 = result1420 := by
  rw [tree1420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1410_eq
  unfold live1410 coloured1410 at child
  try dsimp only [live1420, coloured1420]
  rw [child]
  dsimp only [result1410]
  have child := node1419_eq
  unfold live1419 coloured1419 at child
  try dsimp only [live1420, coloured1420]
  rw [child]
  dsimp only [result1419]
  try dsimp only [colour, result1420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1421_agree : tree1421 = literal1421 := by
  rw [tree1421_def]
  rfl
theorem node1421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1421 live1421 coloured1421 = result1421 := by
  rw [tree1421_def]
  try dsimp only [colour, result1421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1422_agree : tree1422 = literal1422 := by
  rw [tree1422_def, tree1420_agree, tree1421_agree]
  rfl
theorem node1422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1422 live1422 coloured1422 = result1422 := by
  rw [tree1422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1420_eq
  unfold live1420 coloured1420 at child
  try dsimp only [live1422, coloured1422]
  rw [child]
  dsimp only [result1420]
  have child := node1421_eq
  unfold live1421 coloured1421 at child
  try dsimp only [live1422, coloured1422]
  rw [child]
  dsimp only [result1421]
  try dsimp only [colour, result1422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1423_agree : tree1423 = literal1423 := by
  rw [tree1423_def]
  rfl
theorem node1423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1423 live1423 coloured1423 = result1423 := by
  rw [tree1423_def]
  try dsimp only [colour, result1423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1424_agree : tree1424 = literal1424 := by
  rw [tree1424_def, tree1422_agree, tree1423_agree]
  rfl
theorem node1424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1424 live1424 coloured1424 = result1424 := by
  rw [tree1424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1422_eq
  unfold live1422 coloured1422 at child
  try dsimp only [live1424, coloured1424]
  rw [child]
  dsimp only [result1422]
  have child := node1423_eq
  unfold live1423 coloured1423 at child
  try dsimp only [live1424, coloured1424]
  rw [child]
  dsimp only [result1423]
  try dsimp only [colour, result1424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1425_agree : tree1425 = literal1425 := by
  rw [tree1425_def]
  rfl
theorem node1425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1425 live1425 coloured1425 = result1425 := by
  rw [tree1425_def]
  try dsimp only [colour, result1425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1426_agree : tree1426 = literal1426 := by
  rw [tree1426_def, tree1424_agree, tree1425_agree]
  rfl
theorem node1426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1426 live1426 coloured1426 = result1426 := by
  rw [tree1426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1424_eq
  unfold live1424 coloured1424 at child
  try dsimp only [live1426, coloured1426]
  rw [child]
  dsimp only [result1424]
  have child := node1425_eq
  unfold live1425 coloured1425 at child
  try dsimp only [live1426, coloured1426]
  rw [child]
  dsimp only [result1425]
  try dsimp only [colour, result1426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1427_agree : tree1427 = literal1427 := by
  rw [tree1427_def]
  rfl
theorem node1427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1427 live1427 coloured1427 = result1427 := by
  rw [tree1427_def]
  try dsimp only [colour, result1427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1428_agree : tree1428 = literal1428 := by
  rw [tree1428_def]
  rfl
theorem node1428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1428 live1428 coloured1428 = result1428 := by
  rw [tree1428_def]
  try dsimp only [colour, result1428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1429_agree : tree1429 = literal1429 := by
  rw [tree1429_def, tree1427_agree, tree1428_agree]
  rfl
theorem node1429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1429 live1429 coloured1429 = result1429 := by
  rw [tree1429_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1427_eq
  unfold live1427 coloured1427 at child
  try dsimp only [live1429, coloured1429]
  rw [child]
  dsimp only [result1427]
  have child := node1428_eq
  unfold live1428 coloured1428 at child
  try dsimp only [live1429, coloured1429]
  rw [child]
  dsimp only [result1428]
  try dsimp only [colour, result1429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1430_agree : tree1430 = literal1430 := by
  rw [tree1430_def]
  rfl
theorem node1430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1430 live1430 coloured1430 = result1430 := by
  rw [tree1430_def]
  try dsimp only [colour, result1430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1431_agree : tree1431 = literal1431 := by
  rw [tree1431_def]
  rfl
theorem node1431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1431 live1431 coloured1431 = result1431 := by
  rw [tree1431_def]
  try dsimp only [colour, result1431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1432_agree : tree1432 = literal1432 := by
  rw [tree1432_def, tree1430_agree, tree1431_agree]
  rfl
theorem node1432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1432 live1432 coloured1432 = result1432 := by
  rw [tree1432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1430_eq
  unfold live1430 coloured1430 at child
  try dsimp only [live1432, coloured1432]
  rw [child]
  dsimp only [result1430]
  have child := node1431_eq
  unfold live1431 coloured1431 at child
  try dsimp only [live1432, coloured1432]
  rw [child]
  dsimp only [result1431]
  try dsimp only [colour, result1432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1433_agree : tree1433 = literal1433 := by
  rw [tree1433_def]
  rfl
theorem node1433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1433 live1433 coloured1433 = result1433 := by
  rw [tree1433_def]
  try dsimp only [colour, result1433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1434_agree : tree1434 = literal1434 := by
  rw [tree1434_def, tree1432_agree, tree1433_agree]
  rfl
theorem node1434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1434 live1434 coloured1434 = result1434 := by
  rw [tree1434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1432_eq
  unfold live1432 coloured1432 at child
  try dsimp only [live1434, coloured1434]
  rw [child]
  dsimp only [result1432]
  have child := node1433_eq
  unfold live1433 coloured1433 at child
  try dsimp only [live1434, coloured1434]
  rw [child]
  dsimp only [result1433]
  try dsimp only [colour, result1434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1435_agree : tree1435 = literal1435 := by
  rw [tree1435_def, tree1429_agree, tree1434_agree]
  rfl
theorem node1435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1435 live1435 coloured1435 = result1435 := by
  rw [tree1435_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1429_eq
  unfold live1429 coloured1429 at child
  try dsimp only [live1435, coloured1435]
  rw [child]
  dsimp only [result1429]
  have child := node1434_eq
  unfold live1434 coloured1434 at child
  try dsimp only [live1435, coloured1435]
  rw [child]
  dsimp only [result1434]
  try dsimp only [colour, result1435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1436_agree : tree1436 = literal1436 := by
  rw [tree1436_def, tree1426_agree, tree1435_agree]
  rfl
theorem node1436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1436 live1436 coloured1436 = result1436 := by
  rw [tree1436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1426_eq
  unfold live1426 coloured1426 at child
  try dsimp only [live1436, coloured1436]
  rw [child]
  dsimp only [result1426]
  have child := node1435_eq
  unfold live1435 coloured1435 at child
  try dsimp only [live1436, coloured1436]
  rw [child]
  dsimp only [result1435]
  try dsimp only [colour, result1436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1437_agree : tree1437 = literal1437 := by
  rw [tree1437_def]
  rfl
theorem node1437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1437 live1437 coloured1437 = result1437 := by
  rw [tree1437_def]
  try dsimp only [colour, result1437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1438_agree : tree1438 = literal1438 := by
  rw [tree1438_def, tree1436_agree, tree1437_agree]
  rfl
theorem node1438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1438 live1438 coloured1438 = result1438 := by
  rw [tree1438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1436_eq
  unfold live1436 coloured1436 at child
  try dsimp only [live1438, coloured1438]
  rw [child]
  dsimp only [result1436]
  have child := node1437_eq
  unfold live1437 coloured1437 at child
  try dsimp only [live1438, coloured1438]
  rw [child]
  dsimp only [result1437]
  try dsimp only [colour, result1438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1439_agree : tree1439 = literal1439 := by
  rw [tree1439_def]
  rfl
theorem node1439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1439 live1439 coloured1439 = result1439 := by
  rw [tree1439_def]
  try dsimp only [colour, result1439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages233
