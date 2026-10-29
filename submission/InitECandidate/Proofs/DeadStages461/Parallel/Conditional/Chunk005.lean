import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages461.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages461.Parallel
theorem node1280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1280 value552 value1 value512 = (output1280, value553, value1) := by
  rw [input1280_def, output1280_def]
  kernel_rfl

theorem node1281_cond_eq
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value551 value1 value512 = (output1279, value552, value1))
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value552 value1 value512 = (output1280, value553, value1)) : Flapjack.WordAlloc.removeDeadStructural input1281 value551 value1 value512 = (output1281, value553, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1279]
  try dsimp only
  rw [child1280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1279_skip, output1280_skip]
  kernel_rfl

theorem node1282_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value549 value1 value512 = (output1278, value551, value1))
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value551 value1 value512 = (output1281, value553, value1)) : Flapjack.WordAlloc.removeDeadStructural input1282 value549 value1 value512 = (output1282, value553, value1) := by
  rw [input1282_def, output1282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  try dsimp only
  rw [child1281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output1281_skip]
  kernel_rfl

theorem node1283_cond_eq
    (child1275 : Flapjack.WordAlloc.removeDeadStructural input1275 value548 value1 value512 = (output1275, value549, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value549 value1 value512 = (output1282, value553, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value548 value1 value512 = (output1283, value553, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1275]
  try dsimp only
  rw [child1282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1275_skip, output1282_skip]
  kernel_rfl

theorem node1284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value553 value1 value512 = (output1284, value554, value1) := by
  rw [input1284_def, output1284_def]
  kernel_rfl

theorem node1285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value554 value1 value512 = (output1285, value555, value1) := by
  rw [input1285_def, output1285_def]
  kernel_rfl

theorem node1286_cond_eq
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value553 value1 value512 = (output1284, value554, value1))
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value554 value1 value512 = (output1285, value555, value1)) : Flapjack.WordAlloc.removeDeadStructural input1286 value553 value1 value512 = (output1286, value555, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1284]
  try dsimp only
  rw [child1285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1284_skip, output1285_skip]
  kernel_rfl

theorem node1287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1287 value555 value1 value512 = (output1287, value556, value1) := by
  rw [input1287_def, output1287_def]
  kernel_rfl

theorem node1288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1288 value556 value1 value512 = (output1288, value557, value1) := by
  rw [input1288_def, output1288_def]
  kernel_rfl

theorem node1289_cond_eq
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value555 value1 value512 = (output1287, value556, value1))
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value556 value1 value512 = (output1288, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1289 value555 value1 value512 = (output1289, value557, value1) := by
  rw [input1289_def, output1289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1287]
  try dsimp only
  rw [child1288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1287_skip, output1288_skip]
  kernel_rfl

theorem node1290_cond_eq
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value553 value1 value512 = (output1286, value555, value1))
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value555 value1 value512 = (output1289, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1290 value553 value1 value512 = (output1290, value557, value1) := by
  rw [input1290_def, output1290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1286]
  try dsimp only
  rw [child1289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1286_skip, output1289_skip]
  kernel_rfl

theorem node1291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1291 value557 value1 value512 = (output1291, value557, value1) := by
  rw [input1291_def, output1291_def]
  kernel_rfl

theorem node1292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1292 value557 value1 value512 = (output1292, value557, value1) := by
  rw [input1292_def, output1292_def]
  kernel_rfl

theorem node1293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1293 value557 value1 value512 = (output1293, value557, value1) := by
  rw [input1293_def, output1293_def]
  kernel_rfl

theorem node1294_cond_eq
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value557 value1 value512 = (output1292, value557, value1))
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value557 value1 value512 = (output1293, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1294 value557 value1 value512 = (output1294, value557, value1) := by
  rw [input1294_def, output1294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1292]
  try dsimp only
  rw [child1293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1292_skip, output1293_skip]
  kernel_rfl

theorem node1295_cond_eq
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value557 value1 value512 = (output1291, value557, value1))
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value557 value1 value512 = (output1294, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1295 value557 value1 value512 = (output1295, value557, value1) := by
  rw [input1295_def, output1295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1291]
  try dsimp only
  rw [child1294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1291_skip, output1294_skip]
  kernel_rfl

theorem node1296_cond_eq
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value553 value1 value512 = (output1290, value557, value1))
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value557 value1 value512 = (output1295, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1296 value553 value1 value512 = (output1296, value557, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1290]
  try dsimp only
  rw [child1295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1290_skip, output1295_skip]
  kernel_rfl

theorem node1297_cond_eq
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value548 value1 value512 = (output1283, value553, value1))
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value553 value1 value512 = (output1296, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1297 value548 value1 value512 = (output1297, value557, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1283]
  try dsimp only
  rw [child1296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1283_skip, output1296_skip]
  kernel_rfl

theorem node1298_cond_eq
    (child1274 : Flapjack.WordAlloc.removeDeadStructural input1274 value543 value1 value512 = (output1274, value548, value1))
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value548 value1 value512 = (output1297, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1298 value543 value1 value512 = (output1298, value557, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1274]
  try dsimp only
  rw [child1297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1274_skip, output1297_skip]
  kernel_rfl

theorem node1299_cond_eq
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value538 value1 value512 = (output1265, value543, value1))
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value543 value1 value512 = (output1298, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1299 value538 value1 value512 = (output1299, value557, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1265]
  try dsimp only
  rw [child1298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1265_skip, output1298_skip]
  kernel_rfl

theorem node1300_cond_eq
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value533 value1 value512 = (output1256, value538, value1))
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value538 value1 value512 = (output1299, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1300 value533 value1 value512 = (output1300, value557, value1) := by
  rw [input1300_def, output1300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1256]
  try dsimp only
  rw [child1299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1256_skip, output1299_skip]
  kernel_rfl

theorem node1301_cond_eq
    (child1247 : Flapjack.WordAlloc.removeDeadStructural input1247 value532 value1 value512 = (output1247, value533, value1))
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value533 value1 value512 = (output1300, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1301 value532 value1 value512 = (output1301, value557, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1247]
  try dsimp only
  rw [child1300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1247_skip, output1300_skip]
  kernel_rfl

theorem node1302_cond_eq
    (child1246 : Flapjack.WordAlloc.removeDeadStructural input1246 value530 value1 value512 = (output1246, value532, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value532 value1 value512 = (output1301, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value530 value1 value512 = (output1302, value557, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1246]
  try dsimp only
  rw [child1301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1246_skip, output1301_skip]
  kernel_rfl

theorem node1303_cond_eq
    (child1243 : Flapjack.WordAlloc.removeDeadStructural input1243 value529 value1 value512 = (output1243, value530, value1))
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value530 value1 value512 = (output1302, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1303 value529 value1 value512 = (output1303, value557, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1243]
  try dsimp only
  rw [child1302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1243_skip, output1302_skip]
  kernel_rfl

theorem node1304_cond_eq
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value527 value1 value512 = (output1242, value529, value1))
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value529 value1 value512 = (output1303, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1304 value527 value1 value512 = (output1304, value557, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1242]
  try dsimp only
  rw [child1303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1242_skip, output1303_skip]
  kernel_rfl

theorem node1305_cond_eq
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value526 value1 value512 = (output1239, value527, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value527 value1 value512 = (output1304, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value526 value1 value512 = (output1305, value557, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1239]
  try dsimp only
  rw [child1304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1239_skip, output1304_skip]
  kernel_rfl

theorem node1306_cond_eq
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value524 value1 value512 = (output1238, value526, value1))
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value526 value1 value512 = (output1305, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1306 value524 value1 value512 = (output1306, value557, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1238]
  try dsimp only
  rw [child1305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1238_skip, output1305_skip]
  kernel_rfl

theorem node1307_cond_eq
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value523 value1 value512 = (output1235, value524, value1))
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value524 value1 value512 = (output1306, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1307 value523 value1 value512 = (output1307, value557, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1235]
  try dsimp only
  rw [child1306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1235_skip, output1306_skip]
  kernel_rfl

theorem node1308_cond_eq
    (child1234 : Flapjack.WordAlloc.removeDeadStructural input1234 value521 value1 value512 = (output1234, value523, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value523 value1 value512 = (output1307, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value521 value1 value512 = (output1308, value557, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1234]
  try dsimp only
  rw [child1307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1234_skip, output1307_skip]
  kernel_rfl

theorem node1309_cond_eq
    (child1231 : Flapjack.WordAlloc.removeDeadStructural input1231 value519 value1 value512 = (output1231, value521, value1))
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value521 value1 value512 = (output1308, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1309 value519 value1 value512 = (output1309, value557, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1231]
  try dsimp only
  rw [child1308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1231_skip, output1308_skip]
  kernel_rfl

theorem node1310_cond_eq
    (child1228 : Flapjack.WordAlloc.removeDeadStructural input1228 value518 value1 value512 = (output1228, value519, value1))
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value519 value1 value512 = (output1309, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1310 value518 value1 value512 = (output1310, value557, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1228]
  try dsimp only
  rw [child1309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1228_skip, output1309_skip]
  kernel_rfl

theorem node1311_cond_eq
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value517 value1 value512 = (output1227, value518, value1))
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value518 value1 value512 = (output1310, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1311 value517 value1 value512 = (output1311, value557, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1227]
  try dsimp only
  rw [child1310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1227_skip, output1310_skip]
  kernel_rfl

theorem node1312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1312 value517 value1 value512 = (output1312, value517, value1) := by
  rw [input1312_def, output1312_def]
  kernel_rfl

theorem node1313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1313 value517 value1 value512 = (output1313, value517, value1) := by
  rw [input1313_def, output1313_def]
  kernel_rfl

theorem node1314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1314 value517 value1 value512 = (output1314, value517, value1) := by
  rw [input1314_def, output1314_def]
  kernel_rfl

theorem node1315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1315 value517 value1 value512 = (output1315, value517, value1) := by
  rw [input1315_def, output1315_def]
  kernel_rfl

theorem node1316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1316 value517 value1 value512 = (output1316, value517, value1) := by
  rw [input1316_def, output1316_def]
  kernel_rfl

theorem node1317_cond_eq
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value517 value1 value512 = (output1315, value517, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value517 value1 value512 = (output1316, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value517 value1 value512 = (output1317, value517, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1315]
  try dsimp only
  rw [child1316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1315_skip, output1316_skip]
  kernel_rfl

theorem node1318_cond_eq
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value517 value1 value512 = (output1314, value517, value1))
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value517 value1 value512 = (output1317, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input1318 value517 value1 value512 = (output1318, value517, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1314]
  try dsimp only
  rw [child1317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1314_skip, output1317_skip]
  kernel_rfl

theorem node1319_cond_eq
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value517 value1 value512 = (output1313, value517, value1))
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value517 value1 value512 = (output1318, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input1319 value517 value1 value512 = (output1319, value517, value1) := by
  rw [input1319_def, output1319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1313]
  try dsimp only
  rw [child1318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1313_skip, output1318_skip]
  kernel_rfl

theorem node1320_cond_eq
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value517 value1 value512 = (output1312, value517, value1))
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value517 value1 value512 = (output1319, value517, value1)) : Flapjack.WordAlloc.removeDeadStructural input1320 value517 value1 value512 = (output1320, value517, value1) := by
  rw [input1320_def, output1320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1312]
  try dsimp only
  rw [child1319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1312_skip, output1319_skip]
  kernel_rfl

theorem node1321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1321 value517 value1 value512 = (output1321, value557, value1) := by
  rw [input1321_def, output1321_def]
  kernel_rfl

theorem node1322_cond_eq
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value517 value1 value512 = (output1320, value517, value1))
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value517 value1 value512 = (output1321, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1322 value517 value1 value512 = (output1322, value557, value1) := by
  rw [input1322_def, output1322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1320]
  try dsimp only
  rw [child1321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1320_skip, output1321_skip]
  kernel_rfl

theorem node1323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1323 value557 value1 value512 = (output1323, value557, value1) := by
  rw [input1323_def, output1323_def]
  kernel_rfl

theorem node1324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1324 value557 value1 value512 = (output1324, value557, value1) := by
  rw [input1324_def, output1324_def]
  kernel_rfl

theorem node1325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1325 value557 value1 value512 = (output1325, value557, value1) := by
  rw [input1325_def, output1325_def]
  kernel_rfl

theorem node1326_cond_eq
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value557 value1 value512 = (output1324, value557, value1))
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value557 value1 value512 = (output1325, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1326 value557 value1 value512 = (output1326, value557, value1) := by
  rw [input1326_def, output1326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1324]
  try dsimp only
  rw [child1325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1324_skip, output1325_skip]
  kernel_rfl

theorem node1327_cond_eq
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value557 value1 value512 = (output1323, value557, value1))
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value557 value1 value512 = (output1326, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1327 value557 value1 value512 = (output1327, value557, value1) := by
  rw [input1327_def, output1327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1323]
  try dsimp only
  rw [child1326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1323_skip, output1326_skip]
  kernel_rfl

theorem node1328_cond_eq
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value517 value1 value512 = (output1322, value557, value1))
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value557 value1 value512 = (output1327, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1328 value517 value1 value512 = (output1328, value557, value1) := by
  rw [input1328_def, output1328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1322]
  try dsimp only
  rw [child1327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1322_skip, output1327_skip]
  kernel_rfl

theorem node1329_cond_eq
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value517 value1 value512 = (output1311, value557, value1))
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value517 value1 value512 = (output1328, value557, value1)) : Flapjack.WordAlloc.removeDeadStructural input1329 value517 value1 value512 = (output1329, value560, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1311]
  try dsimp only
  rw [child1328]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1311_skip, output1328_skip]
  kernel_rfl

theorem node1330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1330 value560 value1 value512 = (output1330, value561, value1) := by
  rw [input1330_def, output1330_def]
  kernel_rfl

theorem node1331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1331 value561 value1 value512 = (output1331, value562, value1) := by
  rw [input1331_def, output1331_def]
  kernel_rfl

theorem node1332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1332 value562 value1 value512 = (output1332, value562, value1) := by
  rw [input1332_def, output1332_def]
  kernel_rfl

theorem node1333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1333 value562 value1 value512 = (output1333, value563, value1) := by
  rw [input1333_def, output1333_def]
  kernel_rfl

theorem node1334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1334 value563 value1 value512 = (output1334, value564, value1) := by
  rw [input1334_def, output1334_def]
  kernel_rfl

theorem node1335_cond_eq
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value562 value1 value512 = (output1333, value563, value1))
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value563 value1 value512 = (output1334, value564, value1)) : Flapjack.WordAlloc.removeDeadStructural input1335 value562 value1 value512 = (output1335, value564, value1) := by
  rw [input1335_def, output1335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1333]
  try dsimp only
  rw [child1334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1333_skip, output1334_skip]
  kernel_rfl

theorem node1336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1336 value564 value1 value512 = (output1336, value565, value1) := by
  rw [input1336_def, output1336_def]
  kernel_rfl

theorem node1337_cond_eq
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value562 value1 value512 = (output1335, value564, value1))
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value564 value1 value512 = (output1336, value565, value1)) : Flapjack.WordAlloc.removeDeadStructural input1337 value562 value1 value512 = (output1337, value565, value1) := by
  rw [input1337_def, output1337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1335]
  try dsimp only
  rw [child1336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1335_skip, output1336_skip]
  kernel_rfl

theorem node1338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1338 value565 value1 value512 = (output1338, value566, value1) := by
  rw [input1338_def, output1338_def]
  kernel_rfl

theorem node1339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1339 value566 value1 value512 = (output1339, value567, value1) := by
  rw [input1339_def, output1339_def]
  kernel_rfl

theorem node1340_cond_eq
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value565 value1 value512 = (output1338, value566, value1))
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value566 value1 value512 = (output1339, value567, value1)) : Flapjack.WordAlloc.removeDeadStructural input1340 value565 value1 value512 = (output1340, value567, value1) := by
  rw [input1340_def, output1340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1338]
  try dsimp only
  rw [child1339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1338_skip, output1339_skip]
  kernel_rfl

theorem node1341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1341 value567 value1 value512 = (output1341, value568, value1) := by
  rw [input1341_def, output1341_def]
  kernel_rfl

theorem node1342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1342 value568 value1 value512 = (output1342, value569, value1) := by
  rw [input1342_def, output1342_def]
  kernel_rfl

theorem node1343_cond_eq
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value567 value1 value512 = (output1341, value568, value1))
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value568 value1 value512 = (output1342, value569, value1)) : Flapjack.WordAlloc.removeDeadStructural input1343 value567 value1 value512 = (output1343, value569, value1) := by
  rw [input1343_def, output1343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1341]
  try dsimp only
  rw [child1342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1341_skip, output1342_skip]
  kernel_rfl

theorem node1344_cond_eq
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value565 value1 value512 = (output1340, value567, value1))
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value567 value1 value512 = (output1343, value569, value1)) : Flapjack.WordAlloc.removeDeadStructural input1344 value565 value1 value512 = (output1344, value569, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1340]
  try dsimp only
  rw [child1343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1340_skip, output1343_skip]
  kernel_rfl

theorem node1345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1345 value569 value1 value512 = (output1345, value570, value1) := by
  rw [input1345_def, output1345_def]
  kernel_rfl

theorem node1346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1346 value570 value1 value512 = (output1346, value570, value1) := by
  rw [input1346_def, output1346_def]
  kernel_rfl

theorem node1347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1347 value570 value1 value512 = (output1347, value570, value1) := by
  rw [input1347_def, output1347_def]
  kernel_rfl

theorem node1348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1348 value570 value1 value512 = (output1348, value570, value1) := by
  rw [input1348_def, output1348_def]
  kernel_rfl

theorem node1349_cond_eq
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value570 value1 value512 = (output1347, value570, value1))
    (child1348 : Flapjack.WordAlloc.removeDeadStructural input1348 value570 value1 value512 = (output1348, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1349 value570 value1 value512 = (output1349, value570, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1347]
  try dsimp only
  rw [child1348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1347_skip, output1348_skip]
  kernel_rfl

theorem node1350_cond_eq
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value570 value1 value512 = (output1346, value570, value1))
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value570 value1 value512 = (output1349, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1350 value570 value1 value512 = (output1350, value570, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1346]
  try dsimp only
  rw [child1349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1346_skip, output1349_skip]
  kernel_rfl

theorem node1351_cond_eq
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value569 value1 value512 = (output1345, value570, value1))
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value570 value1 value512 = (output1350, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1351 value569 value1 value512 = (output1351, value570, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1345]
  try dsimp only
  rw [child1350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1345_skip, output1350_skip]
  kernel_rfl

theorem node1352_cond_eq
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value565 value1 value512 = (output1344, value569, value1))
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value569 value1 value512 = (output1351, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1352 value565 value1 value512 = (output1352, value570, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1344]
  try dsimp only
  rw [child1351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1344_skip, output1351_skip]
  kernel_rfl

theorem node1353_cond_eq
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value562 value1 value512 = (output1337, value565, value1))
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value565 value1 value512 = (output1352, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1353 value562 value1 value512 = (output1353, value570, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1337]
  try dsimp only
  rw [child1352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1337_skip, output1352_skip]
  kernel_rfl

theorem node1354_cond_eq
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value562 value1 value512 = (output1332, value562, value1))
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value562 value1 value512 = (output1353, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1354 value562 value1 value512 = (output1354, value570, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1332]
  try dsimp only
  rw [child1353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1332_skip, output1353_skip]
  kernel_rfl

theorem node1355_cond_eq
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value561 value1 value512 = (output1331, value562, value1))
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value562 value1 value512 = (output1354, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1355 value561 value1 value512 = (output1355, value570, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1331]
  try dsimp only
  rw [child1354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1331_skip, output1354_skip]
  kernel_rfl

theorem node1356_cond_eq
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value560 value1 value512 = (output1330, value561, value1))
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value561 value1 value512 = (output1355, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1356 value560 value1 value512 = (output1356, value570, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1330]
  try dsimp only
  rw [child1355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1330_skip, output1355_skip]
  kernel_rfl

theorem node1357_cond_eq
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value517 value1 value512 = (output1329, value560, value1))
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value560 value1 value512 = (output1356, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1357 value517 value1 value512 = (output1357, value570, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1329]
  try dsimp only
  rw [child1356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1329_skip, output1356_skip]
  kernel_rfl

theorem node1358_cond_eq
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value517 value1 value512 = (output1216, value517, value1))
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value517 value1 value512 = (output1357, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1358 value517 value1 value512 = (output1358, value570, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1216]
  try dsimp only
  rw [child1357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1216_skip, output1357_skip]
  kernel_rfl

theorem node1359_cond_eq
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value515 value1 value512 = (output1215, value517, value1))
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value517 value1 value512 = (output1358, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1359 value515 value1 value512 = (output1359, value570, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1215]
  try dsimp only
  rw [child1358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1215_skip, output1358_skip]
  kernel_rfl

theorem node1360_cond_eq
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value514 value1 value512 = (output1212, value515, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value515 value1 value512 = (output1359, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value514 value1 value512 = (output1360, value570, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1212]
  try dsimp only
  rw [child1359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1212_skip, output1359_skip]
  kernel_rfl

theorem node1361_cond_eq
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value514 value1 value512 = (output1211, value514, value1))
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value514 value1 value512 = (output1360, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1361 value514 value1 value512 = (output1361, value570, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1211]
  try dsimp only
  rw [child1360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1211_skip, output1360_skip]
  kernel_rfl

theorem node1362_cond_eq
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value513 value1 value512 = (output1208, value514, value1))
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value514 value1 value512 = (output1361, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1362 value513 value1 value512 = (output1362, value570, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1208]
  try dsimp only
  rw [child1361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1208_skip, output1361_skip]
  kernel_rfl

theorem node1363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1363 value513 value1 value512 = (output1363, value513, value1) := by
  rw [input1363_def, output1363_def]
  kernel_rfl

theorem node1364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1364 value513 value1 value512 = (output1364, value513, value1) := by
  rw [input1364_def, output1364_def]
  kernel_rfl

theorem node1365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1365 value513 value1 value512 = (output1365, value513, value1) := by
  rw [input1365_def, output1365_def]
  kernel_rfl

theorem node1366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1366 value513 value1 value512 = (output1366, value513, value1) := by
  rw [input1366_def, output1366_def]
  kernel_rfl

theorem node1367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1367 value513 value1 value512 = (output1367, value513, value1) := by
  rw [input1367_def, output1367_def]
  kernel_rfl

theorem node1368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1368 value513 value1 value512 = (output1368, value513, value1) := by
  rw [input1368_def, output1368_def]
  kernel_rfl

theorem node1369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1369 value513 value1 value512 = (output1369, value513, value1) := by
  rw [input1369_def, output1369_def]
  kernel_rfl

theorem node1370_cond_eq
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value513 value1 value512 = (output1368, value513, value1))
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value513 value1 value512 = (output1369, value513, value1)) : Flapjack.WordAlloc.removeDeadStructural input1370 value513 value1 value512 = (output1370, value513, value1) := by
  rw [input1370_def, output1370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1368]
  try dsimp only
  rw [child1369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1368_skip, output1369_skip]
  kernel_rfl

theorem node1371_cond_eq
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value513 value1 value512 = (output1367, value513, value1))
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value513 value1 value512 = (output1370, value513, value1)) : Flapjack.WordAlloc.removeDeadStructural input1371 value513 value1 value512 = (output1371, value513, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1367]
  try dsimp only
  rw [child1370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1367_skip, output1370_skip]
  kernel_rfl

theorem node1372_cond_eq
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value513 value1 value512 = (output1366, value513, value1))
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value513 value1 value512 = (output1371, value513, value1)) : Flapjack.WordAlloc.removeDeadStructural input1372 value513 value1 value512 = (output1372, value513, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1366]
  try dsimp only
  rw [child1371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1366_skip, output1371_skip]
  kernel_rfl

