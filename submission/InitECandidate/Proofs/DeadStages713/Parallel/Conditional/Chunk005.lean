import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node1280_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value644 value1 value2 = (output1278, value645, value1))
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value645 value1 value2 = (output1279, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1280 value644 value1 value2 = (output1280, value5, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  dsimp only
  rw [child1279]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output1279_skip]
  kernel_rfl

theorem node1281_cond_eq
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value643 value1 value2 = (output1277, value644, value1))
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value644 value1 value2 = (output1280, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1281 value643 value1 value2 = (output1281, value5, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1277]
  dsimp only
  rw [child1280]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1277_skip, output1280_skip]
  kernel_rfl

theorem node1282_cond_eq
    (child1276 : Flapjack.WordAlloc.removeDeadStructural input1276 value642 value1 value2 = (output1276, value643, value1))
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value643 value1 value2 = (output1281, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1282 value642 value1 value2 = (output1282, value5, value1) := by
  rw [input1282_def, output1282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1276]
  dsimp only
  rw [child1281]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1276_skip, output1281_skip]
  kernel_rfl

theorem node1283_cond_eq
    (child1275 : Flapjack.WordAlloc.removeDeadStructural input1275 value640 value1 value2 = (output1275, value642, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value642 value1 value2 = (output1282, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value640 value1 value2 = (output1283, value5, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1275]
  dsimp only
  rw [child1282]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1275_skip, output1282_skip]
  kernel_rfl

theorem node1284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value5 value1 value2 = (output1284, value646, value1) := by
  rw [input1284_def, output1284_def]
  kernel_rfl

theorem node1285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value646 value1 value2 = (output1285, value647, value1) := by
  rw [input1285_def, output1285_def]
  kernel_rfl

theorem node1286_cond_eq
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value5 value1 value2 = (output1284, value646, value1))
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value646 value1 value2 = (output1285, value647, value1)) : Flapjack.WordAlloc.removeDeadStructural input1286 value5 value1 value2 = (output1286, value647, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1284]
  dsimp only
  rw [child1285]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1284_skip, output1285_skip]
  kernel_rfl

theorem node1287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1287 value647 value1 value2 = (output1287, value648, value1) := by
  rw [input1287_def, output1287_def]
  kernel_rfl

theorem node1288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1288 value648 value1 value2 = (output1288, value648, value1) := by
  rw [input1288_def, output1288_def]
  kernel_rfl

theorem node1289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1289 value648 value1 value2 = (output1289, value649, value1) := by
  rw [input1289_def, output1289_def]
  kernel_rfl

theorem node1290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1290 value649 value1 value2 = (output1290, value650, value1) := by
  rw [input1290_def, output1290_def]
  kernel_rfl

theorem node1291_cond_eq
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value648 value1 value2 = (output1289, value649, value1))
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value649 value1 value2 = (output1290, value650, value1)) : Flapjack.WordAlloc.removeDeadStructural input1291 value648 value1 value2 = (output1291, value650, value1) := by
  rw [input1291_def, output1291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1289]
  dsimp only
  rw [child1290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1289_skip, output1290_skip]
  kernel_rfl

theorem node1292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1292 value650 value1 value2 = (output1292, value651, value1) := by
  rw [input1292_def, output1292_def]
  kernel_rfl

theorem node1293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1293 value651 value1 value2 = (output1293, value652, value1) := by
  rw [input1293_def, output1293_def]
  kernel_rfl

theorem node1294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1294 value652 value1 value2 = (output1294, value653, value1) := by
  rw [input1294_def, output1294_def]
  kernel_rfl

theorem node1295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1295 value653 value1 value2 = (output1295, value5, value1) := by
  rw [input1295_def, output1295_def]
  kernel_rfl

theorem node1296_cond_eq
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value652 value1 value2 = (output1294, value653, value1))
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value653 value1 value2 = (output1295, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1296 value652 value1 value2 = (output1296, value5, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1294]
  dsimp only
  rw [child1295]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1294_skip, output1295_skip]
  kernel_rfl

theorem node1297_cond_eq
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value651 value1 value2 = (output1293, value652, value1))
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value652 value1 value2 = (output1296, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1297 value651 value1 value2 = (output1297, value5, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1293]
  dsimp only
  rw [child1296]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1293_skip, output1296_skip]
  kernel_rfl

theorem node1298_cond_eq
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value650 value1 value2 = (output1292, value651, value1))
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value651 value1 value2 = (output1297, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1298 value650 value1 value2 = (output1298, value5, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1292]
  dsimp only
  rw [child1297]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1292_skip, output1297_skip]
  kernel_rfl

theorem node1299_cond_eq
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value648 value1 value2 = (output1291, value650, value1))
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value650 value1 value2 = (output1298, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1299 value648 value1 value2 = (output1299, value5, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1291]
  dsimp only
  rw [child1298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1291_skip, output1298_skip]
  kernel_rfl

theorem node1300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1300 value5 value1 value2 = (output1300, value654, value1) := by
  rw [input1300_def, output1300_def]
  kernel_rfl

theorem node1301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1301 value654 value1 value2 = (output1301, value655, value1) := by
  rw [input1301_def, output1301_def]
  kernel_rfl

theorem node1302_cond_eq
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value5 value1 value2 = (output1300, value654, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value654 value1 value2 = (output1301, value655, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value5 value1 value2 = (output1302, value655, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1300]
  dsimp only
  rw [child1301]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1300_skip, output1301_skip]
  kernel_rfl

theorem node1303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1303 value655 value1 value2 = (output1303, value656, value1) := by
  rw [input1303_def, output1303_def]
  kernel_rfl

theorem node1304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1304 value656 value1 value2 = (output1304, value656, value1) := by
  rw [input1304_def, output1304_def]
  kernel_rfl

theorem node1305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1305 value656 value1 value2 = (output1305, value657, value1) := by
  rw [input1305_def, output1305_def]
  kernel_rfl

theorem node1306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1306 value657 value1 value2 = (output1306, value658, value1) := by
  rw [input1306_def, output1306_def]
  kernel_rfl

theorem node1307_cond_eq
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value656 value1 value2 = (output1305, value657, value1))
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value657 value1 value2 = (output1306, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input1307 value656 value1 value2 = (output1307, value658, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1305]
  dsimp only
  rw [child1306]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1305_skip, output1306_skip]
  kernel_rfl

theorem node1308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1308 value658 value1 value2 = (output1308, value659, value1) := by
  rw [input1308_def, output1308_def]
  kernel_rfl

theorem node1309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1309 value659 value1 value2 = (output1309, value660, value1) := by
  rw [input1309_def, output1309_def]
  kernel_rfl

theorem node1310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1310 value660 value1 value2 = (output1310, value661, value1) := by
  rw [input1310_def, output1310_def]
  kernel_rfl

theorem node1311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1311 value661 value1 value2 = (output1311, value5, value1) := by
  rw [input1311_def, output1311_def]
  kernel_rfl

theorem node1312_cond_eq
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value660 value1 value2 = (output1310, value661, value1))
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value661 value1 value2 = (output1311, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1312 value660 value1 value2 = (output1312, value5, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1310]
  dsimp only
  rw [child1311]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1310_skip, output1311_skip]
  kernel_rfl

