import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages184.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages184.Parallel
theorem node1280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1280 value618 value1 value2 = (output1280, value619, value1) := by
  rw [input1280_def, output1280_def]
  kernel_rfl

theorem node1281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1281 value619 value1 value2 = (output1281, value620, value1) := by
  rw [input1281_def, output1281_def]
  kernel_rfl

theorem node1282_cond_eq
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value618 value1 value2 = (output1280, value619, value1))
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value619 value1 value2 = (output1281, value620, value1)) : Flapjack.WordAlloc.removeDeadStructural input1282 value618 value1 value2 = (output1282, value620, value1) := by
  rw [input1282_def, output1282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1280]
  try dsimp only
  rw [child1281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1280_skip, output1281_skip]
  kernel_rfl

theorem node1283_cond_eq
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value617 value1 value2 = (output1279, value618, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value618 value1 value2 = (output1282, value620, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value617 value1 value2 = (output1283, value620, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1279]
  try dsimp only
  rw [child1282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1279_skip, output1282_skip]
  kernel_rfl

theorem node1284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value620 value1 value2 = (output1284, value621, value1) := by
  rw [input1284_def, output1284_def]
  kernel_rfl

theorem node1285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value621 value1 value2 = (output1285, value622, value1) := by
  rw [input1285_def, output1285_def]
  kernel_rfl

theorem node1286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1286 value622 value1 value2 = (output1286, value623, value1) := by
  rw [input1286_def, output1286_def]
  kernel_rfl

theorem node1287_cond_eq
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value621 value1 value2 = (output1285, value622, value1))
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value622 value1 value2 = (output1286, value623, value1)) : Flapjack.WordAlloc.removeDeadStructural input1287 value621 value1 value2 = (output1287, value623, value1) := by
  rw [input1287_def, output1287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1285]
  try dsimp only
  rw [child1286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1285_skip, output1286_skip]
  kernel_rfl

theorem node1288_cond_eq
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value620 value1 value2 = (output1284, value621, value1))
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value621 value1 value2 = (output1287, value623, value1)) : Flapjack.WordAlloc.removeDeadStructural input1288 value620 value1 value2 = (output1288, value623, value1) := by
  rw [input1288_def, output1288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1284]
  try dsimp only
  rw [child1287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1284_skip, output1287_skip]
  kernel_rfl

theorem node1289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1289 value623 value1 value2 = (output1289, value624, value1) := by
  rw [input1289_def, output1289_def]
  kernel_rfl

theorem node1290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1290 value624 value1 value2 = (output1290, value625, value1) := by
  rw [input1290_def, output1290_def]
  kernel_rfl

theorem node1291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1291 value625 value1 value2 = (output1291, value626, value1) := by
  rw [input1291_def, output1291_def]
  kernel_rfl

theorem node1292_cond_eq
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value624 value1 value2 = (output1290, value625, value1))
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value625 value1 value2 = (output1291, value626, value1)) : Flapjack.WordAlloc.removeDeadStructural input1292 value624 value1 value2 = (output1292, value626, value1) := by
  rw [input1292_def, output1292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1290]
  try dsimp only
  rw [child1291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1290_skip, output1291_skip]
  kernel_rfl

theorem node1293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1293 value626 value1 value2 = (output1293, value627, value1) := by
  rw [input1293_def, output1293_def]
  kernel_rfl

theorem node1294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1294 value627 value1 value2 = (output1294, value628, value1) := by
  rw [input1294_def, output1294_def]
  kernel_rfl

theorem node1295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1295 value628 value1 value2 = (output1295, value629, value1) := by
  rw [input1295_def, output1295_def]
  kernel_rfl

theorem node1296_cond_eq
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value627 value1 value2 = (output1294, value628, value1))
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value628 value1 value2 = (output1295, value629, value1)) : Flapjack.WordAlloc.removeDeadStructural input1296 value627 value1 value2 = (output1296, value629, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1294]
  try dsimp only
  rw [child1295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1294_skip, output1295_skip]
  kernel_rfl

theorem node1297_cond_eq
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value626 value1 value2 = (output1293, value627, value1))
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value627 value1 value2 = (output1296, value629, value1)) : Flapjack.WordAlloc.removeDeadStructural input1297 value626 value1 value2 = (output1297, value629, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1293]
  try dsimp only
  rw [child1296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1293_skip, output1296_skip]
  kernel_rfl

theorem node1298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1298 value629 value1 value2 = (output1298, value630, value1) := by
  rw [input1298_def, output1298_def]
  kernel_rfl

theorem node1299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1299 value630 value1 value2 = (output1299, value631, value1) := by
  rw [input1299_def, output1299_def]
  kernel_rfl

theorem node1300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1300 value631 value1 value2 = (output1300, value632, value1) := by
  rw [input1300_def, output1300_def]
  kernel_rfl

theorem node1301_cond_eq
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value630 value1 value2 = (output1299, value631, value1))
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value631 value1 value2 = (output1300, value632, value1)) : Flapjack.WordAlloc.removeDeadStructural input1301 value630 value1 value2 = (output1301, value632, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1299]
  try dsimp only
  rw [child1300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1299_skip, output1300_skip]
  kernel_rfl

