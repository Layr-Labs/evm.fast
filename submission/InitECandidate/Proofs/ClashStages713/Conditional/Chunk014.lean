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
theorem tree1344_agree_conditional
    (child0 : tree1342 = literal1342)
    (child1 : tree1343 = literal1343) : tree1344 = literal1344 := by
  rw [tree1344_def, child0, child1]
  rfl
theorem node1344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1342 live1342 coloured1342 = result1342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1343 live1343 coloured1343 = result1343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1344 live1344 coloured1344 = result1344 := by
  rw [tree1344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1342 coloured1342 at child
  try dsimp only [live1344, coloured1344]
  rw [child]
  dsimp only [result1342]
  have child := child1
  unfold live1343 coloured1343 at child
  try dsimp only [live1344, coloured1344]
  rw [child]
  dsimp only [result1343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1345_agree_conditional : tree1345 = literal1345 := by
  rw [tree1345_def]
  rfl
theorem node1345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1345 live1345 coloured1345 = result1345 := by
  rw [tree1345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1346_agree_conditional
    (child0 : tree1344 = literal1344)
    (child1 : tree1345 = literal1345) : tree1346 = literal1346 := by
  rw [tree1346_def, child0, child1]
  rfl
theorem node1346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1344 live1344 coloured1344 = result1344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1345 live1345 coloured1345 = result1345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1346 live1346 coloured1346 = result1346 := by
  rw [tree1346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1344 coloured1344 at child
  try dsimp only [live1346, coloured1346]
  rw [child]
  dsimp only [result1344]
  have child := child1
  unfold live1345 coloured1345 at child
  try dsimp only [live1346, coloured1346]
  rw [child]
  dsimp only [result1345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1347_agree_conditional : tree1347 = literal1347 := by
  rw [tree1347_def]
  rfl
theorem node1347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1347 live1347 coloured1347 = result1347 := by
  rw [tree1347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1348_agree_conditional
    (child0 : tree1346 = literal1346)
    (child1 : tree1347 = literal1347) : tree1348 = literal1348 := by
  rw [tree1348_def, child0, child1]
  rfl
theorem node1348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1346 live1346 coloured1346 = result1346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1347 live1347 coloured1347 = result1347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1348 live1348 coloured1348 = result1348 := by
  rw [tree1348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1346 coloured1346 at child
  try dsimp only [live1348, coloured1348]
  rw [child]
  dsimp only [result1346]
  have child := child1
  unfold live1347 coloured1347 at child
  try dsimp only [live1348, coloured1348]
  rw [child]
  dsimp only [result1347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1349_agree_conditional : tree1349 = literal1349 := by
  rw [tree1349_def]
  rfl
theorem node1349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1349 live1349 coloured1349 = result1349 := by
  rw [tree1349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1350_agree_conditional
    (child0 : tree1348 = literal1348)
    (child1 : tree1349 = literal1349) : tree1350 = literal1350 := by
  rw [tree1350_def, child0, child1]
  rfl
theorem node1350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1348 live1348 coloured1348 = result1348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1349 live1349 coloured1349 = result1349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1350 live1350 coloured1350 = result1350 := by
  rw [tree1350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1348 coloured1348 at child
  try dsimp only [live1350, coloured1350]
  rw [child]
  dsimp only [result1348]
  have child := child1
  unfold live1349 coloured1349 at child
  try dsimp only [live1350, coloured1350]
  rw [child]
  dsimp only [result1349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1351_agree_conditional : tree1351 = literal1351 := by
  rw [tree1351_def]
  rfl
theorem node1351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1351 live1351 coloured1351 = result1351 := by
  rw [tree1351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1352_agree_conditional
    (child0 : tree1350 = literal1350)
    (child1 : tree1351 = literal1351) : tree1352 = literal1352 := by
  rw [tree1352_def, child0, child1]
  rfl
theorem node1352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1350 live1350 coloured1350 = result1350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1351 live1351 coloured1351 = result1351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1352 live1352 coloured1352 = result1352 := by
  rw [tree1352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1350 coloured1350 at child
  try dsimp only [live1352, coloured1352]
  rw [child]
  dsimp only [result1350]
  have child := child1
  unfold live1351 coloured1351 at child
  try dsimp only [live1352, coloured1352]
  rw [child]
  dsimp only [result1351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1353_agree_conditional : tree1353 = literal1353 := by
  rw [tree1353_def]
  rfl
theorem node1353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1353 live1353 coloured1353 = result1353 := by
  rw [tree1353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1354_agree_conditional
    (child0 : tree1352 = literal1352)
    (child1 : tree1353 = literal1353) : tree1354 = literal1354 := by
  rw [tree1354_def, child0, child1]
  rfl
theorem node1354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1352 live1352 coloured1352 = result1352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1353 live1353 coloured1353 = result1353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1354 live1354 coloured1354 = result1354 := by
  rw [tree1354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1352 coloured1352 at child
  try dsimp only [live1354, coloured1354]
  rw [child]
  dsimp only [result1352]
  have child := child1
  unfold live1353 coloured1353 at child
  try dsimp only [live1354, coloured1354]
  rw [child]
  dsimp only [result1353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1355_agree_conditional : tree1355 = literal1355 := by
  rw [tree1355_def]
  rfl
theorem node1355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1355 live1355 coloured1355 = result1355 := by
  rw [tree1355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1356_agree_conditional
    (child0 : tree1354 = literal1354)
    (child1 : tree1355 = literal1355) : tree1356 = literal1356 := by
  rw [tree1356_def, child0, child1]
  rfl
theorem node1356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1354 live1354 coloured1354 = result1354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1355 live1355 coloured1355 = result1355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1356 live1356 coloured1356 = result1356 := by
  rw [tree1356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1354 coloured1354 at child
  try dsimp only [live1356, coloured1356]
  rw [child]
  dsimp only [result1354]
  have child := child1
  unfold live1355 coloured1355 at child
  try dsimp only [live1356, coloured1356]
  rw [child]
  dsimp only [result1355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1357_agree_conditional : tree1357 = literal1357 := by
  rw [tree1357_def]
  rfl
theorem node1357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1357 live1357 coloured1357 = result1357 := by
  rw [tree1357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1358_agree_conditional
    (child0 : tree1356 = literal1356)
    (child1 : tree1357 = literal1357) : tree1358 = literal1358 := by
  rw [tree1358_def, child0, child1]
  rfl
theorem node1358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1356 live1356 coloured1356 = result1356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1357 live1357 coloured1357 = result1357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1358 live1358 coloured1358 = result1358 := by
  rw [tree1358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1356 coloured1356 at child
  try dsimp only [live1358, coloured1358]
  rw [child]
  dsimp only [result1356]
  have child := child1
  unfold live1357 coloured1357 at child
  try dsimp only [live1358, coloured1358]
  rw [child]
  dsimp only [result1357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1359_agree_conditional : tree1359 = literal1359 := by
  rw [tree1359_def]
  rfl
theorem node1359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1359 live1359 coloured1359 = result1359 := by
  rw [tree1359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1360_agree_conditional
    (child0 : tree1358 = literal1358)
    (child1 : tree1359 = literal1359) : tree1360 = literal1360 := by
  rw [tree1360_def, child0, child1]
  rfl
theorem node1360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1358 live1358 coloured1358 = result1358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1359 live1359 coloured1359 = result1359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1360 live1360 coloured1360 = result1360 := by
  rw [tree1360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1358 coloured1358 at child
  try dsimp only [live1360, coloured1360]
  rw [child]
  dsimp only [result1358]
  have child := child1
  unfold live1359 coloured1359 at child
  try dsimp only [live1360, coloured1360]
  rw [child]
  dsimp only [result1359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1361_agree_conditional : tree1361 = literal1361 := by
  rw [tree1361_def]
  rfl
theorem node1361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1361 live1361 coloured1361 = result1361 := by
  rw [tree1361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1362_agree_conditional
    (child0 : tree1360 = literal1360)
    (child1 : tree1361 = literal1361) : tree1362 = literal1362 := by
  rw [tree1362_def, child0, child1]
  rfl
theorem node1362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1360 live1360 coloured1360 = result1360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1361 live1361 coloured1361 = result1361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1362 live1362 coloured1362 = result1362 := by
  rw [tree1362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1360 coloured1360 at child
  try dsimp only [live1362, coloured1362]
  rw [child]
  dsimp only [result1360]
  have child := child1
  unfold live1361 coloured1361 at child
  try dsimp only [live1362, coloured1362]
  rw [child]
  dsimp only [result1361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1363_agree_conditional : tree1363 = literal1363 := by
  rw [tree1363_def]
  rfl
theorem node1363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1363 live1363 coloured1363 = result1363 := by
  rw [tree1363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1364_agree_conditional
    (child0 : tree1362 = literal1362)
    (child1 : tree1363 = literal1363) : tree1364 = literal1364 := by
  rw [tree1364_def, child0, child1]
  rfl
theorem node1364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1362 live1362 coloured1362 = result1362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1363 live1363 coloured1363 = result1363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1364 live1364 coloured1364 = result1364 := by
  rw [tree1364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1362 coloured1362 at child
  try dsimp only [live1364, coloured1364]
  rw [child]
  dsimp only [result1362]
  have child := child1
  unfold live1363 coloured1363 at child
  try dsimp only [live1364, coloured1364]
  rw [child]
  dsimp only [result1363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1365_agree_conditional : tree1365 = literal1365 := by
  rw [tree1365_def]
  rfl
theorem node1365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1365 live1365 coloured1365 = result1365 := by
  rw [tree1365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1366_agree_conditional
    (child0 : tree1364 = literal1364)
    (child1 : tree1365 = literal1365) : tree1366 = literal1366 := by
  rw [tree1366_def, child0, child1]
  rfl
theorem node1366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1364 live1364 coloured1364 = result1364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1365 live1365 coloured1365 = result1365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1366 live1366 coloured1366 = result1366 := by
  rw [tree1366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1364 coloured1364 at child
  try dsimp only [live1366, coloured1366]
  rw [child]
  dsimp only [result1364]
  have child := child1
  unfold live1365 coloured1365 at child
  try dsimp only [live1366, coloured1366]
  rw [child]
  dsimp only [result1365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1367_agree_conditional : tree1367 = literal1367 := by
  rw [tree1367_def]
  rfl
theorem node1367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1367 live1367 coloured1367 = result1367 := by
  rw [tree1367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1368_agree_conditional
    (child0 : tree1366 = literal1366)
    (child1 : tree1367 = literal1367) : tree1368 = literal1368 := by
  rw [tree1368_def, child0, child1]
  rfl
theorem node1368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1366 live1366 coloured1366 = result1366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1367 live1367 coloured1367 = result1367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1368 live1368 coloured1368 = result1368 := by
  rw [tree1368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1366 coloured1366 at child
  try dsimp only [live1368, coloured1368]
  rw [child]
  dsimp only [result1366]
  have child := child1
  unfold live1367 coloured1367 at child
  try dsimp only [live1368, coloured1368]
  rw [child]
  dsimp only [result1367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1369_agree_conditional : tree1369 = literal1369 := by
  rw [tree1369_def]
  rfl
theorem node1369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1369 live1369 coloured1369 = result1369 := by
  rw [tree1369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1370_agree_conditional
    (child0 : tree1368 = literal1368)
    (child1 : tree1369 = literal1369) : tree1370 = literal1370 := by
  rw [tree1370_def, child0, child1]
  rfl
theorem node1370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1368 live1368 coloured1368 = result1368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1369 live1369 coloured1369 = result1369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1370 live1370 coloured1370 = result1370 := by
  rw [tree1370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1368 coloured1368 at child
  try dsimp only [live1370, coloured1370]
  rw [child]
  dsimp only [result1368]
  have child := child1
  unfold live1369 coloured1369 at child
  try dsimp only [live1370, coloured1370]
  rw [child]
  dsimp only [result1369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1371_agree_conditional : tree1371 = literal1371 := by
  rw [tree1371_def]
  rfl
theorem node1371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1371 live1371 coloured1371 = result1371 := by
  rw [tree1371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1372_agree_conditional
    (child0 : tree1370 = literal1370)
    (child1 : tree1371 = literal1371) : tree1372 = literal1372 := by
  rw [tree1372_def, child0, child1]
  rfl
theorem node1372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1370 live1370 coloured1370 = result1370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1371 live1371 coloured1371 = result1371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1372 live1372 coloured1372 = result1372 := by
  rw [tree1372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1370 coloured1370 at child
  try dsimp only [live1372, coloured1372]
  rw [child]
  dsimp only [result1370]
  have child := child1
  unfold live1371 coloured1371 at child
  try dsimp only [live1372, coloured1372]
  rw [child]
  dsimp only [result1371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1373_agree_conditional : tree1373 = literal1373 := by
  rw [tree1373_def]
  rfl
theorem node1373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1373 live1373 coloured1373 = result1373 := by
  rw [tree1373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1374_agree_conditional
    (child0 : tree1372 = literal1372)
    (child1 : tree1373 = literal1373) : tree1374 = literal1374 := by
  rw [tree1374_def, child0, child1]
  rfl
theorem node1374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1372 live1372 coloured1372 = result1372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1373 live1373 coloured1373 = result1373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1374 live1374 coloured1374 = result1374 := by
  rw [tree1374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1372 coloured1372 at child
  try dsimp only [live1374, coloured1374]
  rw [child]
  dsimp only [result1372]
  have child := child1
  unfold live1373 coloured1373 at child
  try dsimp only [live1374, coloured1374]
  rw [child]
  dsimp only [result1373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1375_agree_conditional : tree1375 = literal1375 := by
  rw [tree1375_def]
  rfl
theorem node1375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1375 live1375 coloured1375 = result1375 := by
  rw [tree1375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1376_agree_conditional
    (child0 : tree1374 = literal1374)
    (child1 : tree1375 = literal1375) : tree1376 = literal1376 := by
  rw [tree1376_def, child0, child1]
  rfl
theorem node1376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1374 live1374 coloured1374 = result1374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1375 live1375 coloured1375 = result1375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1376 live1376 coloured1376 = result1376 := by
  rw [tree1376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1374 coloured1374 at child
  try dsimp only [live1376, coloured1376]
  rw [child]
  dsimp only [result1374]
  have child := child1
  unfold live1375 coloured1375 at child
  try dsimp only [live1376, coloured1376]
  rw [child]
  dsimp only [result1375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1377_agree_conditional : tree1377 = literal1377 := by
  rw [tree1377_def]
  rfl
theorem node1377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1377 live1377 coloured1377 = result1377 := by
  rw [tree1377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1378_agree_conditional
    (child0 : tree1376 = literal1376)
    (child1 : tree1377 = literal1377) : tree1378 = literal1378 := by
  rw [tree1378_def, child0, child1]
  rfl
theorem node1378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1376 live1376 coloured1376 = result1376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1377 live1377 coloured1377 = result1377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1378 live1378 coloured1378 = result1378 := by
  rw [tree1378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1376 coloured1376 at child
  try dsimp only [live1378, coloured1378]
  rw [child]
  dsimp only [result1376]
  have child := child1
  unfold live1377 coloured1377 at child
  try dsimp only [live1378, coloured1378]
  rw [child]
  dsimp only [result1377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1379_agree_conditional : tree1379 = literal1379 := by
  rw [tree1379_def]
  rfl
theorem node1379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1379 live1379 coloured1379 = result1379 := by
  rw [tree1379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1380_agree_conditional
    (child0 : tree1378 = literal1378)
    (child1 : tree1379 = literal1379) : tree1380 = literal1380 := by
  rw [tree1380_def, child0, child1]
  rfl
theorem node1380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1378 live1378 coloured1378 = result1378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1379 live1379 coloured1379 = result1379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1380 live1380 coloured1380 = result1380 := by
  rw [tree1380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1378 coloured1378 at child
  try dsimp only [live1380, coloured1380]
  rw [child]
  dsimp only [result1378]
  have child := child1
  unfold live1379 coloured1379 at child
  try dsimp only [live1380, coloured1380]
  rw [child]
  dsimp only [result1379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1381_agree_conditional : tree1381 = literal1381 := by
  rw [tree1381_def]
  rfl
theorem node1381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1381 live1381 coloured1381 = result1381 := by
  rw [tree1381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1382_agree_conditional
    (child0 : tree1380 = literal1380)
    (child1 : tree1381 = literal1381) : tree1382 = literal1382 := by
  rw [tree1382_def, child0, child1]
  rfl
theorem node1382_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1380 live1380 coloured1380 = result1380)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1381 live1381 coloured1381 = result1381) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1382 live1382 coloured1382 = result1382 := by
  rw [tree1382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1380 coloured1380 at child
  try dsimp only [live1382, coloured1382]
  rw [child]
  dsimp only [result1380]
  have child := child1
  unfold live1381 coloured1381 at child
  try dsimp only [live1382, coloured1382]
  rw [child]
  dsimp only [result1381]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1383_agree_conditional : tree1383 = literal1383 := by
  rw [tree1383_def]
  rfl
theorem node1383_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1383 live1383 coloured1383 = result1383 := by
  rw [tree1383_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1384_agree_conditional
    (child0 : tree1382 = literal1382)
    (child1 : tree1383 = literal1383) : tree1384 = literal1384 := by
  rw [tree1384_def, child0, child1]
  rfl
theorem node1384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1382 live1382 coloured1382 = result1382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1383 live1383 coloured1383 = result1383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1384 live1384 coloured1384 = result1384 := by
  rw [tree1384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1382 coloured1382 at child
  try dsimp only [live1384, coloured1384]
  rw [child]
  dsimp only [result1382]
  have child := child1
  unfold live1383 coloured1383 at child
  try dsimp only [live1384, coloured1384]
  rw [child]
  dsimp only [result1383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1385_agree_conditional : tree1385 = literal1385 := by
  rw [tree1385_def]
  rfl
theorem node1385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1385 live1385 coloured1385 = result1385 := by
  rw [tree1385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1386_agree_conditional
    (child0 : tree1384 = literal1384)
    (child1 : tree1385 = literal1385) : tree1386 = literal1386 := by
  rw [tree1386_def, child0, child1]
  rfl
theorem node1386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1384 live1384 coloured1384 = result1384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1385 live1385 coloured1385 = result1385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1386 live1386 coloured1386 = result1386 := by
  rw [tree1386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1384 coloured1384 at child
  try dsimp only [live1386, coloured1386]
  rw [child]
  dsimp only [result1384]
  have child := child1
  unfold live1385 coloured1385 at child
  try dsimp only [live1386, coloured1386]
  rw [child]
  dsimp only [result1385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1387_agree_conditional : tree1387 = literal1387 := by
  rw [tree1387_def]
  rfl
theorem node1387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1387 live1387 coloured1387 = result1387 := by
  rw [tree1387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1388_agree_conditional
    (child0 : tree1386 = literal1386)
    (child1 : tree1387 = literal1387) : tree1388 = literal1388 := by
  rw [tree1388_def, child0, child1]
  rfl
theorem node1388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1386 live1386 coloured1386 = result1386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1387 live1387 coloured1387 = result1387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1388 live1388 coloured1388 = result1388 := by
  rw [tree1388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1386 coloured1386 at child
  try dsimp only [live1388, coloured1388]
  rw [child]
  dsimp only [result1386]
  have child := child1
  unfold live1387 coloured1387 at child
  try dsimp only [live1388, coloured1388]
  rw [child]
  dsimp only [result1387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1389_agree_conditional : tree1389 = literal1389 := by
  rw [tree1389_def]
  rfl
theorem node1389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1389 live1389 coloured1389 = result1389 := by
  rw [tree1389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1390_agree_conditional
    (child0 : tree1388 = literal1388)
    (child1 : tree1389 = literal1389) : tree1390 = literal1390 := by
  rw [tree1390_def, child0, child1]
  rfl
theorem node1390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1388 live1388 coloured1388 = result1388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1389 live1389 coloured1389 = result1389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1390 live1390 coloured1390 = result1390 := by
  rw [tree1390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1388 coloured1388 at child
  try dsimp only [live1390, coloured1390]
  rw [child]
  dsimp only [result1388]
  have child := child1
  unfold live1389 coloured1389 at child
  try dsimp only [live1390, coloured1390]
  rw [child]
  dsimp only [result1389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1391_agree_conditional : tree1391 = literal1391 := by
  rw [tree1391_def]
  rfl
theorem node1391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1391 live1391 coloured1391 = result1391 := by
  rw [tree1391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1392_agree_conditional
    (child0 : tree1390 = literal1390)
    (child1 : tree1391 = literal1391) : tree1392 = literal1392 := by
  rw [tree1392_def, child0, child1]
  rfl
theorem node1392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1390 live1390 coloured1390 = result1390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1391 live1391 coloured1391 = result1391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1392 live1392 coloured1392 = result1392 := by
  rw [tree1392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1390 coloured1390 at child
  try dsimp only [live1392, coloured1392]
  rw [child]
  dsimp only [result1390]
  have child := child1
  unfold live1391 coloured1391 at child
  try dsimp only [live1392, coloured1392]
  rw [child]
  dsimp only [result1391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1393_agree_conditional : tree1393 = literal1393 := by
  rw [tree1393_def]
  rfl
theorem node1393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1393 live1393 coloured1393 = result1393 := by
  rw [tree1393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1394_agree_conditional
    (child0 : tree1392 = literal1392)
    (child1 : tree1393 = literal1393) : tree1394 = literal1394 := by
  rw [tree1394_def, child0, child1]
  rfl
theorem node1394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1392 live1392 coloured1392 = result1392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1393 live1393 coloured1393 = result1393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1394 live1394 coloured1394 = result1394 := by
  rw [tree1394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1392 coloured1392 at child
  try dsimp only [live1394, coloured1394]
  rw [child]
  dsimp only [result1392]
  have child := child1
  unfold live1393 coloured1393 at child
  try dsimp only [live1394, coloured1394]
  rw [child]
  dsimp only [result1393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1395_agree_conditional : tree1395 = literal1395 := by
  rw [tree1395_def]
  rfl
theorem node1395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1395 live1395 coloured1395 = result1395 := by
  rw [tree1395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1396_agree_conditional
    (child0 : tree1394 = literal1394)
    (child1 : tree1395 = literal1395) : tree1396 = literal1396 := by
  rw [tree1396_def, child0, child1]
  rfl
theorem node1396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1394 live1394 coloured1394 = result1394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1395 live1395 coloured1395 = result1395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1396 live1396 coloured1396 = result1396 := by
  rw [tree1396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1394 coloured1394 at child
  try dsimp only [live1396, coloured1396]
  rw [child]
  dsimp only [result1394]
  have child := child1
  unfold live1395 coloured1395 at child
  try dsimp only [live1396, coloured1396]
  rw [child]
  dsimp only [result1395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1397_agree_conditional : tree1397 = literal1397 := by
  rw [tree1397_def]
  rfl
theorem node1397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1397 live1397 coloured1397 = result1397 := by
  rw [tree1397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1398_agree_conditional
    (child0 : tree1396 = literal1396)
    (child1 : tree1397 = literal1397) : tree1398 = literal1398 := by
  rw [tree1398_def, child0, child1]
  rfl
theorem node1398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1396 live1396 coloured1396 = result1396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1397 live1397 coloured1397 = result1397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1398 live1398 coloured1398 = result1398 := by
  rw [tree1398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1396 coloured1396 at child
  try dsimp only [live1398, coloured1398]
  rw [child]
  dsimp only [result1396]
  have child := child1
  unfold live1397 coloured1397 at child
  try dsimp only [live1398, coloured1398]
  rw [child]
  dsimp only [result1397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1399_agree_conditional : tree1399 = literal1399 := by
  rw [tree1399_def]
  rfl
theorem node1399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1399 live1399 coloured1399 = result1399 := by
  rw [tree1399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1400_agree_conditional
    (child0 : tree1398 = literal1398)
    (child1 : tree1399 = literal1399) : tree1400 = literal1400 := by
  rw [tree1400_def, child0, child1]
  rfl
theorem node1400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1398 live1398 coloured1398 = result1398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1399 live1399 coloured1399 = result1399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1400 live1400 coloured1400 = result1400 := by
  rw [tree1400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1398 coloured1398 at child
  try dsimp only [live1400, coloured1400]
  rw [child]
  dsimp only [result1398]
  have child := child1
  unfold live1399 coloured1399 at child
  try dsimp only [live1400, coloured1400]
  rw [child]
  dsimp only [result1399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1401_agree_conditional : tree1401 = literal1401 := by
  rw [tree1401_def]
  rfl
theorem node1401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1401 live1401 coloured1401 = result1401 := by
  rw [tree1401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1402_agree_conditional
    (child0 : tree1400 = literal1400)
    (child1 : tree1401 = literal1401) : tree1402 = literal1402 := by
  rw [tree1402_def, child0, child1]
  rfl
theorem node1402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1400 live1400 coloured1400 = result1400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1401 live1401 coloured1401 = result1401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1402 live1402 coloured1402 = result1402 := by
  rw [tree1402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1400 coloured1400 at child
  try dsimp only [live1402, coloured1402]
  rw [child]
  dsimp only [result1400]
  have child := child1
  unfold live1401 coloured1401 at child
  try dsimp only [live1402, coloured1402]
  rw [child]
  dsimp only [result1401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1403_agree_conditional : tree1403 = literal1403 := by
  rw [tree1403_def]
  rfl
theorem node1403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1403 live1403 coloured1403 = result1403 := by
  rw [tree1403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1404_agree_conditional
    (child0 : tree1402 = literal1402)
    (child1 : tree1403 = literal1403) : tree1404 = literal1404 := by
  rw [tree1404_def, child0, child1]
  rfl
theorem node1404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1402 live1402 coloured1402 = result1402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1403 live1403 coloured1403 = result1403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1404 live1404 coloured1404 = result1404 := by
  rw [tree1404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1402 coloured1402 at child
  try dsimp only [live1404, coloured1404]
  rw [child]
  dsimp only [result1402]
  have child := child1
  unfold live1403 coloured1403 at child
  try dsimp only [live1404, coloured1404]
  rw [child]
  dsimp only [result1403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1405_agree_conditional : tree1405 = literal1405 := by
  rw [tree1405_def]
  rfl
theorem node1405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1405 live1405 coloured1405 = result1405 := by
  rw [tree1405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1406_agree_conditional
    (child0 : tree1404 = literal1404)
    (child1 : tree1405 = literal1405) : tree1406 = literal1406 := by
  rw [tree1406_def, child0, child1]
  rfl
theorem node1406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1404 live1404 coloured1404 = result1404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1405 live1405 coloured1405 = result1405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1406 live1406 coloured1406 = result1406 := by
  rw [tree1406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1404 coloured1404 at child
  try dsimp only [live1406, coloured1406]
  rw [child]
  dsimp only [result1404]
  have child := child1
  unfold live1405 coloured1405 at child
  try dsimp only [live1406, coloured1406]
  rw [child]
  dsimp only [result1405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1407_agree_conditional : tree1407 = literal1407 := by
  rw [tree1407_def]
  rfl
theorem node1407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1407 live1407 coloured1407 = result1407 := by
  rw [tree1407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1408_agree_conditional
    (child0 : tree1406 = literal1406)
    (child1 : tree1407 = literal1407) : tree1408 = literal1408 := by
  rw [tree1408_def, child0, child1]
  rfl
theorem node1408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1406 live1406 coloured1406 = result1406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1407 live1407 coloured1407 = result1407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1408 live1408 coloured1408 = result1408 := by
  rw [tree1408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1406 coloured1406 at child
  try dsimp only [live1408, coloured1408]
  rw [child]
  dsimp only [result1406]
  have child := child1
  unfold live1407 coloured1407 at child
  try dsimp only [live1408, coloured1408]
  rw [child]
  dsimp only [result1407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1409_agree_conditional : tree1409 = literal1409 := by
  rw [tree1409_def]
  rfl
theorem node1409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1409 live1409 coloured1409 = result1409 := by
  rw [tree1409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1410_agree_conditional
    (child0 : tree1408 = literal1408)
    (child1 : tree1409 = literal1409) : tree1410 = literal1410 := by
  rw [tree1410_def, child0, child1]
  rfl
theorem node1410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1408 live1408 coloured1408 = result1408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1409 live1409 coloured1409 = result1409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1410 live1410 coloured1410 = result1410 := by
  rw [tree1410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1408 coloured1408 at child
  try dsimp only [live1410, coloured1410]
  rw [child]
  dsimp only [result1408]
  have child := child1
  unfold live1409 coloured1409 at child
  try dsimp only [live1410, coloured1410]
  rw [child]
  dsimp only [result1409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1411_agree_conditional : tree1411 = literal1411 := by
  rw [tree1411_def]
  rfl
theorem node1411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1411 live1411 coloured1411 = result1411 := by
  rw [tree1411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1412_agree_conditional
    (child0 : tree1410 = literal1410)
    (child1 : tree1411 = literal1411) : tree1412 = literal1412 := by
  rw [tree1412_def, child0, child1]
  rfl
theorem node1412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1410 live1410 coloured1410 = result1410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1411 live1411 coloured1411 = result1411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1412 live1412 coloured1412 = result1412 := by
  rw [tree1412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1410 coloured1410 at child
  try dsimp only [live1412, coloured1412]
  rw [child]
  dsimp only [result1410]
  have child := child1
  unfold live1411 coloured1411 at child
  try dsimp only [live1412, coloured1412]
  rw [child]
  dsimp only [result1411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1413_agree_conditional : tree1413 = literal1413 := by
  rw [tree1413_def]
  rfl
theorem node1413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1413 live1413 coloured1413 = result1413 := by
  rw [tree1413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1414_agree_conditional
    (child0 : tree1412 = literal1412)
    (child1 : tree1413 = literal1413) : tree1414 = literal1414 := by
  rw [tree1414_def, child0, child1]
  rfl
theorem node1414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1412 live1412 coloured1412 = result1412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1413 live1413 coloured1413 = result1413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1414 live1414 coloured1414 = result1414 := by
  rw [tree1414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1412 coloured1412 at child
  try dsimp only [live1414, coloured1414]
  rw [child]
  dsimp only [result1412]
  have child := child1
  unfold live1413 coloured1413 at child
  try dsimp only [live1414, coloured1414]
  rw [child]
  dsimp only [result1413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1415_agree_conditional : tree1415 = literal1415 := by
  rw [tree1415_def]
  rfl
theorem node1415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1415 live1415 coloured1415 = result1415 := by
  rw [tree1415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1416_agree_conditional
    (child0 : tree1414 = literal1414)
    (child1 : tree1415 = literal1415) : tree1416 = literal1416 := by
  rw [tree1416_def, child0, child1]
  rfl
theorem node1416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1414 live1414 coloured1414 = result1414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1415 live1415 coloured1415 = result1415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1416 live1416 coloured1416 = result1416 := by
  rw [tree1416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1414 coloured1414 at child
  try dsimp only [live1416, coloured1416]
  rw [child]
  dsimp only [result1414]
  have child := child1
  unfold live1415 coloured1415 at child
  try dsimp only [live1416, coloured1416]
  rw [child]
  dsimp only [result1415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1417_agree_conditional : tree1417 = literal1417 := by
  rw [tree1417_def]
  rfl
theorem node1417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1417 live1417 coloured1417 = result1417 := by
  rw [tree1417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1418_agree_conditional
    (child0 : tree1416 = literal1416)
    (child1 : tree1417 = literal1417) : tree1418 = literal1418 := by
  rw [tree1418_def, child0, child1]
  rfl
theorem node1418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1416 live1416 coloured1416 = result1416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1417 live1417 coloured1417 = result1417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1418 live1418 coloured1418 = result1418 := by
  rw [tree1418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1416 coloured1416 at child
  try dsimp only [live1418, coloured1418]
  rw [child]
  dsimp only [result1416]
  have child := child1
  unfold live1417 coloured1417 at child
  try dsimp only [live1418, coloured1418]
  rw [child]
  dsimp only [result1417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1419_agree_conditional : tree1419 = literal1419 := by
  rw [tree1419_def]
  rfl
theorem node1419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1419 live1419 coloured1419 = result1419 := by
  rw [tree1419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1420_agree_conditional
    (child0 : tree1418 = literal1418)
    (child1 : tree1419 = literal1419) : tree1420 = literal1420 := by
  rw [tree1420_def, child0, child1]
  rfl
theorem node1420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1418 live1418 coloured1418 = result1418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1419 live1419 coloured1419 = result1419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1420 live1420 coloured1420 = result1420 := by
  rw [tree1420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1418 coloured1418 at child
  try dsimp only [live1420, coloured1420]
  rw [child]
  dsimp only [result1418]
  have child := child1
  unfold live1419 coloured1419 at child
  try dsimp only [live1420, coloured1420]
  rw [child]
  dsimp only [result1419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1421_agree_conditional : tree1421 = literal1421 := by
  rw [tree1421_def]
  rfl
theorem node1421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1421 live1421 coloured1421 = result1421 := by
  rw [tree1421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1422_agree_conditional
    (child0 : tree1420 = literal1420)
    (child1 : tree1421 = literal1421) : tree1422 = literal1422 := by
  rw [tree1422_def, child0, child1]
  rfl
theorem node1422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1420 live1420 coloured1420 = result1420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1421 live1421 coloured1421 = result1421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1422 live1422 coloured1422 = result1422 := by
  rw [tree1422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1420 coloured1420 at child
  try dsimp only [live1422, coloured1422]
  rw [child]
  dsimp only [result1420]
  have child := child1
  unfold live1421 coloured1421 at child
  try dsimp only [live1422, coloured1422]
  rw [child]
  dsimp only [result1421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1423_agree_conditional : tree1423 = literal1423 := by
  rw [tree1423_def]
  rfl
theorem node1423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1423 live1423 coloured1423 = result1423 := by
  rw [tree1423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1424_agree_conditional
    (child0 : tree1422 = literal1422)
    (child1 : tree1423 = literal1423) : tree1424 = literal1424 := by
  rw [tree1424_def, child0, child1]
  rfl
theorem node1424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1422 live1422 coloured1422 = result1422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1423 live1423 coloured1423 = result1423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1424 live1424 coloured1424 = result1424 := by
  rw [tree1424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1422 coloured1422 at child
  try dsimp only [live1424, coloured1424]
  rw [child]
  dsimp only [result1422]
  have child := child1
  unfold live1423 coloured1423 at child
  try dsimp only [live1424, coloured1424]
  rw [child]
  dsimp only [result1423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1425_agree_conditional : tree1425 = literal1425 := by
  rw [tree1425_def]
  rfl
theorem node1425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1425 live1425 coloured1425 = result1425 := by
  rw [tree1425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1426_agree_conditional
    (child0 : tree1424 = literal1424)
    (child1 : tree1425 = literal1425) : tree1426 = literal1426 := by
  rw [tree1426_def, child0, child1]
  rfl
theorem node1426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1424 live1424 coloured1424 = result1424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1425 live1425 coloured1425 = result1425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1426 live1426 coloured1426 = result1426 := by
  rw [tree1426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1424 coloured1424 at child
  try dsimp only [live1426, coloured1426]
  rw [child]
  dsimp only [result1424]
  have child := child1
  unfold live1425 coloured1425 at child
  try dsimp only [live1426, coloured1426]
  rw [child]
  dsimp only [result1425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1427_agree_conditional : tree1427 = literal1427 := by
  rw [tree1427_def]
  rfl
theorem node1427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1427 live1427 coloured1427 = result1427 := by
  rw [tree1427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1428_agree_conditional
    (child0 : tree1426 = literal1426)
    (child1 : tree1427 = literal1427) : tree1428 = literal1428 := by
  rw [tree1428_def, child0, child1]
  rfl
theorem node1428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1426 live1426 coloured1426 = result1426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1427 live1427 coloured1427 = result1427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1428 live1428 coloured1428 = result1428 := by
  rw [tree1428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1426 coloured1426 at child
  try dsimp only [live1428, coloured1428]
  rw [child]
  dsimp only [result1426]
  have child := child1
  unfold live1427 coloured1427 at child
  try dsimp only [live1428, coloured1428]
  rw [child]
  dsimp only [result1427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1429_agree_conditional : tree1429 = literal1429 := by
  rw [tree1429_def]
  rfl
theorem node1429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1429 live1429 coloured1429 = result1429 := by
  rw [tree1429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1430_agree_conditional
    (child0 : tree1428 = literal1428)
    (child1 : tree1429 = literal1429) : tree1430 = literal1430 := by
  rw [tree1430_def, child0, child1]
  rfl
theorem node1430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1428 live1428 coloured1428 = result1428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1429 live1429 coloured1429 = result1429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1430 live1430 coloured1430 = result1430 := by
  rw [tree1430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1428 coloured1428 at child
  try dsimp only [live1430, coloured1430]
  rw [child]
  dsimp only [result1428]
  have child := child1
  unfold live1429 coloured1429 at child
  try dsimp only [live1430, coloured1430]
  rw [child]
  dsimp only [result1429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1431_agree_conditional : tree1431 = literal1431 := by
  rw [tree1431_def]
  rfl
theorem node1431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1431 live1431 coloured1431 = result1431 := by
  rw [tree1431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1432_agree_conditional
    (child0 : tree1430 = literal1430)
    (child1 : tree1431 = literal1431) : tree1432 = literal1432 := by
  rw [tree1432_def, child0, child1]
  rfl
theorem node1432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1430 live1430 coloured1430 = result1430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1431 live1431 coloured1431 = result1431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1432 live1432 coloured1432 = result1432 := by
  rw [tree1432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1430 coloured1430 at child
  try dsimp only [live1432, coloured1432]
  rw [child]
  dsimp only [result1430]
  have child := child1
  unfold live1431 coloured1431 at child
  try dsimp only [live1432, coloured1432]
  rw [child]
  dsimp only [result1431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1433_agree_conditional : tree1433 = literal1433 := by
  rw [tree1433_def]
  rfl
theorem node1433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1433 live1433 coloured1433 = result1433 := by
  rw [tree1433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1434_agree_conditional
    (child0 : tree1432 = literal1432)
    (child1 : tree1433 = literal1433) : tree1434 = literal1434 := by
  rw [tree1434_def, child0, child1]
  rfl
theorem node1434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1432 live1432 coloured1432 = result1432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1433 live1433 coloured1433 = result1433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1434 live1434 coloured1434 = result1434 := by
  rw [tree1434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1432 coloured1432 at child
  try dsimp only [live1434, coloured1434]
  rw [child]
  dsimp only [result1432]
  have child := child1
  unfold live1433 coloured1433 at child
  try dsimp only [live1434, coloured1434]
  rw [child]
  dsimp only [result1433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1435_agree_conditional : tree1435 = literal1435 := by
  rw [tree1435_def]
  rfl
theorem node1435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1435 live1435 coloured1435 = result1435 := by
  rw [tree1435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1436_agree_conditional
    (child0 : tree1434 = literal1434)
    (child1 : tree1435 = literal1435) : tree1436 = literal1436 := by
  rw [tree1436_def, child0, child1]
  rfl
theorem node1436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1434 live1434 coloured1434 = result1434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1435 live1435 coloured1435 = result1435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1436 live1436 coloured1436 = result1436 := by
  rw [tree1436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1434 coloured1434 at child
  try dsimp only [live1436, coloured1436]
  rw [child]
  dsimp only [result1434]
  have child := child1
  unfold live1435 coloured1435 at child
  try dsimp only [live1436, coloured1436]
  rw [child]
  dsimp only [result1435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1437_agree_conditional : tree1437 = literal1437 := by
  rw [tree1437_def]
  rfl
theorem node1437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1437 live1437 coloured1437 = result1437 := by
  rw [tree1437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1438_agree_conditional
    (child0 : tree1436 = literal1436)
    (child1 : tree1437 = literal1437) : tree1438 = literal1438 := by
  rw [tree1438_def, child0, child1]
  rfl
theorem node1438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1436 live1436 coloured1436 = result1436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1437 live1437 coloured1437 = result1437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1438 live1438 coloured1438 = result1438 := by
  rw [tree1438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1436 coloured1436 at child
  try dsimp only [live1438, coloured1438]
  rw [child]
  dsimp only [result1436]
  have child := child1
  unfold live1437 coloured1437 at child
  try dsimp only [live1438, coloured1438]
  rw [child]
  dsimp only [result1437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1439_agree_conditional : tree1439 = literal1439 := by
  rw [tree1439_def]
  rfl
theorem node1439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1439 live1439 coloured1439 = result1439 := by
  rw [tree1439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