theorem node1313_cond_eq
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value659 value1 value2 = (output1309, value660, value1))
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value660 value1 value2 = (output1312, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1313 value659 value1 value2 = (output1313, value5, value1) := by
  rw [input1313_def, output1313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1309]
  dsimp only
  rw [child1312]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1309_skip, output1312_skip]
  kernel_rfl

theorem node1314_cond_eq
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value658 value1 value2 = (output1308, value659, value1))
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value659 value1 value2 = (output1313, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1314 value658 value1 value2 = (output1314, value5, value1) := by
  rw [input1314_def, output1314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1308]
  dsimp only
  rw [child1313]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1308_skip, output1313_skip]
  kernel_rfl

theorem node1315_cond_eq
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value656 value1 value2 = (output1307, value658, value1))
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value658 value1 value2 = (output1314, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1315 value656 value1 value2 = (output1315, value5, value1) := by
  rw [input1315_def, output1315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1307]
  dsimp only
  rw [child1314]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1307_skip, output1314_skip]
  kernel_rfl

theorem node1316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1316 value5 value1 value2 = (output1316, value662, value1) := by
  rw [input1316_def, output1316_def]
  kernel_rfl

theorem node1317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1317 value662 value1 value2 = (output1317, value663, value1) := by
  rw [input1317_def, output1317_def]
  kernel_rfl

theorem node1318_cond_eq
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value5 value1 value2 = (output1316, value662, value1))
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value662 value1 value2 = (output1317, value663, value1)) : Flapjack.WordAlloc.removeDeadStructural input1318 value5 value1 value2 = (output1318, value663, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1316]
  dsimp only
  rw [child1317]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1316_skip, output1317_skip]
  kernel_rfl

theorem node1319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1319 value663 value1 value2 = (output1319, value664, value1) := by
  rw [input1319_def, output1319_def]
  kernel_rfl

theorem node1320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1320 value664 value1 value2 = (output1320, value664, value1) := by
  rw [input1320_def, output1320_def]
  kernel_rfl

theorem node1321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1321 value664 value1 value2 = (output1321, value665, value1) := by
  rw [input1321_def, output1321_def]
  kernel_rfl

theorem node1322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1322 value665 value1 value2 = (output1322, value666, value1) := by
  rw [input1322_def, output1322_def]
  kernel_rfl

theorem node1323_cond_eq
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value664 value1 value2 = (output1321, value665, value1))
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value665 value1 value2 = (output1322, value666, value1)) : Flapjack.WordAlloc.removeDeadStructural input1323 value664 value1 value2 = (output1323, value666, value1) := by
  rw [input1323_def, output1323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1321]
  dsimp only
  rw [child1322]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1321_skip, output1322_skip]
  kernel_rfl

theorem node1324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1324 value666 value1 value2 = (output1324, value667, value1) := by
  rw [input1324_def, output1324_def]
  kernel_rfl

theorem node1325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1325 value667 value1 value2 = (output1325, value668, value1) := by
  rw [input1325_def, output1325_def]
  kernel_rfl

theorem node1326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1326 value668 value1 value2 = (output1326, value669, value1) := by
  rw [input1326_def, output1326_def]
  kernel_rfl

theorem node1327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1327 value669 value1 value2 = (output1327, value5, value1) := by
  rw [input1327_def, output1327_def]
  kernel_rfl

theorem node1328_cond_eq
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value668 value1 value2 = (output1326, value669, value1))
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value669 value1 value2 = (output1327, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1328 value668 value1 value2 = (output1328, value5, value1) := by
  rw [input1328_def, output1328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1326]
  dsimp only
  rw [child1327]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1326_skip, output1327_skip]
  kernel_rfl

theorem node1329_cond_eq
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value667 value1 value2 = (output1325, value668, value1))
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value668 value1 value2 = (output1328, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1329 value667 value1 value2 = (output1329, value5, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1325]
  dsimp only
  rw [child1328]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1325_skip, output1328_skip]
  kernel_rfl

theorem node1330_cond_eq
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value666 value1 value2 = (output1324, value667, value1))
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value667 value1 value2 = (output1329, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1330 value666 value1 value2 = (output1330, value5, value1) := by
  rw [input1330_def, output1330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1324]
  dsimp only
  rw [child1329]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1324_skip, output1329_skip]
  kernel_rfl

theorem node1331_cond_eq
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value664 value1 value2 = (output1323, value666, value1))
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value666 value1 value2 = (output1330, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1331 value664 value1 value2 = (output1331, value5, value1) := by
  rw [input1331_def, output1331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1323]
  dsimp only
  rw [child1330]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1323_skip, output1330_skip]
  kernel_rfl

theorem node1332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1332 value5 value1 value2 = (output1332, value670, value1) := by
  rw [input1332_def, output1332_def]
  kernel_rfl

theorem node1333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1333 value670 value1 value2 = (output1333, value671, value1) := by
  rw [input1333_def, output1333_def]
  kernel_rfl

theorem node1334_cond_eq
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value5 value1 value2 = (output1332, value670, value1))
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value670 value1 value2 = (output1333, value671, value1)) : Flapjack.WordAlloc.removeDeadStructural input1334 value5 value1 value2 = (output1334, value671, value1) := by
  rw [input1334_def, output1334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1332]
  dsimp only
  rw [child1333]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1332_skip, output1333_skip]
  kernel_rfl

theorem node1335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1335 value671 value1 value2 = (output1335, value672, value1) := by
  rw [input1335_def, output1335_def]
  kernel_rfl

theorem node1336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1336 value672 value1 value2 = (output1336, value672, value1) := by
  rw [input1336_def, output1336_def]
  kernel_rfl

theorem node1337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1337 value672 value1 value2 = (output1337, value673, value1) := by
  rw [input1337_def, output1337_def]
  kernel_rfl

theorem node1338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1338 value673 value1 value2 = (output1338, value674, value1) := by
  rw [input1338_def, output1338_def]
  kernel_rfl

theorem node1339_cond_eq
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value672 value1 value2 = (output1337, value673, value1))
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value673 value1 value2 = (output1338, value674, value1)) : Flapjack.WordAlloc.removeDeadStructural input1339 value672 value1 value2 = (output1339, value674, value1) := by
  rw [input1339_def, output1339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1337]
  dsimp only
  rw [child1338]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1337_skip, output1338_skip]
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
  dsimp only
  rw [child1343]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1342_skip, output1343_skip]
  kernel_rfl

theorem node1345_cond_eq
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value675 value1 value2 = (output1341, value676, value1))
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value676 value1 value2 = (output1344, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1345 value675 value1 value2 = (output1345, value5, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1341]
  dsimp only
  rw [child1344]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1341_skip, output1344_skip]
  kernel_rfl

