import InitECandidate.Proofs.DeadStages64.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages64.Parallel
theorem node1280_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value318 value1 value2 = (output630, value319, value1))
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value319 value1 value2 = (output1279, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1280 value318 value1 value2 = (output1280, value4, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  dsimp only
  rw [child1279]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1281_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value4 value1 value2 = (output629, value318, value1))
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value318 value1 value2 = (output1280, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1281 value4 value1 value2 = (output1281, value4, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  dsimp only
  rw [child1280]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1282_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value313 value1 value2 = (output626, value4, value1))
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value4 value1 value2 = (output1281, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1282 value313 value1 value2 = (output1282, value4, value1) := by
  rw [input1282_def, output1282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  dsimp only
  rw [child1281]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1283_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value313 value1 value2 = (output619, value313, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value313 value1 value2 = (output1282, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value313 value1 value2 = (output1283, value4, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  dsimp only
  rw [child1282]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1284_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value312 value1 value2 = (output618, value313, value1))
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value313 value1 value2 = (output1283, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1284 value312 value1 value2 = (output1284, value4, value1) := by
  rw [input1284_def, output1284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  dsimp only
  rw [child1283]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1285_cond_eq
    (child617 : Flapjack.WordAlloc.removeDeadStructural input617 value4 value1 value2 = (output617, value312, value1))
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value312 value1 value2 = (output1284, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1285 value4 value1 value2 = (output1285, value4, value1) := by
  rw [input1285_def, output1285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child617]
  dsimp only
  rw [child1284]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1286_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value307 value1 value2 = (output614, value4, value1))
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value4 value1 value2 = (output1285, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1286 value307 value1 value2 = (output1286, value4, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  dsimp only
  rw [child1285]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1287_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value307 value1 value2 = (output607, value307, value1))
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value307 value1 value2 = (output1286, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1287 value307 value1 value2 = (output1287, value4, value1) := by
  rw [input1287_def, output1287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  dsimp only
  rw [child1286]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1288_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value306 value1 value2 = (output606, value307, value1))
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value307 value1 value2 = (output1287, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1288 value306 value1 value2 = (output1288, value4, value1) := by
  rw [input1288_def, output1288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  dsimp only
  rw [child1287]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1289_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value4 value1 value2 = (output605, value306, value1))
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value306 value1 value2 = (output1288, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1289 value4 value1 value2 = (output1289, value4, value1) := by
  rw [input1289_def, output1289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  dsimp only
  rw [child1288]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1290_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value301 value1 value2 = (output602, value4, value1))
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value4 value1 value2 = (output1289, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1290 value301 value1 value2 = (output1290, value4, value1) := by
  rw [input1290_def, output1290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  dsimp only
  rw [child1289]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1291_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value301 value1 value2 = (output595, value301, value1))
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value301 value1 value2 = (output1290, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1291 value301 value1 value2 = (output1291, value4, value1) := by
  rw [input1291_def, output1291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  dsimp only
  rw [child1290]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1292_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value300 value1 value2 = (output594, value301, value1))
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value301 value1 value2 = (output1291, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1292 value300 value1 value2 = (output1292, value4, value1) := by
  rw [input1292_def, output1292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  dsimp only
  rw [child1291]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1293_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value4 value1 value2 = (output593, value300, value1))
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value300 value1 value2 = (output1292, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1293 value4 value1 value2 = (output1293, value4, value1) := by
  rw [input1293_def, output1293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  dsimp only
  rw [child1292]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1294_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value295 value1 value2 = (output590, value4, value1))
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value4 value1 value2 = (output1293, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1294 value295 value1 value2 = (output1294, value4, value1) := by
  rw [input1294_def, output1294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  dsimp only
  rw [child1293]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1295_cond_eq
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value295 value1 value2 = (output583, value295, value1))
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value295 value1 value2 = (output1294, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1295 value295 value1 value2 = (output1295, value4, value1) := by
  rw [input1295_def, output1295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child583]
  dsimp only
  rw [child1294]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1296_cond_eq
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value294 value1 value2 = (output582, value295, value1))
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value295 value1 value2 = (output1295, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1296 value294 value1 value2 = (output1296, value4, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child582]
  dsimp only
  rw [child1295]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1297_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value4 value1 value2 = (output581, value294, value1))
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value294 value1 value2 = (output1296, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1297 value4 value1 value2 = (output1297, value4, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  dsimp only
  rw [child1296]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1298_cond_eq
    (child578 : Flapjack.WordAlloc.removeDeadStructural input578 value289 value1 value2 = (output578, value4, value1))
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value4 value1 value2 = (output1297, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1298 value289 value1 value2 = (output1298, value4, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child578]
  dsimp only
  rw [child1297]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1299_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value289 value1 value2 = (output571, value289, value1))
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value289 value1 value2 = (output1298, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1299 value289 value1 value2 = (output1299, value4, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  dsimp only
  rw [child1298]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1300_cond_eq
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value288 value1 value2 = (output570, value289, value1))
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value289 value1 value2 = (output1299, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1300 value288 value1 value2 = (output1300, value4, value1) := by
  rw [input1300_def, output1300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child570]
  dsimp only
  rw [child1299]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1301_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value4 value1 value2 = (output569, value288, value1))
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value288 value1 value2 = (output1300, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1301 value4 value1 value2 = (output1301, value4, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  dsimp only
  rw [child1300]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1302_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value283 value1 value2 = (output566, value4, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value4 value1 value2 = (output1301, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value283 value1 value2 = (output1302, value4, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  dsimp only
  rw [child1301]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1303_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value283 value1 value2 = (output559, value283, value1))
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value283 value1 value2 = (output1302, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1303 value283 value1 value2 = (output1303, value4, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  dsimp only
  rw [child1302]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1304_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value282 value1 value2 = (output558, value283, value1))
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value283 value1 value2 = (output1303, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1304 value282 value1 value2 = (output1304, value4, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  dsimp only
  rw [child1303]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1305_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value4 value1 value2 = (output557, value282, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value282 value1 value2 = (output1304, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value4 value1 value2 = (output1305, value4, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  dsimp only
  rw [child1304]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1306_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value277 value1 value2 = (output554, value4, value1))
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value4 value1 value2 = (output1305, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1306 value277 value1 value2 = (output1306, value4, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  dsimp only
  rw [child1305]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1307_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value277 value1 value2 = (output547, value277, value1))
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value277 value1 value2 = (output1306, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1307 value277 value1 value2 = (output1307, value4, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  dsimp only
  rw [child1306]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1308_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value276 value1 value2 = (output546, value277, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value277 value1 value2 = (output1307, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value276 value1 value2 = (output1308, value4, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  dsimp only
  rw [child1307]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1309_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value4 value1 value2 = (output545, value276, value1))
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value276 value1 value2 = (output1308, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1309 value4 value1 value2 = (output1309, value4, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  dsimp only
  rw [child1308]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1310_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value271 value1 value2 = (output542, value4, value1))
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value4 value1 value2 = (output1309, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1310 value271 value1 value2 = (output1310, value4, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  dsimp only
  rw [child1309]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1311_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value271 value1 value2 = (output535, value271, value1))
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value271 value1 value2 = (output1310, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1311 value271 value1 value2 = (output1311, value4, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  dsimp only
  rw [child1310]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1312_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value270 value1 value2 = (output534, value271, value1))
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value271 value1 value2 = (output1311, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1312 value270 value1 value2 = (output1312, value4, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  dsimp only
  rw [child1311]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1313_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value4 value1 value2 = (output533, value270, value1))
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value270 value1 value2 = (output1312, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1313 value4 value1 value2 = (output1313, value4, value1) := by
  rw [input1313_def, output1313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  dsimp only
  rw [child1312]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1314_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value265 value1 value2 = (output530, value4, value1))
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value4 value1 value2 = (output1313, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1314 value265 value1 value2 = (output1314, value4, value1) := by
  rw [input1314_def, output1314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  dsimp only
  rw [child1313]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1315_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value265 value1 value2 = (output523, value265, value1))
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value265 value1 value2 = (output1314, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1315 value265 value1 value2 = (output1315, value4, value1) := by
  rw [input1315_def, output1315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  dsimp only
  rw [child1314]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1316_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value264 value1 value2 = (output522, value265, value1))
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value265 value1 value2 = (output1315, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1316 value264 value1 value2 = (output1316, value4, value1) := by
  rw [input1316_def, output1316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  dsimp only
  rw [child1315]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1317_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value4 value1 value2 = (output521, value264, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value264 value1 value2 = (output1316, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value4 value1 value2 = (output1317, value4, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  dsimp only
  rw [child1316]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1318_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value259 value1 value2 = (output518, value4, value1))
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value4 value1 value2 = (output1317, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1318 value259 value1 value2 = (output1318, value4, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  dsimp only
  rw [child1317]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1319_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value259 value1 value2 = (output511, value259, value1))
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value259 value1 value2 = (output1318, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1319 value259 value1 value2 = (output1319, value4, value1) := by
  rw [input1319_def, output1319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  dsimp only
  rw [child1318]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1320_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value258 value1 value2 = (output510, value259, value1))
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value259 value1 value2 = (output1319, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1320 value258 value1 value2 = (output1320, value4, value1) := by
  rw [input1320_def, output1320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  dsimp only
  rw [child1319]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1321_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value4 value1 value2 = (output509, value258, value1))
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value258 value1 value2 = (output1320, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1321 value4 value1 value2 = (output1321, value4, value1) := by
  rw [input1321_def, output1321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  dsimp only
  rw [child1320]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1322_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value253 value1 value2 = (output506, value4, value1))
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value4 value1 value2 = (output1321, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1322 value253 value1 value2 = (output1322, value4, value1) := by
  rw [input1322_def, output1322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  dsimp only
  rw [child1321]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1323_cond_eq
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value253 value1 value2 = (output499, value253, value1))
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value253 value1 value2 = (output1322, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1323 value253 value1 value2 = (output1323, value4, value1) := by
  rw [input1323_def, output1323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child499]
  dsimp only
  rw [child1322]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1324_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value252 value1 value2 = (output498, value253, value1))
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value253 value1 value2 = (output1323, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1324 value252 value1 value2 = (output1324, value4, value1) := by
  rw [input1324_def, output1324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  dsimp only
  rw [child1323]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1325_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value4 value1 value2 = (output497, value252, value1))
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value252 value1 value2 = (output1324, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1325 value4 value1 value2 = (output1325, value4, value1) := by
  rw [input1325_def, output1325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  dsimp only
  rw [child1324]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1326_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value247 value1 value2 = (output494, value4, value1))
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value4 value1 value2 = (output1325, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1326 value247 value1 value2 = (output1326, value4, value1) := by
  rw [input1326_def, output1326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  dsimp only
  rw [child1325]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1327_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value247 value1 value2 = (output487, value247, value1))
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value247 value1 value2 = (output1326, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1327 value247 value1 value2 = (output1327, value4, value1) := by
  rw [input1327_def, output1327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  dsimp only
  rw [child1326]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1328_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value246 value1 value2 = (output486, value247, value1))
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value247 value1 value2 = (output1327, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1328 value246 value1 value2 = (output1328, value4, value1) := by
  rw [input1328_def, output1328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  dsimp only
  rw [child1327]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1329_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value4 value1 value2 = (output485, value246, value1))
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value246 value1 value2 = (output1328, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1329 value4 value1 value2 = (output1329, value4, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  dsimp only
  rw [child1328]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1330_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value241 value1 value2 = (output482, value4, value1))
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value4 value1 value2 = (output1329, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1330 value241 value1 value2 = (output1330, value4, value1) := by
  rw [input1330_def, output1330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  dsimp only
  rw [child1329]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1331_cond_eq
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value241 value1 value2 = (output475, value241, value1))
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value241 value1 value2 = (output1330, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1331 value241 value1 value2 = (output1331, value4, value1) := by
  rw [input1331_def, output1331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child475]
  dsimp only
  rw [child1330]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1332_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value240 value1 value2 = (output474, value241, value1))
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value241 value1 value2 = (output1331, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1332 value240 value1 value2 = (output1332, value4, value1) := by
  rw [input1332_def, output1332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  dsimp only
  rw [child1331]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1333_cond_eq
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value4 value1 value2 = (output473, value240, value1))
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value240 value1 value2 = (output1332, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1333 value4 value1 value2 = (output1333, value4, value1) := by
  rw [input1333_def, output1333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child473]
  dsimp only
  rw [child1332]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1334_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value235 value1 value2 = (output470, value4, value1))
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value4 value1 value2 = (output1333, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1334 value235 value1 value2 = (output1334, value4, value1) := by
  rw [input1334_def, output1334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  dsimp only
  rw [child1333]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1335_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value235 value1 value2 = (output463, value235, value1))
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value235 value1 value2 = (output1334, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1335 value235 value1 value2 = (output1335, value4, value1) := by
  rw [input1335_def, output1335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  dsimp only
  rw [child1334]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1336_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value234 value1 value2 = (output462, value235, value1))
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value235 value1 value2 = (output1335, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1336 value234 value1 value2 = (output1336, value4, value1) := by
  rw [input1336_def, output1336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  dsimp only
  rw [child1335]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1337_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value4 value1 value2 = (output461, value234, value1))
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value234 value1 value2 = (output1336, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1337 value4 value1 value2 = (output1337, value4, value1) := by
  rw [input1337_def, output1337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  dsimp only
  rw [child1336]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1338_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value229 value1 value2 = (output458, value4, value1))
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value4 value1 value2 = (output1337, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1338 value229 value1 value2 = (output1338, value4, value1) := by
  rw [input1338_def, output1338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  dsimp only
  rw [child1337]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1339_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value229 value1 value2 = (output451, value229, value1))
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value229 value1 value2 = (output1338, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1339 value229 value1 value2 = (output1339, value4, value1) := by
  rw [input1339_def, output1339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  dsimp only
  rw [child1338]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1340_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value228 value1 value2 = (output450, value229, value1))
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value229 value1 value2 = (output1339, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1340 value228 value1 value2 = (output1340, value4, value1) := by
  rw [input1340_def, output1340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  dsimp only
  rw [child1339]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1341_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value4 value1 value2 = (output449, value228, value1))
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value228 value1 value2 = (output1340, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1341 value4 value1 value2 = (output1341, value4, value1) := by
  rw [input1341_def, output1341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  dsimp only
  rw [child1340]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1342_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value223 value1 value2 = (output446, value4, value1))
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value4 value1 value2 = (output1341, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1342 value223 value1 value2 = (output1342, value4, value1) := by
  rw [input1342_def, output1342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  dsimp only
  rw [child1341]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1343_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value223 value1 value2 = (output439, value223, value1))
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value223 value1 value2 = (output1342, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1343 value223 value1 value2 = (output1343, value4, value1) := by
  rw [input1343_def, output1343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  dsimp only
  rw [child1342]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1344_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value222 value1 value2 = (output438, value223, value1))
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value223 value1 value2 = (output1343, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1344 value222 value1 value2 = (output1344, value4, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  dsimp only
  rw [child1343]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1345_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value4 value1 value2 = (output437, value222, value1))
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value222 value1 value2 = (output1344, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1345 value4 value1 value2 = (output1345, value4, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  dsimp only
  rw [child1344]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1346_cond_eq
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value217 value1 value2 = (output434, value4, value1))
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value4 value1 value2 = (output1345, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1346 value217 value1 value2 = (output1346, value4, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child434]
  dsimp only
  rw [child1345]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1347_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value217 value1 value2 = (output427, value217, value1))
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value217 value1 value2 = (output1346, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1347 value217 value1 value2 = (output1347, value4, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  dsimp only
  rw [child1346]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1348_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value216 value1 value2 = (output426, value217, value1))
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value217 value1 value2 = (output1347, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1348 value216 value1 value2 = (output1348, value4, value1) := by
  rw [input1348_def, output1348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  dsimp only
  rw [child1347]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1349_cond_eq
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value4 value1 value2 = (output425, value216, value1))
    (child1348 : Flapjack.WordAlloc.removeDeadStructural input1348 value216 value1 value2 = (output1348, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1349 value4 value1 value2 = (output1349, value4, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child425]
  dsimp only
  rw [child1348]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1350_cond_eq
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value211 value1 value2 = (output422, value4, value1))
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value4 value1 value2 = (output1349, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1350 value211 value1 value2 = (output1350, value4, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child422]
  dsimp only
  rw [child1349]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1351_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value211 value1 value2 = (output415, value211, value1))
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value211 value1 value2 = (output1350, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1351 value211 value1 value2 = (output1351, value4, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  dsimp only
  rw [child1350]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1352_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value210 value1 value2 = (output414, value211, value1))
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value211 value1 value2 = (output1351, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1352 value210 value1 value2 = (output1352, value4, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  dsimp only
  rw [child1351]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1353_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value4 value1 value2 = (output413, value210, value1))
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value210 value1 value2 = (output1352, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1353 value4 value1 value2 = (output1353, value4, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  dsimp only
  rw [child1352]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1354_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value205 value1 value2 = (output410, value4, value1))
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value4 value1 value2 = (output1353, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1354 value205 value1 value2 = (output1354, value4, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  dsimp only
  rw [child1353]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1355_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value205 value1 value2 = (output403, value205, value1))
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value205 value1 value2 = (output1354, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1355 value205 value1 value2 = (output1355, value4, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  dsimp only
  rw [child1354]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1356_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value204 value1 value2 = (output402, value205, value1))
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value205 value1 value2 = (output1355, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1356 value204 value1 value2 = (output1356, value4, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  dsimp only
  rw [child1355]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1357_cond_eq
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value4 value1 value2 = (output401, value204, value1))
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value204 value1 value2 = (output1356, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1357 value4 value1 value2 = (output1357, value4, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child401]
  dsimp only
  rw [child1356]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1358_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value199 value1 value2 = (output398, value4, value1))
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value4 value1 value2 = (output1357, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1358 value199 value1 value2 = (output1358, value4, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  dsimp only
  rw [child1357]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1359_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value199 value1 value2 = (output391, value199, value1))
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value199 value1 value2 = (output1358, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1359 value199 value1 value2 = (output1359, value4, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  dsimp only
  rw [child1358]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1360_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value198 value1 value2 = (output390, value199, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value199 value1 value2 = (output1359, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value198 value1 value2 = (output1360, value4, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  dsimp only
  rw [child1359]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1361_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value4 value1 value2 = (output389, value198, value1))
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value198 value1 value2 = (output1360, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1361 value4 value1 value2 = (output1361, value4, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  dsimp only
  rw [child1360]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1362_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value193 value1 value2 = (output386, value4, value1))
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value4 value1 value2 = (output1361, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1362 value193 value1 value2 = (output1362, value4, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  dsimp only
  rw [child1361]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1363_cond_eq
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value193 value1 value2 = (output379, value193, value1))
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value193 value1 value2 = (output1362, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1363 value193 value1 value2 = (output1363, value4, value1) := by
  rw [input1363_def, output1363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child379]
  dsimp only
  rw [child1362]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1364_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value192 value1 value2 = (output378, value193, value1))
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value193 value1 value2 = (output1363, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1364 value192 value1 value2 = (output1364, value4, value1) := by
  rw [input1364_def, output1364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  dsimp only
  rw [child1363]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1365_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value4 value1 value2 = (output377, value192, value1))
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value192 value1 value2 = (output1364, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1365 value4 value1 value2 = (output1365, value4, value1) := by
  rw [input1365_def, output1365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  dsimp only
  rw [child1364]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1366_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value187 value1 value2 = (output374, value4, value1))
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value4 value1 value2 = (output1365, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1366 value187 value1 value2 = (output1366, value4, value1) := by
  rw [input1366_def, output1366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  dsimp only
  rw [child1365]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1367_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value187 value1 value2 = (output367, value187, value1))
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value187 value1 value2 = (output1366, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1367 value187 value1 value2 = (output1367, value4, value1) := by
  rw [input1367_def, output1367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  dsimp only
  rw [child1366]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1368_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value186 value1 value2 = (output366, value187, value1))
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value187 value1 value2 = (output1367, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1368 value186 value1 value2 = (output1368, value4, value1) := by
  rw [input1368_def, output1368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  dsimp only
  rw [child1367]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1369_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value4 value1 value2 = (output365, value186, value1))
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value186 value1 value2 = (output1368, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1369 value4 value1 value2 = (output1369, value4, value1) := by
  rw [input1369_def, output1369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  dsimp only
  rw [child1368]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1370_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value181 value1 value2 = (output362, value4, value1))
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value4 value1 value2 = (output1369, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1370 value181 value1 value2 = (output1370, value4, value1) := by
  rw [input1370_def, output1370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  dsimp only
  rw [child1369]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1371_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value181 value1 value2 = (output355, value181, value1))
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value181 value1 value2 = (output1370, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1371 value181 value1 value2 = (output1371, value4, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  dsimp only
  rw [child1370]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1372_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value180 value1 value2 = (output354, value181, value1))
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value181 value1 value2 = (output1371, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1372 value180 value1 value2 = (output1372, value4, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  dsimp only
  rw [child1371]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1373_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value4 value1 value2 = (output353, value180, value1))
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value180 value1 value2 = (output1372, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1373 value4 value1 value2 = (output1373, value4, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  dsimp only
  rw [child1372]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1374_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value175 value1 value2 = (output350, value4, value1))
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value4 value1 value2 = (output1373, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1374 value175 value1 value2 = (output1374, value4, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  dsimp only
  rw [child1373]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1375_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value175 value1 value2 = (output343, value175, value1))
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value175 value1 value2 = (output1374, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1375 value175 value1 value2 = (output1375, value4, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  dsimp only
  rw [child1374]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1376_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value174 value1 value2 = (output342, value175, value1))
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value175 value1 value2 = (output1375, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1376 value174 value1 value2 = (output1376, value4, value1) := by
  rw [input1376_def, output1376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  dsimp only
  rw [child1375]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1377_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value4 value1 value2 = (output341, value174, value1))
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value174 value1 value2 = (output1376, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1377 value4 value1 value2 = (output1377, value4, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  dsimp only
  rw [child1376]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1378_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value169 value1 value2 = (output338, value4, value1))
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value4 value1 value2 = (output1377, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1378 value169 value1 value2 = (output1378, value4, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  dsimp only
  rw [child1377]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1379_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value169 value1 value2 = (output331, value169, value1))
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value169 value1 value2 = (output1378, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1379 value169 value1 value2 = (output1379, value4, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  dsimp only
  rw [child1378]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1380_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value168 value1 value2 = (output330, value169, value1))
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value169 value1 value2 = (output1379, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1380 value168 value1 value2 = (output1380, value4, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  dsimp only
  rw [child1379]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1381_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value4 value1 value2 = (output329, value168, value1))
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value168 value1 value2 = (output1380, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1381 value4 value1 value2 = (output1381, value4, value1) := by
  rw [input1381_def, output1381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  dsimp only
  rw [child1380]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1382_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value163 value1 value2 = (output326, value4, value1))
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value4 value1 value2 = (output1381, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1382 value163 value1 value2 = (output1382, value4, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  dsimp only
  rw [child1381]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1383_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value163 value1 value2 = (output319, value163, value1))
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value163 value1 value2 = (output1382, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1383 value163 value1 value2 = (output1383, value4, value1) := by
  rw [input1383_def, output1383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  dsimp only
  rw [child1382]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1384_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value162 value1 value2 = (output318, value163, value1))
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value163 value1 value2 = (output1383, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1384 value162 value1 value2 = (output1384, value4, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  dsimp only
  rw [child1383]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1385_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value4 value1 value2 = (output317, value162, value1))
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value162 value1 value2 = (output1384, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1385 value4 value1 value2 = (output1385, value4, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  dsimp only
  rw [child1384]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1386_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value157 value1 value2 = (output314, value4, value1))
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value4 value1 value2 = (output1385, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1386 value157 value1 value2 = (output1386, value4, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  dsimp only
  rw [child1385]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1387_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value157 value1 value2 = (output307, value157, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value157 value1 value2 = (output1386, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value157 value1 value2 = (output1387, value4, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  dsimp only
  rw [child1386]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1388_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value156 value1 value2 = (output306, value157, value1))
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value157 value1 value2 = (output1387, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1388 value156 value1 value2 = (output1388, value4, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  dsimp only
  rw [child1387]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1389_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value4 value1 value2 = (output305, value156, value1))
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value156 value1 value2 = (output1388, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1389 value4 value1 value2 = (output1389, value4, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  dsimp only
  rw [child1388]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1390_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value151 value1 value2 = (output302, value4, value1))
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value4 value1 value2 = (output1389, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1390 value151 value1 value2 = (output1390, value4, value1) := by
  rw [input1390_def, output1390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  dsimp only
  rw [child1389]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1391_cond_eq
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value151 value1 value2 = (output295, value151, value1))
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value151 value1 value2 = (output1390, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1391 value151 value1 value2 = (output1391, value4, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child295]
  dsimp only
  rw [child1390]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1392_cond_eq
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value150 value1 value2 = (output294, value151, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value151 value1 value2 = (output1391, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value150 value1 value2 = (output1392, value4, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child294]
  dsimp only
  rw [child1391]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1393_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value4 value1 value2 = (output293, value150, value1))
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value150 value1 value2 = (output1392, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1393 value4 value1 value2 = (output1393, value4, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  dsimp only
  rw [child1392]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1394_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value145 value1 value2 = (output290, value4, value1))
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value4 value1 value2 = (output1393, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1394 value145 value1 value2 = (output1394, value4, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  dsimp only
  rw [child1393]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1395_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value145 value1 value2 = (output283, value145, value1))
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value145 value1 value2 = (output1394, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1395 value145 value1 value2 = (output1395, value4, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  dsimp only
  rw [child1394]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1396_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value144 value1 value2 = (output282, value145, value1))
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value145 value1 value2 = (output1395, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1396 value144 value1 value2 = (output1396, value4, value1) := by
  rw [input1396_def, output1396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  dsimp only
  rw [child1395]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1397_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value4 value1 value2 = (output281, value144, value1))
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value144 value1 value2 = (output1396, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1397 value4 value1 value2 = (output1397, value4, value1) := by
  rw [input1397_def, output1397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  dsimp only
  rw [child1396]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1398_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value139 value1 value2 = (output278, value4, value1))
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value4 value1 value2 = (output1397, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1398 value139 value1 value2 = (output1398, value4, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  dsimp only
  rw [child1397]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1399_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value139 value1 value2 = (output271, value139, value1))
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value139 value1 value2 = (output1398, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1399 value139 value1 value2 = (output1399, value4, value1) := by
  rw [input1399_def, output1399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  dsimp only
  rw [child1398]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1400_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value138 value1 value2 = (output270, value139, value1))
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value139 value1 value2 = (output1399, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1400 value138 value1 value2 = (output1400, value4, value1) := by
  rw [input1400_def, output1400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  dsimp only
  rw [child1399]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1401_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value4 value1 value2 = (output269, value138, value1))
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value138 value1 value2 = (output1400, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1401 value4 value1 value2 = (output1401, value4, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  dsimp only
  rw [child1400]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1402_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value133 value1 value2 = (output266, value4, value1))
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value4 value1 value2 = (output1401, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1402 value133 value1 value2 = (output1402, value4, value1) := by
  rw [input1402_def, output1402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  dsimp only
  rw [child1401]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1403_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value133 value1 value2 = (output259, value133, value1))
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value133 value1 value2 = (output1402, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1403 value133 value1 value2 = (output1403, value4, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  dsimp only
  rw [child1402]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1404_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value132 value1 value2 = (output258, value133, value1))
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value133 value1 value2 = (output1403, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1404 value132 value1 value2 = (output1404, value4, value1) := by
  rw [input1404_def, output1404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  dsimp only
  rw [child1403]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1405_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value4 value1 value2 = (output257, value132, value1))
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value132 value1 value2 = (output1404, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1405 value4 value1 value2 = (output1405, value4, value1) := by
  rw [input1405_def, output1405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  dsimp only
  rw [child1404]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1406_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value127 value1 value2 = (output254, value4, value1))
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value4 value1 value2 = (output1405, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1406 value127 value1 value2 = (output1406, value4, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  dsimp only
  rw [child1405]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1407_cond_eq
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value127 value1 value2 = (output247, value127, value1))
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value127 value1 value2 = (output1406, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1407 value127 value1 value2 = (output1407, value4, value1) := by
  rw [input1407_def, output1407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child247]
  dsimp only
  rw [child1406]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1408_cond_eq
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value126 value1 value2 = (output246, value127, value1))
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value127 value1 value2 = (output1407, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1408 value126 value1 value2 = (output1408, value4, value1) := by
  rw [input1408_def, output1408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child246]
  dsimp only
  rw [child1407]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1409_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value4 value1 value2 = (output245, value126, value1))
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value126 value1 value2 = (output1408, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1409 value4 value1 value2 = (output1409, value4, value1) := by
  rw [input1409_def, output1409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  dsimp only
  rw [child1408]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1410_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value121 value1 value2 = (output242, value4, value1))
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value4 value1 value2 = (output1409, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1410 value121 value1 value2 = (output1410, value4, value1) := by
  rw [input1410_def, output1410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  dsimp only
  rw [child1409]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1411_cond_eq
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value121 value1 value2 = (output235, value121, value1))
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value121 value1 value2 = (output1410, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1411 value121 value1 value2 = (output1411, value4, value1) := by
  rw [input1411_def, output1411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child235]
  dsimp only
  rw [child1410]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1412_cond_eq
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value120 value1 value2 = (output234, value121, value1))
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value121 value1 value2 = (output1411, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1412 value120 value1 value2 = (output1412, value4, value1) := by
  rw [input1412_def, output1412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child234]
  dsimp only
  rw [child1411]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1413_cond_eq
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value4 value1 value2 = (output233, value120, value1))
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value120 value1 value2 = (output1412, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1413 value4 value1 value2 = (output1413, value4, value1) := by
  rw [input1413_def, output1413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child233]
  dsimp only
  rw [child1412]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1414_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value115 value1 value2 = (output230, value4, value1))
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value4 value1 value2 = (output1413, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1414 value115 value1 value2 = (output1414, value4, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  dsimp only
  rw [child1413]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1415_cond_eq
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value115 value1 value2 = (output223, value115, value1))
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value115 value1 value2 = (output1414, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1415 value115 value1 value2 = (output1415, value4, value1) := by
  rw [input1415_def, output1415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child223]
  dsimp only
  rw [child1414]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1416_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value114 value1 value2 = (output222, value115, value1))
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value115 value1 value2 = (output1415, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1416 value114 value1 value2 = (output1416, value4, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  dsimp only
  rw [child1415]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1417_cond_eq
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value4 value1 value2 = (output221, value114, value1))
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value114 value1 value2 = (output1416, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1417 value4 value1 value2 = (output1417, value4, value1) := by
  rw [input1417_def, output1417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child221]
  dsimp only
  rw [child1416]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1418_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value109 value1 value2 = (output218, value4, value1))
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value4 value1 value2 = (output1417, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1418 value109 value1 value2 = (output1418, value4, value1) := by
  rw [input1418_def, output1418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  dsimp only
  rw [child1417]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1419_cond_eq
    (child211 : Flapjack.WordAlloc.removeDeadStructural input211 value109 value1 value2 = (output211, value109, value1))
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value109 value1 value2 = (output1418, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1419 value109 value1 value2 = (output1419, value4, value1) := by
  rw [input1419_def, output1419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child211]
  dsimp only
  rw [child1418]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1420_cond_eq
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value108 value1 value2 = (output210, value109, value1))
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value109 value1 value2 = (output1419, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1420 value108 value1 value2 = (output1420, value4, value1) := by
  rw [input1420_def, output1420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child210]
  dsimp only
  rw [child1419]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1421_cond_eq
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value4 value1 value2 = (output209, value108, value1))
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value108 value1 value2 = (output1420, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1421 value4 value1 value2 = (output1421, value4, value1) := by
  rw [input1421_def, output1421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child209]
  dsimp only
  rw [child1420]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1422_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value103 value1 value2 = (output206, value4, value1))
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value4 value1 value2 = (output1421, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1422 value103 value1 value2 = (output1422, value4, value1) := by
  rw [input1422_def, output1422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  dsimp only
  rw [child1421]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1423_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value103 value1 value2 = (output199, value103, value1))
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value103 value1 value2 = (output1422, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1423 value103 value1 value2 = (output1423, value4, value1) := by
  rw [input1423_def, output1423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  dsimp only
  rw [child1422]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1424_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value102 value1 value2 = (output198, value103, value1))
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value103 value1 value2 = (output1423, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1424 value102 value1 value2 = (output1424, value4, value1) := by
  rw [input1424_def, output1424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  dsimp only
  rw [child1423]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1425_cond_eq
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value4 value1 value2 = (output197, value102, value1))
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value102 value1 value2 = (output1424, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1425 value4 value1 value2 = (output1425, value4, value1) := by
  rw [input1425_def, output1425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child197]
  dsimp only
  rw [child1424]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1426_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value97 value1 value2 = (output194, value4, value1))
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value4 value1 value2 = (output1425, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1426 value97 value1 value2 = (output1426, value4, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  dsimp only
  rw [child1425]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1427_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value97 value1 value2 = (output187, value97, value1))
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value97 value1 value2 = (output1426, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1427 value97 value1 value2 = (output1427, value4, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  dsimp only
  rw [child1426]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1428_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value96 value1 value2 = (output186, value97, value1))
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value97 value1 value2 = (output1427, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1428 value96 value1 value2 = (output1428, value4, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  dsimp only
  rw [child1427]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1429_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value4 value1 value2 = (output185, value96, value1))
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value96 value1 value2 = (output1428, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1429 value4 value1 value2 = (output1429, value4, value1) := by
  rw [input1429_def, output1429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  dsimp only
  rw [child1428]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1430_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value91 value1 value2 = (output182, value4, value1))
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value4 value1 value2 = (output1429, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1430 value91 value1 value2 = (output1430, value4, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  dsimp only
  rw [child1429]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1431_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value91 value1 value2 = (output175, value91, value1))
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value91 value1 value2 = (output1430, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1431 value91 value1 value2 = (output1431, value4, value1) := by
  rw [input1431_def, output1431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  dsimp only
  rw [child1430]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1432_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value90 value1 value2 = (output174, value91, value1))
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value91 value1 value2 = (output1431, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1432 value90 value1 value2 = (output1432, value4, value1) := by
  rw [input1432_def, output1432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  dsimp only
  rw [child1431]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1433_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value4 value1 value2 = (output173, value90, value1))
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value90 value1 value2 = (output1432, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1433 value4 value1 value2 = (output1433, value4, value1) := by
  rw [input1433_def, output1433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  dsimp only
  rw [child1432]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1434_cond_eq
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value85 value1 value2 = (output170, value4, value1))
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value4 value1 value2 = (output1433, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1434 value85 value1 value2 = (output1434, value4, value1) := by
  rw [input1434_def, output1434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child170]
  dsimp only
  rw [child1433]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1435_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value85 value1 value2 = (output163, value85, value1))
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value85 value1 value2 = (output1434, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1435 value85 value1 value2 = (output1435, value4, value1) := by
  rw [input1435_def, output1435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  dsimp only
  rw [child1434]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1436_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value84 value1 value2 = (output162, value85, value1))
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value85 value1 value2 = (output1435, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1436 value84 value1 value2 = (output1436, value4, value1) := by
  rw [input1436_def, output1436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  dsimp only
  rw [child1435]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1437_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value4 value1 value2 = (output161, value84, value1))
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value84 value1 value2 = (output1436, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1437 value4 value1 value2 = (output1437, value4, value1) := by
  rw [input1437_def, output1437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  dsimp only
  rw [child1436]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1438_cond_eq
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value79 value1 value2 = (output158, value4, value1))
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value4 value1 value2 = (output1437, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1438 value79 value1 value2 = (output1438, value4, value1) := by
  rw [input1438_def, output1438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child158]
  dsimp only
  rw [child1437]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1439_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value79 value1 value2 = (output151, value79, value1))
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value79 value1 value2 = (output1438, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1439 value79 value1 value2 = (output1439, value4, value1) := by
  rw [input1439_def, output1439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  dsimp only
  rw [child1438]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1440_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value78 value1 value2 = (output150, value79, value1))
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value79 value1 value2 = (output1439, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1440 value78 value1 value2 = (output1440, value4, value1) := by
  rw [input1440_def, output1440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  dsimp only
  rw [child1439]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1441_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value4 value1 value2 = (output149, value78, value1))
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value78 value1 value2 = (output1440, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1441 value4 value1 value2 = (output1441, value4, value1) := by
  rw [input1441_def, output1441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  dsimp only
  rw [child1440]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1442_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value73 value1 value2 = (output146, value4, value1))
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value4 value1 value2 = (output1441, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1442 value73 value1 value2 = (output1442, value4, value1) := by
  rw [input1442_def, output1442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  dsimp only
  rw [child1441]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1443_cond_eq
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value73 value1 value2 = (output139, value73, value1))
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value73 value1 value2 = (output1442, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1443 value73 value1 value2 = (output1443, value4, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child139]
  dsimp only
  rw [child1442]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1444_cond_eq
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value72 value1 value2 = (output138, value73, value1))
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value73 value1 value2 = (output1443, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1444 value72 value1 value2 = (output1444, value4, value1) := by
  rw [input1444_def, output1444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child138]
  dsimp only
  rw [child1443]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1445_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value4 value1 value2 = (output137, value72, value1))
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value72 value1 value2 = (output1444, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1445 value4 value1 value2 = (output1445, value4, value1) := by
  rw [input1445_def, output1445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  dsimp only
  rw [child1444]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1446_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value67 value1 value2 = (output134, value4, value1))
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value4 value1 value2 = (output1445, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1446 value67 value1 value2 = (output1446, value4, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  dsimp only
  rw [child1445]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1447_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value67 value1 value2 = (output127, value67, value1))
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value67 value1 value2 = (output1446, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1447 value67 value1 value2 = (output1447, value4, value1) := by
  rw [input1447_def, output1447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  dsimp only
  rw [child1446]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1448_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value66 value1 value2 = (output126, value67, value1))
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value67 value1 value2 = (output1447, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1448 value66 value1 value2 = (output1448, value4, value1) := by
  rw [input1448_def, output1448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  dsimp only
  rw [child1447]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1449_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value4 value1 value2 = (output125, value66, value1))
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value66 value1 value2 = (output1448, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1449 value4 value1 value2 = (output1449, value4, value1) := by
  rw [input1449_def, output1449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  dsimp only
  rw [child1448]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1450_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value61 value1 value2 = (output122, value4, value1))
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value4 value1 value2 = (output1449, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1450 value61 value1 value2 = (output1450, value4, value1) := by
  rw [input1450_def, output1450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  dsimp only
  rw [child1449]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1451_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value61 value1 value2 = (output115, value61, value1))
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value61 value1 value2 = (output1450, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1451 value61 value1 value2 = (output1451, value4, value1) := by
  rw [input1451_def, output1451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  dsimp only
  rw [child1450]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1452_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value60 value1 value2 = (output114, value61, value1))
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value61 value1 value2 = (output1451, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1452 value60 value1 value2 = (output1452, value4, value1) := by
  rw [input1452_def, output1452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  dsimp only
  rw [child1451]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1453_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value4 value1 value2 = (output113, value60, value1))
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value60 value1 value2 = (output1452, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1453 value4 value1 value2 = (output1453, value4, value1) := by
  rw [input1453_def, output1453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  dsimp only
  rw [child1452]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1454_cond_eq
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value55 value1 value2 = (output110, value4, value1))
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value4 value1 value2 = (output1453, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1454 value55 value1 value2 = (output1454, value4, value1) := by
  rw [input1454_def, output1454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child110]
  dsimp only
  rw [child1453]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1455_cond_eq
    (child103 : Flapjack.WordAlloc.removeDeadStructural input103 value55 value1 value2 = (output103, value55, value1))
    (child1454 : Flapjack.WordAlloc.removeDeadStructural input1454 value55 value1 value2 = (output1454, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1455 value55 value1 value2 = (output1455, value4, value1) := by
  rw [input1455_def, output1455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child103]
  dsimp only
  rw [child1454]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1456_cond_eq
    (child102 : Flapjack.WordAlloc.removeDeadStructural input102 value54 value1 value2 = (output102, value55, value1))
    (child1455 : Flapjack.WordAlloc.removeDeadStructural input1455 value55 value1 value2 = (output1455, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1456 value54 value1 value2 = (output1456, value4, value1) := by
  rw [input1456_def, output1456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child102]
  dsimp only
  rw [child1455]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1457_cond_eq
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value4 value1 value2 = (output101, value54, value1))
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value54 value1 value2 = (output1456, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1457 value4 value1 value2 = (output1457, value4, value1) := by
  rw [input1457_def, output1457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child101]
  dsimp only
  rw [child1456]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1458_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value49 value1 value2 = (output98, value4, value1))
    (child1457 : Flapjack.WordAlloc.removeDeadStructural input1457 value4 value1 value2 = (output1457, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1458 value49 value1 value2 = (output1458, value4, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  dsimp only
  rw [child1457]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1459_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value49 value1 value2 = (output91, value49, value1))
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value49 value1 value2 = (output1458, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1459 value49 value1 value2 = (output1459, value4, value1) := by
  rw [input1459_def, output1459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  dsimp only
  rw [child1458]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1460_cond_eq
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value48 value1 value2 = (output90, value49, value1))
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value49 value1 value2 = (output1459, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1460 value48 value1 value2 = (output1460, value4, value1) := by
  rw [input1460_def, output1460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child90]
  dsimp only
  rw [child1459]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1461_cond_eq
    (child89 : Flapjack.WordAlloc.removeDeadStructural input89 value4 value1 value2 = (output89, value48, value1))
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value48 value1 value2 = (output1460, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1461 value4 value1 value2 = (output1461, value4, value1) := by
  rw [input1461_def, output1461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child89]
  dsimp only
  rw [child1460]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1462_cond_eq
    (child86 : Flapjack.WordAlloc.removeDeadStructural input86 value43 value1 value2 = (output86, value4, value1))
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value4 value1 value2 = (output1461, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1462 value43 value1 value2 = (output1462, value4, value1) := by
  rw [input1462_def, output1462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child86]
  dsimp only
  rw [child1461]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1463_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value43 value1 value2 = (output79, value43, value1))
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value43 value1 value2 = (output1462, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1463 value43 value1 value2 = (output1463, value4, value1) := by
  rw [input1463_def, output1463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  dsimp only
  rw [child1462]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1464_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value42 value1 value2 = (output78, value43, value1))
    (child1463 : Flapjack.WordAlloc.removeDeadStructural input1463 value43 value1 value2 = (output1463, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1464 value42 value1 value2 = (output1464, value4, value1) := by
  rw [input1464_def, output1464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  dsimp only
  rw [child1463]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1465_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value4 value1 value2 = (output77, value42, value1))
    (child1464 : Flapjack.WordAlloc.removeDeadStructural input1464 value42 value1 value2 = (output1464, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1465 value4 value1 value2 = (output1465, value4, value1) := by
  rw [input1465_def, output1465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  dsimp only
  rw [child1464]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1466_cond_eq
    (child74 : Flapjack.WordAlloc.removeDeadStructural input74 value37 value1 value2 = (output74, value4, value1))
    (child1465 : Flapjack.WordAlloc.removeDeadStructural input1465 value4 value1 value2 = (output1465, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1466 value37 value1 value2 = (output1466, value4, value1) := by
  rw [input1466_def, output1466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child74]
  dsimp only
  rw [child1465]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1467_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value37 value1 value2 = (output67, value37, value1))
    (child1466 : Flapjack.WordAlloc.removeDeadStructural input1466 value37 value1 value2 = (output1466, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1467 value37 value1 value2 = (output1467, value4, value1) := by
  rw [input1467_def, output1467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  dsimp only
  rw [child1466]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1468_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value36 value1 value2 = (output66, value37, value1))
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value37 value1 value2 = (output1467, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1468 value36 value1 value2 = (output1468, value4, value1) := by
  rw [input1468_def, output1468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  dsimp only
  rw [child1467]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1469_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value4 value1 value2 = (output65, value36, value1))
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value36 value1 value2 = (output1468, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1469 value4 value1 value2 = (output1469, value4, value1) := by
  rw [input1469_def, output1469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  dsimp only
  rw [child1468]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1470_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value31 value1 value2 = (output62, value4, value1))
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value4 value1 value2 = (output1469, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1470 value31 value1 value2 = (output1470, value4, value1) := by
  rw [input1470_def, output1470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  dsimp only
  rw [child1469]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1471_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value31 value1 value2 = (output55, value31, value1))
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value31 value1 value2 = (output1470, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1471 value31 value1 value2 = (output1471, value4, value1) := by
  rw [input1471_def, output1471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  dsimp only
  rw [child1470]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1472_cond_eq
    (child54 : Flapjack.WordAlloc.removeDeadStructural input54 value30 value1 value2 = (output54, value31, value1))
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value31 value1 value2 = (output1471, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1472 value30 value1 value2 = (output1472, value4, value1) := by
  rw [input1472_def, output1472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child54]
  dsimp only
  rw [child1471]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1473_cond_eq
    (child53 : Flapjack.WordAlloc.removeDeadStructural input53 value4 value1 value2 = (output53, value30, value1))
    (child1472 : Flapjack.WordAlloc.removeDeadStructural input1472 value30 value1 value2 = (output1472, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1473 value4 value1 value2 = (output1473, value4, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child53]
  dsimp only
  rw [child1472]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1474_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value25 value1 value2 = (output50, value4, value1))
    (child1473 : Flapjack.WordAlloc.removeDeadStructural input1473 value4 value1 value2 = (output1473, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1474 value25 value1 value2 = (output1474, value4, value1) := by
  rw [input1474_def, output1474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  dsimp only
  rw [child1473]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1475_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value25 value1 value2 = (output43, value25, value1))
    (child1474 : Flapjack.WordAlloc.removeDeadStructural input1474 value25 value1 value2 = (output1474, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1475 value25 value1 value2 = (output1475, value4, value1) := by
  rw [input1475_def, output1475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  dsimp only
  rw [child1474]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1476_cond_eq
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value24 value1 value2 = (output42, value25, value1))
    (child1475 : Flapjack.WordAlloc.removeDeadStructural input1475 value25 value1 value2 = (output1475, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1476 value24 value1 value2 = (output1476, value4, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child42]
  dsimp only
  rw [child1475]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1477_cond_eq
    (child41 : Flapjack.WordAlloc.removeDeadStructural input41 value4 value1 value2 = (output41, value24, value1))
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value24 value1 value2 = (output1476, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1477 value4 value1 value2 = (output1477, value4, value1) := by
  rw [input1477_def, output1477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child41]
  dsimp only
  rw [child1476]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1478_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value19 value1 value2 = (output38, value4, value1))
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value4 value1 value2 = (output1477, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1478 value19 value1 value2 = (output1478, value4, value1) := by
  rw [input1478_def, output1478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  dsimp only
  rw [child1477]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1479_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value19 value1 value2 = (output31, value19, value1))
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value19 value1 value2 = (output1478, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1479 value19 value1 value2 = (output1479, value4, value1) := by
  rw [input1479_def, output1479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  dsimp only
  rw [child1478]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1480_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value18 value1 value2 = (output30, value19, value1))
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value19 value1 value2 = (output1479, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1480 value18 value1 value2 = (output1480, value4, value1) := by
  rw [input1480_def, output1480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  dsimp only
  rw [child1479]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1481_cond_eq
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value4 value1 value2 = (output29, value18, value1))
    (child1480 : Flapjack.WordAlloc.removeDeadStructural input1480 value18 value1 value2 = (output1480, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1481 value4 value1 value2 = (output1481, value4, value1) := by
  rw [input1481_def, output1481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child29]
  dsimp only
  rw [child1480]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1482_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value13 value1 value2 = (output26, value4, value1))
    (child1481 : Flapjack.WordAlloc.removeDeadStructural input1481 value4 value1 value2 = (output1481, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1482 value13 value1 value2 = (output1482, value4, value1) := by
  rw [input1482_def, output1482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  dsimp only
  rw [child1481]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1483_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value13 value1 value2 = (output19, value13, value1))
    (child1482 : Flapjack.WordAlloc.removeDeadStructural input1482 value13 value1 value2 = (output1482, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1483 value13 value1 value2 = (output1483, value4, value1) := by
  rw [input1483_def, output1483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  dsimp only
  rw [child1482]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1484_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value12 value1 value2 = (output18, value13, value1))
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value13 value1 value2 = (output1483, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1484 value12 value1 value2 = (output1484, value4, value1) := by
  rw [input1484_def, output1484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  dsimp only
  rw [child1483]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1485_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value4 value1 value2 = (output17, value12, value1))
    (child1484 : Flapjack.WordAlloc.removeDeadStructural input1484 value12 value1 value2 = (output1484, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1485 value4 value1 value2 = (output1485, value4, value1) := by
  rw [input1485_def, output1485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  dsimp only
  rw [child1484]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1486_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value7 value1 value2 = (output14, value4, value1))
    (child1485 : Flapjack.WordAlloc.removeDeadStructural input1485 value4 value1 value2 = (output1485, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1486 value7 value1 value2 = (output1486, value4, value1) := by
  rw [input1486_def, output1486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  dsimp only
  rw [child1485]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1487_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value7, value1))
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value7 value1 value2 = (output1486, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1487 value7 value1 value2 = (output1487, value4, value1) := by
  rw [input1487_def, output1487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  dsimp only
  rw [child1486]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1488_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value6 value1 value2 = (output6, value7, value1))
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value7 value1 value2 = (output1487, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1488 value6 value1 value2 = (output1488, value4, value1) := by
  rw [input1488_def, output1488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  dsimp only
  rw [child1487]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1489_cond_eq
    (child5 : Flapjack.WordAlloc.removeDeadStructural input5 value4 value1 value2 = (output5, value6, value1))
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value6 value1 value2 = (output1488, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1489 value4 value1 value2 = (output1489, value4, value1) := by
  rw [input1489_def, output1489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5]
  dsimp only
  rw [child1488]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1490_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value4 value1 value2 = (output1489, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1490 value0 value1 value2 = (output1490, value4, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  dsimp only
  rw [child1489]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1491 value4 value1 value2 = (output1491, value3, value1) := by
  rw [input1491_def, output1491_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1492_cond_eq
    (child1490 : Flapjack.WordAlloc.removeDeadStructural input1490 value0 value1 value2 = (output1490, value4, value1))
    (child1491 : Flapjack.WordAlloc.removeDeadStructural input1491 value4 value1 value2 = (output1491, value3, value1)) : Flapjack.WordAlloc.removeDeadStructural input1492 value0 value1 value2 = (output1492, value3, value1) := by
  rw [input1492_def, output1492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1490]
  dsimp only
  rw [child1491]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node1492_cond_eq
end InitECandidate.Proofs.DeadStages64.Parallel