theorem node1373_cond_eq
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value513 value1 value512 = (output1365, value513, value1))
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value513 value1 value512 = (output1372, value513, value1)) : Flapjack.WordAlloc.removeDeadStructural input1373 value513 value1 value512 = (output1373, value513, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1365]
  try dsimp only
  rw [child1372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1365_skip, output1372_skip]
  kernel_rfl

theorem node1374_cond_eq
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value513 value1 value512 = (output1364, value513, value1))
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value513 value1 value512 = (output1373, value513, value1)) : Flapjack.WordAlloc.removeDeadStructural input1374 value513 value1 value512 = (output1374, value513, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1364]
  try dsimp only
  rw [child1373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1364_skip, output1373_skip]
  kernel_rfl

theorem node1375_cond_eq
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value513 value1 value512 = (output1363, value513, value1))
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value513 value1 value512 = (output1374, value513, value1)) : Flapjack.WordAlloc.removeDeadStructural input1375 value513 value1 value512 = (output1375, value513, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1363]
  try dsimp only
  rw [child1374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1363_skip, output1374_skip]
  kernel_rfl

theorem node1376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1376 value513 value1 value512 = (output1376, value570, value1) := by
  rw [input1376_def, output1376_def]
  kernel_rfl

theorem node1377_cond_eq
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value513 value1 value512 = (output1375, value513, value1))
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value513 value1 value512 = (output1376, value570, value1)) : Flapjack.WordAlloc.removeDeadStructural input1377 value513 value1 value512 = (output1377, value570, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1375]
  try dsimp only
  rw [child1376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1375_skip, output1376_skip]
  kernel_rfl