theorem node1346_cond_eq
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value674 value1 value2 = (output1340, value675, value1))
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value675 value1 value2 = (output1345, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1346 value674 value1 value2 = (output1346, value5, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1340]
  dsimp only
  rw [child1345]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1340_skip, output1345_skip]
  kernel_rfl

theorem node1347_cond_eq
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value672 value1 value2 = (output1339, value674, value1))
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value674 value1 value2 = (output1346, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1347 value672 value1 value2 = (output1347, value5, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1339]
  dsimp only
  rw [child1346]
  dsimp only
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
  dsimp only
  rw [child1349]
  dsimp only
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

theorem node1355_cond_eq
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value680 value1 value2 = (output1353, value681, value1))
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value681 value1 value2 = (output1354, value682, value1)) : Flapjack.WordAlloc.removeDeadStructural input1355 value680 value1 value2 = (output1355, value682, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1353]
  dsimp only
  rw [child1354]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1353_skip, output1354_skip]
  kernel_rfl

theorem node1356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1356 value682 value1 value2 = (output1356, value683, value1) := by
  rw [input1356_def, output1356_def]
  kernel_rfl

theorem node1357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1357 value683 value1 value2 = (output1357, value684, value1) := by
  rw [input1357_def, output1357_def]
  kernel_rfl

theorem node1358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1358 value684 value1 value2 = (output1358, value685, value1) := by
  rw [input1358_def, output1358_def]
  kernel_rfl

theorem node1359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1359 value685 value1 value2 = (output1359, value5, value1) := by
  rw [input1359_def, output1359_def]
  kernel_rfl

theorem node1360_cond_eq
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value684 value1 value2 = (output1358, value685, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value685 value1 value2 = (output1359, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value684 value1 value2 = (output1360, value5, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1358]
  dsimp only
  rw [child1359]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1358_skip, output1359_skip]
  kernel_rfl

theorem node1361_cond_eq
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value683 value1 value2 = (output1357, value684, value1))
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value684 value1 value2 = (output1360, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1361 value683 value1 value2 = (output1361, value5, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1357]
  dsimp only
  rw [child1360]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1357_skip, output1360_skip]
  kernel_rfl

theorem node1362_cond_eq
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value682 value1 value2 = (output1356, value683, value1))
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value683 value1 value2 = (output1361, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1362 value682 value1 value2 = (output1362, value5, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1356]
  dsimp only
  rw [child1361]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1356_skip, output1361_skip]
  kernel_rfl

theorem node1363_cond_eq
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value680 value1 value2 = (output1355, value682, value1))
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value682 value1 value2 = (output1362, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1363 value680 value1 value2 = (output1363, value5, value1) := by
  rw [input1363_def, output1363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1355]
  dsimp only
  rw [child1362]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1355_skip, output1362_skip]
  kernel_rfl

theorem node1364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1364 value5 value1 value2 = (output1364, value686, value1) := by
  rw [input1364_def, output1364_def]
  kernel_rfl

theorem node1365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1365 value686 value1 value2 = (output1365, value687, value1) := by
  rw [input1365_def, output1365_def]
  kernel_rfl

theorem node1366_cond_eq
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value5 value1 value2 = (output1364, value686, value1))
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value686 value1 value2 = (output1365, value687, value1)) : Flapjack.WordAlloc.removeDeadStructural input1366 value5 value1 value2 = (output1366, value687, value1) := by
  rw [input1366_def, output1366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1364]
  dsimp only
  rw [child1365]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1364_skip, output1365_skip]
  kernel_rfl

theorem node1367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1367 value687 value1 value2 = (output1367, value688, value1) := by
  rw [input1367_def, output1367_def]
  kernel_rfl

theorem node1368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1368 value688 value1 value2 = (output1368, value688, value1) := by
  rw [input1368_def, output1368_def]
  kernel_rfl

theorem node1369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1369 value688 value1 value2 = (output1369, value689, value1) := by
  rw [input1369_def, output1369_def]
  kernel_rfl

theorem node1370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1370 value689 value1 value2 = (output1370, value690, value1) := by
  rw [input1370_def, output1370_def]
  kernel_rfl

theorem node1371_cond_eq
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value688 value1 value2 = (output1369, value689, value1))
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value689 value1 value2 = (output1370, value690, value1)) : Flapjack.WordAlloc.removeDeadStructural input1371 value688 value1 value2 = (output1371, value690, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1369]
  dsimp only
  rw [child1370]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1369_skip, output1370_skip]
  kernel_rfl

theorem node1372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1372 value690 value1 value2 = (output1372, value691, value1) := by
  rw [input1372_def, output1372_def]
  kernel_rfl

theorem node1373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1373 value691 value1 value2 = (output1373, value692, value1) := by
  rw [input1373_def, output1373_def]
  kernel_rfl

theorem node1374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1374 value692 value1 value2 = (output1374, value693, value1) := by
  rw [input1374_def, output1374_def]
  kernel_rfl

theorem node1375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1375 value693 value1 value2 = (output1375, value5, value1) := by
  rw [input1375_def, output1375_def]
  kernel_rfl

theorem node1376_cond_eq
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value692 value1 value2 = (output1374, value693, value1))
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value693 value1 value2 = (output1375, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1376 value692 value1 value2 = (output1376, value5, value1) := by
  rw [input1376_def, output1376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1374]
  dsimp only
  rw [child1375]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1374_skip, output1375_skip]
  kernel_rfl

theorem node1377_cond_eq
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value691 value1 value2 = (output1373, value692, value1))
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value692 value1 value2 = (output1376, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1377 value691 value1 value2 = (output1377, value5, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1373]
  dsimp only
  rw [child1376]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1373_skip, output1376_skip]
  kernel_rfl

theorem node1378_cond_eq
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value690 value1 value2 = (output1372, value691, value1))
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value691 value1 value2 = (output1377, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1378 value690 value1 value2 = (output1378, value5, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1372]
  dsimp only
  rw [child1377]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1372_skip, output1377_skip]
  kernel_rfl

theorem node1379_cond_eq
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value688 value1 value2 = (output1371, value690, value1))
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value690 value1 value2 = (output1378, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1379 value688 value1 value2 = (output1379, value5, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1371]
  dsimp only
  rw [child1378]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1371_skip, output1378_skip]
  kernel_rfl

theorem node1380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1380 value5 value1 value2 = (output1380, value694, value1) := by
  rw [input1380_def, output1380_def]
  kernel_rfl

theorem node1381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1381 value694 value1 value2 = (output1381, value695, value1) := by
  rw [input1381_def, output1381_def]
  kernel_rfl

theorem node1382_cond_eq
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value5 value1 value2 = (output1380, value694, value1))
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value694 value1 value2 = (output1381, value695, value1)) : Flapjack.WordAlloc.removeDeadStructural input1382 value5 value1 value2 = (output1382, value695, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1380]
  dsimp only
  rw [child1381]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1380_skip, output1381_skip]
  kernel_rfl

