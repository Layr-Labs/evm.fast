import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages240.Parallel
theorem node1280_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value5 value1 value2 = (output1278, value643, value1))
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value643 value1 value2 = (output1279, value644, value1)) : Flapjack.WordAlloc.removeDeadStructural input1280 value5 value1 value2 = (output1280, value644, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  try dsimp only
  rw [child1279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output1279_skip]
  kernel_rfl

theorem node1281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1281 value644 value1 value2 = (output1281, value645, value1) := by
  rw [input1281_def, output1281_def]
  kernel_rfl

theorem node1282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1282 value645 value1 value2 = (output1282, value645, value1) := by
  rw [input1282_def, output1282_def]
  kernel_rfl

theorem node1283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1283 value645 value1 value2 = (output1283, value646, value1) := by
  rw [input1283_def, output1283_def]
  kernel_rfl

theorem node1284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value646 value1 value2 = (output1284, value647, value1) := by
  rw [input1284_def, output1284_def]
  kernel_rfl

theorem node1285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value647 value1 value2 = (output1285, value648, value1) := by
  rw [input1285_def, output1285_def]
  kernel_rfl

theorem node1286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1286 value648 value1 value2 = (output1286, value649, value1) := by
  rw [input1286_def, output1286_def]
  kernel_rfl

theorem node1287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1287 value649 value1 value2 = (output1287, value5, value1) := by
  rw [input1287_def, output1287_def]
  kernel_rfl

theorem node1288_cond_eq
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value648 value1 value2 = (output1286, value649, value1))
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value649 value1 value2 = (output1287, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1288 value648 value1 value2 = (output1288, value5, value1) := by
  rw [input1288_def, output1288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1286]
  try dsimp only
  rw [child1287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1286_skip, output1287_skip]
  kernel_rfl

theorem node1289_cond_eq
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value647 value1 value2 = (output1285, value648, value1))
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value648 value1 value2 = (output1288, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1289 value647 value1 value2 = (output1289, value5, value1) := by
  rw [input1289_def, output1289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1285]
  try dsimp only
  rw [child1288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1285_skip, output1288_skip]
  kernel_rfl

theorem node1290_cond_eq
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value646 value1 value2 = (output1284, value647, value1))
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value647 value1 value2 = (output1289, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1290 value646 value1 value2 = (output1290, value5, value1) := by
  rw [input1290_def, output1290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1284]
  try dsimp only
  rw [child1289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1284_skip, output1289_skip]
  kernel_rfl

theorem node1291_cond_eq
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value645 value1 value2 = (output1283, value646, value1))
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value646 value1 value2 = (output1290, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1291 value645 value1 value2 = (output1291, value5, value1) := by
  rw [input1291_def, output1291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1283]
  try dsimp only
  rw [child1290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1283_skip, output1290_skip]
  kernel_rfl

theorem node1292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1292 value5 value1 value2 = (output1292, value650, value1) := by
  rw [input1292_def, output1292_def]
  kernel_rfl

theorem node1293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1293 value650 value1 value2 = (output1293, value651, value1) := by
  rw [input1293_def, output1293_def]
  kernel_rfl

theorem node1294_cond_eq
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value5 value1 value2 = (output1292, value650, value1))
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value650 value1 value2 = (output1293, value651, value1)) : Flapjack.WordAlloc.removeDeadStructural input1294 value5 value1 value2 = (output1294, value651, value1) := by
  rw [input1294_def, output1294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1292]
  try dsimp only
  rw [child1293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1292_skip, output1293_skip]
  kernel_rfl

theorem node1295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1295 value651 value1 value2 = (output1295, value652, value1) := by
  rw [input1295_def, output1295_def]
  kernel_rfl

theorem node1296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1296 value652 value1 value2 = (output1296, value652, value1) := by
  rw [input1296_def, output1296_def]
  kernel_rfl

theorem node1297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1297 value652 value1 value2 = (output1297, value653, value1) := by
  rw [input1297_def, output1297_def]
  kernel_rfl

theorem node1298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1298 value653 value1 value2 = (output1298, value654, value1) := by
  rw [input1298_def, output1298_def]
  kernel_rfl

theorem node1299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1299 value654 value1 value2 = (output1299, value655, value1) := by
  rw [input1299_def, output1299_def]
  kernel_rfl

theorem node1300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1300 value655 value1 value2 = (output1300, value656, value1) := by
  rw [input1300_def, output1300_def]
  kernel_rfl

theorem node1301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1301 value656 value1 value2 = (output1301, value5, value1) := by
  rw [input1301_def, output1301_def]
  kernel_rfl