theorem node1378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1378 value570 value1 value512 = (output1378, value510, value1) := by
  rw [input1378_def, output1378_def]
  kernel_rfl

theorem node1379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1379 value510 value1 value512 = (output1379, value571, value1) := by
  rw [input1379_def, output1379_def]
  kernel_rfl

theorem node1380_cond_eq
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value570 value1 value512 = (output1378, value510, value1))
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value510 value1 value512 = (output1379, value571, value1)) : Flapjack.WordAlloc.removeDeadStructural input1380 value570 value1 value512 = (output1380, value571, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1378]
  try dsimp only
  rw [child1379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1378_skip, output1379_skip]
  kernel_rfl

theorem node1381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1381 value571 value1 value512 = (output1381, value571, value1) := by
  rw [input1381_def, output1381_def]
  kernel_rfl

theorem node1382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1382 value571 value1 value512 = (output1382, value571, value1) := by
  rw [input1382_def, output1382_def]
  kernel_rfl

theorem node1383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1383 value571 value1 value512 = (output1383, value571, value1) := by
  rw [input1383_def, output1383_def]
  kernel_rfl

theorem node1384_cond_eq
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value571 value1 value512 = (output1382, value571, value1))
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value571 value1 value512 = (output1383, value571, value1)) : Flapjack.WordAlloc.removeDeadStructural input1384 value571 value1 value512 = (output1384, value571, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1382]
  try dsimp only
  rw [child1383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1382_skip, output1383_skip]
  kernel_rfl