theorem node1383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1383 value695 value1 value2 = (output1383, value696, value1) := by
  rw [input1383_def, output1383_def]
  kernel_rfl

theorem node1384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1384 value696 value1 value2 = (output1384, value696, value1) := by
  rw [input1384_def, output1384_def]
  kernel_rfl

theorem node1385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1385 value696 value1 value2 = (output1385, value697, value1) := by
  rw [input1385_def, output1385_def]
  kernel_rfl

theorem node1386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1386 value697 value1 value2 = (output1386, value698, value1) := by
  rw [input1386_def, output1386_def]
  kernel_rfl

theorem node1387_cond_eq
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value696 value1 value2 = (output1385, value697, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value697 value1 value2 = (output1386, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value696 value1 value2 = (output1387, value698, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1385]
  dsimp only
  rw [child1386]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1385_skip, output1386_skip]
  kernel_rfl

theorem node1388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1388 value698 value1 value2 = (output1388, value699, value1) := by
  rw [input1388_def, output1388_def]
  kernel_rfl

theorem node1389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1389 value699 value1 value2 = (output1389, value700, value1) := by
  rw [input1389_def, output1389_def]
  kernel_rfl

theorem node1390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1390 value700 value1 value2 = (output1390, value701, value1) := by
  rw [input1390_def, output1390_def]
  kernel_rfl

theorem node1391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1391 value701 value1 value2 = (output1391, value5, value1) := by
  rw [input1391_def, output1391_def]
  kernel_rfl

theorem node1392_cond_eq
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value700 value1 value2 = (output1390, value701, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value701 value1 value2 = (output1391, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value700 value1 value2 = (output1392, value5, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1390]
  dsimp only
  rw [child1391]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1390_skip, output1391_skip]
  kernel_rfl

theorem node1393_cond_eq
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value699 value1 value2 = (output1389, value700, value1))
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value700 value1 value2 = (output1392, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1393 value699 value1 value2 = (output1393, value5, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1389]
  dsimp only
  rw [child1392]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1389_skip, output1392_skip]
  kernel_rfl

theorem node1394_cond_eq
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value698 value1 value2 = (output1388, value699, value1))
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value699 value1 value2 = (output1393, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1394 value698 value1 value2 = (output1394, value5, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1388]
  dsimp only
  rw [child1393]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1388_skip, output1393_skip]
  kernel_rfl

theorem node1395_cond_eq
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value696 value1 value2 = (output1387, value698, value1))
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value698 value1 value2 = (output1394, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1395 value696 value1 value2 = (output1395, value5, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1387]
  dsimp only
  rw [child1394]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1387_skip, output1394_skip]
  kernel_rfl

theorem node1396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1396 value5 value1 value2 = (output1396, value702, value1) := by
  rw [input1396_def, output1396_def]
  kernel_rfl

theorem node1397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1397 value702 value1 value2 = (output1397, value703, value1) := by
  rw [input1397_def, output1397_def]
  kernel_rfl

theorem node1398_cond_eq
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value5 value1 value2 = (output1396, value702, value1))
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value702 value1 value2 = (output1397, value703, value1)) : Flapjack.WordAlloc.removeDeadStructural input1398 value5 value1 value2 = (output1398, value703, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1396]
  dsimp only
  rw [child1397]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1396_skip, output1397_skip]
  kernel_rfl

theorem node1399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1399 value703 value1 value2 = (output1399, value704, value1) := by
  rw [input1399_def, output1399_def]
  kernel_rfl

theorem node1400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1400 value704 value1 value2 = (output1400, value704, value1) := by
  rw [input1400_def, output1400_def]
  kernel_rfl

theorem node1401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1401 value704 value1 value2 = (output1401, value705, value1) := by
  rw [input1401_def, output1401_def]
  kernel_rfl

theorem node1402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1402 value705 value1 value2 = (output1402, value706, value1) := by
  rw [input1402_def, output1402_def]
  kernel_rfl

theorem node1403_cond_eq
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value704 value1 value2 = (output1401, value705, value1))
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value705 value1 value2 = (output1402, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1403 value704 value1 value2 = (output1403, value706, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1401]
  dsimp only
  rw [child1402]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1401_skip, output1402_skip]
  kernel_rfl

theorem node1404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1404 value706 value1 value2 = (output1404, value707, value1) := by
  rw [input1404_def, output1404_def]
  kernel_rfl

theorem node1405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1405 value707 value1 value2 = (output1405, value708, value1) := by
  rw [input1405_def, output1405_def]
  kernel_rfl

theorem node1406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1406 value708 value1 value2 = (output1406, value709, value1) := by
  rw [input1406_def, output1406_def]
  kernel_rfl

theorem node1407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1407 value709 value1 value2 = (output1407, value5, value1) := by
  rw [input1407_def, output1407_def]
  kernel_rfl

theorem node1408_cond_eq
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value708 value1 value2 = (output1406, value709, value1))
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value709 value1 value2 = (output1407, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1408 value708 value1 value2 = (output1408, value5, value1) := by
  rw [input1408_def, output1408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1406]
  dsimp only
  rw [child1407]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1406_skip, output1407_skip]
  kernel_rfl

theorem node1409_cond_eq
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value707 value1 value2 = (output1405, value708, value1))
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value708 value1 value2 = (output1408, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1409 value707 value1 value2 = (output1409, value5, value1) := by
  rw [input1409_def, output1409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1405]
  dsimp only
  rw [child1408]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1405_skip, output1408_skip]
  kernel_rfl

theorem node1410_cond_eq
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value706 value1 value2 = (output1404, value707, value1))
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value707 value1 value2 = (output1409, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1410 value706 value1 value2 = (output1410, value5, value1) := by
  rw [input1410_def, output1410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1404]
  dsimp only
  rw [child1409]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1404_skip, output1409_skip]
  kernel_rfl

theorem node1411_cond_eq
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value704 value1 value2 = (output1403, value706, value1))
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value706 value1 value2 = (output1410, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1411 value704 value1 value2 = (output1411, value5, value1) := by
  rw [input1411_def, output1411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1403]
  dsimp only
  rw [child1410]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1403_skip, output1410_skip]
  kernel_rfl

theorem node1412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1412 value5 value1 value2 = (output1412, value710, value1) := by
  rw [input1412_def, output1412_def]
  kernel_rfl

theorem node1413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1413 value710 value1 value2 = (output1413, value711, value1) := by
  rw [input1413_def, output1413_def]
  kernel_rfl

theorem node1414_cond_eq
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value5 value1 value2 = (output1412, value710, value1))
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value710 value1 value2 = (output1413, value711, value1)) : Flapjack.WordAlloc.removeDeadStructural input1414 value5 value1 value2 = (output1414, value711, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1412]
  dsimp only
  rw [child1413]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1412_skip, output1413_skip]
  kernel_rfl