theorem node1302_cond_eq
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value655 value1 value2 = (output1300, value656, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value656 value1 value2 = (output1301, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value655 value1 value2 = (output1302, value5, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1300]
  try dsimp only
  rw [child1301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1300_skip, output1301_skip]
  kernel_rfl

theorem node1303_cond_eq
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value654 value1 value2 = (output1299, value655, value1))
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value655 value1 value2 = (output1302, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1303 value654 value1 value2 = (output1303, value5, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1299]
  try dsimp only
  rw [child1302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1299_skip, output1302_skip]
  kernel_rfl

theorem node1304_cond_eq
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value653 value1 value2 = (output1298, value654, value1))
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value654 value1 value2 = (output1303, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1304 value653 value1 value2 = (output1304, value5, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1298]
  try dsimp only
  rw [child1303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1298_skip, output1303_skip]
  kernel_rfl

theorem node1305_cond_eq
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value652 value1 value2 = (output1297, value653, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value653 value1 value2 = (output1304, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value652 value1 value2 = (output1305, value5, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1297]
  try dsimp only
  rw [child1304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1297_skip, output1304_skip]
  kernel_rfl

theorem node1306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1306 value5 value1 value2 = (output1306, value657, value1) := by
  rw [input1306_def, output1306_def]
  kernel_rfl

theorem node1307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1307 value657 value1 value2 = (output1307, value658, value1) := by
  rw [input1307_def, output1307_def]
  kernel_rfl

theorem node1308_cond_eq
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value5 value1 value2 = (output1306, value657, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value657 value1 value2 = (output1307, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value5 value1 value2 = (output1308, value658, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1306]
  try dsimp only
  rw [child1307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1306_skip, output1307_skip]
  kernel_rfl

theorem node1309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1309 value658 value1 value2 = (output1309, value659, value1) := by
  rw [input1309_def, output1309_def]
  kernel_rfl

theorem node1310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1310 value659 value1 value2 = (output1310, value659, value1) := by
  rw [input1310_def, output1310_def]
  kernel_rfl

theorem node1311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1311 value659 value1 value2 = (output1311, value660, value1) := by
  rw [input1311_def, output1311_def]
  kernel_rfl

theorem node1312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1312 value660 value1 value2 = (output1312, value661, value1) := by
  rw [input1312_def, output1312_def]
  kernel_rfl

theorem node1313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1313 value661 value1 value2 = (output1313, value662, value1) := by
  rw [input1313_def, output1313_def]
  kernel_rfl

theorem node1314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1314 value662 value1 value2 = (output1314, value663, value1) := by
  rw [input1314_def, output1314_def]
  kernel_rfl

theorem node1315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1315 value663 value1 value2 = (output1315, value5, value1) := by
  rw [input1315_def, output1315_def]
  kernel_rfl

theorem node1316_cond_eq
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value662 value1 value2 = (output1314, value663, value1))
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value663 value1 value2 = (output1315, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1316 value662 value1 value2 = (output1316, value5, value1) := by
  rw [input1316_def, output1316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1314]
  try dsimp only
  rw [child1315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1314_skip, output1315_skip]
  kernel_rfl

theorem node1317_cond_eq
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value661 value1 value2 = (output1313, value662, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value662 value1 value2 = (output1316, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value661 value1 value2 = (output1317, value5, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1313]
  try dsimp only
  rw [child1316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1313_skip, output1316_skip]
  kernel_rfl

theorem node1318_cond_eq
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value660 value1 value2 = (output1312, value661, value1))
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value661 value1 value2 = (output1317, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1318 value660 value1 value2 = (output1318, value5, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1312]
  try dsimp only
  rw [child1317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1312_skip, output1317_skip]
  kernel_rfl

theorem node1319_cond_eq
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value659 value1 value2 = (output1311, value660, value1))
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value660 value1 value2 = (output1318, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1319 value659 value1 value2 = (output1319, value5, value1) := by
  rw [input1319_def, output1319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1311]
  try dsimp only
  rw [child1318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1311_skip, output1318_skip]
  kernel_rfl

theorem node1320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1320 value5 value1 value2 = (output1320, value664, value1) := by
  rw [input1320_def, output1320_def]
  kernel_rfl

theorem node1321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1321 value664 value1 value2 = (output1321, value665, value1) := by
  rw [input1321_def, output1321_def]
  kernel_rfl

theorem node1322_cond_eq
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value5 value1 value2 = (output1320, value664, value1))
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value664 value1 value2 = (output1321, value665, value1)) : Flapjack.WordAlloc.removeDeadStructural input1322 value5 value1 value2 = (output1322, value665, value1) := by
  rw [input1322_def, output1322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1320]
  try dsimp only
  rw [child1321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1320_skip, output1321_skip]
  kernel_rfl

theorem node1323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1323 value665 value1 value2 = (output1323, value666, value1) := by
  rw [input1323_def, output1323_def]
  kernel_rfl

theorem node1324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1324 value666 value1 value2 = (output1324, value666, value1) := by
  rw [input1324_def, output1324_def]
  kernel_rfl

theorem node1325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1325 value666 value1 value2 = (output1325, value667, value1) := by
  rw [input1325_def, output1325_def]
  kernel_rfl

theorem node1326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1326 value667 value1 value2 = (output1326, value668, value1) := by
  rw [input1326_def, output1326_def]
  kernel_rfl

theorem node1327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1327 value668 value1 value2 = (output1327, value669, value1) := by
  rw [input1327_def, output1327_def]
  kernel_rfl

theorem node1328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1328 value669 value1 value2 = (output1328, value670, value1) := by
  rw [input1328_def, output1328_def]
  kernel_rfl

theorem node1329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1329 value670 value1 value2 = (output1329, value5, value1) := by
  rw [input1329_def, output1329_def]
  kernel_rfl

theorem node1330_cond_eq
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value669 value1 value2 = (output1328, value670, value1))
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value670 value1 value2 = (output1329, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1330 value669 value1 value2 = (output1330, value5, value1) := by
  rw [input1330_def, output1330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1328]
  try dsimp only
  rw [child1329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1328_skip, output1329_skip]
  kernel_rfl

theorem node1331_cond_eq
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value668 value1 value2 = (output1327, value669, value1))
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value669 value1 value2 = (output1330, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1331 value668 value1 value2 = (output1331, value5, value1) := by
  rw [input1331_def, output1331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1327]
  try dsimp only
  rw [child1330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1327_skip, output1330_skip]
  kernel_rfl

theorem node1332_cond_eq
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value667 value1 value2 = (output1326, value668, value1))
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value668 value1 value2 = (output1331, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1332 value667 value1 value2 = (output1332, value5, value1) := by
  rw [input1332_def, output1332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1326]
  try dsimp only
  rw [child1331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1326_skip, output1331_skip]
  kernel_rfl

theorem node1333_cond_eq
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value666 value1 value2 = (output1325, value667, value1))
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value667 value1 value2 = (output1332, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1333 value666 value1 value2 = (output1333, value5, value1) := by
  rw [input1333_def, output1333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1325]
  try dsimp only
  rw [child1332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1325_skip, output1332_skip]
  kernel_rfl

theorem node1334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1334 value5 value1 value2 = (output1334, value671, value1) := by
  rw [input1334_def, output1334_def]
  kernel_rfl

theorem node1335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1335 value671 value1 value2 = (output1335, value672, value1) := by
  rw [input1335_def, output1335_def]
  kernel_rfl

theorem node1336_cond_eq
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value5 value1 value2 = (output1334, value671, value1))
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value671 value1 value2 = (output1335, value672, value1)) : Flapjack.WordAlloc.removeDeadStructural input1336 value5 value1 value2 = (output1336, value672, value1) := by
  rw [input1336_def, output1336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1334]
  try dsimp only
  rw [child1335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1334_skip, output1335_skip]
  kernel_rfl

theorem node1337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1337 value672 value1 value2 = (output1337, value673, value1) := by
  rw [input1337_def, output1337_def]
  kernel_rfl

theorem node1338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1338 value673 value1 value2 = (output1338, value673, value1) := by
  rw [input1338_def, output1338_def]
  kernel_rfl

theorem node1339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1339 value673 value1 value2 = (output1339, value674, value1) := by
  rw [input1339_def, output1339_def]
  kernel_rfl

theorem node1340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1340 value674 value1 value2 = (output1340, value675, value1) := by
  rw [input1340_def, output1340_def]
  kernel_rfl

theorem node1341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1341 value675 value1 value2 = (output1341, value676, value1) := by
  rw [input1341_def, output1341_def]
  kernel_rfl

theorem node1342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1342 value676 value1 value2 = (output1342, value677, value1) := by
  rw [input1342_def, output1342_def]
  kernel_rfl

theorem node1343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1343 value677 value1 value2 = (output1343, value5, value1) := by
  rw [input1343_def, output1343_def]
  kernel_rfl

theorem node1344_cond_eq
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value676 value1 value2 = (output1342, value677, value1))
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value677 value1 value2 = (output1343, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1344 value676 value1 value2 = (output1344, value5, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1342]
  try dsimp only
  rw [child1343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1342_skip, output1343_skip]
  kernel_rfl

theorem node1345_cond_eq
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value675 value1 value2 = (output1341, value676, value1))
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value676 value1 value2 = (output1344, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1345 value675 value1 value2 = (output1345, value5, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1341]
  try dsimp only
  rw [child1344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1341_skip, output1344_skip]
  kernel_rfl

theorem node1346_cond_eq
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value674 value1 value2 = (output1340, value675, value1))
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value675 value1 value2 = (output1345, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1346 value674 value1 value2 = (output1346, value5, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1340]
  try dsimp only
  rw [child1345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1340_skip, output1345_skip]
  kernel_rfl

theorem node1347_cond_eq
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value673 value1 value2 = (output1339, value674, value1))
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value674 value1 value2 = (output1346, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1347 value673 value1 value2 = (output1347, value5, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1339]
  try dsimp only
  rw [child1346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1339_skip, output1346_skip]
  kernel_rfl

theorem node1348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1348 value5 value1 value2 = (output1348, value678, value1) := by
  rw [input1348_def, output1348_def]
  kernel_rfl

theorem node1349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1349 value678 value1 value2 = (output1349, value679, value1) := by
  rw [input1349_def, output1349_def]
  kernel_rfl

theorem node1350_cond_eq
    (child1348 : Flapjack.WordAlloc.removeDeadStructural input1348 value5 value1 value2 = (output1348, value678, value1))
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value678 value1 value2 = (output1349, value679, value1)) : Flapjack.WordAlloc.removeDeadStructural input1350 value5 value1 value2 = (output1350, value679, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1348]
  try dsimp only
  rw [child1349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1348_skip, output1349_skip]
  kernel_rfl

theorem node1351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1351 value679 value1 value2 = (output1351, value680, value1) := by
  rw [input1351_def, output1351_def]
  kernel_rfl

theorem node1352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1352 value680 value1 value2 = (output1352, value680, value1) := by
  rw [input1352_def, output1352_def]
  kernel_rfl

theorem node1353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1353 value680 value1 value2 = (output1353, value681, value1) := by
  rw [input1353_def, output1353_def]
  kernel_rfl

theorem node1354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1354 value681 value1 value2 = (output1354, value682, value1) := by
  rw [input1354_def, output1354_def]
  kernel_rfl

theorem node1355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1355 value682 value1 value2 = (output1355, value683, value1) := by
  rw [input1355_def, output1355_def]
  kernel_rfl

theorem node1356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1356 value683 value1 value2 = (output1356, value684, value1) := by
  rw [input1356_def, output1356_def]
  kernel_rfl

theorem node1357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1357 value684 value1 value2 = (output1357, value5, value1) := by
  rw [input1357_def, output1357_def]
  kernel_rfl

theorem node1358_cond_eq
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value683 value1 value2 = (output1356, value684, value1))
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value684 value1 value2 = (output1357, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1358 value683 value1 value2 = (output1358, value5, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1356]
  try dsimp only
  rw [child1357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1356_skip, output1357_skip]
  kernel_rfl

theorem node1359_cond_eq
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value682 value1 value2 = (output1355, value683, value1))
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value683 value1 value2 = (output1358, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1359 value682 value1 value2 = (output1359, value5, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1355]
  try dsimp only
  rw [child1358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1355_skip, output1358_skip]
  kernel_rfl

theorem node1360_cond_eq
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value681 value1 value2 = (output1354, value682, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value682 value1 value2 = (output1359, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value681 value1 value2 = (output1360, value5, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1354]
  try dsimp only
  rw [child1359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1354_skip, output1359_skip]
  kernel_rfl

theorem node1361_cond_eq
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value680 value1 value2 = (output1353, value681, value1))
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value681 value1 value2 = (output1360, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1361 value680 value1 value2 = (output1361, value5, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1353]
  try dsimp only
  rw [child1360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1353_skip, output1360_skip]
  kernel_rfl

theorem node1362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1362 value5 value1 value2 = (output1362, value685, value1) := by
  rw [input1362_def, output1362_def]
  kernel_rfl

theorem node1363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1363 value685 value1 value2 = (output1363, value686, value1) := by
  rw [input1363_def, output1363_def]
  kernel_rfl

theorem node1364_cond_eq
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value5 value1 value2 = (output1362, value685, value1))
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value685 value1 value2 = (output1363, value686, value1)) : Flapjack.WordAlloc.removeDeadStructural input1364 value5 value1 value2 = (output1364, value686, value1) := by
  rw [input1364_def, output1364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1362]
  try dsimp only
  rw [child1363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1362_skip, output1363_skip]
  kernel_rfl

theorem node1365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1365 value686 value1 value2 = (output1365, value687, value1) := by
  rw [input1365_def, output1365_def]
  kernel_rfl

theorem node1366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1366 value687 value1 value2 = (output1366, value687, value1) := by
  rw [input1366_def, output1366_def]
  kernel_rfl

theorem node1367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1367 value687 value1 value2 = (output1367, value688, value1) := by
  rw [input1367_def, output1367_def]
  kernel_rfl

theorem node1368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1368 value688 value1 value2 = (output1368, value689, value1) := by
  rw [input1368_def, output1368_def]
  kernel_rfl

theorem node1369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1369 value689 value1 value2 = (output1369, value690, value1) := by
  rw [input1369_def, output1369_def]
  kernel_rfl

theorem node1370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1370 value690 value1 value2 = (output1370, value691, value1) := by
  rw [input1370_def, output1370_def]
  kernel_rfl

theorem node1371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1371 value691 value1 value2 = (output1371, value5, value1) := by
  rw [input1371_def, output1371_def]
  kernel_rfl

theorem node1372_cond_eq
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value690 value1 value2 = (output1370, value691, value1))
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value691 value1 value2 = (output1371, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1372 value690 value1 value2 = (output1372, value5, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1370]
  try dsimp only
  rw [child1371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1370_skip, output1371_skip]
  kernel_rfl

theorem node1373_cond_eq
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value689 value1 value2 = (output1369, value690, value1))
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value690 value1 value2 = (output1372, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1373 value689 value1 value2 = (output1373, value5, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1369]
  try dsimp only
  rw [child1372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1369_skip, output1372_skip]
  kernel_rfl

theorem node1374_cond_eq
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value688 value1 value2 = (output1368, value689, value1))
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value689 value1 value2 = (output1373, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1374 value688 value1 value2 = (output1374, value5, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1368]
  try dsimp only
  rw [child1373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1368_skip, output1373_skip]
  kernel_rfl

theorem node1375_cond_eq
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value687 value1 value2 = (output1367, value688, value1))
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value688 value1 value2 = (output1374, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1375 value687 value1 value2 = (output1375, value5, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1367]
  try dsimp only
  rw [child1374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1367_skip, output1374_skip]
  kernel_rfl

theorem node1376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1376 value5 value1 value2 = (output1376, value692, value1) := by
  rw [input1376_def, output1376_def]
  kernel_rfl

theorem node1377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1377 value692 value1 value2 = (output1377, value693, value1) := by
  rw [input1377_def, output1377_def]
  kernel_rfl

theorem node1378_cond_eq
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value5 value1 value2 = (output1376, value692, value1))
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value692 value1 value2 = (output1377, value693, value1)) : Flapjack.WordAlloc.removeDeadStructural input1378 value5 value1 value2 = (output1378, value693, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1376]
  try dsimp only
  rw [child1377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1376_skip, output1377_skip]
  kernel_rfl

theorem node1379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1379 value693 value1 value2 = (output1379, value694, value1) := by
  rw [input1379_def, output1379_def]
  kernel_rfl

theorem node1380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1380 value694 value1 value2 = (output1380, value694, value1) := by
  rw [input1380_def, output1380_def]
  kernel_rfl

theorem node1381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1381 value694 value1 value2 = (output1381, value695, value1) := by
  rw [input1381_def, output1381_def]
  kernel_rfl

theorem node1382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1382 value695 value1 value2 = (output1382, value696, value1) := by
  rw [input1382_def, output1382_def]
  kernel_rfl

theorem node1383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1383 value696 value1 value2 = (output1383, value697, value1) := by
  rw [input1383_def, output1383_def]
  kernel_rfl

theorem node1384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1384 value697 value1 value2 = (output1384, value698, value1) := by
  rw [input1384_def, output1384_def]
  kernel_rfl

theorem node1385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1385 value698 value1 value2 = (output1385, value5, value1) := by
  rw [input1385_def, output1385_def]
  kernel_rfl

theorem node1386_cond_eq
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value697 value1 value2 = (output1384, value698, value1))
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value698 value1 value2 = (output1385, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1386 value697 value1 value2 = (output1386, value5, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1384]
  try dsimp only
  rw [child1385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1384_skip, output1385_skip]
  kernel_rfl

theorem node1387_cond_eq
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value696 value1 value2 = (output1383, value697, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value697 value1 value2 = (output1386, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value696 value1 value2 = (output1387, value5, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1383]
  try dsimp only
  rw [child1386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1383_skip, output1386_skip]
  kernel_rfl

theorem node1388_cond_eq
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value695 value1 value2 = (output1382, value696, value1))
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value696 value1 value2 = (output1387, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1388 value695 value1 value2 = (output1388, value5, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1382]
  try dsimp only
  rw [child1387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1382_skip, output1387_skip]
  kernel_rfl

theorem node1389_cond_eq
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value694 value1 value2 = (output1381, value695, value1))
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value695 value1 value2 = (output1388, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1389 value694 value1 value2 = (output1389, value5, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1381]
  try dsimp only
  rw [child1388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1381_skip, output1388_skip]
  kernel_rfl

theorem node1390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1390 value5 value1 value2 = (output1390, value699, value1) := by
  rw [input1390_def, output1390_def]
  kernel_rfl

theorem node1391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1391 value699 value1 value2 = (output1391, value700, value1) := by
  rw [input1391_def, output1391_def]
  kernel_rfl

theorem node1392_cond_eq
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value5 value1 value2 = (output1390, value699, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value699 value1 value2 = (output1391, value700, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value5 value1 value2 = (output1392, value700, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1390]
  try dsimp only
  rw [child1391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1390_skip, output1391_skip]
  kernel_rfl

theorem node1393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1393 value700 value1 value2 = (output1393, value701, value1) := by
  rw [input1393_def, output1393_def]
  kernel_rfl

theorem node1394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1394 value701 value1 value2 = (output1394, value701, value1) := by
  rw [input1394_def, output1394_def]
  kernel_rfl

theorem node1395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1395 value701 value1 value2 = (output1395, value702, value1) := by
  rw [input1395_def, output1395_def]
  kernel_rfl

theorem node1396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1396 value702 value1 value2 = (output1396, value703, value1) := by
  rw [input1396_def, output1396_def]
  kernel_rfl

theorem node1397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1397 value703 value1 value2 = (output1397, value704, value1) := by
  rw [input1397_def, output1397_def]
  kernel_rfl

theorem node1398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1398 value704 value1 value2 = (output1398, value705, value1) := by
  rw [input1398_def, output1398_def]
  kernel_rfl

theorem node1399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1399 value705 value1 value2 = (output1399, value5, value1) := by
  rw [input1399_def, output1399_def]
  kernel_rfl

theorem node1400_cond_eq
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value704 value1 value2 = (output1398, value705, value1))
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value705 value1 value2 = (output1399, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1400 value704 value1 value2 = (output1400, value5, value1) := by
  rw [input1400_def, output1400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1398]
  try dsimp only
  rw [child1399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1398_skip, output1399_skip]
  kernel_rfl

theorem node1401_cond_eq
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value703 value1 value2 = (output1397, value704, value1))
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value704 value1 value2 = (output1400, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1401 value703 value1 value2 = (output1401, value5, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1397]
  try dsimp only
  rw [child1400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1397_skip, output1400_skip]
  kernel_rfl

theorem node1402_cond_eq
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value702 value1 value2 = (output1396, value703, value1))
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value703 value1 value2 = (output1401, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1402 value702 value1 value2 = (output1402, value5, value1) := by
  rw [input1402_def, output1402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1396]
  try dsimp only
  rw [child1401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1396_skip, output1401_skip]
  kernel_rfl

theorem node1403_cond_eq
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value701 value1 value2 = (output1395, value702, value1))
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value702 value1 value2 = (output1402, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1403 value701 value1 value2 = (output1403, value5, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1395]
  try dsimp only
  rw [child1402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1395_skip, output1402_skip]
  kernel_rfl

theorem node1404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1404 value5 value1 value2 = (output1404, value706, value1) := by
  rw [input1404_def, output1404_def]
  kernel_rfl

theorem node1405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1405 value706 value1 value2 = (output1405, value707, value1) := by
  rw [input1405_def, output1405_def]
  kernel_rfl

theorem node1406_cond_eq
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value5 value1 value2 = (output1404, value706, value1))
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value706 value1 value2 = (output1405, value707, value1)) : Flapjack.WordAlloc.removeDeadStructural input1406 value5 value1 value2 = (output1406, value707, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1404]
  try dsimp only
  rw [child1405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1404_skip, output1405_skip]
  kernel_rfl

theorem node1407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1407 value707 value1 value2 = (output1407, value708, value1) := by
  rw [input1407_def, output1407_def]
  kernel_rfl

theorem node1408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1408 value708 value1 value2 = (output1408, value708, value1) := by
  rw [input1408_def, output1408_def]
  kernel_rfl

theorem node1409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1409 value708 value1 value2 = (output1409, value709, value1) := by
  rw [input1409_def, output1409_def]
  kernel_rfl

theorem node1410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1410 value709 value1 value2 = (output1410, value710, value1) := by
  rw [input1410_def, output1410_def]
  kernel_rfl

theorem node1411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1411 value710 value1 value2 = (output1411, value711, value1) := by
  rw [input1411_def, output1411_def]
  kernel_rfl

theorem node1412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1412 value711 value1 value2 = (output1412, value712, value1) := by
  rw [input1412_def, output1412_def]
  kernel_rfl

theorem node1413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1413 value712 value1 value2 = (output1413, value5, value1) := by
  rw [input1413_def, output1413_def]
  kernel_rfl

theorem node1414_cond_eq
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value711 value1 value2 = (output1412, value712, value1))
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value712 value1 value2 = (output1413, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1414 value711 value1 value2 = (output1414, value5, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1412]
  try dsimp only
  rw [child1413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1412_skip, output1413_skip]
  kernel_rfl

theorem node1415_cond_eq
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value710 value1 value2 = (output1411, value711, value1))
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value711 value1 value2 = (output1414, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1415 value710 value1 value2 = (output1415, value5, value1) := by
  rw [input1415_def, output1415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1411]
  try dsimp only
  rw [child1414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1411_skip, output1414_skip]
  kernel_rfl

theorem node1416_cond_eq
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value709 value1 value2 = (output1410, value710, value1))
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value710 value1 value2 = (output1415, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1416 value709 value1 value2 = (output1416, value5, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1410]
  try dsimp only
  rw [child1415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1410_skip, output1415_skip]
  kernel_rfl

theorem node1417_cond_eq
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value708 value1 value2 = (output1409, value709, value1))
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value709 value1 value2 = (output1416, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1417 value708 value1 value2 = (output1417, value5, value1) := by
  rw [input1417_def, output1417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1409]
  try dsimp only
  rw [child1416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1409_skip, output1416_skip]
  kernel_rfl

theorem node1418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1418 value5 value1 value2 = (output1418, value713, value1) := by
  rw [input1418_def, output1418_def]
  kernel_rfl

theorem node1419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1419 value713 value1 value2 = (output1419, value714, value1) := by
  rw [input1419_def, output1419_def]
  kernel_rfl

theorem node1420_cond_eq
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value5 value1 value2 = (output1418, value713, value1))
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value713 value1 value2 = (output1419, value714, value1)) : Flapjack.WordAlloc.removeDeadStructural input1420 value5 value1 value2 = (output1420, value714, value1) := by
  rw [input1420_def, output1420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1418]
  try dsimp only
  rw [child1419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1418_skip, output1419_skip]
  kernel_rfl

theorem node1421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1421 value714 value1 value2 = (output1421, value715, value1) := by
  rw [input1421_def, output1421_def]
  kernel_rfl

theorem node1422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1422 value715 value1 value2 = (output1422, value715, value1) := by
  rw [input1422_def, output1422_def]
  kernel_rfl

theorem node1423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1423 value715 value1 value2 = (output1423, value716, value1) := by
  rw [input1423_def, output1423_def]
  kernel_rfl

theorem node1424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1424 value716 value1 value2 = (output1424, value717, value1) := by
  rw [input1424_def, output1424_def]
  kernel_rfl

theorem node1425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1425 value717 value1 value2 = (output1425, value718, value1) := by
  rw [input1425_def, output1425_def]
  kernel_rfl

theorem node1426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1426 value718 value1 value2 = (output1426, value719, value1) := by
  rw [input1426_def, output1426_def]
  kernel_rfl

theorem node1427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1427 value719 value1 value2 = (output1427, value5, value1) := by
  rw [input1427_def, output1427_def]
  kernel_rfl

theorem node1428_cond_eq
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value718 value1 value2 = (output1426, value719, value1))
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value719 value1 value2 = (output1427, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1428 value718 value1 value2 = (output1428, value5, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1426]
  try dsimp only
  rw [child1427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1426_skip, output1427_skip]
  kernel_rfl

theorem node1429_cond_eq
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value717 value1 value2 = (output1425, value718, value1))
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value718 value1 value2 = (output1428, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1429 value717 value1 value2 = (output1429, value5, value1) := by
  rw [input1429_def, output1429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1425]
  try dsimp only
  rw [child1428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1425_skip, output1428_skip]
  kernel_rfl

theorem node1430_cond_eq
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value716 value1 value2 = (output1424, value717, value1))
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value717 value1 value2 = (output1429, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1430 value716 value1 value2 = (output1430, value5, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1424]
  try dsimp only
  rw [child1429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1424_skip, output1429_skip]
  kernel_rfl

theorem node1431_cond_eq
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value715 value1 value2 = (output1423, value716, value1))
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value716 value1 value2 = (output1430, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1431 value715 value1 value2 = (output1431, value5, value1) := by
  rw [input1431_def, output1431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1423]
  try dsimp only
  rw [child1430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1423_skip, output1430_skip]
  kernel_rfl

theorem node1432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1432 value5 value1 value2 = (output1432, value720, value1) := by
  rw [input1432_def, output1432_def]
  kernel_rfl

theorem node1433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1433 value720 value1 value2 = (output1433, value721, value1) := by
  rw [input1433_def, output1433_def]
  kernel_rfl

theorem node1434_cond_eq
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value5 value1 value2 = (output1432, value720, value1))
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value720 value1 value2 = (output1433, value721, value1)) : Flapjack.WordAlloc.removeDeadStructural input1434 value5 value1 value2 = (output1434, value721, value1) := by
  rw [input1434_def, output1434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1432]
  try dsimp only
  rw [child1433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1432_skip, output1433_skip]
  kernel_rfl