theorem node1302_cond_eq
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value629 value1 value2 = (output1298, value630, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value630 value1 value2 = (output1301, value632, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value629 value1 value2 = (output1302, value632, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1298]
  try dsimp only
  rw [child1301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1298_skip, output1301_skip]
  kernel_rfl

theorem node1303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1303 value632 value1 value2 = (output1303, value633, value1) := by
  rw [input1303_def, output1303_def]
  kernel_rfl

theorem node1304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1304 value633 value1 value2 = (output1304, value634, value1) := by
  rw [input1304_def, output1304_def]
  kernel_rfl

theorem node1305_cond_eq
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value632 value1 value2 = (output1303, value633, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value633 value1 value2 = (output1304, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value632 value1 value2 = (output1305, value634, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1303]
  try dsimp only
  rw [child1304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1303_skip, output1304_skip]
  kernel_rfl

theorem node1306_cond_eq
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value629 value1 value2 = (output1302, value632, value1))
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value632 value1 value2 = (output1305, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1306 value629 value1 value2 = (output1306, value634, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1302]
  try dsimp only
  rw [child1305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1302_skip, output1305_skip]
  kernel_rfl

theorem node1307_cond_eq
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value626 value1 value2 = (output1297, value629, value1))
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value629 value1 value2 = (output1306, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1307 value626 value1 value2 = (output1307, value634, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1297]
  try dsimp only
  rw [child1306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1297_skip, output1306_skip]
  kernel_rfl

theorem node1308_cond_eq
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value624 value1 value2 = (output1292, value626, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value626 value1 value2 = (output1307, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value624 value1 value2 = (output1308, value634, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1292]
  try dsimp only
  rw [child1307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1292_skip, output1307_skip]
  kernel_rfl

theorem node1309_cond_eq
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value623 value1 value2 = (output1289, value624, value1))
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value624 value1 value2 = (output1308, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1309 value623 value1 value2 = (output1309, value634, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1289]
  try dsimp only
  rw [child1308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1289_skip, output1308_skip]
  kernel_rfl

theorem node1310_cond_eq
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value620 value1 value2 = (output1288, value623, value1))
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value623 value1 value2 = (output1309, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1310 value620 value1 value2 = (output1310, value634, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1288]
  try dsimp only
  rw [child1309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1288_skip, output1309_skip]
  kernel_rfl

theorem node1311_cond_eq
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value617 value1 value2 = (output1283, value620, value1))
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value620 value1 value2 = (output1310, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1311 value617 value1 value2 = (output1311, value634, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1283]
  try dsimp only
  rw [child1310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1283_skip, output1310_skip]
  kernel_rfl

theorem node1312_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value614 value1 value2 = (output1278, value617, value1))
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value617 value1 value2 = (output1311, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1312 value614 value1 value2 = (output1312, value634, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  try dsimp only
  rw [child1311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output1311_skip]
  kernel_rfl

theorem node1313_cond_eq
    (child1273 : Flapjack.WordAlloc.removeDeadStructural input1273 value612 value1 value2 = (output1273, value614, value1))
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value614 value1 value2 = (output1312, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1313 value612 value1 value2 = (output1313, value634, value1) := by
  rw [input1313_def, output1313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1273]
  try dsimp only
  rw [child1312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1273_skip, output1312_skip]
  kernel_rfl

theorem node1314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1314 value634 value1 value2 = (output1314, value635, value1) := by
  rw [input1314_def, output1314_def]
  kernel_rfl

theorem node1315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1315 value635 value1 value2 = (output1315, value636, value1) := by
  rw [input1315_def, output1315_def]
  kernel_rfl

theorem node1316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1316 value636 value1 value2 = (output1316, value637, value1) := by
  rw [input1316_def, output1316_def]
  kernel_rfl

theorem node1317_cond_eq
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value635 value1 value2 = (output1315, value636, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value636 value1 value2 = (output1316, value637, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value635 value1 value2 = (output1317, value637, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1315]
  try dsimp only
  rw [child1316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1315_skip, output1316_skip]
  kernel_rfl

theorem node1318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1318 value637 value1 value2 = (output1318, value638, value1) := by
  rw [input1318_def, output1318_def]
  kernel_rfl

theorem node1319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1319 value638 value1 value2 = (output1319, value639, value1) := by
  rw [input1319_def, output1319_def]
  kernel_rfl

theorem node1320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1320 value639 value1 value2 = (output1320, value640, value1) := by
  rw [input1320_def, output1320_def]
  kernel_rfl

theorem node1321_cond_eq
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value638 value1 value2 = (output1319, value639, value1))
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value639 value1 value2 = (output1320, value640, value1)) : Flapjack.WordAlloc.removeDeadStructural input1321 value638 value1 value2 = (output1321, value640, value1) := by
  rw [input1321_def, output1321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1319]
  try dsimp only
  rw [child1320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1319_skip, output1320_skip]
  kernel_rfl

theorem node1322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1322 value640 value1 value2 = (output1322, value641, value1) := by
  rw [input1322_def, output1322_def]
  kernel_rfl

theorem node1323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1323 value641 value1 value2 = (output1323, value642, value1) := by
  rw [input1323_def, output1323_def]
  kernel_rfl

theorem node1324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1324 value642 value1 value2 = (output1324, value643, value1) := by
  rw [input1324_def, output1324_def]
  kernel_rfl

theorem node1325_cond_eq
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value641 value1 value2 = (output1323, value642, value1))
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value642 value1 value2 = (output1324, value643, value1)) : Flapjack.WordAlloc.removeDeadStructural input1325 value641 value1 value2 = (output1325, value643, value1) := by
  rw [input1325_def, output1325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1323]
  try dsimp only
  rw [child1324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1323_skip, output1324_skip]
  kernel_rfl

theorem node1326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1326 value643 value1 value2 = (output1326, value644, value1) := by
  rw [input1326_def, output1326_def]
  kernel_rfl

theorem node1327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1327 value644 value1 value2 = (output1327, value645, value1) := by
  rw [input1327_def, output1327_def]
  kernel_rfl

theorem node1328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1328 value645 value1 value2 = (output1328, value646, value1) := by
  rw [input1328_def, output1328_def]
  kernel_rfl

theorem node1329_cond_eq
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value644 value1 value2 = (output1327, value645, value1))
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value645 value1 value2 = (output1328, value646, value1)) : Flapjack.WordAlloc.removeDeadStructural input1329 value644 value1 value2 = (output1329, value646, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1327]
  try dsimp only
  rw [child1328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1327_skip, output1328_skip]
  kernel_rfl

theorem node1330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1330 value646 value1 value2 = (output1330, value647, value1) := by
  rw [input1330_def, output1330_def]
  kernel_rfl

theorem node1331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1331 value647 value1 value2 = (output1331, value648, value1) := by
  rw [input1331_def, output1331_def]
  kernel_rfl

theorem node1332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1332 value648 value1 value2 = (output1332, value649, value1) := by
  rw [input1332_def, output1332_def]
  kernel_rfl

theorem node1333_cond_eq
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value647 value1 value2 = (output1331, value648, value1))
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value648 value1 value2 = (output1332, value649, value1)) : Flapjack.WordAlloc.removeDeadStructural input1333 value647 value1 value2 = (output1333, value649, value1) := by
  rw [input1333_def, output1333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1331]
  try dsimp only
  rw [child1332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1331_skip, output1332_skip]
  kernel_rfl

theorem node1334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1334 value649 value1 value2 = (output1334, value650, value1) := by
  rw [input1334_def, output1334_def]
  kernel_rfl

theorem node1335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1335 value650 value1 value2 = (output1335, value651, value1) := by
  rw [input1335_def, output1335_def]
  kernel_rfl

theorem node1336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1336 value651 value1 value2 = (output1336, value652, value1) := by
  rw [input1336_def, output1336_def]
  kernel_rfl

theorem node1337_cond_eq
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value650 value1 value2 = (output1335, value651, value1))
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value651 value1 value2 = (output1336, value652, value1)) : Flapjack.WordAlloc.removeDeadStructural input1337 value650 value1 value2 = (output1337, value652, value1) := by
  rw [input1337_def, output1337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1335]
  try dsimp only
  rw [child1336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1335_skip, output1336_skip]
  kernel_rfl

theorem node1338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1338 value652 value1 value2 = (output1338, value653, value1) := by
  rw [input1338_def, output1338_def]
  kernel_rfl

theorem node1339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1339 value653 value1 value2 = (output1339, value654, value1) := by
  rw [input1339_def, output1339_def]
  kernel_rfl

theorem node1340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1340 value654 value1 value2 = (output1340, value655, value1) := by
  rw [input1340_def, output1340_def]
  kernel_rfl

theorem node1341_cond_eq
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value653 value1 value2 = (output1339, value654, value1))
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value654 value1 value2 = (output1340, value655, value1)) : Flapjack.WordAlloc.removeDeadStructural input1341 value653 value1 value2 = (output1341, value655, value1) := by
  rw [input1341_def, output1341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1339]
  try dsimp only
  rw [child1340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1339_skip, output1340_skip]
  kernel_rfl

theorem node1342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1342 value655 value1 value2 = (output1342, value656, value1) := by
  rw [input1342_def, output1342_def]
  kernel_rfl

theorem node1343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1343 value656 value1 value2 = (output1343, value657, value1) := by
  rw [input1343_def, output1343_def]
  kernel_rfl

theorem node1344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1344 value657 value1 value2 = (output1344, value657, value1) := by
  rw [input1344_def, output1344_def]
  kernel_rfl

theorem node1345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1345 value657 value1 value2 = (output1345, value657, value1) := by
  rw [input1345_def, output1345_def]
  kernel_rfl

theorem node1346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1346 value657 value1 value2 = (output1346, value657, value1) := by
  rw [input1346_def, output1346_def]
  kernel_rfl