theorem node1415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1415 value711 value1 value2 = (output1415, value712, value1) := by
  rw [input1415_def, output1415_def]
  kernel_rfl

theorem node1416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1416 value712 value1 value2 = (output1416, value712, value1) := by
  rw [input1416_def, output1416_def]
  kernel_rfl

theorem node1417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1417 value712 value1 value2 = (output1417, value713, value1) := by
  rw [input1417_def, output1417_def]
  kernel_rfl

theorem node1418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1418 value713 value1 value2 = (output1418, value714, value1) := by
  rw [input1418_def, output1418_def]
  kernel_rfl

theorem node1419_cond_eq
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value712 value1 value2 = (output1417, value713, value1))
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value713 value1 value2 = (output1418, value714, value1)) : Flapjack.WordAlloc.removeDeadStructural input1419 value712 value1 value2 = (output1419, value714, value1) := by
  rw [input1419_def, output1419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1417]
  dsimp only
  rw [child1418]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1417_skip, output1418_skip]
  kernel_rfl

theorem node1420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1420 value714 value1 value2 = (output1420, value715, value1) := by
  rw [input1420_def, output1420_def]
  kernel_rfl

theorem node1421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1421 value715 value1 value2 = (output1421, value716, value1) := by
  rw [input1421_def, output1421_def]
  kernel_rfl

theorem node1422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1422 value716 value1 value2 = (output1422, value717, value1) := by
  rw [input1422_def, output1422_def]
  kernel_rfl

theorem node1423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1423 value717 value1 value2 = (output1423, value5, value1) := by
  rw [input1423_def, output1423_def]
  kernel_rfl

theorem node1424_cond_eq
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value716 value1 value2 = (output1422, value717, value1))
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value717 value1 value2 = (output1423, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1424 value716 value1 value2 = (output1424, value5, value1) := by
  rw [input1424_def, output1424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1422]
  dsimp only
  rw [child1423]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1422_skip, output1423_skip]
  kernel_rfl

theorem node1425_cond_eq
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value715 value1 value2 = (output1421, value716, value1))
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value716 value1 value2 = (output1424, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1425 value715 value1 value2 = (output1425, value5, value1) := by
  rw [input1425_def, output1425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1421]
  dsimp only
  rw [child1424]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1421_skip, output1424_skip]
  kernel_rfl

theorem node1426_cond_eq
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value714 value1 value2 = (output1420, value715, value1))
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value715 value1 value2 = (output1425, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1426 value714 value1 value2 = (output1426, value5, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1420]
  dsimp only
  rw [child1425]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1420_skip, output1425_skip]
  kernel_rfl

theorem node1427_cond_eq
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value712 value1 value2 = (output1419, value714, value1))
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value714 value1 value2 = (output1426, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1427 value712 value1 value2 = (output1427, value5, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1419]
  dsimp only
  rw [child1426]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1419_skip, output1426_skip]
  kernel_rfl

theorem node1428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1428 value5 value1 value2 = (output1428, value718, value1) := by
  rw [input1428_def, output1428_def]
  kernel_rfl

theorem node1429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1429 value718 value1 value2 = (output1429, value719, value1) := by
  rw [input1429_def, output1429_def]
  kernel_rfl

theorem node1430_cond_eq
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value5 value1 value2 = (output1428, value718, value1))
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value718 value1 value2 = (output1429, value719, value1)) : Flapjack.WordAlloc.removeDeadStructural input1430 value5 value1 value2 = (output1430, value719, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1428]
  dsimp only
  rw [child1429]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1428_skip, output1429_skip]
  kernel_rfl

theorem node1431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1431 value719 value1 value2 = (output1431, value720, value1) := by
  rw [input1431_def, output1431_def]
  kernel_rfl

theorem node1432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1432 value720 value1 value2 = (output1432, value720, value1) := by
  rw [input1432_def, output1432_def]
  kernel_rfl

theorem node1433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1433 value720 value1 value2 = (output1433, value721, value1) := by
  rw [input1433_def, output1433_def]
  kernel_rfl

theorem node1434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1434 value721 value1 value2 = (output1434, value722, value1) := by
  rw [input1434_def, output1434_def]
  kernel_rfl

theorem node1435_cond_eq
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value720 value1 value2 = (output1433, value721, value1))
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value721 value1 value2 = (output1434, value722, value1)) : Flapjack.WordAlloc.removeDeadStructural input1435 value720 value1 value2 = (output1435, value722, value1) := by
  rw [input1435_def, output1435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1433]
  dsimp only
  rw [child1434]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1433_skip, output1434_skip]
  kernel_rfl

theorem node1436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1436 value722 value1 value2 = (output1436, value723, value1) := by
  rw [input1436_def, output1436_def]
  kernel_rfl

theorem node1437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1437 value723 value1 value2 = (output1437, value724, value1) := by
  rw [input1437_def, output1437_def]
  kernel_rfl

theorem node1438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1438 value724 value1 value2 = (output1438, value725, value1) := by
  rw [input1438_def, output1438_def]
  kernel_rfl

theorem node1439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1439 value725 value1 value2 = (output1439, value5, value1) := by
  rw [input1439_def, output1439_def]
  kernel_rfl

theorem node1440_cond_eq
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value724 value1 value2 = (output1438, value725, value1))
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value725 value1 value2 = (output1439, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1440 value724 value1 value2 = (output1440, value5, value1) := by
  rw [input1440_def, output1440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1438]
  dsimp only
  rw [child1439]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1438_skip, output1439_skip]
  kernel_rfl

theorem node1441_cond_eq
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value723 value1 value2 = (output1437, value724, value1))
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value724 value1 value2 = (output1440, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1441 value723 value1 value2 = (output1441, value5, value1) := by
  rw [input1441_def, output1441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1437]
  dsimp only
  rw [child1440]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1437_skip, output1440_skip]
  kernel_rfl

theorem node1442_cond_eq
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value722 value1 value2 = (output1436, value723, value1))
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value723 value1 value2 = (output1441, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1442 value722 value1 value2 = (output1442, value5, value1) := by
  rw [input1442_def, output1442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1436]
  dsimp only
  rw [child1441]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1436_skip, output1441_skip]
  kernel_rfl

theorem node1443_cond_eq
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value720 value1 value2 = (output1435, value722, value1))
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value722 value1 value2 = (output1442, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1443 value720 value1 value2 = (output1443, value5, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1435]
  dsimp only
  rw [child1442]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1435_skip, output1442_skip]
  kernel_rfl

theorem node1444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1444 value5 value1 value2 = (output1444, value726, value1) := by
  rw [input1444_def, output1444_def]
  kernel_rfl

theorem node1445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1445 value726 value1 value2 = (output1445, value727, value1) := by
  rw [input1445_def, output1445_def]
  kernel_rfl