theorem node1385_cond_eq
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value571 value1 value512 = (output1381, value571, value1))
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value571 value1 value512 = (output1384, value571, value1)) : Flapjack.WordAlloc.removeDeadStructural input1385 value571 value1 value512 = (output1385, value571, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1381]
  try dsimp only
  rw [child1384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1381_skip, output1384_skip]
  kernel_rfl

theorem node1386_cond_eq
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value570 value1 value512 = (output1380, value571, value1))
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value571 value1 value512 = (output1385, value571, value1)) : Flapjack.WordAlloc.removeDeadStructural input1386 value570 value1 value512 = (output1386, value571, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1380]
  try dsimp only
  rw [child1385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1380_skip, output1385_skip]
  kernel_rfl

theorem node1387_cond_eq
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value513 value1 value512 = (output1377, value570, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value570 value1 value512 = (output1386, value571, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value513 value1 value512 = (output1387, value571, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1377]
  try dsimp only
  rw [child1386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1377_skip, output1386_skip]
  kernel_rfl

theorem node1388_cond_eq
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value513 value1 value512 = (output1362, value570, value1))
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value513 value1 value512 = (output1387, value571, value1)) : Flapjack.WordAlloc.removeDeadStructural input1388 value513 value1 value512 = (output1388, value570, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1362]
  try dsimp only
  rw [child1387]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1362_skip, output1387_skip]
  kernel_rfl

theorem node1389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1389 value570 value1 value512 = (output1389, value573, value1) := by
  rw [input1389_def, output1389_def]
  kernel_rfl

theorem node1390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1390 value573 value1 value512 = (output1390, value511, value1) := by
  rw [input1390_def, output1390_def]
  kernel_rfl

theorem node1391_cond_eq
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value570 value1 value512 = (output1389, value573, value1))
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value573 value1 value512 = (output1390, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input1391 value570 value1 value512 = (output1391, value511, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1389]
  try dsimp only
  rw [child1390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1389_skip, output1390_skip]
  kernel_rfl

theorem node1392_cond_eq
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value513 value1 value512 = (output1388, value570, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value570 value1 value512 = (output1391, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value513 value1 value512 = (output1392, value511, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1388]
  try dsimp only
  rw [child1391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1388_skip, output1391_skip]
  kernel_rfl

theorem node1393_cond_eq
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value513 value1 value512 = (output1193, value513, value1))
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value513 value1 value512 = (output1392, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input1393 value513 value1 value512 = (output1393, value511, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1193]
  try dsimp only
  rw [child1392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1193_skip, output1392_skip]
  kernel_rfl

theorem node1394_cond_eq
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value511 value1 value512 = (output1192, value513, value1))
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value513 value1 value512 = (output1393, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input1394 value511 value1 value512 = (output1394, value511, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1192]
  try dsimp only
  rw [child1393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1192_skip, output1393_skip]
  kernel_rfl

theorem node1395_cond_eq
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value511 value1 value512 = (output1394, value511, value1)) : Flapjack.WordAlloc.removeDeadStructural input1395 value510 value1 value2 = (output1395, value511, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value512 = (value511, value510) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child1394
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node1396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1396 value511 value1 value2 = (output1396, value574, value1) := by
  rw [input1396_def, output1396_def]
  kernel_rfl

theorem node1397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1397 value574 value1 value2 = (output1397, value574, value1) := by
  rw [input1397_def, output1397_def]
  kernel_rfl

theorem node1398_cond_eq
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value511 value1 value2 = (output1396, value574, value1))
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value574 value1 value2 = (output1397, value574, value1)) : Flapjack.WordAlloc.removeDeadStructural input1398 value511 value1 value2 = (output1398, value574, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1396]
  try dsimp only
  rw [child1397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1396_skip, output1397_skip]
  kernel_rfl

theorem node1399_cond_eq
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value510 value1 value2 = (output1395, value511, value1))
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value511 value1 value2 = (output1398, value574, value1)) : Flapjack.WordAlloc.removeDeadStructural input1399 value510 value1 value2 = (output1399, value574, value1) := by
  rw [input1399_def, output1399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1395]
  try dsimp only
  rw [child1398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1395_skip, output1398_skip]
  kernel_rfl

theorem node1400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1400 value574 value1 value2 = (output1400, value574, value1) := by
  rw [input1400_def, output1400_def]
  kernel_rfl

theorem node1401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1401 value574 value1 value2 = (output1401, value575, value1) := by
  rw [input1401_def, output1401_def]
  kernel_rfl

theorem node1402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1402 value575 value1 value2 = (output1402, value576, value1) := by
  rw [input1402_def, output1402_def]
  kernel_rfl

theorem node1403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1403 value576 value1 value2 = (output1403, value576, value1) := by
  rw [input1403_def, output1403_def]
  kernel_rfl

theorem node1404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1404 value576 value1 value2 = (output1404, value577, value1) := by
  rw [input1404_def, output1404_def]
  kernel_rfl

theorem node1405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1405 value577 value1 value2 = (output1405, value578, value1) := by
  rw [input1405_def, output1405_def]
  kernel_rfl

theorem node1406_cond_eq
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value576 value1 value2 = (output1404, value577, value1))
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value577 value1 value2 = (output1405, value578, value1)) : Flapjack.WordAlloc.removeDeadStructural input1406 value576 value1 value2 = (output1406, value578, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1404]
  try dsimp only
  rw [child1405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1404_skip, output1405_skip]
  kernel_rfl

theorem node1407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1407 value578 value1 value2 = (output1407, value579, value1) := by
  rw [input1407_def, output1407_def]
  kernel_rfl

theorem node1408_cond_eq
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value576 value1 value2 = (output1406, value578, value1))
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value578 value1 value2 = (output1407, value579, value1)) : Flapjack.WordAlloc.removeDeadStructural input1408 value576 value1 value2 = (output1408, value579, value1) := by
  rw [input1408_def, output1408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1406]
  try dsimp only
  rw [child1407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1406_skip, output1407_skip]
  kernel_rfl

theorem node1409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1409 value579 value1 value2 = (output1409, value580, value1) := by
  rw [input1409_def, output1409_def]
  kernel_rfl

theorem node1410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1410 value580 value1 value2 = (output1410, value581, value1) := by
  rw [input1410_def, output1410_def]
  kernel_rfl

theorem node1411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1411 value581 value1 value2 = (output1411, value582, value1) := by
  rw [input1411_def, output1411_def]
  kernel_rfl