theorem node1435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1435 value721 value1 value2 = (output1435, value722, value1) := by
  rw [input1435_def, output1435_def]
  kernel_rfl

theorem node1436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1436 value722 value1 value2 = (output1436, value722, value1) := by
  rw [input1436_def, output1436_def]
  kernel_rfl

theorem node1437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1437 value722 value1 value2 = (output1437, value723, value1) := by
  rw [input1437_def, output1437_def]
  kernel_rfl

theorem node1438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1438 value723 value1 value2 = (output1438, value724, value1) := by
  rw [input1438_def, output1438_def]
  kernel_rfl

theorem node1439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1439 value724 value1 value2 = (output1439, value725, value1) := by
  rw [input1439_def, output1439_def]
  kernel_rfl

theorem node1440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1440 value725 value1 value2 = (output1440, value726, value1) := by
  rw [input1440_def, output1440_def]
  kernel_rfl

theorem node1441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1441 value726 value1 value2 = (output1441, value5, value1) := by
  rw [input1441_def, output1441_def]
  kernel_rfl

theorem node1442_cond_eq
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value725 value1 value2 = (output1440, value726, value1))
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value726 value1 value2 = (output1441, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1442 value725 value1 value2 = (output1442, value5, value1) := by
  rw [input1442_def, output1442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1440]
  try dsimp only
  rw [child1441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1440_skip, output1441_skip]
  kernel_rfl

theorem node1443_cond_eq
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value724 value1 value2 = (output1439, value725, value1))
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value725 value1 value2 = (output1442, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1443 value724 value1 value2 = (output1443, value5, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1439]
  try dsimp only
  rw [child1442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1439_skip, output1442_skip]
  kernel_rfl

theorem node1444_cond_eq
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value723 value1 value2 = (output1438, value724, value1))
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value724 value1 value2 = (output1443, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1444 value723 value1 value2 = (output1444, value5, value1) := by
  rw [input1444_def, output1444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1438]
  try dsimp only
  rw [child1443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1438_skip, output1443_skip]
  kernel_rfl

theorem node1445_cond_eq
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value722 value1 value2 = (output1437, value723, value1))
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value723 value1 value2 = (output1444, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1445 value722 value1 value2 = (output1445, value5, value1) := by
  rw [input1445_def, output1445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1437]
  try dsimp only
  rw [child1444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1437_skip, output1444_skip]
  kernel_rfl

theorem node1446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1446 value5 value1 value2 = (output1446, value727, value1) := by
  rw [input1446_def, output1446_def]
  kernel_rfl

theorem node1447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1447 value727 value1 value2 = (output1447, value728, value1) := by
  rw [input1447_def, output1447_def]
  kernel_rfl

theorem node1448_cond_eq
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value5 value1 value2 = (output1446, value727, value1))
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value727 value1 value2 = (output1447, value728, value1)) : Flapjack.WordAlloc.removeDeadStructural input1448 value5 value1 value2 = (output1448, value728, value1) := by
  rw [input1448_def, output1448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1446]
  try dsimp only
  rw [child1447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1446_skip, output1447_skip]
  kernel_rfl