theorem node1446_cond_eq
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value5 value1 value2 = (output1444, value726, value1))
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value726 value1 value2 = (output1445, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input1446 value5 value1 value2 = (output1446, value727, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1444]
  dsimp only
  rw [child1445]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1444_skip, output1445_skip]
  kernel_rfl

theorem node1447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1447 value727 value1 value2 = (output1447, value728, value1) := by
  rw [input1447_def, output1447_def]
  kernel_rfl

theorem node1448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1448 value728 value1 value2 = (output1448, value728, value1) := by
  rw [input1448_def, output1448_def]
  kernel_rfl

theorem node1449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1449 value728 value1 value2 = (output1449, value729, value1) := by
  rw [input1449_def, output1449_def]
  kernel_rfl

theorem node1450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1450 value729 value1 value2 = (output1450, value730, value1) := by
  rw [input1450_def, output1450_def]
  kernel_rfl

theorem node1451_cond_eq
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value728 value1 value2 = (output1449, value729, value1))
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value729 value1 value2 = (output1450, value730, value1)) : Flapjack.WordAlloc.removeDeadStructural input1451 value728 value1 value2 = (output1451, value730, value1) := by
  rw [input1451_def, output1451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1449]
  dsimp only
  rw [child1450]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1449_skip, output1450_skip]
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
  dsimp only
  rw [child1455]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1454_skip, output1455_skip]
  kernel_rfl

theorem node1457_cond_eq
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value731 value1 value2 = (output1453, value732, value1))
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value732 value1 value2 = (output1456, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1457 value731 value1 value2 = (output1457, value5, value1) := by
  rw [input1457_def, output1457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1453]
  dsimp only
  rw [child1456]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1453_skip, output1456_skip]
  kernel_rfl

theorem node1458_cond_eq
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value730 value1 value2 = (output1452, value731, value1))
    (child1457 : Flapjack.WordAlloc.removeDeadStructural input1457 value731 value1 value2 = (output1457, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1458 value730 value1 value2 = (output1458, value5, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1452]
  dsimp only
  rw [child1457]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1452_skip, output1457_skip]
  kernel_rfl

theorem node1459_cond_eq
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value728 value1 value2 = (output1451, value730, value1))
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value730 value1 value2 = (output1458, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1459 value728 value1 value2 = (output1459, value5, value1) := by
  rw [input1459_def, output1459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1451]
  dsimp only
  rw [child1458]
  dsimp only
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
  dsimp only
  rw [child1461]
  dsimp only
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

theorem node1467_cond_eq
    (child1465 : Flapjack.WordAlloc.removeDeadStructural input1465 value736 value1 value2 = (output1465, value737, value1))
    (child1466 : Flapjack.WordAlloc.removeDeadStructural input1466 value737 value1 value2 = (output1466, value738, value1)) : Flapjack.WordAlloc.removeDeadStructural input1467 value736 value1 value2 = (output1467, value738, value1) := by
  rw [input1467_def, output1467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1465]
  dsimp only
  rw [child1466]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1465_skip, output1466_skip]
  kernel_rfl

theorem node1468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1468 value738 value1 value2 = (output1468, value739, value1) := by
  rw [input1468_def, output1468_def]
  kernel_rfl

theorem node1469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1469 value739 value1 value2 = (output1469, value740, value1) := by
  rw [input1469_def, output1469_def]
  kernel_rfl

theorem node1470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1470 value740 value1 value2 = (output1470, value741, value1) := by
  rw [input1470_def, output1470_def]
  kernel_rfl

theorem node1471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1471 value741 value1 value2 = (output1471, value5, value1) := by
  rw [input1471_def, output1471_def]
  kernel_rfl

theorem node1472_cond_eq
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value740 value1 value2 = (output1470, value741, value1))
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value741 value1 value2 = (output1471, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1472 value740 value1 value2 = (output1472, value5, value1) := by
  rw [input1472_def, output1472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1470]
  dsimp only
  rw [child1471]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1470_skip, output1471_skip]
  kernel_rfl

theorem node1473_cond_eq
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value739 value1 value2 = (output1469, value740, value1))
    (child1472 : Flapjack.WordAlloc.removeDeadStructural input1472 value740 value1 value2 = (output1472, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1473 value739 value1 value2 = (output1473, value5, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1469]
  dsimp only
  rw [child1472]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1469_skip, output1472_skip]
  kernel_rfl

theorem node1474_cond_eq
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value738 value1 value2 = (output1468, value739, value1))
    (child1473 : Flapjack.WordAlloc.removeDeadStructural input1473 value739 value1 value2 = (output1473, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1474 value738 value1 value2 = (output1474, value5, value1) := by
  rw [input1474_def, output1474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1468]
  dsimp only
  rw [child1473]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1468_skip, output1473_skip]
  kernel_rfl

theorem node1475_cond_eq
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value736 value1 value2 = (output1467, value738, value1))
    (child1474 : Flapjack.WordAlloc.removeDeadStructural input1474 value738 value1 value2 = (output1474, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1475 value736 value1 value2 = (output1475, value5, value1) := by
  rw [input1475_def, output1475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1467]
  dsimp only
  rw [child1474]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1467_skip, output1474_skip]
  kernel_rfl

theorem node1476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1476 value5 value1 value2 = (output1476, value742, value1) := by
  rw [input1476_def, output1476_def]
  kernel_rfl

theorem node1477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1477 value742 value1 value2 = (output1477, value743, value1) := by
  rw [input1477_def, output1477_def]
  kernel_rfl

theorem node1478_cond_eq
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value5 value1 value2 = (output1476, value742, value1))
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value742 value1 value2 = (output1477, value743, value1)) : Flapjack.WordAlloc.removeDeadStructural input1478 value5 value1 value2 = (output1478, value743, value1) := by
  rw [input1478_def, output1478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1476]
  dsimp only
  rw [child1477]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1476_skip, output1477_skip]
  kernel_rfl

theorem node1479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1479 value743 value1 value2 = (output1479, value744, value1) := by
  rw [input1479_def, output1479_def]
  kernel_rfl

theorem node1480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1480 value744 value1 value2 = (output1480, value744, value1) := by
  rw [input1480_def, output1480_def]
  kernel_rfl

theorem node1481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1481 value744 value1 value2 = (output1481, value745, value1) := by
  rw [input1481_def, output1481_def]
  kernel_rfl

theorem node1482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1482 value745 value1 value2 = (output1482, value746, value1) := by
  rw [input1482_def, output1482_def]
  kernel_rfl

theorem node1483_cond_eq
    (child1481 : Flapjack.WordAlloc.removeDeadStructural input1481 value744 value1 value2 = (output1481, value745, value1))
    (child1482 : Flapjack.WordAlloc.removeDeadStructural input1482 value745 value1 value2 = (output1482, value746, value1)) : Flapjack.WordAlloc.removeDeadStructural input1483 value744 value1 value2 = (output1483, value746, value1) := by
  rw [input1483_def, output1483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1481]
  dsimp only
  rw [child1482]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1481_skip, output1482_skip]
  kernel_rfl