theorem node1412_cond_eq
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value580 value1 value2 = (output1410, value581, value1))
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value581 value1 value2 = (output1411, value582, value1)) : Flapjack.WordAlloc.removeDeadStructural input1412 value580 value1 value2 = (output1412, value582, value1) := by
  rw [input1412_def, output1412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1410]
  try dsimp only
  rw [child1411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1410_skip, output1411_skip]
  kernel_rfl

theorem node1413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1413 value582 value1 value2 = (output1413, value583, value1) := by
  rw [input1413_def, output1413_def]
  kernel_rfl

theorem node1414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1414 value583 value1 value2 = (output1414, value584, value1) := by
  rw [input1414_def, output1414_def]
  kernel_rfl

theorem node1415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1415 value584 value1 value2 = (output1415, value585, value1) := by
  rw [input1415_def, output1415_def]
  kernel_rfl

theorem node1416_cond_eq
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value583 value1 value2 = (output1414, value584, value1))
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value584 value1 value2 = (output1415, value585, value1)) : Flapjack.WordAlloc.removeDeadStructural input1416 value583 value1 value2 = (output1416, value585, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1414]
  try dsimp only
  rw [child1415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1414_skip, output1415_skip]
  kernel_rfl

theorem node1417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1417 value585 value1 value2 = (output1417, value586, value1) := by
  rw [input1417_def, output1417_def]
  kernel_rfl

theorem node1418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1418 value586 value1 value2 = (output1418, value587, value1) := by
  rw [input1418_def, output1418_def]
  kernel_rfl

theorem node1419_cond_eq
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value585 value1 value2 = (output1417, value586, value1))
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value586 value1 value2 = (output1418, value587, value1)) : Flapjack.WordAlloc.removeDeadStructural input1419 value585 value1 value2 = (output1419, value587, value1) := by
  rw [input1419_def, output1419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1417]
  try dsimp only
  rw [child1418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1417_skip, output1418_skip]
  kernel_rfl

theorem node1420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1420 value587 value1 value2 = (output1420, value588, value1) := by
  rw [input1420_def, output1420_def]
  kernel_rfl

theorem node1421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1421 value588 value1 value2 = (output1421, value589, value1) := by
  rw [input1421_def, output1421_def]
  kernel_rfl

theorem node1422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1422 value589 value1 value2 = (output1422, value590, value1) := by
  rw [input1422_def, output1422_def]
  kernel_rfl

theorem node1423_cond_eq
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value588 value1 value2 = (output1421, value589, value1))
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value589 value1 value2 = (output1422, value590, value1)) : Flapjack.WordAlloc.removeDeadStructural input1423 value588 value1 value2 = (output1423, value590, value1) := by
  rw [input1423_def, output1423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1421]
  try dsimp only
  rw [child1422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1421_skip, output1422_skip]
  kernel_rfl

theorem node1424_cond_eq
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value587 value1 value2 = (output1420, value588, value1))
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value588 value1 value2 = (output1423, value590, value1)) : Flapjack.WordAlloc.removeDeadStructural input1424 value587 value1 value2 = (output1424, value590, value1) := by
  rw [input1424_def, output1424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1420]
  try dsimp only
  rw [child1423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1420_skip, output1423_skip]
  kernel_rfl

theorem node1425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1425 value590 value1 value2 = (output1425, value591, value1) := by
  rw [input1425_def, output1425_def]
  kernel_rfl

theorem node1426_cond_eq
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value587 value1 value2 = (output1424, value590, value1))
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value590 value1 value2 = (output1425, value591, value1)) : Flapjack.WordAlloc.removeDeadStructural input1426 value587 value1 value2 = (output1426, value591, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1424]
  try dsimp only
  rw [child1425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1424_skip, output1425_skip]
  kernel_rfl

theorem node1427_cond_eq
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value585 value1 value2 = (output1419, value587, value1))
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value587 value1 value2 = (output1426, value591, value1)) : Flapjack.WordAlloc.removeDeadStructural input1427 value585 value1 value2 = (output1427, value591, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1419]
  try dsimp only
  rw [child1426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1419_skip, output1426_skip]
  kernel_rfl

theorem node1428_cond_eq
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value583 value1 value2 = (output1416, value585, value1))
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value585 value1 value2 = (output1427, value591, value1)) : Flapjack.WordAlloc.removeDeadStructural input1428 value583 value1 value2 = (output1428, value591, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1416]
  try dsimp only
  rw [child1427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1416_skip, output1427_skip]
  kernel_rfl

theorem node1429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1429 value591 value1 value2 = (output1429, value591, value1) := by
  rw [input1429_def, output1429_def]
  kernel_rfl

theorem node1430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1430 value591 value1 value2 = (output1430, value592, value1) := by
  rw [input1430_def, output1430_def]
  kernel_rfl

theorem node1431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1431 value592 value1 value2 = (output1431, value593, value1) := by
  rw [input1431_def, output1431_def]
  kernel_rfl

theorem node1432_cond_eq
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value591 value1 value2 = (output1430, value592, value1))
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value592 value1 value2 = (output1431, value593, value1)) : Flapjack.WordAlloc.removeDeadStructural input1432 value591 value1 value2 = (output1432, value593, value1) := by
  rw [input1432_def, output1432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1430]
  try dsimp only
  rw [child1431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1430_skip, output1431_skip]
  kernel_rfl

theorem node1433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1433 value593 value1 value2 = (output1433, value594, value1) := by
  rw [input1433_def, output1433_def]
  kernel_rfl

theorem node1434_cond_eq
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value591 value1 value2 = (output1432, value593, value1))
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value593 value1 value2 = (output1433, value594, value1)) : Flapjack.WordAlloc.removeDeadStructural input1434 value591 value1 value2 = (output1434, value594, value1) := by
  rw [input1434_def, output1434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1432]
  try dsimp only
  rw [child1433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1432_skip, output1433_skip]
  kernel_rfl

theorem node1435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1435 value594 value1 value2 = (output1435, value595, value1) := by
  rw [input1435_def, output1435_def]
  kernel_rfl

theorem node1436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1436 value595 value1 value2 = (output1436, value596, value1) := by
  rw [input1436_def, output1436_def]
  kernel_rfl

theorem node1437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1437 value596 value1 value2 = (output1437, value597, value1) := by
  rw [input1437_def, output1437_def]
  kernel_rfl

theorem node1438_cond_eq
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value595 value1 value2 = (output1436, value596, value1))
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value596 value1 value2 = (output1437, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input1438 value595 value1 value2 = (output1438, value597, value1) := by
  rw [input1438_def, output1438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1436]
  try dsimp only
  rw [child1437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1436_skip, output1437_skip]
  kernel_rfl

theorem node1439_cond_eq
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value594 value1 value2 = (output1435, value595, value1))
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value595 value1 value2 = (output1438, value597, value1)) : Flapjack.WordAlloc.removeDeadStructural input1439 value594 value1 value2 = (output1439, value597, value1) := by
  rw [input1439_def, output1439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1435]
  try dsimp only
  rw [child1438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1435_skip, output1438_skip]
  kernel_rfl

theorem node1440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1440 value597 value1 value2 = (output1440, value598, value1) := by
  rw [input1440_def, output1440_def]
  kernel_rfl

theorem node1441_cond_eq
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value594 value1 value2 = (output1439, value597, value1))
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value597 value1 value2 = (output1440, value598, value1)) : Flapjack.WordAlloc.removeDeadStructural input1441 value594 value1 value2 = (output1441, value598, value1) := by
  rw [input1441_def, output1441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1439]
  try dsimp only
  rw [child1440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1439_skip, output1440_skip]
  kernel_rfl

theorem node1442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1442 value598 value1 value2 = (output1442, value599, value1) := by
  rw [input1442_def, output1442_def]
  kernel_rfl

theorem node1443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1443 value599 value1 value2 = (output1443, value599, value1) := by
  rw [input1443_def, output1443_def]
  kernel_rfl

theorem node1444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1444 value599 value1 value2 = (output1444, value600, value1) := by
  rw [input1444_def, output1444_def]
  kernel_rfl

theorem node1445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1445 value600 value1 value2 = (output1445, value601, value1) := by
  rw [input1445_def, output1445_def]
  kernel_rfl

