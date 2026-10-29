import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages862.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages862.Parallel
theorem node1280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1280 value282 value1 value234 = (output1280, value283, value1) := by
  rw [input1280_def, output1280_def]
  kernel_rfl

theorem node1281_cond_eq
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value281 value1 value234 = (output1279, value282, value1))
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value282 value1 value234 = (output1280, value283, value1)) : Flapjack.WordAlloc.removeDeadStructural input1281 value281 value1 value234 = (output1281, value283, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1279]
  try dsimp only
  rw [child1280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1279_skip, output1280_skip]
  kernel_rfl

theorem node1282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1282 value283 value1 value234 = (output1282, value284, value1) := by
  rw [input1282_def, output1282_def]
  kernel_rfl

theorem node1283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1283 value284 value1 value234 = (output1283, value284, value1) := by
  rw [input1283_def, output1283_def]
  kernel_rfl

theorem node1284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value284 value1 value234 = (output1284, value285, value1) := by
  rw [input1284_def, output1284_def]
  kernel_rfl

theorem node1285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value285 value1 value234 = (output1285, value286, value1) := by
  rw [input1285_def, output1285_def]
  kernel_rfl

theorem node1286_cond_eq
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value284 value1 value234 = (output1284, value285, value1))
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value285 value1 value234 = (output1285, value286, value1)) : Flapjack.WordAlloc.removeDeadStructural input1286 value284 value1 value234 = (output1286, value286, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1284]
  try dsimp only
  rw [child1285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1284_skip, output1285_skip]
  kernel_rfl

theorem node1287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1287 value286 value1 value234 = (output1287, value287, value1) := by
  rw [input1287_def, output1287_def]
  kernel_rfl

theorem node1288_cond_eq
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value284 value1 value234 = (output1286, value286, value1))
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value286 value1 value234 = (output1287, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input1288 value284 value1 value234 = (output1288, value287, value1) := by
  rw [input1288_def, output1288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1286]
  try dsimp only
  rw [child1287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1286_skip, output1287_skip]
  kernel_rfl

theorem node1289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1289 value287 value1 value234 = (output1289, value288, value1) := by
  rw [input1289_def, output1289_def]
  kernel_rfl

theorem node1290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1290 value288 value1 value234 = (output1290, value288, value1) := by
  rw [input1290_def, output1290_def]
  kernel_rfl

theorem node1291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1291 value288 value1 value234 = (output1291, value288, value1) := by
  rw [input1291_def, output1291_def]
  kernel_rfl

theorem node1292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1292 value288 value1 value234 = (output1292, value288, value1) := by
  rw [input1292_def, output1292_def]
  kernel_rfl

theorem node1293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1293 value288 value1 value234 = (output1293, value288, value1) := by
  rw [input1293_def, output1293_def]
  kernel_rfl

theorem node1294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1294 value288 value1 value234 = (output1294, value288, value1) := by
  rw [input1294_def, output1294_def]
  kernel_rfl

theorem node1295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1295 value288 value1 value234 = (output1295, value288, value1) := by
  rw [input1295_def, output1295_def]
  kernel_rfl

theorem node1296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1296 value288 value1 value234 = (output1296, value288, value1) := by
  rw [input1296_def, output1296_def]
  kernel_rfl

theorem node1297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1297 value288 value1 value234 = (output1297, value289, value1) := by
  rw [input1297_def, output1297_def]
  kernel_rfl

theorem node1298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1298 value289 value1 value234 = (output1298, value290, value1) := by
  rw [input1298_def, output1298_def]
  kernel_rfl

theorem node1299_cond_eq
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value288 value1 value234 = (output1297, value289, value1))
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value289 value1 value234 = (output1298, value290, value1)) : Flapjack.WordAlloc.removeDeadStructural input1299 value288 value1 value234 = (output1299, value290, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1297]
  try dsimp only
  rw [child1298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1297_skip, output1298_skip]
  kernel_rfl

theorem node1300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1300 value290 value1 value234 = (output1300, value291, value1) := by
  rw [input1300_def, output1300_def]
  kernel_rfl

theorem node1301_cond_eq
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value288 value1 value234 = (output1299, value290, value1))
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value290 value1 value234 = (output1300, value291, value1)) : Flapjack.WordAlloc.removeDeadStructural input1301 value288 value1 value234 = (output1301, value291, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1299]
  try dsimp only
  rw [child1300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1299_skip, output1300_skip]
  kernel_rfl

theorem node1302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1302 value291 value1 value234 = (output1302, value292, value1) := by
  rw [input1302_def, output1302_def]
  kernel_rfl

theorem node1303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1303 value292 value1 value234 = (output1303, value293, value1) := by
  rw [input1303_def, output1303_def]
  kernel_rfl

theorem node1304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1304 value293 value1 value234 = (output1304, value294, value1) := by
  rw [input1304_def, output1304_def]
  kernel_rfl

theorem node1305_cond_eq
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value292 value1 value234 = (output1303, value293, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value293 value1 value234 = (output1304, value294, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value292 value1 value234 = (output1305, value294, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1303]
  try dsimp only
  rw [child1304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1303_skip, output1304_skip]
  kernel_rfl

theorem node1306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1306 value294 value1 value234 = (output1306, value295, value1) := by
  rw [input1306_def, output1306_def]
  kernel_rfl

theorem node1307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1307 value295 value1 value234 = (output1307, value296, value1) := by
  rw [input1307_def, output1307_def]
  kernel_rfl

theorem node1308_cond_eq
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value294 value1 value234 = (output1306, value295, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value295 value1 value234 = (output1307, value296, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value294 value1 value234 = (output1308, value296, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1306]
  try dsimp only
  rw [child1307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1306_skip, output1307_skip]
  kernel_rfl

theorem node1309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1309 value296 value1 value234 = (output1309, value296, value1) := by
  rw [input1309_def, output1309_def]
  kernel_rfl

theorem node1310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1310 value296 value1 value234 = (output1310, value297, value1) := by
  rw [input1310_def, output1310_def]
  kernel_rfl

theorem node1311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1311 value297 value1 value234 = (output1311, value298, value1) := by
  rw [input1311_def, output1311_def]
  kernel_rfl

theorem node1312_cond_eq
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value296 value1 value234 = (output1310, value297, value1))
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value297 value1 value234 = (output1311, value298, value1)) : Flapjack.WordAlloc.removeDeadStructural input1312 value296 value1 value234 = (output1312, value298, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1310]
  try dsimp only
  rw [child1311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1310_skip, output1311_skip]
  kernel_rfl

theorem node1313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1313 value298 value1 value234 = (output1313, value299, value1) := by
  rw [input1313_def, output1313_def]
  kernel_rfl

theorem node1314_cond_eq
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value296 value1 value234 = (output1312, value298, value1))
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value298 value1 value234 = (output1313, value299, value1)) : Flapjack.WordAlloc.removeDeadStructural input1314 value296 value1 value234 = (output1314, value299, value1) := by
  rw [input1314_def, output1314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1312]
  try dsimp only
  rw [child1313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1312_skip, output1313_skip]
  kernel_rfl

theorem node1315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1315 value299 value1 value234 = (output1315, value300, value1) := by
  rw [input1315_def, output1315_def]
  kernel_rfl

theorem node1316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1316 value300 value1 value234 = (output1316, value301, value1) := by
  rw [input1316_def, output1316_def]
  kernel_rfl