theorem node1484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1484 value746 value1 value2 = (output1484, value747, value1) := by
  rw [input1484_def, output1484_def]
  kernel_rfl

theorem node1485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1485 value747 value1 value2 = (output1485, value748, value1) := by
  rw [input1485_def, output1485_def]
  kernel_rfl

theorem node1486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1486 value748 value1 value2 = (output1486, value749, value1) := by
  rw [input1486_def, output1486_def]
  kernel_rfl

theorem node1487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1487 value749 value1 value2 = (output1487, value5, value1) := by
  rw [input1487_def, output1487_def]
  kernel_rfl

theorem node1488_cond_eq
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value748 value1 value2 = (output1486, value749, value1))
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value749 value1 value2 = (output1487, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1488 value748 value1 value2 = (output1488, value5, value1) := by
  rw [input1488_def, output1488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1486]
  dsimp only
  rw [child1487]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1486_skip, output1487_skip]
  kernel_rfl

theorem node1489_cond_eq
    (child1485 : Flapjack.WordAlloc.removeDeadStructural input1485 value747 value1 value2 = (output1485, value748, value1))
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value748 value1 value2 = (output1488, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1489 value747 value1 value2 = (output1489, value5, value1) := by
  rw [input1489_def, output1489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1485]
  dsimp only
  rw [child1488]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1485_skip, output1488_skip]
  kernel_rfl

theorem node1490_cond_eq
    (child1484 : Flapjack.WordAlloc.removeDeadStructural input1484 value746 value1 value2 = (output1484, value747, value1))
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value747 value1 value2 = (output1489, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1490 value746 value1 value2 = (output1490, value5, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1484]
  dsimp only
  rw [child1489]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1484_skip, output1489_skip]
  kernel_rfl

theorem node1491_cond_eq
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value744 value1 value2 = (output1483, value746, value1))
    (child1490 : Flapjack.WordAlloc.removeDeadStructural input1490 value746 value1 value2 = (output1490, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1491 value744 value1 value2 = (output1491, value5, value1) := by
  rw [input1491_def, output1491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1483]
  dsimp only
  rw [child1490]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1483_skip, output1490_skip]
  kernel_rfl

theorem node1492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1492 value5 value1 value2 = (output1492, value750, value1) := by
  rw [input1492_def, output1492_def]
  kernel_rfl

theorem node1493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1493 value750 value1 value2 = (output1493, value751, value1) := by
  rw [input1493_def, output1493_def]
  kernel_rfl

theorem node1494_cond_eq
    (child1492 : Flapjack.WordAlloc.removeDeadStructural input1492 value5 value1 value2 = (output1492, value750, value1))
    (child1493 : Flapjack.WordAlloc.removeDeadStructural input1493 value750 value1 value2 = (output1493, value751, value1)) : Flapjack.WordAlloc.removeDeadStructural input1494 value5 value1 value2 = (output1494, value751, value1) := by
  rw [input1494_def, output1494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1492]
  dsimp only
  rw [child1493]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1492_skip, output1493_skip]
  kernel_rfl

theorem node1495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1495 value751 value1 value2 = (output1495, value752, value1) := by
  rw [input1495_def, output1495_def]
  kernel_rfl

theorem node1496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1496 value752 value1 value2 = (output1496, value752, value1) := by
  rw [input1496_def, output1496_def]
  kernel_rfl

theorem node1497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1497 value752 value1 value2 = (output1497, value753, value1) := by
  rw [input1497_def, output1497_def]
  kernel_rfl

theorem node1498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1498 value753 value1 value2 = (output1498, value754, value1) := by
  rw [input1498_def, output1498_def]
  kernel_rfl

theorem node1499_cond_eq
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value752 value1 value2 = (output1497, value753, value1))
    (child1498 : Flapjack.WordAlloc.removeDeadStructural input1498 value753 value1 value2 = (output1498, value754, value1)) : Flapjack.WordAlloc.removeDeadStructural input1499 value752 value1 value2 = (output1499, value754, value1) := by
  rw [input1499_def, output1499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1497]
  dsimp only
  rw [child1498]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1497_skip, output1498_skip]
  kernel_rfl

theorem node1500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1500 value754 value1 value2 = (output1500, value755, value1) := by
  rw [input1500_def, output1500_def]
  kernel_rfl

theorem node1501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1501 value755 value1 value2 = (output1501, value756, value1) := by
  rw [input1501_def, output1501_def]
  kernel_rfl

theorem node1502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1502 value756 value1 value2 = (output1502, value757, value1) := by
  rw [input1502_def, output1502_def]
  kernel_rfl

theorem node1503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1503 value757 value1 value2 = (output1503, value5, value1) := by
  rw [input1503_def, output1503_def]
  kernel_rfl