theorem node1446_cond_eq
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value599 value1 value2 = (output1444, value600, value1))
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value600 value1 value2 = (output1445, value601, value1)) : Flapjack.WordAlloc.removeDeadStructural input1446 value599 value1 value2 = (output1446, value601, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1444]
  try dsimp only
  rw [child1445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1444_skip, output1445_skip]
  kernel_rfl

theorem node1447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1447 value601 value1 value2 = (output1447, value602, value1) := by
  rw [input1447_def, output1447_def]
  kernel_rfl

theorem node1448_cond_eq
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value599 value1 value2 = (output1446, value601, value1))
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value601 value1 value2 = (output1447, value602, value1)) : Flapjack.WordAlloc.removeDeadStructural input1448 value599 value1 value2 = (output1448, value602, value1) := by
  rw [input1448_def, output1448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1446]
  try dsimp only
  rw [child1447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1446_skip, output1447_skip]
  kernel_rfl

theorem node1449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1449 value602 value1 value2 = (output1449, value603, value1) := by
  rw [input1449_def, output1449_def]
  kernel_rfl

theorem node1450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1450 value603 value1 value2 = (output1450, value604, value1) := by
  rw [input1450_def, output1450_def]
  kernel_rfl

theorem node1451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1451 value604 value1 value2 = (output1451, value605, value1) := by
  rw [input1451_def, output1451_def]
  kernel_rfl

theorem node1452_cond_eq
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value603 value1 value2 = (output1450, value604, value1))
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value604 value1 value2 = (output1451, value605, value1)) : Flapjack.WordAlloc.removeDeadStructural input1452 value603 value1 value2 = (output1452, value605, value1) := by
  rw [input1452_def, output1452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1450]
  try dsimp only
  rw [child1451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1450_skip, output1451_skip]
  kernel_rfl

theorem node1453_cond_eq
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value602 value1 value2 = (output1449, value603, value1))
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value603 value1 value2 = (output1452, value605, value1)) : Flapjack.WordAlloc.removeDeadStructural input1453 value602 value1 value2 = (output1453, value605, value1) := by
  rw [input1453_def, output1453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1449]
  try dsimp only
  rw [child1452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1449_skip, output1452_skip]
  kernel_rfl

theorem node1454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1454 value605 value1 value2 = (output1454, value606, value1) := by
  rw [input1454_def, output1454_def]
  kernel_rfl

theorem node1455_cond_eq
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value602 value1 value2 = (output1453, value605, value1))
    (child1454 : Flapjack.WordAlloc.removeDeadStructural input1454 value605 value1 value2 = (output1454, value606, value1)) : Flapjack.WordAlloc.removeDeadStructural input1455 value602 value1 value2 = (output1455, value606, value1) := by
  rw [input1455_def, output1455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1453]
  try dsimp only
  rw [child1454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1453_skip, output1454_skip]
  kernel_rfl

theorem node1456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1456 value606 value1 value2 = (output1456, value607, value1) := by
  rw [input1456_def, output1456_def]
  kernel_rfl

theorem node1457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1457 value607 value1 value2 = (output1457, value608, value1) := by
  rw [input1457_def, output1457_def]
  kernel_rfl

theorem node1458_cond_eq
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value606 value1 value2 = (output1456, value607, value1))
    (child1457 : Flapjack.WordAlloc.removeDeadStructural input1457 value607 value1 value2 = (output1457, value608, value1)) : Flapjack.WordAlloc.removeDeadStructural input1458 value606 value1 value2 = (output1458, value608, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1456]
  try dsimp only
  rw [child1457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1456_skip, output1457_skip]
  kernel_rfl

theorem node1459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1459 value608 value1 value2 = (output1459, value609, value1) := by
  rw [input1459_def, output1459_def]
  kernel_rfl

theorem node1460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1460 value609 value1 value2 = (output1460, value610, value1) := by
  rw [input1460_def, output1460_def]
  kernel_rfl

theorem node1461_cond_eq
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value608 value1 value2 = (output1459, value609, value1))
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value609 value1 value2 = (output1460, value610, value1)) : Flapjack.WordAlloc.removeDeadStructural input1461 value608 value1 value2 = (output1461, value610, value1) := by
  rw [input1461_def, output1461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1459]
  try dsimp only
  rw [child1460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1459_skip, output1460_skip]
  kernel_rfl

theorem node1462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1462 value610 value1 value2 = (output1462, value611, value1) := by
  rw [input1462_def, output1462_def]
  kernel_rfl

theorem node1463_cond_eq
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value608 value1 value2 = (output1461, value610, value1))
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value610 value1 value2 = (output1462, value611, value1)) : Flapjack.WordAlloc.removeDeadStructural input1463 value608 value1 value2 = (output1463, value611, value1) := by
  rw [input1463_def, output1463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1461]
  try dsimp only
  rw [child1462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1461_skip, output1462_skip]
  kernel_rfl

theorem node1464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1464 value611 value1 value2 = (output1464, value611, value1) := by
  rw [input1464_def, output1464_def]
  kernel_rfl

theorem node1465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1465 value611 value1 value2 = (output1465, value612, value1) := by
  rw [input1465_def, output1465_def]
  kernel_rfl

theorem node1466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1466 value612 value1 value2 = (output1466, value613, value1) := by
  rw [input1466_def, output1466_def]
  kernel_rfl

theorem node1467_cond_eq
    (child1465 : Flapjack.WordAlloc.removeDeadStructural input1465 value611 value1 value2 = (output1465, value612, value1))
    (child1466 : Flapjack.WordAlloc.removeDeadStructural input1466 value612 value1 value2 = (output1466, value613, value1)) : Flapjack.WordAlloc.removeDeadStructural input1467 value611 value1 value2 = (output1467, value613, value1) := by
  rw [input1467_def, output1467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1465]
  try dsimp only
  rw [child1466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1465_skip, output1466_skip]
  kernel_rfl

theorem node1468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1468 value613 value1 value2 = (output1468, value614, value1) := by
  rw [input1468_def, output1468_def]
  kernel_rfl

theorem node1469_cond_eq
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value611 value1 value2 = (output1467, value613, value1))
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value613 value1 value2 = (output1468, value614, value1)) : Flapjack.WordAlloc.removeDeadStructural input1469 value611 value1 value2 = (output1469, value614, value1) := by
  rw [input1469_def, output1469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1467]
  try dsimp only
  rw [child1468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1467_skip, output1468_skip]
  kernel_rfl

theorem node1470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1470 value614 value1 value2 = (output1470, value615, value1) := by
  rw [input1470_def, output1470_def]
  kernel_rfl

theorem node1471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1471 value615 value1 value2 = (output1471, value616, value1) := by
  rw [input1471_def, output1471_def]
  kernel_rfl

theorem node1472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1472 value616 value1 value2 = (output1472, value617, value1) := by
  rw [input1472_def, output1472_def]
  kernel_rfl