theorem node1317_cond_eq
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value299 value1 value234 = (output1315, value300, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value300 value1 value234 = (output1316, value301, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value299 value1 value234 = (output1317, value301, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1315]
  try dsimp only
  rw [child1316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1315_skip, output1316_skip]
  kernel_rfl

theorem node1318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1318 value301 value1 value234 = (output1318, value302, value1) := by
  rw [input1318_def, output1318_def]
  kernel_rfl

theorem node1319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1319 value302 value1 value234 = (output1319, value303, value1) := by
  rw [input1319_def, output1319_def]
  kernel_rfl

theorem node1320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1320 value303 value1 value234 = (output1320, value304, value1) := by
  rw [input1320_def, output1320_def]
  kernel_rfl

theorem node1321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1321 value304 value1 value234 = (output1321, value305, value1) := by
  rw [input1321_def, output1321_def]
  kernel_rfl

theorem node1322_cond_eq
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value303 value1 value234 = (output1320, value304, value1))
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value304 value1 value234 = (output1321, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1322 value303 value1 value234 = (output1322, value305, value1) := by
  rw [input1322_def, output1322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1320]
  try dsimp only
  rw [child1321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1320_skip, output1321_skip]
  kernel_rfl

theorem node1323_cond_eq
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value302 value1 value234 = (output1319, value303, value1))
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value303 value1 value234 = (output1322, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1323 value302 value1 value234 = (output1323, value305, value1) := by
  rw [input1323_def, output1323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1319]
  try dsimp only
  rw [child1322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1319_skip, output1322_skip]
  kernel_rfl

theorem node1324_cond_eq
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value301 value1 value234 = (output1318, value302, value1))
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value302 value1 value234 = (output1323, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1324 value301 value1 value234 = (output1324, value305, value1) := by
  rw [input1324_def, output1324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1318]
  try dsimp only
  rw [child1323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1318_skip, output1323_skip]
  kernel_rfl

theorem node1325_cond_eq
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value299 value1 value234 = (output1317, value301, value1))
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value301 value1 value234 = (output1324, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1325 value299 value1 value234 = (output1325, value305, value1) := by
  rw [input1325_def, output1325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1317]
  try dsimp only
  rw [child1324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1317_skip, output1324_skip]
  kernel_rfl

theorem node1326_cond_eq
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value296 value1 value234 = (output1314, value299, value1))
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value299 value1 value234 = (output1325, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1326 value296 value1 value234 = (output1326, value305, value1) := by
  rw [input1326_def, output1326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1314]
  try dsimp only
  rw [child1325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1314_skip, output1325_skip]
  kernel_rfl

theorem node1327_cond_eq
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value296 value1 value234 = (output1309, value296, value1))
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value296 value1 value234 = (output1326, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1327 value296 value1 value234 = (output1327, value305, value1) := by
  rw [input1327_def, output1327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1309]
  try dsimp only
  rw [child1326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1309_skip, output1326_skip]
  kernel_rfl

theorem node1328_cond_eq
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value294 value1 value234 = (output1308, value296, value1))
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value296 value1 value234 = (output1327, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1328 value294 value1 value234 = (output1328, value305, value1) := by
  rw [input1328_def, output1328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1308]
  try dsimp only
  rw [child1327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1308_skip, output1327_skip]
  kernel_rfl

theorem node1329_cond_eq
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value292 value1 value234 = (output1305, value294, value1))
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value294 value1 value234 = (output1328, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1329 value292 value1 value234 = (output1329, value305, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1305]
  try dsimp only
  rw [child1328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1305_skip, output1328_skip]
  kernel_rfl

theorem node1330_cond_eq
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value291 value1 value234 = (output1302, value292, value1))
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value292 value1 value234 = (output1329, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1330 value291 value1 value234 = (output1330, value305, value1) := by
  rw [input1330_def, output1330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1302]
  try dsimp only
  rw [child1329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1302_skip, output1329_skip]
  kernel_rfl

theorem node1331_cond_eq
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value288 value1 value234 = (output1301, value291, value1))
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value291 value1 value234 = (output1330, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1331 value288 value1 value234 = (output1331, value305, value1) := by
  rw [input1331_def, output1331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1301]
  try dsimp only
  rw [child1330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1301_skip, output1330_skip]
  kernel_rfl

theorem node1332_cond_eq
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value288 value1 value234 = (output1296, value288, value1))
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value288 value1 value234 = (output1331, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1332 value288 value1 value234 = (output1332, value305, value1) := by
  rw [input1332_def, output1332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1296]
  try dsimp only
  rw [child1331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1296_skip, output1331_skip]
  kernel_rfl

theorem node1333_cond_eq
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value288 value1 value234 = (output1295, value288, value1))
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value288 value1 value234 = (output1332, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1333 value288 value1 value234 = (output1333, value305, value1) := by
  rw [input1333_def, output1333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1295]
  try dsimp only
  rw [child1332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1295_skip, output1332_skip]
  kernel_rfl

theorem node1334_cond_eq
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value288 value1 value234 = (output1294, value288, value1))
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value288 value1 value234 = (output1333, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1334 value288 value1 value234 = (output1334, value305, value1) := by
  rw [input1334_def, output1334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1294]
  try dsimp only
  rw [child1333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1294_skip, output1333_skip]
  kernel_rfl

theorem node1335_cond_eq
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value288 value1 value234 = (output1293, value288, value1))
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value288 value1 value234 = (output1334, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1335 value288 value1 value234 = (output1335, value305, value1) := by
  rw [input1335_def, output1335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1293]
  try dsimp only
  rw [child1334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1293_skip, output1334_skip]
  kernel_rfl

theorem node1336_cond_eq
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value288 value1 value234 = (output1292, value288, value1))
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value288 value1 value234 = (output1335, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1336 value288 value1 value234 = (output1336, value305, value1) := by
  rw [input1336_def, output1336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1292]
  try dsimp only
  rw [child1335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1292_skip, output1335_skip]
  kernel_rfl

theorem node1337_cond_eq
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value288 value1 value234 = (output1291, value288, value1))
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value288 value1 value234 = (output1336, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1337 value288 value1 value234 = (output1337, value305, value1) := by
  rw [input1337_def, output1337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1291]
  try dsimp only
  rw [child1336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1291_skip, output1336_skip]
  kernel_rfl

theorem node1338_cond_eq
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value288 value1 value234 = (output1290, value288, value1))
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value288 value1 value234 = (output1337, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1338 value288 value1 value234 = (output1338, value305, value1) := by
  rw [input1338_def, output1338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1290]
  try dsimp only
  rw [child1337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1290_skip, output1337_skip]
  kernel_rfl

theorem node1339_cond_eq
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value287 value1 value234 = (output1289, value288, value1))
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value288 value1 value234 = (output1338, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1339 value287 value1 value234 = (output1339, value305, value1) := by
  rw [input1339_def, output1339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1289]
  try dsimp only
  rw [child1338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1289_skip, output1338_skip]
  kernel_rfl

theorem node1340_cond_eq
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value284 value1 value234 = (output1288, value287, value1))
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value287 value1 value234 = (output1339, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1340 value284 value1 value234 = (output1340, value305, value1) := by
  rw [input1340_def, output1340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1288]
  try dsimp only
  rw [child1339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1288_skip, output1339_skip]
  kernel_rfl

theorem node1341_cond_eq
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value284 value1 value234 = (output1283, value284, value1))
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value284 value1 value234 = (output1340, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1341 value284 value1 value234 = (output1341, value305, value1) := by
  rw [input1341_def, output1341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1283]
  try dsimp only
  rw [child1340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1283_skip, output1340_skip]
  kernel_rfl

theorem node1342_cond_eq
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value283 value1 value234 = (output1282, value284, value1))
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value284 value1 value234 = (output1341, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1342 value283 value1 value234 = (output1342, value305, value1) := by
  rw [input1342_def, output1342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1282]
  try dsimp only
  rw [child1341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1282_skip, output1341_skip]
  kernel_rfl

theorem node1343_cond_eq
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value281 value1 value234 = (output1281, value283, value1))
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value283 value1 value234 = (output1342, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1343 value281 value1 value234 = (output1343, value305, value1) := by
  rw [input1343_def, output1343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1281]
  try dsimp only
  rw [child1342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1281_skip, output1342_skip]
  kernel_rfl

theorem node1344_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value280 value1 value234 = (output1278, value281, value1))
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value281 value1 value234 = (output1343, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1344 value280 value1 value234 = (output1344, value305, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  try dsimp only
  rw [child1343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output1343_skip]
  kernel_rfl

theorem node1345_cond_eq
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value277 value1 value234 = (output1277, value280, value1))
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value280 value1 value234 = (output1344, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1345 value277 value1 value234 = (output1345, value305, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1277]
  try dsimp only
  rw [child1344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1277_skip, output1344_skip]
  kernel_rfl

theorem node1346_cond_eq
    (child1272 : Flapjack.WordAlloc.removeDeadStructural input1272 value277 value1 value234 = (output1272, value277, value1))
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value277 value1 value234 = (output1345, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1346 value277 value1 value234 = (output1346, value305, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1272]
  try dsimp only
  rw [child1345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1272_skip, output1345_skip]
  kernel_rfl

theorem node1347_cond_eq
    (child1271 : Flapjack.WordAlloc.removeDeadStructural input1271 value276 value1 value234 = (output1271, value277, value1))
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value277 value1 value234 = (output1346, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1347 value276 value1 value234 = (output1347, value305, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1271]
  try dsimp only
  rw [child1346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1271_skip, output1346_skip]
  kernel_rfl

theorem node1348_cond_eq
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value275 value1 value234 = (output1270, value276, value1))
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value276 value1 value234 = (output1347, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1348 value275 value1 value234 = (output1348, value305, value1) := by
  rw [input1348_def, output1348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1270]
  try dsimp only
  rw [child1347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1270_skip, output1347_skip]
  kernel_rfl

theorem node1349_cond_eq
    (child1269 : Flapjack.WordAlloc.removeDeadStructural input1269 value275 value1 value234 = (output1269, value275, value1))
    (child1348 : Flapjack.WordAlloc.removeDeadStructural input1348 value275 value1 value234 = (output1348, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1349 value275 value1 value234 = (output1349, value305, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1269]
  try dsimp only
  rw [child1348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1269_skip, output1348_skip]
  kernel_rfl

theorem node1350_cond_eq
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value274 value1 value234 = (output1268, value275, value1))
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value275 value1 value234 = (output1349, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1350 value274 value1 value234 = (output1350, value305, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1268]
  try dsimp only
  rw [child1349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1268_skip, output1349_skip]
  kernel_rfl

theorem node1351_cond_eq
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value273 value1 value234 = (output1267, value274, value1))
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value274 value1 value234 = (output1350, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1351 value273 value1 value234 = (output1351, value305, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1267]
  try dsimp only
  rw [child1350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1267_skip, output1350_skip]
  kernel_rfl

theorem node1352_cond_eq
    (child1266 : Flapjack.WordAlloc.removeDeadStructural input1266 value273 value1 value234 = (output1266, value273, value1))
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value273 value1 value234 = (output1351, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1352 value273 value1 value234 = (output1352, value305, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1266]
  try dsimp only
  rw [child1351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1266_skip, output1351_skip]
  kernel_rfl

theorem node1353_cond_eq
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value273 value1 value234 = (output1265, value273, value1))
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value273 value1 value234 = (output1352, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1353 value273 value1 value234 = (output1353, value305, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1265]
  try dsimp only
  rw [child1352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1265_skip, output1352_skip]
  kernel_rfl

theorem node1354_cond_eq
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value273 value1 value234 = (output1264, value273, value1))
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value273 value1 value234 = (output1353, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1354 value273 value1 value234 = (output1354, value305, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1264]
  try dsimp only
  rw [child1353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1264_skip, output1353_skip]
  kernel_rfl

theorem node1355_cond_eq
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value273 value1 value234 = (output1263, value273, value1))
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value273 value1 value234 = (output1354, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1355 value273 value1 value234 = (output1355, value305, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1263]
  try dsimp only
  rw [child1354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1263_skip, output1354_skip]
  kernel_rfl

theorem node1356_cond_eq
    (child1262 : Flapjack.WordAlloc.removeDeadStructural input1262 value273 value1 value234 = (output1262, value273, value1))
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value273 value1 value234 = (output1355, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1356 value273 value1 value234 = (output1356, value305, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1262]
  try dsimp only
  rw [child1355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1262_skip, output1355_skip]
  kernel_rfl

theorem node1357_cond_eq
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value272 value1 value234 = (output1261, value273, value1))
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value273 value1 value234 = (output1356, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1357 value272 value1 value234 = (output1357, value305, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1261]
  try dsimp only
  rw [child1356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1261_skip, output1356_skip]
  kernel_rfl

theorem node1358_cond_eq
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value269 value1 value234 = (output1260, value272, value1))
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value272 value1 value234 = (output1357, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1358 value269 value1 value234 = (output1358, value305, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1260]
  try dsimp only
  rw [child1357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1260_skip, output1357_skip]
  kernel_rfl

theorem node1359_cond_eq
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value269 value1 value234 = (output1255, value269, value1))
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value269 value1 value234 = (output1358, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1359 value269 value1 value234 = (output1359, value305, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1255]
  try dsimp only
  rw [child1358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1255_skip, output1358_skip]
  kernel_rfl

theorem node1360_cond_eq
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value268 value1 value234 = (output1254, value269, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value269 value1 value234 = (output1359, value305, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value268 value1 value234 = (output1360, value305, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1254]
  try dsimp only
  rw [child1359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1254_skip, output1359_skip]
  kernel_rfl

theorem node1361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1361 value268 value1 value234 = (output1361, value268, value1) := by
  rw [input1361_def, output1361_def]
  kernel_rfl

theorem node1362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1362 value268 value1 value234 = (output1362, value268, value1) := by
  rw [input1362_def, output1362_def]
  kernel_rfl

theorem node1363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1363 value268 value1 value234 = (output1363, value268, value1) := by
  rw [input1363_def, output1363_def]
  kernel_rfl

theorem node1364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1364 value268 value1 value234 = (output1364, value268, value1) := by
  rw [input1364_def, output1364_def]
  kernel_rfl

theorem node1365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1365 value268 value1 value234 = (output1365, value268, value1) := by
  rw [input1365_def, output1365_def]
  kernel_rfl

theorem node1366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1366 value268 value1 value234 = (output1366, value268, value1) := by
  rw [input1366_def, output1366_def]
  kernel_rfl

theorem node1367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1367 value268 value1 value234 = (output1367, value268, value1) := by
  rw [input1367_def, output1367_def]
  kernel_rfl

theorem node1368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1368 value268 value1 value234 = (output1368, value268, value1) := by
  rw [input1368_def, output1368_def]
  kernel_rfl

theorem node1369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1369 value268 value1 value234 = (output1369, value268, value1) := by
  rw [input1369_def, output1369_def]
  kernel_rfl

theorem node1370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1370 value268 value1 value234 = (output1370, value268, value1) := by
  rw [input1370_def, output1370_def]
  kernel_rfl

theorem node1371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1371 value268 value1 value234 = (output1371, value268, value1) := by
  rw [input1371_def, output1371_def]
  kernel_rfl

theorem node1372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1372 value268 value1 value234 = (output1372, value268, value1) := by
  rw [input1372_def, output1372_def]
  kernel_rfl

theorem node1373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1373 value268 value1 value234 = (output1373, value268, value1) := by
  rw [input1373_def, output1373_def]
  kernel_rfl

theorem node1374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1374 value268 value1 value234 = (output1374, value268, value1) := by
  rw [input1374_def, output1374_def]
  kernel_rfl

theorem node1375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1375 value268 value1 value234 = (output1375, value268, value1) := by
  rw [input1375_def, output1375_def]
  kernel_rfl

theorem node1376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1376 value268 value1 value234 = (output1376, value268, value1) := by
  rw [input1376_def, output1376_def]
  kernel_rfl

theorem node1377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1377 value268 value1 value234 = (output1377, value268, value1) := by
  rw [input1377_def, output1377_def]
  kernel_rfl

theorem node1378_cond_eq
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value268 value1 value234 = (output1376, value268, value1))
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value268 value1 value234 = (output1377, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1378 value268 value1 value234 = (output1378, value268, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1376]
  try dsimp only
  rw [child1377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1376_skip, output1377_skip]
  kernel_rfl

theorem node1379_cond_eq
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value268 value1 value234 = (output1375, value268, value1))
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value268 value1 value234 = (output1378, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1379 value268 value1 value234 = (output1379, value268, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1375]
  try dsimp only
  rw [child1378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1375_skip, output1378_skip]
  kernel_rfl

theorem node1380_cond_eq
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value268 value1 value234 = (output1374, value268, value1))
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value268 value1 value234 = (output1379, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1380 value268 value1 value234 = (output1380, value268, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1374]
  try dsimp only
  rw [child1379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1374_skip, output1379_skip]
  kernel_rfl

theorem node1381_cond_eq
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value268 value1 value234 = (output1373, value268, value1))
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value268 value1 value234 = (output1380, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1381 value268 value1 value234 = (output1381, value268, value1) := by
  rw [input1381_def, output1381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1373]
  try dsimp only
  rw [child1380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1373_skip, output1380_skip]
  kernel_rfl

theorem node1382_cond_eq
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value268 value1 value234 = (output1372, value268, value1))
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value268 value1 value234 = (output1381, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1382 value268 value1 value234 = (output1382, value268, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1372]
  try dsimp only
  rw [child1381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1372_skip, output1381_skip]
  kernel_rfl

theorem node1383_cond_eq
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value268 value1 value234 = (output1371, value268, value1))
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value268 value1 value234 = (output1382, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1383 value268 value1 value234 = (output1383, value268, value1) := by
  rw [input1383_def, output1383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1371]
  try dsimp only
  rw [child1382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1371_skip, output1382_skip]
  kernel_rfl

theorem node1384_cond_eq
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value268 value1 value234 = (output1370, value268, value1))
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value268 value1 value234 = (output1383, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1384 value268 value1 value234 = (output1384, value268, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1370]
  try dsimp only
  rw [child1383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1370_skip, output1383_skip]
  kernel_rfl

theorem node1385_cond_eq
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value268 value1 value234 = (output1369, value268, value1))
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value268 value1 value234 = (output1384, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1385 value268 value1 value234 = (output1385, value268, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1369]
  try dsimp only
  rw [child1384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1369_skip, output1384_skip]
  kernel_rfl

theorem node1386_cond_eq
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value268 value1 value234 = (output1368, value268, value1))
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value268 value1 value234 = (output1385, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1386 value268 value1 value234 = (output1386, value268, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1368]
  try dsimp only
  rw [child1385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1368_skip, output1385_skip]
  kernel_rfl

theorem node1387_cond_eq
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value268 value1 value234 = (output1367, value268, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value268 value1 value234 = (output1386, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value268 value1 value234 = (output1387, value268, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1367]
  try dsimp only
  rw [child1386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1367_skip, output1386_skip]
  kernel_rfl

theorem node1388_cond_eq
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value268 value1 value234 = (output1366, value268, value1))
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value268 value1 value234 = (output1387, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1388 value268 value1 value234 = (output1388, value268, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1366]
  try dsimp only
  rw [child1387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1366_skip, output1387_skip]
  kernel_rfl

theorem node1389_cond_eq
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value268 value1 value234 = (output1365, value268, value1))
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value268 value1 value234 = (output1388, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1389 value268 value1 value234 = (output1389, value268, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1365]
  try dsimp only
  rw [child1388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1365_skip, output1388_skip]
  kernel_rfl

theorem node1390_cond_eq
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value268 value1 value234 = (output1364, value268, value1))
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value268 value1 value234 = (output1389, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1390 value268 value1 value234 = (output1390, value268, value1) := by
  rw [input1390_def, output1390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1364]
  try dsimp only
  rw [child1389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1364_skip, output1389_skip]
  kernel_rfl

theorem node1391_cond_eq
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value268 value1 value234 = (output1363, value268, value1))
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value268 value1 value234 = (output1390, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1391 value268 value1 value234 = (output1391, value268, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1363]
  try dsimp only
  rw [child1390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1363_skip, output1390_skip]
  kernel_rfl

theorem node1392_cond_eq
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value268 value1 value234 = (output1362, value268, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value268 value1 value234 = (output1391, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value268 value1 value234 = (output1392, value268, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1362]
  try dsimp only
  rw [child1391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1362_skip, output1391_skip]
  kernel_rfl

theorem node1393_cond_eq
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value268 value1 value234 = (output1361, value268, value1))
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value268 value1 value234 = (output1392, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input1393 value268 value1 value234 = (output1393, value268, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1361]
  try dsimp only
  rw [child1392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1361_skip, output1392_skip]
  kernel_rfl

theorem node1394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1394 value268 value1 value234 = (output1394, value306, value1) := by
  rw [input1394_def, output1394_def]
  kernel_rfl

theorem node1395_cond_eq
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value268 value1 value234 = (output1393, value268, value1))
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value268 value1 value234 = (output1394, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input1395 value268 value1 value234 = (output1395, value306, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1393]
  try dsimp only
  rw [child1394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1393_skip, output1394_skip]
  kernel_rfl

theorem node1396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1396 value306 value1 value234 = (output1396, value306, value1) := by
  rw [input1396_def, output1396_def]
  kernel_rfl

theorem node1397_cond_eq
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value268 value1 value234 = (output1395, value306, value1))
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value306 value1 value234 = (output1396, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input1397 value268 value1 value234 = (output1397, value306, value1) := by
  rw [input1397_def, output1397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1395]
  try dsimp only
  rw [child1396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1395_skip, output1396_skip]
  kernel_rfl

theorem node1398_cond_eq
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value268 value1 value234 = (output1360, value305, value1))
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value268 value1 value234 = (output1397, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input1398 value268 value1 value234 = (output1398, value307, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1360]
  try dsimp only
  rw [child1397]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1360_skip, output1397_skip]
  kernel_rfl

theorem node1399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1399 value307 value1 value234 = (output1399, value308, value1) := by
  rw [input1399_def, output1399_def]
  kernel_rfl

theorem node1400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1400 value308 value1 value234 = (output1400, value309, value1) := by
  rw [input1400_def, output1400_def]
  kernel_rfl

theorem node1401_cond_eq
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value307 value1 value234 = (output1399, value308, value1))
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value308 value1 value234 = (output1400, value309, value1)) : Flapjack.WordAlloc.removeDeadStructural input1401 value307 value1 value234 = (output1401, value309, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1399]
  try dsimp only
  rw [child1400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1399_skip, output1400_skip]
  kernel_rfl

theorem node1402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1402 value309 value1 value234 = (output1402, value310, value1) := by
  rw [input1402_def, output1402_def]
  kernel_rfl

theorem node1403_cond_eq
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value307 value1 value234 = (output1401, value309, value1))
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value309 value1 value234 = (output1402, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input1403 value307 value1 value234 = (output1403, value310, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1401]
  try dsimp only
  rw [child1402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1401_skip, output1402_skip]
  kernel_rfl

theorem node1404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1404 value310 value1 value234 = (output1404, value310, value1) := by
  rw [input1404_def, output1404_def]
  kernel_rfl

theorem node1405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1405 value310 value1 value234 = (output1405, value310, value1) := by
  rw [input1405_def, output1405_def]
  kernel_rfl

theorem node1406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1406 value310 value1 value234 = (output1406, value311, value1) := by
  rw [input1406_def, output1406_def]
  kernel_rfl

theorem node1407_cond_eq
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value310 value1 value234 = (output1405, value310, value1))
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value310 value1 value234 = (output1406, value311, value1)) : Flapjack.WordAlloc.removeDeadStructural input1407 value310 value1 value234 = (output1407, value311, value1) := by
  rw [input1407_def, output1407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1405]
  try dsimp only
  rw [child1406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1405_skip, output1406_skip]
  kernel_rfl

theorem node1408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1408 value311 value1 value234 = (output1408, value312, value1) := by
  rw [input1408_def, output1408_def]
  kernel_rfl

theorem node1409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1409 value312 value1 value234 = (output1409, value312, value1) := by
  rw [input1409_def, output1409_def]
  kernel_rfl

theorem node1410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1410 value312 value1 value234 = (output1410, value312, value1) := by
  rw [input1410_def, output1410_def]
  kernel_rfl

theorem node1411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1411 value312 value1 value234 = (output1411, value312, value1) := by
  rw [input1411_def, output1411_def]
  kernel_rfl

theorem node1412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1412 value312 value1 value234 = (output1412, value312, value1) := by
  rw [input1412_def, output1412_def]
  kernel_rfl

theorem node1413_cond_eq
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value312 value1 value234 = (output1411, value312, value1))
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value312 value1 value234 = (output1412, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1413 value312 value1 value234 = (output1413, value312, value1) := by
  rw [input1413_def, output1413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1411]
  try dsimp only
  rw [child1412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1411_skip, output1412_skip]
  kernel_rfl

theorem node1414_cond_eq
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value312 value1 value234 = (output1410, value312, value1))
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value312 value1 value234 = (output1413, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1414 value312 value1 value234 = (output1414, value312, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1410]
  try dsimp only
  rw [child1413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1410_skip, output1413_skip]
  kernel_rfl

theorem node1415_cond_eq
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value312 value1 value234 = (output1409, value312, value1))
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value312 value1 value234 = (output1414, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1415 value312 value1 value234 = (output1415, value312, value1) := by
  rw [input1415_def, output1415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1409]
  try dsimp only
  rw [child1414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1409_skip, output1414_skip]
  kernel_rfl

theorem node1416_cond_eq
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value311 value1 value234 = (output1408, value312, value1))
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value312 value1 value234 = (output1415, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1416 value311 value1 value234 = (output1416, value312, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1408]
  try dsimp only
  rw [child1415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1408_skip, output1415_skip]
  kernel_rfl

theorem node1417_cond_eq
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value310 value1 value234 = (output1407, value311, value1))
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value311 value1 value234 = (output1416, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1417 value310 value1 value234 = (output1417, value312, value1) := by
  rw [input1417_def, output1417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1407]
  try dsimp only
  rw [child1416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1407_skip, output1416_skip]
  kernel_rfl

theorem node1418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1418 value310 value1 value234 = (output1418, value310, value1) := by
  rw [input1418_def, output1418_def]
  kernel_rfl

theorem node1419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1419 value310 value1 value234 = (output1419, value313, value1) := by
  rw [input1419_def, output1419_def]
  kernel_rfl

theorem node1420_cond_eq
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value310 value1 value234 = (output1418, value310, value1))
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value310 value1 value234 = (output1419, value313, value1)) : Flapjack.WordAlloc.removeDeadStructural input1420 value310 value1 value234 = (output1420, value313, value1) := by
  rw [input1420_def, output1420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1418]
  try dsimp only
  rw [child1419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1418_skip, output1419_skip]
  kernel_rfl

theorem node1421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1421 value313 value1 value234 = (output1421, value312, value1) := by
  rw [input1421_def, output1421_def]
  kernel_rfl

theorem node1422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1422 value312 value1 value234 = (output1422, value312, value1) := by
  rw [input1422_def, output1422_def]
  kernel_rfl

theorem node1423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1423 value312 value1 value234 = (output1423, value312, value1) := by
  rw [input1423_def, output1423_def]
  kernel_rfl

theorem node1424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1424 value312 value1 value234 = (output1424, value312, value1) := by
  rw [input1424_def, output1424_def]
  kernel_rfl

theorem node1425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1425 value312 value1 value234 = (output1425, value312, value1) := by
  rw [input1425_def, output1425_def]
  kernel_rfl

theorem node1426_cond_eq
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value312 value1 value234 = (output1424, value312, value1))
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value312 value1 value234 = (output1425, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1426 value312 value1 value234 = (output1426, value312, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1424]
  try dsimp only
  rw [child1425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1424_skip, output1425_skip]
  kernel_rfl

theorem node1427_cond_eq
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value312 value1 value234 = (output1423, value312, value1))
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value312 value1 value234 = (output1426, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1427 value312 value1 value234 = (output1427, value312, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1423]
  try dsimp only
  rw [child1426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1423_skip, output1426_skip]
  kernel_rfl

theorem node1428_cond_eq
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value312 value1 value234 = (output1422, value312, value1))
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value312 value1 value234 = (output1427, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1428 value312 value1 value234 = (output1428, value312, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1422]
  try dsimp only
  rw [child1427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1422_skip, output1427_skip]
  kernel_rfl

theorem node1429_cond_eq
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value313 value1 value234 = (output1421, value312, value1))
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value312 value1 value234 = (output1428, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1429 value313 value1 value234 = (output1429, value312, value1) := by
  rw [input1429_def, output1429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1421]
  try dsimp only
  rw [child1428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1421_skip, output1428_skip]
  kernel_rfl

theorem node1430_cond_eq
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value310 value1 value234 = (output1420, value313, value1))
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value313 value1 value234 = (output1429, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1430 value310 value1 value234 = (output1430, value312, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1420]
  try dsimp only
  rw [child1429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1420_skip, output1429_skip]
  kernel_rfl

theorem node1431_cond_eq
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value310 value1 value234 = (output1417, value312, value1))
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value310 value1 value234 = (output1430, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input1431 value310 value1 value234 = (output1431, value315, value1) := by
  rw [input1431_def, output1431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1417]
  try dsimp only
  rw [child1430]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1417_skip, output1430_skip]
  kernel_rfl

theorem node1432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1432 value315 value1 value234 = (output1432, value312, value1) := by
  rw [input1432_def, output1432_def]
  kernel_rfl

theorem node1433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1433 value312 value1 value234 = (output1433, value316, value1) := by
  rw [input1433_def, output1433_def]
  kernel_rfl

theorem node1434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1434 value316 value1 value234 = (output1434, value316, value1) := by
  rw [input1434_def, output1434_def]
  kernel_rfl

theorem node1435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1435 value316 value1 value234 = (output1435, value316, value1) := by
  rw [input1435_def, output1435_def]
  kernel_rfl

theorem node1436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1436 value316 value1 value234 = (output1436, value317, value1) := by
  rw [input1436_def, output1436_def]
  kernel_rfl

theorem node1437_cond_eq
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value316 value1 value234 = (output1435, value316, value1))
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value316 value1 value234 = (output1436, value317, value1)) : Flapjack.WordAlloc.removeDeadStructural input1437 value316 value1 value234 = (output1437, value317, value1) := by
  rw [input1437_def, output1437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1435]
  try dsimp only
  rw [child1436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1435_skip, output1436_skip]
  kernel_rfl

theorem node1438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1438 value317 value1 value234 = (output1438, value318, value1) := by
  rw [input1438_def, output1438_def]
  kernel_rfl

theorem node1439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1439 value318 value1 value234 = (output1439, value318, value1) := by
  rw [input1439_def, output1439_def]
  kernel_rfl

theorem node1440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1440 value318 value1 value234 = (output1440, value318, value1) := by
  rw [input1440_def, output1440_def]
  kernel_rfl

theorem node1441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1441 value318 value1 value234 = (output1441, value318, value1) := by
  rw [input1441_def, output1441_def]
  kernel_rfl

theorem node1442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1442 value318 value1 value234 = (output1442, value318, value1) := by
  rw [input1442_def, output1442_def]
  kernel_rfl

theorem node1443_cond_eq
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value318 value1 value234 = (output1441, value318, value1))
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value318 value1 value234 = (output1442, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1443 value318 value1 value234 = (output1443, value318, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1441]
  try dsimp only
  rw [child1442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1441_skip, output1442_skip]
  kernel_rfl

theorem node1444_cond_eq
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value318 value1 value234 = (output1440, value318, value1))
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value318 value1 value234 = (output1443, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1444 value318 value1 value234 = (output1444, value318, value1) := by
  rw [input1444_def, output1444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1440]
  try dsimp only
  rw [child1443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1440_skip, output1443_skip]
  kernel_rfl

theorem node1445_cond_eq
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value318 value1 value234 = (output1439, value318, value1))
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value318 value1 value234 = (output1444, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1445 value318 value1 value234 = (output1445, value318, value1) := by
  rw [input1445_def, output1445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1439]
  try dsimp only
  rw [child1444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1439_skip, output1444_skip]
  kernel_rfl

theorem node1446_cond_eq
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value317 value1 value234 = (output1438, value318, value1))
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value318 value1 value234 = (output1445, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1446 value317 value1 value234 = (output1446, value318, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1438]
  try dsimp only
  rw [child1445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1438_skip, output1445_skip]
  kernel_rfl

theorem node1447_cond_eq
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value316 value1 value234 = (output1437, value317, value1))
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value317 value1 value234 = (output1446, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1447 value316 value1 value234 = (output1447, value318, value1) := by
  rw [input1447_def, output1447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1437]
  try dsimp only
  rw [child1446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1437_skip, output1446_skip]
  kernel_rfl

theorem node1448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1448 value316 value1 value234 = (output1448, value316, value1) := by
  rw [input1448_def, output1448_def]
  kernel_rfl

theorem node1449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1449 value316 value1 value234 = (output1449, value319, value1) := by
  rw [input1449_def, output1449_def]
  kernel_rfl

theorem node1450_cond_eq
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value316 value1 value234 = (output1448, value316, value1))
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value316 value1 value234 = (output1449, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input1450 value316 value1 value234 = (output1450, value319, value1) := by
  rw [input1450_def, output1450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1448]
  try dsimp only
  rw [child1449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1448_skip, output1449_skip]
  kernel_rfl

theorem node1451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1451 value319 value1 value234 = (output1451, value318, value1) := by
  rw [input1451_def, output1451_def]
  kernel_rfl

theorem node1452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1452 value318 value1 value234 = (output1452, value318, value1) := by
  rw [input1452_def, output1452_def]
  kernel_rfl

theorem node1453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1453 value318 value1 value234 = (output1453, value318, value1) := by
  rw [input1453_def, output1453_def]
  kernel_rfl

theorem node1454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1454 value318 value1 value234 = (output1454, value318, value1) := by
  rw [input1454_def, output1454_def]
  kernel_rfl

theorem node1455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1455 value318 value1 value234 = (output1455, value318, value1) := by
  rw [input1455_def, output1455_def]
  kernel_rfl

theorem node1456_cond_eq
    (child1454 : Flapjack.WordAlloc.removeDeadStructural input1454 value318 value1 value234 = (output1454, value318, value1))
    (child1455 : Flapjack.WordAlloc.removeDeadStructural input1455 value318 value1 value234 = (output1455, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1456 value318 value1 value234 = (output1456, value318, value1) := by
  rw [input1456_def, output1456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1454]
  try dsimp only
  rw [child1455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1454_skip, output1455_skip]
  kernel_rfl

theorem node1457_cond_eq
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value318 value1 value234 = (output1453, value318, value1))
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value318 value1 value234 = (output1456, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1457 value318 value1 value234 = (output1457, value318, value1) := by
  rw [input1457_def, output1457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1453]
  try dsimp only
  rw [child1456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1453_skip, output1456_skip]
  kernel_rfl

theorem node1458_cond_eq
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value318 value1 value234 = (output1452, value318, value1))
    (child1457 : Flapjack.WordAlloc.removeDeadStructural input1457 value318 value1 value234 = (output1457, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1458 value318 value1 value234 = (output1458, value318, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1452]
  try dsimp only
  rw [child1457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1452_skip, output1457_skip]
  kernel_rfl

theorem node1459_cond_eq
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value319 value1 value234 = (output1451, value318, value1))
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value318 value1 value234 = (output1458, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1459 value319 value1 value234 = (output1459, value318, value1) := by
  rw [input1459_def, output1459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1451]
  try dsimp only
  rw [child1458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1451_skip, output1458_skip]
  kernel_rfl

theorem node1460_cond_eq
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value316 value1 value234 = (output1450, value319, value1))
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value319 value1 value234 = (output1459, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1460 value316 value1 value234 = (output1460, value318, value1) := by
  rw [input1460_def, output1460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1450]
  try dsimp only
  rw [child1459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1450_skip, output1459_skip]
  kernel_rfl

theorem node1461_cond_eq
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value316 value1 value234 = (output1447, value318, value1))
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value316 value1 value234 = (output1460, value318, value1)) : Flapjack.WordAlloc.removeDeadStructural input1461 value316 value1 value234 = (output1461, value321, value1) := by
  rw [input1461_def, output1461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1447]
  try dsimp only
  rw [child1460]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1447_skip, output1460_skip]
  kernel_rfl

theorem node1462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1462 value321 value1 value234 = (output1462, value318, value1) := by
  rw [input1462_def, output1462_def]
  kernel_rfl

theorem node1463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1463 value318 value1 value234 = (output1463, value322, value1) := by
  rw [input1463_def, output1463_def]
  kernel_rfl

theorem node1464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1464 value322 value1 value234 = (output1464, value322, value1) := by
  rw [input1464_def, output1464_def]
  kernel_rfl

theorem node1465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1465 value322 value1 value234 = (output1465, value323, value1) := by
  rw [input1465_def, output1465_def]
  kernel_rfl

theorem node1466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1466 value323 value1 value234 = (output1466, value324, value1) := by
  rw [input1466_def, output1466_def]
  kernel_rfl

theorem node1467_cond_eq
    (child1465 : Flapjack.WordAlloc.removeDeadStructural input1465 value322 value1 value234 = (output1465, value323, value1))
    (child1466 : Flapjack.WordAlloc.removeDeadStructural input1466 value323 value1 value234 = (output1466, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input1467 value322 value1 value234 = (output1467, value324, value1) := by
  rw [input1467_def, output1467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1465]
  try dsimp only
  rw [child1466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1465_skip, output1466_skip]
  kernel_rfl

theorem node1468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1468 value324 value1 value234 = (output1468, value325, value1) := by
  rw [input1468_def, output1468_def]
  kernel_rfl

theorem node1469_cond_eq
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value322 value1 value234 = (output1467, value324, value1))
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value324 value1 value234 = (output1468, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input1469 value322 value1 value234 = (output1469, value325, value1) := by
  rw [input1469_def, output1469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1467]
  try dsimp only
  rw [child1468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1467_skip, output1468_skip]
  kernel_rfl

theorem node1470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1470 value325 value1 value234 = (output1470, value326, value1) := by
  rw [input1470_def, output1470_def]
  kernel_rfl

theorem node1471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1471 value326 value1 value234 = (output1471, value327, value1) := by
  rw [input1471_def, output1471_def]
  kernel_rfl

theorem node1472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1472 value327 value1 value234 = (output1472, value328, value1) := by
  rw [input1472_def, output1472_def]
  kernel_rfl

theorem node1473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1473 value328 value1 value234 = (output1473, value329, value1) := by
  rw [input1473_def, output1473_def]
  kernel_rfl

theorem node1474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1474 value329 value1 value234 = (output1474, value330, value1) := by
  rw [input1474_def, output1474_def]
  kernel_rfl

theorem node1475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1475 value330 value1 value234 = (output1475, value331, value1) := by
  rw [input1475_def, output1475_def]
  kernel_rfl

theorem node1476_cond_eq
    (child1474 : Flapjack.WordAlloc.removeDeadStructural input1474 value329 value1 value234 = (output1474, value330, value1))
    (child1475 : Flapjack.WordAlloc.removeDeadStructural input1475 value330 value1 value234 = (output1475, value331, value1)) : Flapjack.WordAlloc.removeDeadStructural input1476 value329 value1 value234 = (output1476, value331, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1474]
  try dsimp only
  rw [child1475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1474_skip, output1475_skip]
  kernel_rfl

theorem node1477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1477 value331 value1 value234 = (output1477, value332, value1) := by
  rw [input1477_def, output1477_def]
  kernel_rfl

theorem node1478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1478 value332 value1 value234 = (output1478, value333, value1) := by
  rw [input1478_def, output1478_def]
  kernel_rfl

theorem node1479_cond_eq
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value331 value1 value234 = (output1477, value332, value1))
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value332 value1 value234 = (output1478, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input1479 value331 value1 value234 = (output1479, value333, value1) := by
  rw [input1479_def, output1479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1477]
  try dsimp only
  rw [child1478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1477_skip, output1478_skip]
  kernel_rfl

theorem node1480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1480 value333 value1 value234 = (output1480, value334, value1) := by
  rw [input1480_def, output1480_def]
  kernel_rfl

theorem node1481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1481 value334 value1 value234 = (output1481, value335, value1) := by
  rw [input1481_def, output1481_def]
  kernel_rfl

theorem node1482_cond_eq
    (child1480 : Flapjack.WordAlloc.removeDeadStructural input1480 value333 value1 value234 = (output1480, value334, value1))
    (child1481 : Flapjack.WordAlloc.removeDeadStructural input1481 value334 value1 value234 = (output1481, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input1482 value333 value1 value234 = (output1482, value335, value1) := by
  rw [input1482_def, output1482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1480]
  try dsimp only
  rw [child1481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1480_skip, output1481_skip]
  kernel_rfl

theorem node1483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1483 value335 value1 value234 = (output1483, value336, value1) := by
  rw [input1483_def, output1483_def]
  kernel_rfl

theorem node1484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1484 value336 value1 value234 = (output1484, value337, value1) := by
  rw [input1484_def, output1484_def]
  kernel_rfl

theorem node1485_cond_eq
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value335 value1 value234 = (output1483, value336, value1))
    (child1484 : Flapjack.WordAlloc.removeDeadStructural input1484 value336 value1 value234 = (output1484, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1485 value335 value1 value234 = (output1485, value337, value1) := by
  rw [input1485_def, output1485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1483]
  try dsimp only
  rw [child1484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1483_skip, output1484_skip]
  kernel_rfl

theorem node1486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1486 value337 value1 value234 = (output1486, value337, value1) := by
  rw [input1486_def, output1486_def]
  kernel_rfl

theorem node1487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1487 value337 value1 value234 = (output1487, value337, value1) := by
  rw [input1487_def, output1487_def]
  kernel_rfl

theorem node1488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1488 value337 value1 value234 = (output1488, value337, value1) := by
  rw [input1488_def, output1488_def]
  kernel_rfl

theorem node1489_cond_eq
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value337 value1 value234 = (output1487, value337, value1))
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value337 value1 value234 = (output1488, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1489 value337 value1 value234 = (output1489, value337, value1) := by
  rw [input1489_def, output1489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1487]
  try dsimp only
  rw [child1488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1487_skip, output1488_skip]
  kernel_rfl

theorem node1490_cond_eq
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value337 value1 value234 = (output1486, value337, value1))
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value337 value1 value234 = (output1489, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1490 value337 value1 value234 = (output1490, value337, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1486]
  try dsimp only
  rw [child1489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1486_skip, output1489_skip]
  kernel_rfl

theorem node1491_cond_eq
    (child1485 : Flapjack.WordAlloc.removeDeadStructural input1485 value335 value1 value234 = (output1485, value337, value1))
    (child1490 : Flapjack.WordAlloc.removeDeadStructural input1490 value337 value1 value234 = (output1490, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1491 value335 value1 value234 = (output1491, value337, value1) := by
  rw [input1491_def, output1491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1485]
  try dsimp only
  rw [child1490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1485_skip, output1490_skip]
  kernel_rfl

theorem node1492_cond_eq
    (child1482 : Flapjack.WordAlloc.removeDeadStructural input1482 value333 value1 value234 = (output1482, value335, value1))
    (child1491 : Flapjack.WordAlloc.removeDeadStructural input1491 value335 value1 value234 = (output1491, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1492 value333 value1 value234 = (output1492, value337, value1) := by
  rw [input1492_def, output1492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1482]
  try dsimp only
  rw [child1491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1482_skip, output1491_skip]
  kernel_rfl

theorem node1493_cond_eq
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value331 value1 value234 = (output1479, value333, value1))
    (child1492 : Flapjack.WordAlloc.removeDeadStructural input1492 value333 value1 value234 = (output1492, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1493 value331 value1 value234 = (output1493, value337, value1) := by
  rw [input1493_def, output1493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1479]
  try dsimp only
  rw [child1492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1479_skip, output1492_skip]
  kernel_rfl

theorem node1494_cond_eq
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value329 value1 value234 = (output1476, value331, value1))
    (child1493 : Flapjack.WordAlloc.removeDeadStructural input1493 value331 value1 value234 = (output1493, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1494 value329 value1 value234 = (output1494, value337, value1) := by
  rw [input1494_def, output1494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1476]
  try dsimp only
  rw [child1493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1476_skip, output1493_skip]
  kernel_rfl

theorem node1495_cond_eq
    (child1473 : Flapjack.WordAlloc.removeDeadStructural input1473 value328 value1 value234 = (output1473, value329, value1))
    (child1494 : Flapjack.WordAlloc.removeDeadStructural input1494 value329 value1 value234 = (output1494, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1495 value328 value1 value234 = (output1495, value337, value1) := by
  rw [input1495_def, output1495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1473]
  try dsimp only
  rw [child1494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1473_skip, output1494_skip]
  kernel_rfl

theorem node1496_cond_eq
    (child1472 : Flapjack.WordAlloc.removeDeadStructural input1472 value327 value1 value234 = (output1472, value328, value1))
    (child1495 : Flapjack.WordAlloc.removeDeadStructural input1495 value328 value1 value234 = (output1495, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1496 value327 value1 value234 = (output1496, value337, value1) := by
  rw [input1496_def, output1496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1472]
  try dsimp only
  rw [child1495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1472_skip, output1495_skip]
  kernel_rfl

theorem node1497_cond_eq
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value326 value1 value234 = (output1471, value327, value1))
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value327 value1 value234 = (output1496, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1497 value326 value1 value234 = (output1497, value337, value1) := by
  rw [input1497_def, output1497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1471]
  try dsimp only
  rw [child1496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1471_skip, output1496_skip]
  kernel_rfl

theorem node1498_cond_eq
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value325 value1 value234 = (output1470, value326, value1))
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value326 value1 value234 = (output1497, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1498 value325 value1 value234 = (output1498, value337, value1) := by
  rw [input1498_def, output1498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1470]
  try dsimp only
  rw [child1497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1470_skip, output1497_skip]
  kernel_rfl

theorem node1499_cond_eq
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value322 value1 value234 = (output1469, value325, value1))
    (child1498 : Flapjack.WordAlloc.removeDeadStructural input1498 value325 value1 value234 = (output1498, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1499 value322 value1 value234 = (output1499, value337, value1) := by
  rw [input1499_def, output1499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1469]
  try dsimp only
  rw [child1498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1469_skip, output1498_skip]
  kernel_rfl

theorem node1500_cond_eq
    (child1464 : Flapjack.WordAlloc.removeDeadStructural input1464 value322 value1 value234 = (output1464, value322, value1))
    (child1499 : Flapjack.WordAlloc.removeDeadStructural input1499 value322 value1 value234 = (output1499, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1500 value322 value1 value234 = (output1500, value337, value1) := by
  rw [input1500_def, output1500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1464]
  try dsimp only
  rw [child1499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1464_skip, output1499_skip]
  kernel_rfl

theorem node1501_cond_eq
    (child1463 : Flapjack.WordAlloc.removeDeadStructural input1463 value318 value1 value234 = (output1463, value322, value1))
    (child1500 : Flapjack.WordAlloc.removeDeadStructural input1500 value322 value1 value234 = (output1500, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1501 value318 value1 value234 = (output1501, value337, value1) := by
  rw [input1501_def, output1501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1463]
  try dsimp only
  rw [child1500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1463_skip, output1500_skip]
  kernel_rfl

theorem node1502_cond_eq
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value321 value1 value234 = (output1462, value318, value1))
    (child1501 : Flapjack.WordAlloc.removeDeadStructural input1501 value318 value1 value234 = (output1501, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1502 value321 value1 value234 = (output1502, value337, value1) := by
  rw [input1502_def, output1502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1462]
  try dsimp only
  rw [child1501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1462_skip, output1501_skip]
  kernel_rfl

theorem node1503_cond_eq
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value316 value1 value234 = (output1461, value321, value1))
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value321 value1 value234 = (output1502, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1503 value316 value1 value234 = (output1503, value337, value1) := by
  rw [input1503_def, output1503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1461]
  try dsimp only
  rw [child1502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1461_skip, output1502_skip]
  kernel_rfl

theorem node1504_cond_eq
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value316 value1 value234 = (output1434, value316, value1))
    (child1503 : Flapjack.WordAlloc.removeDeadStructural input1503 value316 value1 value234 = (output1503, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1504 value316 value1 value234 = (output1504, value337, value1) := by
  rw [input1504_def, output1504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1434]
  try dsimp only
  rw [child1503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1434_skip, output1503_skip]
  kernel_rfl

theorem node1505_cond_eq
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value312 value1 value234 = (output1433, value316, value1))
    (child1504 : Flapjack.WordAlloc.removeDeadStructural input1504 value316 value1 value234 = (output1504, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1505 value312 value1 value234 = (output1505, value337, value1) := by
  rw [input1505_def, output1505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1433]
  try dsimp only
  rw [child1504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1433_skip, output1504_skip]
  kernel_rfl

theorem node1506_cond_eq
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value315 value1 value234 = (output1432, value312, value1))
    (child1505 : Flapjack.WordAlloc.removeDeadStructural input1505 value312 value1 value234 = (output1505, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1506 value315 value1 value234 = (output1506, value337, value1) := by
  rw [input1506_def, output1506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1432]
  try dsimp only
  rw [child1505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1432_skip, output1505_skip]
  kernel_rfl

theorem node1507_cond_eq
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value310 value1 value234 = (output1431, value315, value1))
    (child1506 : Flapjack.WordAlloc.removeDeadStructural input1506 value315 value1 value234 = (output1506, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1507 value310 value1 value234 = (output1507, value337, value1) := by
  rw [input1507_def, output1507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1431]
  try dsimp only
  rw [child1506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1431_skip, output1506_skip]
  kernel_rfl

theorem node1508_cond_eq
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value310 value1 value234 = (output1404, value310, value1))
    (child1507 : Flapjack.WordAlloc.removeDeadStructural input1507 value310 value1 value234 = (output1507, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1508 value310 value1 value234 = (output1508, value337, value1) := by
  rw [input1508_def, output1508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1404]
  try dsimp only
  rw [child1507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1404_skip, output1507_skip]
  kernel_rfl

theorem node1509_cond_eq
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value307 value1 value234 = (output1403, value310, value1))
    (child1508 : Flapjack.WordAlloc.removeDeadStructural input1508 value310 value1 value234 = (output1508, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1509 value307 value1 value234 = (output1509, value337, value1) := by
  rw [input1509_def, output1509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1403]
  try dsimp only
  rw [child1508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1403_skip, output1508_skip]
  kernel_rfl

theorem node1510_cond_eq
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value268 value1 value234 = (output1398, value307, value1))
    (child1509 : Flapjack.WordAlloc.removeDeadStructural input1509 value307 value1 value234 = (output1509, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1510 value268 value1 value234 = (output1510, value337, value1) := by
  rw [input1510_def, output1510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1398]
  try dsimp only
  rw [child1509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1398_skip, output1509_skip]
  kernel_rfl

theorem node1511_cond_eq
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value268 value1 value234 = (output1219, value268, value1))
    (child1510 : Flapjack.WordAlloc.removeDeadStructural input1510 value268 value1 value234 = (output1510, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1511 value268 value1 value234 = (output1511, value337, value1) := by
  rw [input1511_def, output1511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1219]
  try dsimp only
  rw [child1510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1219_skip, output1510_skip]
  kernel_rfl

theorem node1512_cond_eq
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value264 value1 value234 = (output1218, value268, value1))
    (child1511 : Flapjack.WordAlloc.removeDeadStructural input1511 value268 value1 value234 = (output1511, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1512 value264 value1 value234 = (output1512, value337, value1) := by
  rw [input1512_def, output1512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1218]
  try dsimp only
  rw [child1511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1218_skip, output1511_skip]
  kernel_rfl

theorem node1513_cond_eq
    (child1217 : Flapjack.WordAlloc.removeDeadStructural input1217 value267 value1 value234 = (output1217, value264, value1))
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value264 value1 value234 = (output1512, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1513 value267 value1 value234 = (output1513, value337, value1) := by
  rw [input1513_def, output1513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1217]
  try dsimp only
  rw [child1512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1217_skip, output1512_skip]
  kernel_rfl

theorem node1514_cond_eq
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value262 value1 value234 = (output1216, value267, value1))
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value267 value1 value234 = (output1513, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1514 value262 value1 value234 = (output1514, value337, value1) := by
  rw [input1514_def, output1514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1216]
  try dsimp only
  rw [child1513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1216_skip, output1513_skip]
  kernel_rfl

theorem node1515_cond_eq
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value262 value1 value234 = (output1189, value262, value1))
    (child1514 : Flapjack.WordAlloc.removeDeadStructural input1514 value262 value1 value234 = (output1514, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1515 value262 value1 value234 = (output1515, value337, value1) := by
  rw [input1515_def, output1515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1189]
  try dsimp only
  rw [child1514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1189_skip, output1514_skip]
  kernel_rfl

theorem node1516_cond_eq
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value261 value1 value234 = (output1188, value262, value1))
    (child1515 : Flapjack.WordAlloc.removeDeadStructural input1515 value262 value1 value234 = (output1515, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1516 value261 value1 value234 = (output1516, value337, value1) := by
  rw [input1516_def, output1516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1188]
  try dsimp only
  rw [child1515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1188_skip, output1515_skip]
  kernel_rfl

theorem node1517_cond_eq
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value260 value1 value234 = (output1187, value261, value1))
    (child1516 : Flapjack.WordAlloc.removeDeadStructural input1516 value261 value1 value234 = (output1516, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1517 value260 value1 value234 = (output1517, value337, value1) := by
  rw [input1517_def, output1517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1187]
  try dsimp only
  rw [child1516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1187_skip, output1516_skip]
  kernel_rfl

theorem node1518_cond_eq
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value255 value1 value234 = (output1186, value260, value1))
    (child1517 : Flapjack.WordAlloc.removeDeadStructural input1517 value260 value1 value234 = (output1517, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1518 value255 value1 value234 = (output1518, value337, value1) := by
  rw [input1518_def, output1518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1186]
  try dsimp only
  rw [child1517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1186_skip, output1517_skip]
  kernel_rfl

theorem node1519_cond_eq
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value255 value1 value234 = (output1159, value255, value1))
    (child1518 : Flapjack.WordAlloc.removeDeadStructural input1518 value255 value1 value234 = (output1518, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1519 value255 value1 value234 = (output1519, value337, value1) := by
  rw [input1519_def, output1519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1159]
  try dsimp only
  rw [child1518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1159_skip, output1518_skip]
  kernel_rfl

theorem node1520_cond_eq
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value252 value1 value234 = (output1158, value255, value1))
    (child1519 : Flapjack.WordAlloc.removeDeadStructural input1519 value255 value1 value234 = (output1519, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1520 value252 value1 value234 = (output1520, value337, value1) := by
  rw [input1520_def, output1520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1158]
  try dsimp only
  rw [child1519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1158_skip, output1519_skip]
  kernel_rfl

theorem node1521_cond_eq
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value240 value1 value234 = (output1153, value252, value1))
    (child1520 : Flapjack.WordAlloc.removeDeadStructural input1520 value252 value1 value234 = (output1520, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1521 value240 value1 value234 = (output1521, value337, value1) := by
  rw [input1521_def, output1521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1153]
  try dsimp only
  rw [child1520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1153_skip, output1520_skip]
  kernel_rfl

theorem node1522_cond_eq
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value240 value1 value234 = (output1022, value240, value1))
    (child1521 : Flapjack.WordAlloc.removeDeadStructural input1521 value240 value1 value234 = (output1521, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1522 value240 value1 value234 = (output1522, value337, value1) := by
  rw [input1522_def, output1522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1022]
  try dsimp only
  rw [child1521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1022_skip, output1521_skip]
  kernel_rfl

theorem node1523_cond_eq
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value239 value1 value234 = (output1021, value240, value1))
    (child1522 : Flapjack.WordAlloc.removeDeadStructural input1522 value240 value1 value234 = (output1522, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input1523 value239 value1 value234 = (output1523, value337, value1) := by
  rw [input1523_def, output1523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1021]
  try dsimp only
  rw [child1522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1021_skip, output1522_skip]
  kernel_rfl

theorem node1524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1524 value239 value1 value234 = (output1524, value239, value1) := by
  rw [input1524_def, output1524_def]
  kernel_rfl

theorem node1525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1525 value239 value1 value234 = (output1525, value239, value1) := by
  rw [input1525_def, output1525_def]
  kernel_rfl

theorem node1526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1526 value239 value1 value234 = (output1526, value239, value1) := by
  rw [input1526_def, output1526_def]
  kernel_rfl

theorem node1527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1527 value239 value1 value234 = (output1527, value239, value1) := by
  rw [input1527_def, output1527_def]
  kernel_rfl

theorem node1528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1528 value239 value1 value234 = (output1528, value239, value1) := by
  rw [input1528_def, output1528_def]
  kernel_rfl

theorem node1529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1529 value239 value1 value234 = (output1529, value239, value1) := by
  rw [input1529_def, output1529_def]
  kernel_rfl

theorem node1530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1530 value239 value1 value234 = (output1530, value239, value1) := by
  rw [input1530_def, output1530_def]
  kernel_rfl

theorem node1531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1531 value239 value1 value234 = (output1531, value239, value1) := by
  rw [input1531_def, output1531_def]
  kernel_rfl

theorem node1532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1532 value239 value1 value234 = (output1532, value239, value1) := by
  rw [input1532_def, output1532_def]
  kernel_rfl

theorem node1533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1533 value239 value1 value234 = (output1533, value239, value1) := by
  rw [input1533_def, output1533_def]
  kernel_rfl

theorem node1534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1534 value239 value1 value234 = (output1534, value239, value1) := by
  rw [input1534_def, output1534_def]
  kernel_rfl

theorem node1535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1535 value239 value1 value234 = (output1535, value239, value1) := by
  rw [input1535_def, output1535_def]
  kernel_rfl

#print axioms node1535_cond_eq
end InitECandidate.Proofs.DeadStages862.Parallel