theorem node1449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1449 value728 value1 value2 = (output1449, value729, value1) := by
  rw [input1449_def, output1449_def]
  kernel_rfl

theorem node1450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1450 value729 value1 value2 = (output1450, value729, value1) := by
  rw [input1450_def, output1450_def]
  kernel_rfl

theorem node1451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1451 value729 value1 value2 = (output1451, value730, value1) := by
  rw [input1451_def, output1451_def]
  kernel_rfl

theorem node1452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1452 value730 value1 value2 = (output1452, value731, value1) := by
  rw [input1452_def, output1452_def]
  kernel_rfl

theorem node1453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1453 value731 value1 value2 = (output1453, value732, value1) := by
  rw [input1453_def, output1453_def]
  kernel_rfl

theorem node1454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1454 value732 value1 value2 = (output1454, value733, value1) := by
  rw [input1454_def, output1454_def]
  kernel_rfl

theorem node1455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1455 value733 value1 value2 = (output1455, value5, value1) := by
  rw [input1455_def, output1455_def]
  kernel_rfl

theorem node1456_cond_eq
    (child1454 : Flapjack.WordAlloc.removeDeadStructural input1454 value732 value1 value2 = (output1454, value733, value1))
    (child1455 : Flapjack.WordAlloc.removeDeadStructural input1455 value733 value1 value2 = (output1455, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1456 value732 value1 value2 = (output1456, value5, value1) := by
  rw [input1456_def, output1456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1454]
  try dsimp only
  rw [child1455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1454_skip, output1455_skip]
  kernel_rfl

theorem node1457_cond_eq
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value731 value1 value2 = (output1453, value732, value1))
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value732 value1 value2 = (output1456, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1457 value731 value1 value2 = (output1457, value5, value1) := by
  rw [input1457_def, output1457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1453]
  try dsimp only
  rw [child1456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1453_skip, output1456_skip]
  kernel_rfl

theorem node1458_cond_eq
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value730 value1 value2 = (output1452, value731, value1))
    (child1457 : Flapjack.WordAlloc.removeDeadStructural input1457 value731 value1 value2 = (output1457, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1458 value730 value1 value2 = (output1458, value5, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1452]
  try dsimp only
  rw [child1457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1452_skip, output1457_skip]
  kernel_rfl

theorem node1459_cond_eq
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value729 value1 value2 = (output1451, value730, value1))
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value730 value1 value2 = (output1458, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1459 value729 value1 value2 = (output1459, value5, value1) := by
  rw [input1459_def, output1459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1451]
  try dsimp only
  rw [child1458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1451_skip, output1458_skip]
  kernel_rfl

theorem node1460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1460 value5 value1 value2 = (output1460, value734, value1) := by
  rw [input1460_def, output1460_def]
  kernel_rfl

theorem node1461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1461 value734 value1 value2 = (output1461, value735, value1) := by
  rw [input1461_def, output1461_def]
  kernel_rfl

theorem node1462_cond_eq
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value5 value1 value2 = (output1460, value734, value1))
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value734 value1 value2 = (output1461, value735, value1)) : Flapjack.WordAlloc.removeDeadStructural input1462 value5 value1 value2 = (output1462, value735, value1) := by
  rw [input1462_def, output1462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1460]
  try dsimp only
  rw [child1461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1460_skip, output1461_skip]
  kernel_rfl

theorem node1463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1463 value735 value1 value2 = (output1463, value736, value1) := by
  rw [input1463_def, output1463_def]
  kernel_rfl

theorem node1464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1464 value736 value1 value2 = (output1464, value736, value1) := by
  rw [input1464_def, output1464_def]
  kernel_rfl

theorem node1465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1465 value736 value1 value2 = (output1465, value737, value1) := by
  rw [input1465_def, output1465_def]
  kernel_rfl

theorem node1466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1466 value737 value1 value2 = (output1466, value738, value1) := by
  rw [input1466_def, output1466_def]
  kernel_rfl

theorem node1467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1467 value738 value1 value2 = (output1467, value739, value1) := by
  rw [input1467_def, output1467_def]
  kernel_rfl

theorem node1468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1468 value739 value1 value2 = (output1468, value740, value1) := by
  rw [input1468_def, output1468_def]
  kernel_rfl

theorem node1469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1469 value740 value1 value2 = (output1469, value5, value1) := by
  rw [input1469_def, output1469_def]
  kernel_rfl

theorem node1470_cond_eq
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value739 value1 value2 = (output1468, value740, value1))
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value740 value1 value2 = (output1469, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1470 value739 value1 value2 = (output1470, value5, value1) := by
  rw [input1470_def, output1470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1468]
  try dsimp only
  rw [child1469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1468_skip, output1469_skip]
  kernel_rfl

theorem node1471_cond_eq
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value738 value1 value2 = (output1467, value739, value1))
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value739 value1 value2 = (output1470, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1471 value738 value1 value2 = (output1471, value5, value1) := by
  rw [input1471_def, output1471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1467]
  try dsimp only
  rw [child1470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1467_skip, output1470_skip]
  kernel_rfl

theorem node1472_cond_eq
    (child1466 : Flapjack.WordAlloc.removeDeadStructural input1466 value737 value1 value2 = (output1466, value738, value1))
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value738 value1 value2 = (output1471, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1472 value737 value1 value2 = (output1472, value5, value1) := by
  rw [input1472_def, output1472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1466]
  try dsimp only
  rw [child1471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1466_skip, output1471_skip]
  kernel_rfl

theorem node1473_cond_eq
    (child1465 : Flapjack.WordAlloc.removeDeadStructural input1465 value736 value1 value2 = (output1465, value737, value1))
    (child1472 : Flapjack.WordAlloc.removeDeadStructural input1472 value737 value1 value2 = (output1472, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1473 value736 value1 value2 = (output1473, value5, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1465]
  try dsimp only
  rw [child1472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1465_skip, output1472_skip]
  kernel_rfl

theorem node1474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1474 value5 value1 value2 = (output1474, value741, value1) := by
  rw [input1474_def, output1474_def]
  kernel_rfl

theorem node1475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1475 value741 value1 value2 = (output1475, value742, value1) := by
  rw [input1475_def, output1475_def]
  kernel_rfl

theorem node1476_cond_eq
    (child1474 : Flapjack.WordAlloc.removeDeadStructural input1474 value5 value1 value2 = (output1474, value741, value1))
    (child1475 : Flapjack.WordAlloc.removeDeadStructural input1475 value741 value1 value2 = (output1475, value742, value1)) : Flapjack.WordAlloc.removeDeadStructural input1476 value5 value1 value2 = (output1476, value742, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1474]
  try dsimp only
  rw [child1475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1474_skip, output1475_skip]
  kernel_rfl

theorem node1477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1477 value742 value1 value2 = (output1477, value743, value1) := by
  rw [input1477_def, output1477_def]
  kernel_rfl

theorem node1478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1478 value743 value1 value2 = (output1478, value743, value1) := by
  rw [input1478_def, output1478_def]
  kernel_rfl

theorem node1479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1479 value743 value1 value2 = (output1479, value744, value1) := by
  rw [input1479_def, output1479_def]
  kernel_rfl

theorem node1480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1480 value744 value1 value2 = (output1480, value745, value1) := by
  rw [input1480_def, output1480_def]
  kernel_rfl

theorem node1481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1481 value745 value1 value2 = (output1481, value746, value1) := by
  rw [input1481_def, output1481_def]
  kernel_rfl

theorem node1482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1482 value746 value1 value2 = (output1482, value747, value1) := by
  rw [input1482_def, output1482_def]
  kernel_rfl

theorem node1483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1483 value747 value1 value2 = (output1483, value5, value1) := by
  rw [input1483_def, output1483_def]
  kernel_rfl

theorem node1484_cond_eq
    (child1482 : Flapjack.WordAlloc.removeDeadStructural input1482 value746 value1 value2 = (output1482, value747, value1))
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value747 value1 value2 = (output1483, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1484 value746 value1 value2 = (output1484, value5, value1) := by
  rw [input1484_def, output1484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1482]
  try dsimp only
  rw [child1483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1482_skip, output1483_skip]
  kernel_rfl

theorem node1485_cond_eq
    (child1481 : Flapjack.WordAlloc.removeDeadStructural input1481 value745 value1 value2 = (output1481, value746, value1))
    (child1484 : Flapjack.WordAlloc.removeDeadStructural input1484 value746 value1 value2 = (output1484, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1485 value745 value1 value2 = (output1485, value5, value1) := by
  rw [input1485_def, output1485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1481]
  try dsimp only
  rw [child1484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1481_skip, output1484_skip]
  kernel_rfl

theorem node1486_cond_eq
    (child1480 : Flapjack.WordAlloc.removeDeadStructural input1480 value744 value1 value2 = (output1480, value745, value1))
    (child1485 : Flapjack.WordAlloc.removeDeadStructural input1485 value745 value1 value2 = (output1485, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1486 value744 value1 value2 = (output1486, value5, value1) := by
  rw [input1486_def, output1486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1480]
  try dsimp only
  rw [child1485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1480_skip, output1485_skip]
  kernel_rfl

theorem node1487_cond_eq
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value743 value1 value2 = (output1479, value744, value1))
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value744 value1 value2 = (output1486, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1487 value743 value1 value2 = (output1487, value5, value1) := by
  rw [input1487_def, output1487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1479]
  try dsimp only
  rw [child1486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1479_skip, output1486_skip]
  kernel_rfl

theorem node1488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1488 value5 value1 value2 = (output1488, value748, value1) := by
  rw [input1488_def, output1488_def]
  kernel_rfl

theorem node1489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1489 value748 value1 value2 = (output1489, value749, value1) := by
  rw [input1489_def, output1489_def]
  kernel_rfl

theorem node1490_cond_eq
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value5 value1 value2 = (output1488, value748, value1))
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value748 value1 value2 = (output1489, value749, value1)) : Flapjack.WordAlloc.removeDeadStructural input1490 value5 value1 value2 = (output1490, value749, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1488]
  try dsimp only
  rw [child1489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1488_skip, output1489_skip]
  kernel_rfl

theorem node1491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1491 value749 value1 value2 = (output1491, value750, value1) := by
  rw [input1491_def, output1491_def]
  kernel_rfl

theorem node1492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1492 value750 value1 value2 = (output1492, value750, value1) := by
  rw [input1492_def, output1492_def]
  kernel_rfl

theorem node1493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1493 value750 value1 value2 = (output1493, value751, value1) := by
  rw [input1493_def, output1493_def]
  kernel_rfl

theorem node1494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1494 value751 value1 value2 = (output1494, value752, value1) := by
  rw [input1494_def, output1494_def]
  kernel_rfl

theorem node1495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1495 value752 value1 value2 = (output1495, value753, value1) := by
  rw [input1495_def, output1495_def]
  kernel_rfl

theorem node1496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1496 value753 value1 value2 = (output1496, value754, value1) := by
  rw [input1496_def, output1496_def]
  kernel_rfl

theorem node1497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1497 value754 value1 value2 = (output1497, value5, value1) := by
  rw [input1497_def, output1497_def]
  kernel_rfl

theorem node1498_cond_eq
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value753 value1 value2 = (output1496, value754, value1))
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value754 value1 value2 = (output1497, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1498 value753 value1 value2 = (output1498, value5, value1) := by
  rw [input1498_def, output1498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1496]
  try dsimp only
  rw [child1497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1496_skip, output1497_skip]
  kernel_rfl

theorem node1499_cond_eq
    (child1495 : Flapjack.WordAlloc.removeDeadStructural input1495 value752 value1 value2 = (output1495, value753, value1))
    (child1498 : Flapjack.WordAlloc.removeDeadStructural input1498 value753 value1 value2 = (output1498, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1499 value752 value1 value2 = (output1499, value5, value1) := by
  rw [input1499_def, output1499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1495]
  try dsimp only
  rw [child1498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1495_skip, output1498_skip]
  kernel_rfl

theorem node1500_cond_eq
    (child1494 : Flapjack.WordAlloc.removeDeadStructural input1494 value751 value1 value2 = (output1494, value752, value1))
    (child1499 : Flapjack.WordAlloc.removeDeadStructural input1499 value752 value1 value2 = (output1499, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1500 value751 value1 value2 = (output1500, value5, value1) := by
  rw [input1500_def, output1500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1494]
  try dsimp only
  rw [child1499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1494_skip, output1499_skip]
  kernel_rfl

theorem node1501_cond_eq
    (child1493 : Flapjack.WordAlloc.removeDeadStructural input1493 value750 value1 value2 = (output1493, value751, value1))
    (child1500 : Flapjack.WordAlloc.removeDeadStructural input1500 value751 value1 value2 = (output1500, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1501 value750 value1 value2 = (output1501, value5, value1) := by
  rw [input1501_def, output1501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1493]
  try dsimp only
  rw [child1500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1493_skip, output1500_skip]
  kernel_rfl

theorem node1502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1502 value5 value1 value2 = (output1502, value755, value1) := by
  rw [input1502_def, output1502_def]
  kernel_rfl

theorem node1503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1503 value755 value1 value2 = (output1503, value756, value1) := by
  rw [input1503_def, output1503_def]
  kernel_rfl

theorem node1504_cond_eq
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value5 value1 value2 = (output1502, value755, value1))
    (child1503 : Flapjack.WordAlloc.removeDeadStructural input1503 value755 value1 value2 = (output1503, value756, value1)) : Flapjack.WordAlloc.removeDeadStructural input1504 value5 value1 value2 = (output1504, value756, value1) := by
  rw [input1504_def, output1504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1502]
  try dsimp only
  rw [child1503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1502_skip, output1503_skip]
  kernel_rfl

theorem node1505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1505 value756 value1 value2 = (output1505, value757, value1) := by
  rw [input1505_def, output1505_def]
  kernel_rfl

theorem node1506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1506 value757 value1 value2 = (output1506, value757, value1) := by
  rw [input1506_def, output1506_def]
  kernel_rfl

theorem node1507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1507 value757 value1 value2 = (output1507, value758, value1) := by
  rw [input1507_def, output1507_def]
  kernel_rfl

theorem node1508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1508 value758 value1 value2 = (output1508, value759, value1) := by
  rw [input1508_def, output1508_def]
  kernel_rfl

theorem node1509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1509 value759 value1 value2 = (output1509, value760, value1) := by
  rw [input1509_def, output1509_def]
  kernel_rfl

theorem node1510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1510 value760 value1 value2 = (output1510, value761, value1) := by
  rw [input1510_def, output1510_def]
  kernel_rfl

theorem node1511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1511 value761 value1 value2 = (output1511, value5, value1) := by
  rw [input1511_def, output1511_def]
  kernel_rfl

theorem node1512_cond_eq
    (child1510 : Flapjack.WordAlloc.removeDeadStructural input1510 value760 value1 value2 = (output1510, value761, value1))
    (child1511 : Flapjack.WordAlloc.removeDeadStructural input1511 value761 value1 value2 = (output1511, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1512 value760 value1 value2 = (output1512, value5, value1) := by
  rw [input1512_def, output1512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1510]
  try dsimp only
  rw [child1511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1510_skip, output1511_skip]
  kernel_rfl

theorem node1513_cond_eq
    (child1509 : Flapjack.WordAlloc.removeDeadStructural input1509 value759 value1 value2 = (output1509, value760, value1))
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value760 value1 value2 = (output1512, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1513 value759 value1 value2 = (output1513, value5, value1) := by
  rw [input1513_def, output1513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1509]
  try dsimp only
  rw [child1512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1509_skip, output1512_skip]
  kernel_rfl

theorem node1514_cond_eq
    (child1508 : Flapjack.WordAlloc.removeDeadStructural input1508 value758 value1 value2 = (output1508, value759, value1))
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value759 value1 value2 = (output1513, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1514 value758 value1 value2 = (output1514, value5, value1) := by
  rw [input1514_def, output1514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1508]
  try dsimp only
  rw [child1513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1508_skip, output1513_skip]
  kernel_rfl

theorem node1515_cond_eq
    (child1507 : Flapjack.WordAlloc.removeDeadStructural input1507 value757 value1 value2 = (output1507, value758, value1))
    (child1514 : Flapjack.WordAlloc.removeDeadStructural input1514 value758 value1 value2 = (output1514, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1515 value757 value1 value2 = (output1515, value5, value1) := by
  rw [input1515_def, output1515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1507]
  try dsimp only
  rw [child1514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1507_skip, output1514_skip]
  kernel_rfl

theorem node1516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1516 value5 value1 value2 = (output1516, value762, value1) := by
  rw [input1516_def, output1516_def]
  kernel_rfl

theorem node1517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1517 value762 value1 value2 = (output1517, value763, value1) := by
  rw [input1517_def, output1517_def]
  kernel_rfl

theorem node1518_cond_eq
    (child1516 : Flapjack.WordAlloc.removeDeadStructural input1516 value5 value1 value2 = (output1516, value762, value1))
    (child1517 : Flapjack.WordAlloc.removeDeadStructural input1517 value762 value1 value2 = (output1517, value763, value1)) : Flapjack.WordAlloc.removeDeadStructural input1518 value5 value1 value2 = (output1518, value763, value1) := by
  rw [input1518_def, output1518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1516]
  try dsimp only
  rw [child1517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1516_skip, output1517_skip]
  kernel_rfl

theorem node1519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1519 value763 value1 value2 = (output1519, value764, value1) := by
  rw [input1519_def, output1519_def]
  kernel_rfl

theorem node1520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1520 value764 value1 value2 = (output1520, value764, value1) := by
  rw [input1520_def, output1520_def]
  kernel_rfl

theorem node1521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1521 value764 value1 value2 = (output1521, value765, value1) := by
  rw [input1521_def, output1521_def]
  kernel_rfl

theorem node1522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1522 value765 value1 value2 = (output1522, value766, value1) := by
  rw [input1522_def, output1522_def]
  kernel_rfl

theorem node1523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1523 value766 value1 value2 = (output1523, value767, value1) := by
  rw [input1523_def, output1523_def]
  kernel_rfl

theorem node1524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1524 value767 value1 value2 = (output1524, value768, value1) := by
  rw [input1524_def, output1524_def]
  kernel_rfl

theorem node1525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1525 value768 value1 value2 = (output1525, value5, value1) := by
  rw [input1525_def, output1525_def]
  kernel_rfl

theorem node1526_cond_eq
    (child1524 : Flapjack.WordAlloc.removeDeadStructural input1524 value767 value1 value2 = (output1524, value768, value1))
    (child1525 : Flapjack.WordAlloc.removeDeadStructural input1525 value768 value1 value2 = (output1525, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1526 value767 value1 value2 = (output1526, value5, value1) := by
  rw [input1526_def, output1526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1524]
  try dsimp only
  rw [child1525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1524_skip, output1525_skip]
  kernel_rfl

theorem node1527_cond_eq
    (child1523 : Flapjack.WordAlloc.removeDeadStructural input1523 value766 value1 value2 = (output1523, value767, value1))
    (child1526 : Flapjack.WordAlloc.removeDeadStructural input1526 value767 value1 value2 = (output1526, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1527 value766 value1 value2 = (output1527, value5, value1) := by
  rw [input1527_def, output1527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1523]
  try dsimp only
  rw [child1526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1523_skip, output1526_skip]
  kernel_rfl

theorem node1528_cond_eq
    (child1522 : Flapjack.WordAlloc.removeDeadStructural input1522 value765 value1 value2 = (output1522, value766, value1))
    (child1527 : Flapjack.WordAlloc.removeDeadStructural input1527 value766 value1 value2 = (output1527, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1528 value765 value1 value2 = (output1528, value5, value1) := by
  rw [input1528_def, output1528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1522]
  try dsimp only
  rw [child1527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1522_skip, output1527_skip]
  kernel_rfl

theorem node1529_cond_eq
    (child1521 : Flapjack.WordAlloc.removeDeadStructural input1521 value764 value1 value2 = (output1521, value765, value1))
    (child1528 : Flapjack.WordAlloc.removeDeadStructural input1528 value765 value1 value2 = (output1528, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1529 value764 value1 value2 = (output1529, value5, value1) := by
  rw [input1529_def, output1529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1521]
  try dsimp only
  rw [child1528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1521_skip, output1528_skip]
  kernel_rfl

theorem node1530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1530 value5 value1 value2 = (output1530, value769, value1) := by
  rw [input1530_def, output1530_def]
  kernel_rfl

theorem node1531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1531 value769 value1 value2 = (output1531, value770, value1) := by
  rw [input1531_def, output1531_def]
  kernel_rfl

theorem node1532_cond_eq
    (child1530 : Flapjack.WordAlloc.removeDeadStructural input1530 value5 value1 value2 = (output1530, value769, value1))
    (child1531 : Flapjack.WordAlloc.removeDeadStructural input1531 value769 value1 value2 = (output1531, value770, value1)) : Flapjack.WordAlloc.removeDeadStructural input1532 value5 value1 value2 = (output1532, value770, value1) := by
  rw [input1532_def, output1532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1530]
  try dsimp only
  rw [child1531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1530_skip, output1531_skip]
  kernel_rfl

theorem node1533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1533 value770 value1 value2 = (output1533, value771, value1) := by
  rw [input1533_def, output1533_def]
  kernel_rfl

theorem node1534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1534 value771 value1 value2 = (output1534, value771, value1) := by
  rw [input1534_def, output1534_def]
  kernel_rfl

theorem node1535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1535 value771 value1 value2 = (output1535, value772, value1) := by
  rw [input1535_def, output1535_def]
  kernel_rfl

#print axioms node1535_cond_eq
end InitECandidate.Proofs.DeadStages240.Parallel