theorem node1504_cond_eq
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value756 value1 value2 = (output1502, value757, value1))
    (child1503 : Flapjack.WordAlloc.removeDeadStructural input1503 value757 value1 value2 = (output1503, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1504 value756 value1 value2 = (output1504, value5, value1) := by
  rw [input1504_def, output1504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1502]
  dsimp only
  rw [child1503]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1502_skip, output1503_skip]
  kernel_rfl

theorem node1505_cond_eq
    (child1501 : Flapjack.WordAlloc.removeDeadStructural input1501 value755 value1 value2 = (output1501, value756, value1))
    (child1504 : Flapjack.WordAlloc.removeDeadStructural input1504 value756 value1 value2 = (output1504, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1505 value755 value1 value2 = (output1505, value5, value1) := by
  rw [input1505_def, output1505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1501]
  dsimp only
  rw [child1504]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1501_skip, output1504_skip]
  kernel_rfl

theorem node1506_cond_eq
    (child1500 : Flapjack.WordAlloc.removeDeadStructural input1500 value754 value1 value2 = (output1500, value755, value1))
    (child1505 : Flapjack.WordAlloc.removeDeadStructural input1505 value755 value1 value2 = (output1505, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1506 value754 value1 value2 = (output1506, value5, value1) := by
  rw [input1506_def, output1506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1500]
  dsimp only
  rw [child1505]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1500_skip, output1505_skip]
  kernel_rfl

theorem node1507_cond_eq
    (child1499 : Flapjack.WordAlloc.removeDeadStructural input1499 value752 value1 value2 = (output1499, value754, value1))
    (child1506 : Flapjack.WordAlloc.removeDeadStructural input1506 value754 value1 value2 = (output1506, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1507 value752 value1 value2 = (output1507, value5, value1) := by
  rw [input1507_def, output1507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1499]
  dsimp only
  rw [child1506]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1499_skip, output1506_skip]
  kernel_rfl

theorem node1508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1508 value5 value1 value2 = (output1508, value758, value1) := by
  rw [input1508_def, output1508_def]
  kernel_rfl

theorem node1509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1509 value758 value1 value2 = (output1509, value759, value1) := by
  rw [input1509_def, output1509_def]
  kernel_rfl

theorem node1510_cond_eq
    (child1508 : Flapjack.WordAlloc.removeDeadStructural input1508 value5 value1 value2 = (output1508, value758, value1))
    (child1509 : Flapjack.WordAlloc.removeDeadStructural input1509 value758 value1 value2 = (output1509, value759, value1)) : Flapjack.WordAlloc.removeDeadStructural input1510 value5 value1 value2 = (output1510, value759, value1) := by
  rw [input1510_def, output1510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1508]
  dsimp only
  rw [child1509]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1508_skip, output1509_skip]
  kernel_rfl

theorem node1511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1511 value759 value1 value2 = (output1511, value760, value1) := by
  rw [input1511_def, output1511_def]
  kernel_rfl

theorem node1512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1512 value760 value1 value2 = (output1512, value760, value1) := by
  rw [input1512_def, output1512_def]
  kernel_rfl

theorem node1513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1513 value760 value1 value2 = (output1513, value761, value1) := by
  rw [input1513_def, output1513_def]
  kernel_rfl

theorem node1514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1514 value761 value1 value2 = (output1514, value762, value1) := by
  rw [input1514_def, output1514_def]
  kernel_rfl

theorem node1515_cond_eq
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value760 value1 value2 = (output1513, value761, value1))
    (child1514 : Flapjack.WordAlloc.removeDeadStructural input1514 value761 value1 value2 = (output1514, value762, value1)) : Flapjack.WordAlloc.removeDeadStructural input1515 value760 value1 value2 = (output1515, value762, value1) := by
  rw [input1515_def, output1515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1513]
  dsimp only
  rw [child1514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1513_skip, output1514_skip]
  kernel_rfl

theorem node1516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1516 value762 value1 value2 = (output1516, value763, value1) := by
  rw [input1516_def, output1516_def]
  kernel_rfl

theorem node1517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1517 value763 value1 value2 = (output1517, value764, value1) := by
  rw [input1517_def, output1517_def]
  kernel_rfl

theorem node1518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1518 value764 value1 value2 = (output1518, value765, value1) := by
  rw [input1518_def, output1518_def]
  kernel_rfl

theorem node1519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1519 value765 value1 value2 = (output1519, value5, value1) := by
  rw [input1519_def, output1519_def]
  kernel_rfl

theorem node1520_cond_eq
    (child1518 : Flapjack.WordAlloc.removeDeadStructural input1518 value764 value1 value2 = (output1518, value765, value1))
    (child1519 : Flapjack.WordAlloc.removeDeadStructural input1519 value765 value1 value2 = (output1519, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1520 value764 value1 value2 = (output1520, value5, value1) := by
  rw [input1520_def, output1520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1518]
  dsimp only
  rw [child1519]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1518_skip, output1519_skip]
  kernel_rfl

theorem node1521_cond_eq
    (child1517 : Flapjack.WordAlloc.removeDeadStructural input1517 value763 value1 value2 = (output1517, value764, value1))
    (child1520 : Flapjack.WordAlloc.removeDeadStructural input1520 value764 value1 value2 = (output1520, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1521 value763 value1 value2 = (output1521, value5, value1) := by
  rw [input1521_def, output1521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1517]
  dsimp only
  rw [child1520]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1517_skip, output1520_skip]
  kernel_rfl

theorem node1522_cond_eq
    (child1516 : Flapjack.WordAlloc.removeDeadStructural input1516 value762 value1 value2 = (output1516, value763, value1))
    (child1521 : Flapjack.WordAlloc.removeDeadStructural input1521 value763 value1 value2 = (output1521, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1522 value762 value1 value2 = (output1522, value5, value1) := by
  rw [input1522_def, output1522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1516]
  dsimp only
  rw [child1521]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1516_skip, output1521_skip]
  kernel_rfl

theorem node1523_cond_eq
    (child1515 : Flapjack.WordAlloc.removeDeadStructural input1515 value760 value1 value2 = (output1515, value762, value1))
    (child1522 : Flapjack.WordAlloc.removeDeadStructural input1522 value762 value1 value2 = (output1522, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input1523 value760 value1 value2 = (output1523, value5, value1) := by
  rw [input1523_def, output1523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1515]
  dsimp only
  rw [child1522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1515_skip, output1522_skip]
  kernel_rfl

theorem node1524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1524 value5 value1 value2 = (output1524, value766, value1) := by
  rw [input1524_def, output1524_def]
  kernel_rfl

theorem node1525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1525 value766 value1 value2 = (output1525, value767, value1) := by
  rw [input1525_def, output1525_def]
  kernel_rfl

theorem node1526_cond_eq
    (child1524 : Flapjack.WordAlloc.removeDeadStructural input1524 value5 value1 value2 = (output1524, value766, value1))
    (child1525 : Flapjack.WordAlloc.removeDeadStructural input1525 value766 value1 value2 = (output1525, value767, value1)) : Flapjack.WordAlloc.removeDeadStructural input1526 value5 value1 value2 = (output1526, value767, value1) := by
  rw [input1526_def, output1526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1524]
  dsimp only
  rw [child1525]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1524_skip, output1525_skip]
  kernel_rfl

theorem node1527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1527 value767 value1 value2 = (output1527, value768, value1) := by
  rw [input1527_def, output1527_def]
  kernel_rfl

theorem node1528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1528 value768 value1 value2 = (output1528, value768, value1) := by
  rw [input1528_def, output1528_def]
  kernel_rfl

theorem node1529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1529 value768 value1 value2 = (output1529, value769, value1) := by
  rw [input1529_def, output1529_def]
  kernel_rfl

theorem node1530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1530 value769 value1 value2 = (output1530, value770, value1) := by
  rw [input1530_def, output1530_def]
  kernel_rfl

theorem node1531_cond_eq
    (child1529 : Flapjack.WordAlloc.removeDeadStructural input1529 value768 value1 value2 = (output1529, value769, value1))
    (child1530 : Flapjack.WordAlloc.removeDeadStructural input1530 value769 value1 value2 = (output1530, value770, value1)) : Flapjack.WordAlloc.removeDeadStructural input1531 value768 value1 value2 = (output1531, value770, value1) := by
  rw [input1531_def, output1531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1529]
  dsimp only
  rw [child1530]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1529_skip, output1530_skip]
  kernel_rfl

theorem node1532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1532 value770 value1 value2 = (output1532, value771, value1) := by
  rw [input1532_def, output1532_def]
  kernel_rfl

theorem node1533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1533 value771 value1 value2 = (output1533, value772, value1) := by
  rw [input1533_def, output1533_def]
  kernel_rfl

theorem node1534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1534 value772 value1 value2 = (output1534, value773, value1) := by
  rw [input1534_def, output1534_def]
  kernel_rfl

theorem node1535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1535 value773 value1 value2 = (output1535, value5, value1) := by
  rw [input1535_def, output1535_def]
  kernel_rfl

#print axioms node1535_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