theorem node1473_cond_eq
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value615 value1 value2 = (output1471, value616, value1))
    (child1472 : Flapjack.WordAlloc.removeDeadStructural input1472 value616 value1 value2 = (output1472, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input1473 value615 value1 value2 = (output1473, value617, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1471]
  try dsimp only
  rw [child1472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1471_skip, output1472_skip]
  kernel_rfl

theorem node1474_cond_eq
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value614 value1 value2 = (output1470, value615, value1))
    (child1473 : Flapjack.WordAlloc.removeDeadStructural input1473 value615 value1 value2 = (output1473, value617, value1)) : Flapjack.WordAlloc.removeDeadStructural input1474 value614 value1 value2 = (output1474, value617, value1) := by
  rw [input1474_def, output1474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1470]
  try dsimp only
  rw [child1473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1470_skip, output1473_skip]
  kernel_rfl

theorem node1475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1475 value617 value1 value2 = (output1475, value618, value1) := by
  rw [input1475_def, output1475_def]
  kernel_rfl

theorem node1476_cond_eq
    (child1474 : Flapjack.WordAlloc.removeDeadStructural input1474 value614 value1 value2 = (output1474, value617, value1))
    (child1475 : Flapjack.WordAlloc.removeDeadStructural input1475 value617 value1 value2 = (output1475, value618, value1)) : Flapjack.WordAlloc.removeDeadStructural input1476 value614 value1 value2 = (output1476, value618, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1474]
  try dsimp only
  rw [child1475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1474_skip, output1475_skip]
  kernel_rfl

theorem node1477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1477 value618 value1 value2 = (output1477, value618, value1) := by
  rw [input1477_def, output1477_def]
  kernel_rfl

theorem node1478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1478 value619 value1 value620 = (output1478, value621, value1) := by
  rw [input1478_def, output1478_def]
  kernel_rfl

theorem node1479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1479 value621 value1 value620 = (output1479, value621, value1) := by
  rw [input1479_def, output1479_def]
  kernel_rfl

theorem node1480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1480 value621 value1 value620 = (output1480, value621, value1) := by
  rw [input1480_def, output1480_def]
  kernel_rfl

theorem node1481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1481 value621 value1 value620 = (output1481, value621, value1) := by
  rw [input1481_def, output1481_def]
  kernel_rfl

theorem node1482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1482 value621 value1 value620 = (output1482, value621, value1) := by
  rw [input1482_def, output1482_def]
  kernel_rfl

theorem node1483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1483 value621 value1 value620 = (output1483, value621, value1) := by
  rw [input1483_def, output1483_def]
  kernel_rfl

theorem node1484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1484 value621 value1 value620 = (output1484, value621, value1) := by
  rw [input1484_def, output1484_def]
  kernel_rfl

theorem node1485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1485 value621 value1 value620 = (output1485, value621, value1) := by
  rw [input1485_def, output1485_def]
  kernel_rfl

theorem node1486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1486 value621 value1 value620 = (output1486, value621, value1) := by
  rw [input1486_def, output1486_def]
  kernel_rfl

theorem node1487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1487 value621 value1 value620 = (output1487, value621, value1) := by
  rw [input1487_def, output1487_def]
  kernel_rfl

theorem node1488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1488 value621 value1 value620 = (output1488, value621, value1) := by
  rw [input1488_def, output1488_def]
  kernel_rfl

theorem node1489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1489 value621 value1 value620 = (output1489, value621, value1) := by
  rw [input1489_def, output1489_def]
  kernel_rfl

theorem node1490_cond_eq
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value621 value1 value620 = (output1488, value621, value1))
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value621 value1 value620 = (output1489, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input1490 value621 value1 value620 = (output1490, value621, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1488]
  try dsimp only
  rw [child1489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1488_skip, output1489_skip]
  kernel_rfl

theorem node1491_cond_eq
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value621 value1 value620 = (output1487, value621, value1))
    (child1490 : Flapjack.WordAlloc.removeDeadStructural input1490 value621 value1 value620 = (output1490, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input1491 value621 value1 value620 = (output1491, value621, value1) := by
  rw [input1491_def, output1491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1487]
  try dsimp only
  rw [child1490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1487_skip, output1490_skip]
  kernel_rfl

theorem node1492_cond_eq
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value621 value1 value620 = (output1486, value621, value1))
    (child1491 : Flapjack.WordAlloc.removeDeadStructural input1491 value621 value1 value620 = (output1491, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input1492 value621 value1 value620 = (output1492, value621, value1) := by
  rw [input1492_def, output1492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1486]
  try dsimp only
  rw [child1491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1486_skip, output1491_skip]
  kernel_rfl

theorem node1493_cond_eq
    (child1485 : Flapjack.WordAlloc.removeDeadStructural input1485 value621 value1 value620 = (output1485, value621, value1))
    (child1492 : Flapjack.WordAlloc.removeDeadStructural input1492 value621 value1 value620 = (output1492, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input1493 value621 value1 value620 = (output1493, value621, value1) := by
  rw [input1493_def, output1493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1485]
  try dsimp only
  rw [child1492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1485_skip, output1492_skip]
  kernel_rfl

theorem node1494_cond_eq
    (child1484 : Flapjack.WordAlloc.removeDeadStructural input1484 value621 value1 value620 = (output1484, value621, value1))
    (child1493 : Flapjack.WordAlloc.removeDeadStructural input1493 value621 value1 value620 = (output1493, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input1494 value621 value1 value620 = (output1494, value621, value1) := by
  rw [input1494_def, output1494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1484]
  try dsimp only
  rw [child1493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1484_skip, output1493_skip]
  kernel_rfl

theorem node1495_cond_eq
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value621 value1 value620 = (output1483, value621, value1))
    (child1494 : Flapjack.WordAlloc.removeDeadStructural input1494 value621 value1 value620 = (output1494, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input1495 value621 value1 value620 = (output1495, value621, value1) := by
  rw [input1495_def, output1495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1483]
  try dsimp only
  rw [child1494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1483_skip, output1494_skip]
  kernel_rfl

theorem node1496_cond_eq
    (child1482 : Flapjack.WordAlloc.removeDeadStructural input1482 value621 value1 value620 = (output1482, value621, value1))
    (child1495 : Flapjack.WordAlloc.removeDeadStructural input1495 value621 value1 value620 = (output1495, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input1496 value621 value1 value620 = (output1496, value621, value1) := by
  rw [input1496_def, output1496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1482]
  try dsimp only
  rw [child1495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1482_skip, output1495_skip]
  kernel_rfl

theorem node1497_cond_eq
    (child1481 : Flapjack.WordAlloc.removeDeadStructural input1481 value621 value1 value620 = (output1481, value621, value1))
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value621 value1 value620 = (output1496, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input1497 value621 value1 value620 = (output1497, value621, value1) := by
  rw [input1497_def, output1497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1481]
  try dsimp only
  rw [child1496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1481_skip, output1496_skip]
  kernel_rfl

theorem node1498_cond_eq
    (child1480 : Flapjack.WordAlloc.removeDeadStructural input1480 value621 value1 value620 = (output1480, value621, value1))
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value621 value1 value620 = (output1497, value621, value1)) : Flapjack.WordAlloc.removeDeadStructural input1498 value621 value1 value620 = (output1498, value621, value1) := by
  rw [input1498_def, output1498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1480]
  try dsimp only
  rw [child1497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1480_skip, output1497_skip]
  kernel_rfl

theorem node1499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1499 value621 value1 value620 = (output1499, value622, value1) := by
  rw [input1499_def, output1499_def]
  kernel_rfl

theorem node1500_cond_eq
    (child1498 : Flapjack.WordAlloc.removeDeadStructural input1498 value621 value1 value620 = (output1498, value621, value1))
    (child1499 : Flapjack.WordAlloc.removeDeadStructural input1499 value621 value1 value620 = (output1499, value622, value1)) : Flapjack.WordAlloc.removeDeadStructural input1500 value621 value1 value620 = (output1500, value622, value1) := by
  rw [input1500_def, output1500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1498]
  try dsimp only
  rw [child1499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1498_skip, output1499_skip]
  kernel_rfl

theorem node1501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1501 value622 value1 value620 = (output1501, value619, value1) := by
  rw [input1501_def, output1501_def]
  kernel_rfl

theorem node1502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1502 value619 value1 value620 = (output1502, value622, value1) := by
  rw [input1502_def, output1502_def]
  kernel_rfl

theorem node1503_cond_eq
    (child1501 : Flapjack.WordAlloc.removeDeadStructural input1501 value622 value1 value620 = (output1501, value619, value1))
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value619 value1 value620 = (output1502, value622, value1)) : Flapjack.WordAlloc.removeDeadStructural input1503 value622 value1 value620 = (output1503, value622, value1) := by
  rw [input1503_def, output1503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1501]
  try dsimp only
  rw [child1502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1501_skip, output1502_skip]
  kernel_rfl

theorem node1504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1504 value622 value1 value620 = (output1504, value623, value1) := by
  rw [input1504_def, output1504_def]
  kernel_rfl

theorem node1505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1505 value623 value1 value620 = (output1505, value624, value1) := by
  rw [input1505_def, output1505_def]
  kernel_rfl

theorem node1506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1506 value624 value1 value620 = (output1506, value625, value1) := by
  rw [input1506_def, output1506_def]
  kernel_rfl

theorem node1507_cond_eq
    (child1505 : Flapjack.WordAlloc.removeDeadStructural input1505 value623 value1 value620 = (output1505, value624, value1))
    (child1506 : Flapjack.WordAlloc.removeDeadStructural input1506 value624 value1 value620 = (output1506, value625, value1)) : Flapjack.WordAlloc.removeDeadStructural input1507 value623 value1 value620 = (output1507, value625, value1) := by
  rw [input1507_def, output1507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1505]
  try dsimp only
  rw [child1506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1505_skip, output1506_skip]
  kernel_rfl

theorem node1508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1508 value625 value1 value620 = (output1508, value626, value1) := by
  rw [input1508_def, output1508_def]
  kernel_rfl

theorem node1509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1509 value626 value1 value620 = (output1509, value627, value1) := by
  rw [input1509_def, output1509_def]
  kernel_rfl

theorem node1510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1510 value627 value1 value620 = (output1510, value628, value1) := by
  rw [input1510_def, output1510_def]
  kernel_rfl

theorem node1511_cond_eq
    (child1509 : Flapjack.WordAlloc.removeDeadStructural input1509 value626 value1 value620 = (output1509, value627, value1))
    (child1510 : Flapjack.WordAlloc.removeDeadStructural input1510 value627 value1 value620 = (output1510, value628, value1)) : Flapjack.WordAlloc.removeDeadStructural input1511 value626 value1 value620 = (output1511, value628, value1) := by
  rw [input1511_def, output1511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1509]
  try dsimp only
  rw [child1510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1509_skip, output1510_skip]
  kernel_rfl

theorem node1512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1512 value628 value1 value620 = (output1512, value629, value1) := by
  rw [input1512_def, output1512_def]
  kernel_rfl

theorem node1513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1513 value629 value1 value620 = (output1513, value630, value1) := by
  rw [input1513_def, output1513_def]
  kernel_rfl

theorem node1514_cond_eq
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value628 value1 value620 = (output1512, value629, value1))
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value629 value1 value620 = (output1513, value630, value1)) : Flapjack.WordAlloc.removeDeadStructural input1514 value628 value1 value620 = (output1514, value630, value1) := by
  rw [input1514_def, output1514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1512]
  try dsimp only
  rw [child1513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1512_skip, output1513_skip]
  kernel_rfl

theorem node1515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1515 value630 value1 value620 = (output1515, value631, value1) := by
  rw [input1515_def, output1515_def]
  kernel_rfl

theorem node1516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1516 value631 value1 value620 = (output1516, value632, value1) := by
  rw [input1516_def, output1516_def]
  kernel_rfl

theorem node1517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1517 value632 value1 value620 = (output1517, value633, value1) := by
  rw [input1517_def, output1517_def]
  kernel_rfl

theorem node1518_cond_eq
    (child1516 : Flapjack.WordAlloc.removeDeadStructural input1516 value631 value1 value620 = (output1516, value632, value1))
    (child1517 : Flapjack.WordAlloc.removeDeadStructural input1517 value632 value1 value620 = (output1517, value633, value1)) : Flapjack.WordAlloc.removeDeadStructural input1518 value631 value1 value620 = (output1518, value633, value1) := by
  rw [input1518_def, output1518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1516]
  try dsimp only
  rw [child1517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1516_skip, output1517_skip]
  kernel_rfl

theorem node1519_cond_eq
    (child1515 : Flapjack.WordAlloc.removeDeadStructural input1515 value630 value1 value620 = (output1515, value631, value1))
    (child1518 : Flapjack.WordAlloc.removeDeadStructural input1518 value631 value1 value620 = (output1518, value633, value1)) : Flapjack.WordAlloc.removeDeadStructural input1519 value630 value1 value620 = (output1519, value633, value1) := by
  rw [input1519_def, output1519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1515]
  try dsimp only
  rw [child1518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1515_skip, output1518_skip]
  kernel_rfl

theorem node1520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1520 value633 value1 value620 = (output1520, value634, value1) := by
  rw [input1520_def, output1520_def]
  kernel_rfl

theorem node1521_cond_eq
    (child1519 : Flapjack.WordAlloc.removeDeadStructural input1519 value630 value1 value620 = (output1519, value633, value1))
    (child1520 : Flapjack.WordAlloc.removeDeadStructural input1520 value633 value1 value620 = (output1520, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1521 value630 value1 value620 = (output1521, value634, value1) := by
  rw [input1521_def, output1521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1519]
  try dsimp only
  rw [child1520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1519_skip, output1520_skip]
  kernel_rfl

theorem node1522_cond_eq
    (child1514 : Flapjack.WordAlloc.removeDeadStructural input1514 value628 value1 value620 = (output1514, value630, value1))
    (child1521 : Flapjack.WordAlloc.removeDeadStructural input1521 value630 value1 value620 = (output1521, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1522 value628 value1 value620 = (output1522, value634, value1) := by
  rw [input1522_def, output1522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1514]
  try dsimp only
  rw [child1521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1514_skip, output1521_skip]
  kernel_rfl

theorem node1523_cond_eq
    (child1511 : Flapjack.WordAlloc.removeDeadStructural input1511 value626 value1 value620 = (output1511, value628, value1))
    (child1522 : Flapjack.WordAlloc.removeDeadStructural input1522 value628 value1 value620 = (output1522, value634, value1)) : Flapjack.WordAlloc.removeDeadStructural input1523 value626 value1 value620 = (output1523, value634, value1) := by
  rw [input1523_def, output1523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1511]
  try dsimp only
  rw [child1522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1511_skip, output1522_skip]
  kernel_rfl

theorem node1524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1524 value634 value1 value620 = (output1524, value634, value1) := by
  rw [input1524_def, output1524_def]
  kernel_rfl

theorem node1525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1525 value634 value1 value620 = (output1525, value635, value1) := by
  rw [input1525_def, output1525_def]
  kernel_rfl

theorem node1526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1526 value635 value1 value620 = (output1526, value636, value1) := by
  rw [input1526_def, output1526_def]
  kernel_rfl

theorem node1527_cond_eq
    (child1525 : Flapjack.WordAlloc.removeDeadStructural input1525 value634 value1 value620 = (output1525, value635, value1))
    (child1526 : Flapjack.WordAlloc.removeDeadStructural input1526 value635 value1 value620 = (output1526, value636, value1)) : Flapjack.WordAlloc.removeDeadStructural input1527 value634 value1 value620 = (output1527, value636, value1) := by
  rw [input1527_def, output1527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1525]
  try dsimp only
  rw [child1526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1525_skip, output1526_skip]
  kernel_rfl

theorem node1528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1528 value636 value1 value620 = (output1528, value637, value1) := by
  rw [input1528_def, output1528_def]
  kernel_rfl

theorem node1529_cond_eq
    (child1527 : Flapjack.WordAlloc.removeDeadStructural input1527 value634 value1 value620 = (output1527, value636, value1))
    (child1528 : Flapjack.WordAlloc.removeDeadStructural input1528 value636 value1 value620 = (output1528, value637, value1)) : Flapjack.WordAlloc.removeDeadStructural input1529 value634 value1 value620 = (output1529, value637, value1) := by
  rw [input1529_def, output1529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1527]
  try dsimp only
  rw [child1528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1527_skip, output1528_skip]
  kernel_rfl

theorem node1530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1530 value637 value1 value620 = (output1530, value638, value1) := by
  rw [input1530_def, output1530_def]
  kernel_rfl

theorem node1531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1531 value638 value1 value620 = (output1531, value639, value1) := by
  rw [input1531_def, output1531_def]
  kernel_rfl

theorem node1532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1532 value639 value1 value620 = (output1532, value640, value1) := by
  rw [input1532_def, output1532_def]
  kernel_rfl

theorem node1533_cond_eq
    (child1531 : Flapjack.WordAlloc.removeDeadStructural input1531 value638 value1 value620 = (output1531, value639, value1))
    (child1532 : Flapjack.WordAlloc.removeDeadStructural input1532 value639 value1 value620 = (output1532, value640, value1)) : Flapjack.WordAlloc.removeDeadStructural input1533 value638 value1 value620 = (output1533, value640, value1) := by
  rw [input1533_def, output1533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1531]
  try dsimp only
  rw [child1532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1531_skip, output1532_skip]
  kernel_rfl

theorem node1534_cond_eq
    (child1530 : Flapjack.WordAlloc.removeDeadStructural input1530 value637 value1 value620 = (output1530, value638, value1))
    (child1533 : Flapjack.WordAlloc.removeDeadStructural input1533 value638 value1 value620 = (output1533, value640, value1)) : Flapjack.WordAlloc.removeDeadStructural input1534 value637 value1 value620 = (output1534, value640, value1) := by
  rw [input1534_def, output1534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1530]
  try dsimp only
  rw [child1533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1530_skip, output1533_skip]
  kernel_rfl

theorem node1535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1535 value640 value1 value620 = (output1535, value641, value1) := by
  rw [input1535_def, output1535_def]
  kernel_rfl

#print axioms node1535_cond_eq
end InitECandidate.Proofs.DeadStages461.Parallel