theorem node1347_cond_eq
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value657 value1 value2 = (output1345, value657, value1))
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value657 value1 value2 = (output1346, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1347 value657 value1 value2 = (output1347, value657, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1345]
  try dsimp only
  rw [child1346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1345_skip, output1346_skip]
  kernel_rfl

theorem node1348_cond_eq
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value657 value1 value2 = (output1344, value657, value1))
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value657 value1 value2 = (output1347, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1348 value657 value1 value2 = (output1348, value657, value1) := by
  rw [input1348_def, output1348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1344]
  try dsimp only
  rw [child1347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1344_skip, output1347_skip]
  kernel_rfl

theorem node1349_cond_eq
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value656 value1 value2 = (output1343, value657, value1))
    (child1348 : Flapjack.WordAlloc.removeDeadStructural input1348 value657 value1 value2 = (output1348, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1349 value656 value1 value2 = (output1349, value657, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1343]
  try dsimp only
  rw [child1348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1343_skip, output1348_skip]
  kernel_rfl

theorem node1350_cond_eq
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value655 value1 value2 = (output1342, value656, value1))
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value656 value1 value2 = (output1349, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1350 value655 value1 value2 = (output1350, value657, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1342]
  try dsimp only
  rw [child1349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1342_skip, output1349_skip]
  kernel_rfl

theorem node1351_cond_eq
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value653 value1 value2 = (output1341, value655, value1))
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value655 value1 value2 = (output1350, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1351 value653 value1 value2 = (output1351, value657, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1341]
  try dsimp only
  rw [child1350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1341_skip, output1350_skip]
  kernel_rfl

theorem node1352_cond_eq
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value652 value1 value2 = (output1338, value653, value1))
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value653 value1 value2 = (output1351, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1352 value652 value1 value2 = (output1352, value657, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1338]
  try dsimp only
  rw [child1351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1338_skip, output1351_skip]
  kernel_rfl

theorem node1353_cond_eq
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value650 value1 value2 = (output1337, value652, value1))
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value652 value1 value2 = (output1352, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1353 value650 value1 value2 = (output1353, value657, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1337]
  try dsimp only
  rw [child1352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1337_skip, output1352_skip]
  kernel_rfl

theorem node1354_cond_eq
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value649 value1 value2 = (output1334, value650, value1))
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value650 value1 value2 = (output1353, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1354 value649 value1 value2 = (output1354, value657, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1334]
  try dsimp only
  rw [child1353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1334_skip, output1353_skip]
  kernel_rfl

theorem node1355_cond_eq
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value647 value1 value2 = (output1333, value649, value1))
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value649 value1 value2 = (output1354, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1355 value647 value1 value2 = (output1355, value657, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1333]
  try dsimp only
  rw [child1354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1333_skip, output1354_skip]
  kernel_rfl

theorem node1356_cond_eq
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value646 value1 value2 = (output1330, value647, value1))
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value647 value1 value2 = (output1355, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1356 value646 value1 value2 = (output1356, value657, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1330]
  try dsimp only
  rw [child1355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1330_skip, output1355_skip]
  kernel_rfl

theorem node1357_cond_eq
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value644 value1 value2 = (output1329, value646, value1))
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value646 value1 value2 = (output1356, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1357 value644 value1 value2 = (output1357, value657, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1329]
  try dsimp only
  rw [child1356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1329_skip, output1356_skip]
  kernel_rfl

theorem node1358_cond_eq
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value643 value1 value2 = (output1326, value644, value1))
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value644 value1 value2 = (output1357, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1358 value643 value1 value2 = (output1358, value657, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1326]
  try dsimp only
  rw [child1357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1326_skip, output1357_skip]
  kernel_rfl

theorem node1359_cond_eq
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value641 value1 value2 = (output1325, value643, value1))
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value643 value1 value2 = (output1358, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1359 value641 value1 value2 = (output1359, value657, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1325]
  try dsimp only
  rw [child1358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1325_skip, output1358_skip]
  kernel_rfl

theorem node1360_cond_eq
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value640 value1 value2 = (output1322, value641, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value641 value1 value2 = (output1359, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value640 value1 value2 = (output1360, value657, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1322]
  try dsimp only
  rw [child1359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1322_skip, output1359_skip]
  kernel_rfl

theorem node1361_cond_eq
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value638 value1 value2 = (output1321, value640, value1))
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value640 value1 value2 = (output1360, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1361 value638 value1 value2 = (output1361, value657, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1321]
  try dsimp only
  rw [child1360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1321_skip, output1360_skip]
  kernel_rfl

theorem node1362_cond_eq
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value637 value1 value2 = (output1318, value638, value1))
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value638 value1 value2 = (output1361, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1362 value637 value1 value2 = (output1362, value657, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1318]
  try dsimp only
  rw [child1361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1318_skip, output1361_skip]
  kernel_rfl

theorem node1363_cond_eq
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value635 value1 value2 = (output1317, value637, value1))
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value637 value1 value2 = (output1362, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1363 value635 value1 value2 = (output1363, value657, value1) := by
  rw [input1363_def, output1363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1317]
  try dsimp only
  rw [child1362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1317_skip, output1362_skip]
  kernel_rfl

theorem node1364_cond_eq
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value634 value1 value2 = (output1314, value635, value1))
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value635 value1 value2 = (output1363, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1364 value634 value1 value2 = (output1364, value657, value1) := by
  rw [input1364_def, output1364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1314]
  try dsimp only
  rw [child1363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1314_skip, output1363_skip]
  kernel_rfl

theorem node1365_cond_eq
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value612 value1 value2 = (output1313, value634, value1))
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value634 value1 value2 = (output1364, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1365 value612 value1 value2 = (output1365, value657, value1) := by
  rw [input1365_def, output1365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1313]
  try dsimp only
  rw [child1364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1313_skip, output1364_skip]
  kernel_rfl

theorem node1366_cond_eq
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value609 value1 value2 = (output1270, value612, value1))
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value612 value1 value2 = (output1365, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1366 value609 value1 value2 = (output1366, value657, value1) := by
  rw [input1366_def, output1366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1270]
  try dsimp only
  rw [child1365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1270_skip, output1365_skip]
  kernel_rfl

theorem node1367_cond_eq
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value608 value1 value2 = (output1265, value609, value1))
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value609 value1 value2 = (output1366, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1367 value608 value1 value2 = (output1367, value657, value1) := by
  rw [input1367_def, output1367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1265]
  try dsimp only
  rw [child1366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1265_skip, output1366_skip]
  kernel_rfl

theorem node1368_cond_eq
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value606 value1 value2 = (output1264, value608, value1))
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value608 value1 value2 = (output1367, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1368 value606 value1 value2 = (output1368, value657, value1) := by
  rw [input1368_def, output1368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1264]
  try dsimp only
  rw [child1367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1264_skip, output1367_skip]
  kernel_rfl

theorem node1369_cond_eq
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value605 value1 value2 = (output1261, value606, value1))
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value606 value1 value2 = (output1368, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1369 value605 value1 value2 = (output1369, value657, value1) := by
  rw [input1369_def, output1369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1261]
  try dsimp only
  rw [child1368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1261_skip, output1368_skip]
  kernel_rfl

theorem node1370_cond_eq
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value603 value1 value2 = (output1260, value605, value1))
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value605 value1 value2 = (output1369, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1370 value603 value1 value2 = (output1370, value657, value1) := by
  rw [input1370_def, output1370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1260]
  try dsimp only
  rw [child1369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1260_skip, output1369_skip]
  kernel_rfl

theorem node1371_cond_eq
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value602 value1 value2 = (output1257, value603, value1))
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value603 value1 value2 = (output1370, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1371 value602 value1 value2 = (output1371, value657, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1257]
  try dsimp only
  rw [child1370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1257_skip, output1370_skip]
  kernel_rfl

theorem node1372_cond_eq
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value600 value1 value2 = (output1256, value602, value1))
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value602 value1 value2 = (output1371, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1372 value600 value1 value2 = (output1372, value657, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1256]
  try dsimp only
  rw [child1371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1256_skip, output1371_skip]
  kernel_rfl

theorem node1373_cond_eq
    (child1253 : Flapjack.WordAlloc.removeDeadStructural input1253 value599 value1 value2 = (output1253, value600, value1))
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value600 value1 value2 = (output1372, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1373 value599 value1 value2 = (output1373, value657, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1253]
  try dsimp only
  rw [child1372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1253_skip, output1372_skip]
  kernel_rfl

theorem node1374_cond_eq
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value597 value1 value2 = (output1252, value599, value1))
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value599 value1 value2 = (output1373, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1374 value597 value1 value2 = (output1374, value657, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1252]
  try dsimp only
  rw [child1373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1252_skip, output1373_skip]
  kernel_rfl

theorem node1375_cond_eq
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value596 value1 value2 = (output1249, value597, value1))
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value597 value1 value2 = (output1374, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1375 value596 value1 value2 = (output1375, value657, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1249]
  try dsimp only
  rw [child1374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1249_skip, output1374_skip]
  kernel_rfl

theorem node1376_cond_eq
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value594 value1 value2 = (output1248, value596, value1))
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value596 value1 value2 = (output1375, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1376 value594 value1 value2 = (output1376, value657, value1) := by
  rw [input1376_def, output1376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1248]
  try dsimp only
  rw [child1375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1248_skip, output1375_skip]
  kernel_rfl

theorem node1377_cond_eq
    (child1245 : Flapjack.WordAlloc.removeDeadStructural input1245 value593 value1 value2 = (output1245, value594, value1))
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value594 value1 value2 = (output1376, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1377 value593 value1 value2 = (output1377, value657, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1245]
  try dsimp only
  rw [child1376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1245_skip, output1376_skip]
  kernel_rfl

theorem node1378_cond_eq
    (child1244 : Flapjack.WordAlloc.removeDeadStructural input1244 value591 value1 value2 = (output1244, value593, value1))
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value593 value1 value2 = (output1377, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1378 value591 value1 value2 = (output1378, value657, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1244]
  try dsimp only
  rw [child1377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1244_skip, output1377_skip]
  kernel_rfl

theorem node1379_cond_eq
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value590 value1 value2 = (output1241, value591, value1))
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value591 value1 value2 = (output1378, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1379 value590 value1 value2 = (output1379, value657, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1241]
  try dsimp only
  rw [child1378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1241_skip, output1378_skip]
  kernel_rfl

theorem node1380_cond_eq
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value588 value1 value2 = (output1240, value590, value1))
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value590 value1 value2 = (output1379, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1380 value588 value1 value2 = (output1380, value657, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1240]
  try dsimp only
  rw [child1379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1240_skip, output1379_skip]
  kernel_rfl

theorem node1381_cond_eq
    (child1237 : Flapjack.WordAlloc.removeDeadStructural input1237 value587 value1 value2 = (output1237, value588, value1))
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value588 value1 value2 = (output1380, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1381 value587 value1 value2 = (output1381, value657, value1) := by
  rw [input1381_def, output1381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1237]
  try dsimp only
  rw [child1380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1237_skip, output1380_skip]
  kernel_rfl

theorem node1382_cond_eq
    (child1236 : Flapjack.WordAlloc.removeDeadStructural input1236 value585 value1 value2 = (output1236, value587, value1))
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value587 value1 value2 = (output1381, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1382 value585 value1 value2 = (output1382, value657, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1236]
  try dsimp only
  rw [child1381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1236_skip, output1381_skip]
  kernel_rfl

theorem node1383_cond_eq
    (child1233 : Flapjack.WordAlloc.removeDeadStructural input1233 value584 value1 value2 = (output1233, value585, value1))
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value585 value1 value2 = (output1382, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1383 value584 value1 value2 = (output1383, value657, value1) := by
  rw [input1383_def, output1383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1233]
  try dsimp only
  rw [child1382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1233_skip, output1382_skip]
  kernel_rfl

theorem node1384_cond_eq
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value562 value1 value2 = (output1232, value584, value1))
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value584 value1 value2 = (output1383, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1384 value562 value1 value2 = (output1384, value657, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1232]
  try dsimp only
  rw [child1383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1232_skip, output1383_skip]
  kernel_rfl

theorem node1385_cond_eq
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value559 value1 value2 = (output1189, value562, value1))
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value562 value1 value2 = (output1384, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1385 value559 value1 value2 = (output1385, value657, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1189]
  try dsimp only
  rw [child1384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1189_skip, output1384_skip]
  kernel_rfl

theorem node1386_cond_eq
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value558 value1 value2 = (output1184, value559, value1))
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value559 value1 value2 = (output1385, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1386 value558 value1 value2 = (output1386, value657, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1184]
  try dsimp only
  rw [child1385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1184_skip, output1385_skip]
  kernel_rfl

theorem node1387_cond_eq
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value556 value1 value2 = (output1183, value558, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value558 value1 value2 = (output1386, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value556 value1 value2 = (output1387, value657, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1183]
  try dsimp only
  rw [child1386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1183_skip, output1386_skip]
  kernel_rfl

theorem node1388_cond_eq
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value555 value1 value2 = (output1180, value556, value1))
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value556 value1 value2 = (output1387, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1388 value555 value1 value2 = (output1388, value657, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1180]
  try dsimp only
  rw [child1387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1180_skip, output1387_skip]
  kernel_rfl

theorem node1389_cond_eq
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value553 value1 value2 = (output1179, value555, value1))
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value555 value1 value2 = (output1388, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1389 value553 value1 value2 = (output1389, value657, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1179]
  try dsimp only
  rw [child1388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1179_skip, output1388_skip]
  kernel_rfl

theorem node1390_cond_eq
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value552 value1 value2 = (output1176, value553, value1))
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value553 value1 value2 = (output1389, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1390 value552 value1 value2 = (output1390, value657, value1) := by
  rw [input1390_def, output1390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1176]
  try dsimp only
  rw [child1389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1176_skip, output1389_skip]
  kernel_rfl

theorem node1391_cond_eq
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value550 value1 value2 = (output1175, value552, value1))
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value552 value1 value2 = (output1390, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1391 value550 value1 value2 = (output1391, value657, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1175]
  try dsimp only
  rw [child1390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1175_skip, output1390_skip]
  kernel_rfl

theorem node1392_cond_eq
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value549 value1 value2 = (output1172, value550, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value550 value1 value2 = (output1391, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value549 value1 value2 = (output1392, value657, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1172]
  try dsimp only
  rw [child1391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1172_skip, output1391_skip]
  kernel_rfl

theorem node1393_cond_eq
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value547 value1 value2 = (output1171, value549, value1))
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value549 value1 value2 = (output1392, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1393 value547 value1 value2 = (output1393, value657, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1171]
  try dsimp only
  rw [child1392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1171_skip, output1392_skip]
  kernel_rfl

theorem node1394_cond_eq
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value546 value1 value2 = (output1168, value547, value1))
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value547 value1 value2 = (output1393, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1394 value546 value1 value2 = (output1394, value657, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1168]
  try dsimp only
  rw [child1393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1168_skip, output1393_skip]
  kernel_rfl

theorem node1395_cond_eq
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value544 value1 value2 = (output1167, value546, value1))
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value546 value1 value2 = (output1394, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1395 value544 value1 value2 = (output1395, value657, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1167]
  try dsimp only
  rw [child1394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1167_skip, output1394_skip]
  kernel_rfl

theorem node1396_cond_eq
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value543 value1 value2 = (output1164, value544, value1))
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value544 value1 value2 = (output1395, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1396 value543 value1 value2 = (output1396, value657, value1) := by
  rw [input1396_def, output1396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1164]
  try dsimp only
  rw [child1395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1164_skip, output1395_skip]
  kernel_rfl

theorem node1397_cond_eq
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value541 value1 value2 = (output1163, value543, value1))
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value543 value1 value2 = (output1396, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1397 value541 value1 value2 = (output1397, value657, value1) := by
  rw [input1397_def, output1397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1163]
  try dsimp only
  rw [child1396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1163_skip, output1396_skip]
  kernel_rfl

theorem node1398_cond_eq
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value540 value1 value2 = (output1160, value541, value1))
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value541 value1 value2 = (output1397, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1398 value540 value1 value2 = (output1398, value657, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1160]
  try dsimp only
  rw [child1397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1160_skip, output1397_skip]
  kernel_rfl

theorem node1399_cond_eq
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value538 value1 value2 = (output1159, value540, value1))
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value540 value1 value2 = (output1398, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1399 value538 value1 value2 = (output1399, value657, value1) := by
  rw [input1399_def, output1399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1159]
  try dsimp only
  rw [child1398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1159_skip, output1398_skip]
  kernel_rfl

theorem node1400_cond_eq
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value537 value1 value2 = (output1156, value538, value1))
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value538 value1 value2 = (output1399, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1400 value537 value1 value2 = (output1400, value657, value1) := by
  rw [input1400_def, output1400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1156]
  try dsimp only
  rw [child1399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1156_skip, output1399_skip]
  kernel_rfl

theorem node1401_cond_eq
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value535 value1 value2 = (output1155, value537, value1))
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value537 value1 value2 = (output1400, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1401 value535 value1 value2 = (output1401, value657, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1155]
  try dsimp only
  rw [child1400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1155_skip, output1400_skip]
  kernel_rfl

theorem node1402_cond_eq
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value534 value1 value2 = (output1152, value535, value1))
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value535 value1 value2 = (output1401, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1402 value534 value1 value2 = (output1402, value657, value1) := by
  rw [input1402_def, output1402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1152]
  try dsimp only
  rw [child1401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1152_skip, output1401_skip]
  kernel_rfl

theorem node1403_cond_eq
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value512 value1 value2 = (output1151, value534, value1))
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value534 value1 value2 = (output1402, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1403 value512 value1 value2 = (output1403, value657, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1151]
  try dsimp only
  rw [child1402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1151_skip, output1402_skip]
  kernel_rfl

theorem node1404_cond_eq
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value509 value1 value2 = (output1108, value512, value1))
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value512 value1 value2 = (output1403, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1404 value509 value1 value2 = (output1404, value657, value1) := by
  rw [input1404_def, output1404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1108]
  try dsimp only
  rw [child1403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1108_skip, output1403_skip]
  kernel_rfl

theorem node1405_cond_eq
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value508 value1 value2 = (output1103, value509, value1))
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value509 value1 value2 = (output1404, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1405 value508 value1 value2 = (output1405, value657, value1) := by
  rw [input1405_def, output1405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1103]
  try dsimp only
  rw [child1404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1103_skip, output1404_skip]
  kernel_rfl

theorem node1406_cond_eq
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value506 value1 value2 = (output1102, value508, value1))
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value508 value1 value2 = (output1405, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1406 value506 value1 value2 = (output1406, value657, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1102]
  try dsimp only
  rw [child1405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1102_skip, output1405_skip]
  kernel_rfl

theorem node1407_cond_eq
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value505 value1 value2 = (output1099, value506, value1))
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value506 value1 value2 = (output1406, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1407 value505 value1 value2 = (output1407, value657, value1) := by
  rw [input1407_def, output1407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1099]
  try dsimp only
  rw [child1406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1099_skip, output1406_skip]
  kernel_rfl

theorem node1408_cond_eq
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value503 value1 value2 = (output1098, value505, value1))
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value505 value1 value2 = (output1407, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1408 value503 value1 value2 = (output1408, value657, value1) := by
  rw [input1408_def, output1408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1098]
  try dsimp only
  rw [child1407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1098_skip, output1407_skip]
  kernel_rfl

theorem node1409_cond_eq
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value502 value1 value2 = (output1095, value503, value1))
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value503 value1 value2 = (output1408, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1409 value502 value1 value2 = (output1409, value657, value1) := by
  rw [input1409_def, output1409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1095]
  try dsimp only
  rw [child1408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1095_skip, output1408_skip]
  kernel_rfl

theorem node1410_cond_eq
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value500 value1 value2 = (output1094, value502, value1))
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value502 value1 value2 = (output1409, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1410 value500 value1 value2 = (output1410, value657, value1) := by
  rw [input1410_def, output1410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1094]
  try dsimp only
  rw [child1409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1094_skip, output1409_skip]
  kernel_rfl

theorem node1411_cond_eq
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value499 value1 value2 = (output1091, value500, value1))
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value500 value1 value2 = (output1410, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1411 value499 value1 value2 = (output1411, value657, value1) := by
  rw [input1411_def, output1411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1091]
  try dsimp only
  rw [child1410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1091_skip, output1410_skip]
  kernel_rfl

theorem node1412_cond_eq
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value497 value1 value2 = (output1090, value499, value1))
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value499 value1 value2 = (output1411, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1412 value497 value1 value2 = (output1412, value657, value1) := by
  rw [input1412_def, output1412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1090]
  try dsimp only
  rw [child1411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1090_skip, output1411_skip]
  kernel_rfl

theorem node1413_cond_eq
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value496 value1 value2 = (output1087, value497, value1))
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value497 value1 value2 = (output1412, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1413 value496 value1 value2 = (output1413, value657, value1) := by
  rw [input1413_def, output1413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1087]
  try dsimp only
  rw [child1412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1087_skip, output1412_skip]
  kernel_rfl

theorem node1414_cond_eq
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value494 value1 value2 = (output1086, value496, value1))
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value496 value1 value2 = (output1413, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1414 value494 value1 value2 = (output1414, value657, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1086]
  try dsimp only
  rw [child1413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1086_skip, output1413_skip]
  kernel_rfl

theorem node1415_cond_eq
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value493 value1 value2 = (output1083, value494, value1))
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value494 value1 value2 = (output1414, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1415 value493 value1 value2 = (output1415, value657, value1) := by
  rw [input1415_def, output1415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1083]
  try dsimp only
  rw [child1414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1083_skip, output1414_skip]
  kernel_rfl

theorem node1416_cond_eq
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value491 value1 value2 = (output1082, value493, value1))
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value493 value1 value2 = (output1415, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1416 value491 value1 value2 = (output1416, value657, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1082]
  try dsimp only
  rw [child1415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1082_skip, output1415_skip]
  kernel_rfl

theorem node1417_cond_eq
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value490 value1 value2 = (output1079, value491, value1))
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value491 value1 value2 = (output1416, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1417 value490 value1 value2 = (output1417, value657, value1) := by
  rw [input1417_def, output1417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1079]
  try dsimp only
  rw [child1416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1079_skip, output1416_skip]
  kernel_rfl

theorem node1418_cond_eq
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value488 value1 value2 = (output1078, value490, value1))
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value490 value1 value2 = (output1417, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1418 value488 value1 value2 = (output1418, value657, value1) := by
  rw [input1418_def, output1418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1078]
  try dsimp only
  rw [child1417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1078_skip, output1417_skip]
  kernel_rfl

theorem node1419_cond_eq
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value487 value1 value2 = (output1075, value488, value1))
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value488 value1 value2 = (output1418, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1419 value487 value1 value2 = (output1419, value657, value1) := by
  rw [input1419_def, output1419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1075]
  try dsimp only
  rw [child1418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1075_skip, output1418_skip]
  kernel_rfl

theorem node1420_cond_eq
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value485 value1 value2 = (output1074, value487, value1))
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value487 value1 value2 = (output1419, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1420 value485 value1 value2 = (output1420, value657, value1) := by
  rw [input1420_def, output1420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1074]
  try dsimp only
  rw [child1419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1074_skip, output1419_skip]
  kernel_rfl

theorem node1421_cond_eq
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value484 value1 value2 = (output1071, value485, value1))
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value485 value1 value2 = (output1420, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1421 value484 value1 value2 = (output1421, value657, value1) := by
  rw [input1421_def, output1421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1071]
  try dsimp only
  rw [child1420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1071_skip, output1420_skip]
  kernel_rfl

theorem node1422_cond_eq
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value462 value1 value2 = (output1070, value484, value1))
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value484 value1 value2 = (output1421, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1422 value462 value1 value2 = (output1422, value657, value1) := by
  rw [input1422_def, output1422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1070]
  try dsimp only
  rw [child1421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1070_skip, output1421_skip]
  kernel_rfl

theorem node1423_cond_eq
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value459 value1 value2 = (output1027, value462, value1))
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value462 value1 value2 = (output1422, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1423 value459 value1 value2 = (output1423, value657, value1) := by
  rw [input1423_def, output1423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1027]
  try dsimp only
  rw [child1422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1027_skip, output1422_skip]
  kernel_rfl

theorem node1424_cond_eq
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value458 value1 value2 = (output1022, value459, value1))
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value459 value1 value2 = (output1423, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1424 value458 value1 value2 = (output1424, value657, value1) := by
  rw [input1424_def, output1424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1022]
  try dsimp only
  rw [child1423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1022_skip, output1423_skip]
  kernel_rfl

theorem node1425_cond_eq
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value456 value1 value2 = (output1021, value458, value1))
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value458 value1 value2 = (output1424, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1425 value456 value1 value2 = (output1425, value657, value1) := by
  rw [input1425_def, output1425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1021]
  try dsimp only
  rw [child1424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1021_skip, output1424_skip]
  kernel_rfl

theorem node1426_cond_eq
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value455 value1 value2 = (output1018, value456, value1))
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value456 value1 value2 = (output1425, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1426 value455 value1 value2 = (output1426, value657, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1018]
  try dsimp only
  rw [child1425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1018_skip, output1425_skip]
  kernel_rfl

theorem node1427_cond_eq
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value453 value1 value2 = (output1017, value455, value1))
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value455 value1 value2 = (output1426, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1427 value453 value1 value2 = (output1427, value657, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1017]
  try dsimp only
  rw [child1426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1017_skip, output1426_skip]
  kernel_rfl

theorem node1428_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value452 value1 value2 = (output1014, value453, value1))
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value453 value1 value2 = (output1427, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1428 value452 value1 value2 = (output1428, value657, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  try dsimp only
  rw [child1427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1014_skip, output1427_skip]
  kernel_rfl

theorem node1429_cond_eq
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value450 value1 value2 = (output1013, value452, value1))
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value452 value1 value2 = (output1428, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1429 value450 value1 value2 = (output1429, value657, value1) := by
  rw [input1429_def, output1429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1013]
  try dsimp only
  rw [child1428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1013_skip, output1428_skip]
  kernel_rfl

theorem node1430_cond_eq
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value449 value1 value2 = (output1010, value450, value1))
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value450 value1 value2 = (output1429, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1430 value449 value1 value2 = (output1430, value657, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1010]
  try dsimp only
  rw [child1429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1010_skip, output1429_skip]
  kernel_rfl

theorem node1431_cond_eq
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value447 value1 value2 = (output1009, value449, value1))
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value449 value1 value2 = (output1430, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1431 value447 value1 value2 = (output1431, value657, value1) := by
  rw [input1431_def, output1431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1009]
  try dsimp only
  rw [child1430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1009_skip, output1430_skip]
  kernel_rfl

theorem node1432_cond_eq
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value446 value1 value2 = (output1006, value447, value1))
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value447 value1 value2 = (output1431, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1432 value446 value1 value2 = (output1432, value657, value1) := by
  rw [input1432_def, output1432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1006]
  try dsimp only
  rw [child1431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1006_skip, output1431_skip]
  kernel_rfl

theorem node1433_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value444 value1 value2 = (output1005, value446, value1))
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value446 value1 value2 = (output1432, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1433 value444 value1 value2 = (output1433, value657, value1) := by
  rw [input1433_def, output1433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  try dsimp only
  rw [child1432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1005_skip, output1432_skip]
  kernel_rfl

theorem node1434_cond_eq
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value443 value1 value2 = (output1002, value444, value1))
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value444 value1 value2 = (output1433, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1434 value443 value1 value2 = (output1434, value657, value1) := by
  rw [input1434_def, output1434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1002]
  try dsimp only
  rw [child1433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1002_skip, output1433_skip]
  kernel_rfl

theorem node1435_cond_eq
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value441 value1 value2 = (output1001, value443, value1))
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value443 value1 value2 = (output1434, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1435 value441 value1 value2 = (output1435, value657, value1) := by
  rw [input1435_def, output1435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1001]
  try dsimp only
  rw [child1434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1001_skip, output1434_skip]
  kernel_rfl

theorem node1436_cond_eq
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value440 value1 value2 = (output998, value441, value1))
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value441 value1 value2 = (output1435, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1436 value440 value1 value2 = (output1436, value657, value1) := by
  rw [input1436_def, output1436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child998]
  try dsimp only
  rw [child1435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output998_skip, output1435_skip]
  kernel_rfl

theorem node1437_cond_eq
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value438 value1 value2 = (output997, value440, value1))
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value440 value1 value2 = (output1436, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1437 value438 value1 value2 = (output1437, value657, value1) := by
  rw [input1437_def, output1437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child997]
  try dsimp only
  rw [child1436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output997_skip, output1436_skip]
  kernel_rfl

theorem node1438_cond_eq
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value437 value1 value2 = (output994, value438, value1))
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value438 value1 value2 = (output1437, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1438 value437 value1 value2 = (output1438, value657, value1) := by
  rw [input1438_def, output1438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child994]
  try dsimp only
  rw [child1437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output994_skip, output1437_skip]
  kernel_rfl

theorem node1439_cond_eq
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value435 value1 value2 = (output993, value437, value1))
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value437 value1 value2 = (output1438, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1439 value435 value1 value2 = (output1439, value657, value1) := by
  rw [input1439_def, output1439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child993]
  try dsimp only
  rw [child1438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output993_skip, output1438_skip]
  kernel_rfl

theorem node1440_cond_eq
    (child990 : Flapjack.WordAlloc.removeDeadStructural input990 value434 value1 value2 = (output990, value435, value1))
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value435 value1 value2 = (output1439, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1440 value434 value1 value2 = (output1440, value657, value1) := by
  rw [input1440_def, output1440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child990]
  try dsimp only
  rw [child1439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output990_skip, output1439_skip]
  kernel_rfl

theorem node1441_cond_eq
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value412 value1 value2 = (output989, value434, value1))
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value434 value1 value2 = (output1440, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1441 value412 value1 value2 = (output1441, value657, value1) := by
  rw [input1441_def, output1441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child989]
  try dsimp only
  rw [child1440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output989_skip, output1440_skip]
  kernel_rfl

theorem node1442_cond_eq
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value409 value1 value2 = (output946, value412, value1))
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value412 value1 value2 = (output1441, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1442 value409 value1 value2 = (output1442, value657, value1) := by
  rw [input1442_def, output1442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child946]
  try dsimp only
  rw [child1441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output946_skip, output1441_skip]
  kernel_rfl

theorem node1443_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value408 value1 value2 = (output941, value409, value1))
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value409 value1 value2 = (output1442, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1443 value408 value1 value2 = (output1443, value657, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  try dsimp only
  rw [child1442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output941_skip, output1442_skip]
  kernel_rfl

theorem node1444_cond_eq
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value406 value1 value2 = (output940, value408, value1))
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value408 value1 value2 = (output1443, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1444 value406 value1 value2 = (output1444, value657, value1) := by
  rw [input1444_def, output1444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child940]
  try dsimp only
  rw [child1443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output940_skip, output1443_skip]
  kernel_rfl

theorem node1445_cond_eq
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value405 value1 value2 = (output937, value406, value1))
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value406 value1 value2 = (output1444, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1445 value405 value1 value2 = (output1445, value657, value1) := by
  rw [input1445_def, output1445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child937]
  try dsimp only
  rw [child1444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output937_skip, output1444_skip]
  kernel_rfl

theorem node1446_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value403 value1 value2 = (output936, value405, value1))
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value405 value1 value2 = (output1445, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1446 value403 value1 value2 = (output1446, value657, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child1445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output1445_skip]
  kernel_rfl

theorem node1447_cond_eq
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value402 value1 value2 = (output933, value403, value1))
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value403 value1 value2 = (output1446, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1447 value402 value1 value2 = (output1447, value657, value1) := by
  rw [input1447_def, output1447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child933]
  try dsimp only
  rw [child1446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output933_skip, output1446_skip]
  kernel_rfl

theorem node1448_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value400 value1 value2 = (output932, value402, value1))
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value402 value1 value2 = (output1447, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1448 value400 value1 value2 = (output1448, value657, value1) := by
  rw [input1448_def, output1448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  try dsimp only
  rw [child1447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output1447_skip]
  kernel_rfl

theorem node1449_cond_eq
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value399 value1 value2 = (output929, value400, value1))
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value400 value1 value2 = (output1448, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1449 value399 value1 value2 = (output1449, value657, value1) := by
  rw [input1449_def, output1449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child929]
  try dsimp only
  rw [child1448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output929_skip, output1448_skip]
  kernel_rfl

theorem node1450_cond_eq
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value397 value1 value2 = (output928, value399, value1))
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value399 value1 value2 = (output1449, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1450 value397 value1 value2 = (output1450, value657, value1) := by
  rw [input1450_def, output1450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child928]
  try dsimp only
  rw [child1449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output928_skip, output1449_skip]
  kernel_rfl

theorem node1451_cond_eq
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value396 value1 value2 = (output925, value397, value1))
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value397 value1 value2 = (output1450, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1451 value396 value1 value2 = (output1451, value657, value1) := by
  rw [input1451_def, output1451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child925]
  try dsimp only
  rw [child1450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output925_skip, output1450_skip]
  kernel_rfl

theorem node1452_cond_eq
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value394 value1 value2 = (output924, value396, value1))
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value396 value1 value2 = (output1451, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1452 value394 value1 value2 = (output1452, value657, value1) := by
  rw [input1452_def, output1452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child924]
  try dsimp only
  rw [child1451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output924_skip, output1451_skip]
  kernel_rfl

theorem node1453_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value393 value1 value2 = (output921, value394, value1))
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value394 value1 value2 = (output1452, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1453 value393 value1 value2 = (output1453, value657, value1) := by
  rw [input1453_def, output1453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  try dsimp only
  rw [child1452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output1452_skip]
  kernel_rfl

theorem node1454_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value391 value1 value2 = (output920, value393, value1))
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value393 value1 value2 = (output1453, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1454 value391 value1 value2 = (output1454, value657, value1) := by
  rw [input1454_def, output1454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child1453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output1453_skip]
  kernel_rfl

theorem node1455_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value390 value1 value2 = (output917, value391, value1))
    (child1454 : Flapjack.WordAlloc.removeDeadStructural input1454 value391 value1 value2 = (output1454, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1455 value390 value1 value2 = (output1455, value657, value1) := by
  rw [input1455_def, output1455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child1454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output1454_skip]
  kernel_rfl

theorem node1456_cond_eq
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value388 value1 value2 = (output916, value390, value1))
    (child1455 : Flapjack.WordAlloc.removeDeadStructural input1455 value390 value1 value2 = (output1455, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1456 value388 value1 value2 = (output1456, value657, value1) := by
  rw [input1456_def, output1456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child916]
  try dsimp only
  rw [child1455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output916_skip, output1455_skip]
  kernel_rfl

theorem node1457_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value387 value1 value2 = (output913, value388, value1))
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value388 value1 value2 = (output1456, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1457 value387 value1 value2 = (output1457, value657, value1) := by
  rw [input1457_def, output1457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child1456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output1456_skip]
  kernel_rfl

theorem node1458_cond_eq
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value385 value1 value2 = (output912, value387, value1))
    (child1457 : Flapjack.WordAlloc.removeDeadStructural input1457 value387 value1 value2 = (output1457, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1458 value385 value1 value2 = (output1458, value657, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child912]
  try dsimp only
  rw [child1457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output912_skip, output1457_skip]
  kernel_rfl

theorem node1459_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value384 value1 value2 = (output909, value385, value1))
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value385 value1 value2 = (output1458, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1459 value384 value1 value2 = (output1459, value657, value1) := by
  rw [input1459_def, output1459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  try dsimp only
  rw [child1458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output909_skip, output1458_skip]
  kernel_rfl

theorem node1460_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value362 value1 value2 = (output908, value384, value1))
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value384 value1 value2 = (output1459, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1460 value362 value1 value2 = (output1460, value657, value1) := by
  rw [input1460_def, output1460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child1459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output1459_skip]
  kernel_rfl

theorem node1461_cond_eq
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value359 value1 value2 = (output865, value362, value1))
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value362 value1 value2 = (output1460, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1461 value359 value1 value2 = (output1461, value657, value1) := by
  rw [input1461_def, output1461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child865]
  try dsimp only
  rw [child1460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output865_skip, output1460_skip]
  kernel_rfl

theorem node1462_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value358 value1 value2 = (output860, value359, value1))
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value359 value1 value2 = (output1461, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1462 value358 value1 value2 = (output1462, value657, value1) := by
  rw [input1462_def, output1462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  try dsimp only
  rw [child1461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output1461_skip]
  kernel_rfl

theorem node1463_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value356 value1 value2 = (output859, value358, value1))
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value358 value1 value2 = (output1462, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1463 value356 value1 value2 = (output1463, value657, value1) := by
  rw [input1463_def, output1463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  try dsimp only
  rw [child1462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output1462_skip]
  kernel_rfl

theorem node1464_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value355 value1 value2 = (output856, value356, value1))
    (child1463 : Flapjack.WordAlloc.removeDeadStructural input1463 value356 value1 value2 = (output1463, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1464 value355 value1 value2 = (output1464, value657, value1) := by
  rw [input1464_def, output1464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child1463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output1463_skip]
  kernel_rfl

theorem node1465_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value353 value1 value2 = (output855, value355, value1))
    (child1464 : Flapjack.WordAlloc.removeDeadStructural input1464 value355 value1 value2 = (output1464, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1465 value353 value1 value2 = (output1465, value657, value1) := by
  rw [input1465_def, output1465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  try dsimp only
  rw [child1464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output1464_skip]
  kernel_rfl

theorem node1466_cond_eq
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value352 value1 value2 = (output852, value353, value1))
    (child1465 : Flapjack.WordAlloc.removeDeadStructural input1465 value353 value1 value2 = (output1465, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1466 value352 value1 value2 = (output1466, value657, value1) := by
  rw [input1466_def, output1466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child852]
  try dsimp only
  rw [child1465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output852_skip, output1465_skip]
  kernel_rfl

theorem node1467_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value350 value1 value2 = (output851, value352, value1))
    (child1466 : Flapjack.WordAlloc.removeDeadStructural input1466 value352 value1 value2 = (output1466, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1467 value350 value1 value2 = (output1467, value657, value1) := by
  rw [input1467_def, output1467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child1466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output1466_skip]
  kernel_rfl

theorem node1468_cond_eq
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value349 value1 value2 = (output848, value350, value1))
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value350 value1 value2 = (output1467, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1468 value349 value1 value2 = (output1468, value657, value1) := by
  rw [input1468_def, output1468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child848]
  try dsimp only
  rw [child1467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output848_skip, output1467_skip]
  kernel_rfl

theorem node1469_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value347 value1 value2 = (output847, value349, value1))
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value349 value1 value2 = (output1468, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1469 value347 value1 value2 = (output1469, value657, value1) := by
  rw [input1469_def, output1469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  try dsimp only
  rw [child1468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output847_skip, output1468_skip]
  kernel_rfl

theorem node1470_cond_eq
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value346 value1 value2 = (output844, value347, value1))
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value347 value1 value2 = (output1469, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1470 value346 value1 value2 = (output1470, value657, value1) := by
  rw [input1470_def, output1470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child844]
  try dsimp only
  rw [child1469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output844_skip, output1469_skip]
  kernel_rfl

theorem node1471_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value336 value1 value2 = (output843, value346, value1))
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value346 value1 value2 = (output1470, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1471 value336 value1 value2 = (output1471, value657, value1) := by
  rw [input1471_def, output1471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  try dsimp only
  rw [child1470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output1470_skip]
  kernel_rfl

theorem node1472_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value333 value1 value2 = (output824, value336, value1))
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value336 value1 value2 = (output1471, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1472 value333 value1 value2 = (output1472, value657, value1) := by
  rw [input1472_def, output1472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child1471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output1471_skip]
  kernel_rfl

theorem node1473_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value332 value1 value2 = (output819, value333, value1))
    (child1472 : Flapjack.WordAlloc.removeDeadStructural input1472 value333 value1 value2 = (output1472, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1473 value332 value1 value2 = (output1473, value657, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  try dsimp only
  rw [child1472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output1472_skip]
  kernel_rfl

theorem node1474_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value328 value1 value2 = (output818, value332, value1))
    (child1473 : Flapjack.WordAlloc.removeDeadStructural input1473 value332 value1 value2 = (output1473, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1474 value328 value1 value2 = (output1474, value657, value1) := by
  rw [input1474_def, output1474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child1473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output1473_skip]
  kernel_rfl

theorem node1475_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value327 value1 value2 = (output811, value328, value1))
    (child1474 : Flapjack.WordAlloc.removeDeadStructural input1474 value328 value1 value2 = (output1474, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1475 value327 value1 value2 = (output1475, value657, value1) := by
  rw [input1475_def, output1475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child1474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output1474_skip]
  kernel_rfl

theorem node1476_cond_eq
    (child810 : Flapjack.WordAlloc.removeDeadStructural input810 value326 value1 value2 = (output810, value327, value1))
    (child1475 : Flapjack.WordAlloc.removeDeadStructural input1475 value327 value1 value2 = (output1475, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1476 value326 value1 value2 = (output1476, value657, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child810]
  try dsimp only
  rw [child1475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output810_skip, output1475_skip]
  kernel_rfl

theorem node1477_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value325 value1 value2 = (output809, value326, value1))
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value326 value1 value2 = (output1476, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1477 value325 value1 value2 = (output1477, value657, value1) := by
  rw [input1477_def, output1477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child1476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output1476_skip]
  kernel_rfl

theorem node1478_cond_eq
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value322 value1 value2 = (output808, value325, value1))
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value325 value1 value2 = (output1477, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1478 value322 value1 value2 = (output1478, value657, value1) := by
  rw [input1478_def, output1478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child808]
  try dsimp only
  rw [child1477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output808_skip, output1477_skip]
  kernel_rfl

theorem node1479_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value321 value1 value2 = (output803, value322, value1))
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value322 value1 value2 = (output1478, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1479 value321 value1 value2 = (output1479, value657, value1) := by
  rw [input1479_def, output1479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child1478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output1478_skip]
  kernel_rfl

theorem node1480_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value320 value1 value2 = (output802, value321, value1))
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value321 value1 value2 = (output1479, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1480 value320 value1 value2 = (output1480, value657, value1) := by
  rw [input1480_def, output1480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  try dsimp only
  rw [child1479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output802_skip, output1479_skip]
  kernel_rfl

theorem node1481_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value316 value1 value2 = (output801, value320, value1))
    (child1480 : Flapjack.WordAlloc.removeDeadStructural input1480 value320 value1 value2 = (output1480, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1481 value316 value1 value2 = (output1481, value657, value1) := by
  rw [input1481_def, output1481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child1480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output1480_skip]
  kernel_rfl

theorem node1482_cond_eq
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value314 value1 value2 = (output794, value316, value1))
    (child1481 : Flapjack.WordAlloc.removeDeadStructural input1481 value316 value1 value2 = (output1481, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1482 value314 value1 value2 = (output1482, value657, value1) := by
  rw [input1482_def, output1482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child794]
  try dsimp only
  rw [child1481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output794_skip, output1481_skip]
  kernel_rfl

theorem node1483_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value313 value1 value2 = (output791, value314, value1))
    (child1482 : Flapjack.WordAlloc.removeDeadStructural input1482 value314 value1 value2 = (output1482, value657, value1)) : Flapjack.WordAlloc.removeDeadStructural input1483 value313 value1 value2 = (output1483, value657, value1) := by
  rw [input1483_def, output1483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child1482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output1482_skip]
  kernel_rfl

theorem node1484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1484 value313 value1 value2 = (output1484, value313, value1) := by
  rw [input1484_def, output1484_def]
  kernel_rfl

theorem node1485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1485 value313 value1 value2 = (output1485, value658, value1) := by
  rw [input1485_def, output1485_def]
  kernel_rfl

theorem node1486_cond_eq
    (child1484 : Flapjack.WordAlloc.removeDeadStructural input1484 value313 value1 value2 = (output1484, value313, value1))
    (child1485 : Flapjack.WordAlloc.removeDeadStructural input1485 value313 value1 value2 = (output1485, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input1486 value313 value1 value2 = (output1486, value658, value1) := by
  rw [input1486_def, output1486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1484]
  try dsimp only
  rw [child1485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1484_skip, output1485_skip]
  kernel_rfl

theorem node1487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1487 value658 value1 value2 = (output1487, value658, value1) := by
  rw [input1487_def, output1487_def]
  kernel_rfl

theorem node1488_cond_eq
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value313 value1 value2 = (output1486, value658, value1))
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value658 value1 value2 = (output1487, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input1488 value313 value1 value2 = (output1488, value658, value1) := by
  rw [input1488_def, output1488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1486]
  try dsimp only
  rw [child1487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1486_skip, output1487_skip]
  kernel_rfl

theorem node1489_cond_eq
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value313 value1 value2 = (output1483, value657, value1))
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value313 value1 value2 = (output1488, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input1489 value313 value1 value2 = (output1489, value660, value1) := by
  rw [input1489_def, output1489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1483]
  try dsimp only
  rw [child1488]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1483_skip, output1488_skip]
  kernel_rfl

theorem node1490_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value313 value1 value2 = (output788, value313, value1))
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value313 value1 value2 = (output1489, value660, value1)) : Flapjack.WordAlloc.removeDeadStructural input1490 value313 value1 value2 = (output1490, value660, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child1489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output1489_skip]
  kernel_rfl

theorem node1491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1491 value660 value1 value2 = (output1491, value658, value1) := by
  rw [input1491_def, output1491_def]
  kernel_rfl

theorem node1492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1492 value658 value1 value2 = (output1492, value661, value1) := by
  rw [input1492_def, output1492_def]
  kernel_rfl

theorem node1493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1493 value661 value1 value2 = (output1493, value661, value1) := by
  rw [input1493_def, output1493_def]
  kernel_rfl

theorem node1494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1494 value661 value1 value2 = (output1494, value661, value1) := by
  rw [input1494_def, output1494_def]
  kernel_rfl

theorem node1495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1495 value661 value1 value2 = (output1495, value661, value1) := by
  rw [input1495_def, output1495_def]
  kernel_rfl

theorem node1496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1496 value661 value1 value2 = (output1496, value661, value1) := by
  rw [input1496_def, output1496_def]
  kernel_rfl

theorem node1497_cond_eq
    (child1495 : Flapjack.WordAlloc.removeDeadStructural input1495 value661 value1 value2 = (output1495, value661, value1))
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value661 value1 value2 = (output1496, value661, value1)) : Flapjack.WordAlloc.removeDeadStructural input1497 value661 value1 value2 = (output1497, value661, value1) := by
  rw [input1497_def, output1497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1495]
  try dsimp only
  rw [child1496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1495_skip, output1496_skip]
  kernel_rfl

theorem node1498_cond_eq
    (child1494 : Flapjack.WordAlloc.removeDeadStructural input1494 value661 value1 value2 = (output1494, value661, value1))
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value661 value1 value2 = (output1497, value661, value1)) : Flapjack.WordAlloc.removeDeadStructural input1498 value661 value1 value2 = (output1498, value661, value1) := by
  rw [input1498_def, output1498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1494]
  try dsimp only
  rw [child1497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1494_skip, output1497_skip]
  kernel_rfl

theorem node1499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1499 value661 value1 value2 = (output1499, value661, value1) := by
  rw [input1499_def, output1499_def]
  kernel_rfl

theorem node1500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1500 value661 value1 value2 = (output1500, value662, value1) := by
  rw [input1500_def, output1500_def]
  kernel_rfl

theorem node1501_cond_eq
    (child1499 : Flapjack.WordAlloc.removeDeadStructural input1499 value661 value1 value2 = (output1499, value661, value1))
    (child1500 : Flapjack.WordAlloc.removeDeadStructural input1500 value661 value1 value2 = (output1500, value662, value1)) : Flapjack.WordAlloc.removeDeadStructural input1501 value661 value1 value2 = (output1501, value662, value1) := by
  rw [input1501_def, output1501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1499]
  try dsimp only
  rw [child1500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1499_skip, output1500_skip]
  kernel_rfl

theorem node1502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1502 value662 value1 value2 = (output1502, value663, value1) := by
  rw [input1502_def, output1502_def]
  kernel_rfl

theorem node1503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1503 value663 value1 value2 = (output1503, value664, value1) := by
  rw [input1503_def, output1503_def]
  kernel_rfl

theorem node1504_cond_eq
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value662 value1 value2 = (output1502, value663, value1))
    (child1503 : Flapjack.WordAlloc.removeDeadStructural input1503 value663 value1 value2 = (output1503, value664, value1)) : Flapjack.WordAlloc.removeDeadStructural input1504 value662 value1 value2 = (output1504, value664, value1) := by
  rw [input1504_def, output1504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1502]
  try dsimp only
  rw [child1503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1502_skip, output1503_skip]
  kernel_rfl

theorem node1505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1505 value664 value1 value2 = (output1505, value665, value1) := by
  rw [input1505_def, output1505_def]
  kernel_rfl

theorem node1506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1506 value665 value1 value2 = (output1506, value666, value1) := by
  rw [input1506_def, output1506_def]
  kernel_rfl

theorem node1507_cond_eq
    (child1505 : Flapjack.WordAlloc.removeDeadStructural input1505 value664 value1 value2 = (output1505, value665, value1))
    (child1506 : Flapjack.WordAlloc.removeDeadStructural input1506 value665 value1 value2 = (output1506, value666, value1)) : Flapjack.WordAlloc.removeDeadStructural input1507 value664 value1 value2 = (output1507, value666, value1) := by
  rw [input1507_def, output1507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1505]
  try dsimp only
  rw [child1506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1505_skip, output1506_skip]
  kernel_rfl

theorem node1508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1508 value666 value1 value2 = (output1508, value667, value1) := by
  rw [input1508_def, output1508_def]
  kernel_rfl

theorem node1509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1509 value667 value1 value2 = (output1509, value668, value1) := by
  rw [input1509_def, output1509_def]
  kernel_rfl

theorem node1510_cond_eq
    (child1508 : Flapjack.WordAlloc.removeDeadStructural input1508 value666 value1 value2 = (output1508, value667, value1))
    (child1509 : Flapjack.WordAlloc.removeDeadStructural input1509 value667 value1 value2 = (output1509, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input1510 value666 value1 value2 = (output1510, value668, value1) := by
  rw [input1510_def, output1510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1508]
  try dsimp only
  rw [child1509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1508_skip, output1509_skip]
  kernel_rfl

theorem node1511_cond_eq
    (child1507 : Flapjack.WordAlloc.removeDeadStructural input1507 value664 value1 value2 = (output1507, value666, value1))
    (child1510 : Flapjack.WordAlloc.removeDeadStructural input1510 value666 value1 value2 = (output1510, value668, value1)) : Flapjack.WordAlloc.removeDeadStructural input1511 value664 value1 value2 = (output1511, value668, value1) := by
  rw [input1511_def, output1511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1507]
  try dsimp only
  rw [child1510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1507_skip, output1510_skip]
  kernel_rfl

theorem node1512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1512 value668 value1 value2 = (output1512, value669, value1) := by
  rw [input1512_def, output1512_def]
  kernel_rfl

theorem node1513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1513 value669 value1 value2 = (output1513, value670, value1) := by
  rw [input1513_def, output1513_def]
  kernel_rfl

theorem node1514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1514 value670 value1 value2 = (output1514, value671, value1) := by
  rw [input1514_def, output1514_def]
  kernel_rfl

theorem node1515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1515 value671 value1 value2 = (output1515, value672, value1) := by
  rw [input1515_def, output1515_def]
  kernel_rfl

theorem node1516_cond_eq
    (child1514 : Flapjack.WordAlloc.removeDeadStructural input1514 value670 value1 value2 = (output1514, value671, value1))
    (child1515 : Flapjack.WordAlloc.removeDeadStructural input1515 value671 value1 value2 = (output1515, value672, value1)) : Flapjack.WordAlloc.removeDeadStructural input1516 value670 value1 value2 = (output1516, value672, value1) := by
  rw [input1516_def, output1516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1514]
  try dsimp only
  rw [child1515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1514_skip, output1515_skip]
  kernel_rfl

theorem node1517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1517 value672 value1 value2 = (output1517, value673, value1) := by
  rw [input1517_def, output1517_def]
  kernel_rfl

theorem node1518_cond_eq
    (child1516 : Flapjack.WordAlloc.removeDeadStructural input1516 value670 value1 value2 = (output1516, value672, value1))
    (child1517 : Flapjack.WordAlloc.removeDeadStructural input1517 value672 value1 value2 = (output1517, value673, value1)) : Flapjack.WordAlloc.removeDeadStructural input1518 value670 value1 value2 = (output1518, value673, value1) := by
  rw [input1518_def, output1518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1516]
  try dsimp only
  rw [child1517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1516_skip, output1517_skip]
  kernel_rfl

theorem node1519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1519 value673 value1 value2 = (output1519, value674, value1) := by
  rw [input1519_def, output1519_def]
  kernel_rfl

theorem node1520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1520 value674 value1 value2 = (output1520, value675, value1) := by
  rw [input1520_def, output1520_def]
  kernel_rfl

theorem node1521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1521 value675 value1 value2 = (output1521, value676, value1) := by
  rw [input1521_def, output1521_def]
  kernel_rfl

theorem node1522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1522 value676 value1 value2 = (output1522, value677, value1) := by
  rw [input1522_def, output1522_def]
  kernel_rfl

theorem node1523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1523 value677 value1 value2 = (output1523, value678, value1) := by
  rw [input1523_def, output1523_def]
  kernel_rfl

theorem node1524_cond_eq
    (child1522 : Flapjack.WordAlloc.removeDeadStructural input1522 value676 value1 value2 = (output1522, value677, value1))
    (child1523 : Flapjack.WordAlloc.removeDeadStructural input1523 value677 value1 value2 = (output1523, value678, value1)) : Flapjack.WordAlloc.removeDeadStructural input1524 value676 value1 value2 = (output1524, value678, value1) := by
  rw [input1524_def, output1524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1522]
  try dsimp only
  rw [child1523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1522_skip, output1523_skip]
  kernel_rfl

theorem node1525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1525 value678 value1 value2 = (output1525, value679, value1) := by
  rw [input1525_def, output1525_def]
  kernel_rfl

theorem node1526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1526 value679 value1 value2 = (output1526, value680, value1) := by
  rw [input1526_def, output1526_def]
  kernel_rfl

theorem node1527_cond_eq
    (child1525 : Flapjack.WordAlloc.removeDeadStructural input1525 value678 value1 value2 = (output1525, value679, value1))
    (child1526 : Flapjack.WordAlloc.removeDeadStructural input1526 value679 value1 value2 = (output1526, value680, value1)) : Flapjack.WordAlloc.removeDeadStructural input1527 value678 value1 value2 = (output1527, value680, value1) := by
  rw [input1527_def, output1527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1525]
  try dsimp only
  rw [child1526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1525_skip, output1526_skip]
  kernel_rfl

theorem node1528_cond_eq
    (child1524 : Flapjack.WordAlloc.removeDeadStructural input1524 value676 value1 value2 = (output1524, value678, value1))
    (child1527 : Flapjack.WordAlloc.removeDeadStructural input1527 value678 value1 value2 = (output1527, value680, value1)) : Flapjack.WordAlloc.removeDeadStructural input1528 value676 value1 value2 = (output1528, value680, value1) := by
  rw [input1528_def, output1528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1524]
  try dsimp only
  rw [child1527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1524_skip, output1527_skip]
  kernel_rfl

theorem node1529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1529 value680 value1 value2 = (output1529, value681, value1) := by
  rw [input1529_def, output1529_def]
  kernel_rfl

theorem node1530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1530 value681 value1 value2 = (output1530, value682, value1) := by
  rw [input1530_def, output1530_def]
  kernel_rfl

theorem node1531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1531 value682 value1 value2 = (output1531, value683, value1) := by
  rw [input1531_def, output1531_def]
  kernel_rfl

theorem node1532_cond_eq
    (child1530 : Flapjack.WordAlloc.removeDeadStructural input1530 value681 value1 value2 = (output1530, value682, value1))
    (child1531 : Flapjack.WordAlloc.removeDeadStructural input1531 value682 value1 value2 = (output1531, value683, value1)) : Flapjack.WordAlloc.removeDeadStructural input1532 value681 value1 value2 = (output1532, value683, value1) := by
  rw [input1532_def, output1532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1530]
  try dsimp only
  rw [child1531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1530_skip, output1531_skip]
  kernel_rfl

theorem node1533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1533 value683 value1 value2 = (output1533, value684, value1) := by
  rw [input1533_def, output1533_def]
  kernel_rfl

theorem node1534_cond_eq
    (child1532 : Flapjack.WordAlloc.removeDeadStructural input1532 value681 value1 value2 = (output1532, value683, value1))
    (child1533 : Flapjack.WordAlloc.removeDeadStructural input1533 value683 value1 value2 = (output1533, value684, value1)) : Flapjack.WordAlloc.removeDeadStructural input1534 value681 value1 value2 = (output1534, value684, value1) := by
  rw [input1534_def, output1534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1532]
  try dsimp only
  rw [child1533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1532_skip, output1533_skip]
  kernel_rfl

theorem node1535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1535 value684 value1 value2 = (output1535, value685, value1) := by
  rw [input1535_def, output1535_def]
  kernel_rfl

#print axioms node1535_cond_eq
end InitECandidate.Proofs.DeadStages184.Parallel
