import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages233.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages233.Parallel
theorem node1280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1280 value657 value1 value2 = (output1280, value658, value1) := by
  rw [input1280_def, output1280_def]
  kernel_rfl

theorem node1281_cond_eq
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value656 value1 value2 = (output1279, value657, value1))
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value657 value1 value2 = (output1280, value658, value1)) : Flapjack.WordAlloc.removeDeadStructural input1281 value656 value1 value2 = (output1281, value658, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1279]
  try dsimp only
  rw [child1280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1279_skip, output1280_skip]
  kernel_rfl

theorem node1282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1282 value658 value1 value2 = (output1282, value659, value1) := by
  rw [input1282_def, output1282_def]
  kernel_rfl

theorem node1283_cond_eq
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value656 value1 value2 = (output1281, value658, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value658 value1 value2 = (output1282, value659, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value656 value1 value2 = (output1283, value659, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1281]
  try dsimp only
  rw [child1282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1281_skip, output1282_skip]
  kernel_rfl

theorem node1284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value659 value1 value2 = (output1284, value660, value1) := by
  rw [input1284_def, output1284_def]
  kernel_rfl

theorem node1285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value660 value1 value2 = (output1285, value661, value1) := by
  rw [input1285_def, output1285_def]
  kernel_rfl

theorem node1286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1286 value661 value1 value2 = (output1286, value662, value1) := by
  rw [input1286_def, output1286_def]
  kernel_rfl

theorem node1287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1287 value662 value1 value2 = (output1287, value663, value1) := by
  rw [input1287_def, output1287_def]
  kernel_rfl

theorem node1288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1288 value663 value1 value2 = (output1288, value663, value1) := by
  rw [input1288_def, output1288_def]
  kernel_rfl

theorem node1289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1289 value663 value1 value2 = (output1289, value664, value1) := by
  rw [input1289_def, output1289_def]
  kernel_rfl

theorem node1290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1290 value664 value1 value2 = (output1290, value665, value1) := by
  rw [input1290_def, output1290_def]
  kernel_rfl

theorem node1291_cond_eq
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value663 value1 value2 = (output1289, value664, value1))
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value664 value1 value2 = (output1290, value665, value1)) : Flapjack.WordAlloc.removeDeadStructural input1291 value663 value1 value2 = (output1291, value665, value1) := by
  rw [input1291_def, output1291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1289]
  try dsimp only
  rw [child1290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1289_skip, output1290_skip]
  kernel_rfl

theorem node1292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1292 value665 value1 value2 = (output1292, value666, value1) := by
  rw [input1292_def, output1292_def]
  kernel_rfl

theorem node1293_cond_eq
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value663 value1 value2 = (output1291, value665, value1))
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value665 value1 value2 = (output1292, value666, value1)) : Flapjack.WordAlloc.removeDeadStructural input1293 value663 value1 value2 = (output1293, value666, value1) := by
  rw [input1293_def, output1293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1291]
  try dsimp only
  rw [child1292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1291_skip, output1292_skip]
  kernel_rfl

theorem node1294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1294 value666 value1 value2 = (output1294, value667, value1) := by
  rw [input1294_def, output1294_def]
  kernel_rfl

theorem node1295_cond_eq
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value663 value1 value2 = (output1293, value666, value1))
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value666 value1 value2 = (output1294, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1295 value663 value1 value2 = (output1295, value667, value1) := by
  rw [input1295_def, output1295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1293]
  try dsimp only
  rw [child1294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1293_skip, output1294_skip]
  kernel_rfl

theorem node1296_cond_eq
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value663 value1 value2 = (output1288, value663, value1))
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value663 value1 value2 = (output1295, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1296 value663 value1 value2 = (output1296, value667, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1288]
  try dsimp only
  rw [child1295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1288_skip, output1295_skip]
  kernel_rfl

theorem node1297_cond_eq
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value662 value1 value2 = (output1287, value663, value1))
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value663 value1 value2 = (output1296, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1297 value662 value1 value2 = (output1297, value667, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1287]
  try dsimp only
  rw [child1296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1287_skip, output1296_skip]
  kernel_rfl

theorem node1298_cond_eq
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value661 value1 value2 = (output1286, value662, value1))
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value662 value1 value2 = (output1297, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1298 value661 value1 value2 = (output1298, value667, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1286]
  try dsimp only
  rw [child1297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1286_skip, output1297_skip]
  kernel_rfl

theorem node1299_cond_eq
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value660 value1 value2 = (output1285, value661, value1))
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value661 value1 value2 = (output1298, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1299 value660 value1 value2 = (output1299, value667, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1285]
  try dsimp only
  rw [child1298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1285_skip, output1298_skip]
  kernel_rfl

theorem node1300_cond_eq
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value659 value1 value2 = (output1284, value660, value1))
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value660 value1 value2 = (output1299, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1300 value659 value1 value2 = (output1300, value667, value1) := by
  rw [input1300_def, output1300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1284]
  try dsimp only
  rw [child1299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1284_skip, output1299_skip]
  kernel_rfl

theorem node1301_cond_eq
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value656 value1 value2 = (output1283, value659, value1))
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value659 value1 value2 = (output1300, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1301 value656 value1 value2 = (output1301, value667, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1283]
  try dsimp only
  rw [child1300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1283_skip, output1300_skip]
  kernel_rfl

theorem node1302_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value656 value1 value2 = (output1278, value656, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value656 value1 value2 = (output1301, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value656 value1 value2 = (output1302, value667, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  try dsimp only
  rw [child1301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output1301_skip]
  kernel_rfl

theorem node1303_cond_eq
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value655 value1 value2 = (output1277, value656, value1))
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value656 value1 value2 = (output1302, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1303 value655 value1 value2 = (output1303, value667, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1277]
  try dsimp only
  rw [child1302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1277_skip, output1302_skip]
  kernel_rfl

theorem node1304_cond_eq
    (child1276 : Flapjack.WordAlloc.removeDeadStructural input1276 value654 value1 value2 = (output1276, value655, value1))
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value655 value1 value2 = (output1303, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1304 value654 value1 value2 = (output1304, value667, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1276]
  try dsimp only
  rw [child1303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1276_skip, output1303_skip]
  kernel_rfl

theorem node1305_cond_eq
    (child1275 : Flapjack.WordAlloc.removeDeadStructural input1275 value653 value1 value2 = (output1275, value654, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value654 value1 value2 = (output1304, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value653 value1 value2 = (output1305, value667, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1275]
  try dsimp only
  rw [child1304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1275_skip, output1304_skip]
  kernel_rfl

theorem node1306_cond_eq
    (child1274 : Flapjack.WordAlloc.removeDeadStructural input1274 value652 value1 value2 = (output1274, value653, value1))
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value653 value1 value2 = (output1305, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1306 value652 value1 value2 = (output1306, value667, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1274]
  try dsimp only
  rw [child1305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1274_skip, output1305_skip]
  kernel_rfl

theorem node1307_cond_eq
    (child1273 : Flapjack.WordAlloc.removeDeadStructural input1273 value649 value1 value2 = (output1273, value652, value1))
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value652 value1 value2 = (output1306, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1307 value649 value1 value2 = (output1307, value667, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1273]
  try dsimp only
  rw [child1306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1273_skip, output1306_skip]
  kernel_rfl

theorem node1308_cond_eq
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value649 value1 value2 = (output1268, value649, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value649 value1 value2 = (output1307, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value649 value1 value2 = (output1308, value667, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1268]
  try dsimp only
  rw [child1307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1268_skip, output1307_skip]
  kernel_rfl

theorem node1309_cond_eq
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value648 value1 value2 = (output1267, value649, value1))
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value649 value1 value2 = (output1308, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1309 value648 value1 value2 = (output1309, value667, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1267]
  try dsimp only
  rw [child1308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1267_skip, output1308_skip]
  kernel_rfl

theorem node1310_cond_eq
    (child1266 : Flapjack.WordAlloc.removeDeadStructural input1266 value647 value1 value2 = (output1266, value648, value1))
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value648 value1 value2 = (output1309, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1310 value647 value1 value2 = (output1310, value667, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1266]
  try dsimp only
  rw [child1309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1266_skip, output1309_skip]
  kernel_rfl

theorem node1311_cond_eq
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value644 value1 value2 = (output1265, value647, value1))
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value647 value1 value2 = (output1310, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1311 value644 value1 value2 = (output1311, value667, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1265]
  try dsimp only
  rw [child1310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1265_skip, output1310_skip]
  kernel_rfl

theorem node1312_cond_eq
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value644 value1 value2 = (output1260, value644, value1))
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value644 value1 value2 = (output1311, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1312 value644 value1 value2 = (output1312, value667, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1260]
  try dsimp only
  rw [child1311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1260_skip, output1311_skip]
  kernel_rfl

theorem node1313_cond_eq
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value639 value1 value2 = (output1259, value644, value1))
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value644 value1 value2 = (output1312, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1313 value639 value1 value2 = (output1313, value667, value1) := by
  rw [input1313_def, output1313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1259]
  try dsimp only
  rw [child1312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1259_skip, output1312_skip]
  kernel_rfl

theorem node1314_cond_eq
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value643 value1 value2 = (output1258, value639, value1))
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value639 value1 value2 = (output1313, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1314 value643 value1 value2 = (output1314, value667, value1) := by
  rw [input1314_def, output1314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1258]
  try dsimp only
  rw [child1313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1258_skip, output1313_skip]
  kernel_rfl

theorem node1315_cond_eq
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value639 value1 value2 = (output1257, value643, value1))
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value643 value1 value2 = (output1314, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1315 value639 value1 value2 = (output1315, value667, value1) := by
  rw [input1315_def, output1315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1257]
  try dsimp only
  rw [child1314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1257_skip, output1314_skip]
  kernel_rfl

theorem node1316_cond_eq
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value639 value1 value2 = (output1226, value639, value1))
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value639 value1 value2 = (output1315, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1316 value639 value1 value2 = (output1316, value667, value1) := by
  rw [input1316_def, output1316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1226]
  try dsimp only
  rw [child1315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1226_skip, output1315_skip]
  kernel_rfl

theorem node1317_cond_eq
    (child1225 : Flapjack.WordAlloc.removeDeadStructural input1225 value637 value1 value2 = (output1225, value639, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value639 value1 value2 = (output1316, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value637 value1 value2 = (output1317, value667, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1225]
  try dsimp only
  rw [child1316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1225_skip, output1316_skip]
  kernel_rfl

theorem node1318_cond_eq
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value637 value1 value2 = (output1220, value637, value1))
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value637 value1 value2 = (output1317, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1318 value637 value1 value2 = (output1318, value667, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1220]
  try dsimp only
  rw [child1317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1220_skip, output1317_skip]
  kernel_rfl

theorem node1319_cond_eq
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value637 value1 value2 = (output1219, value637, value1))
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value637 value1 value2 = (output1318, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1319 value637 value1 value2 = (output1319, value667, value1) := by
  rw [input1319_def, output1319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1219]
  try dsimp only
  rw [child1318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1219_skip, output1318_skip]
  kernel_rfl

theorem node1320_cond_eq
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value633 value1 value2 = (output1218, value637, value1))
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value637 value1 value2 = (output1319, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1320 value633 value1 value2 = (output1320, value667, value1) := by
  rw [input1320_def, output1320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1218]
  try dsimp only
  rw [child1319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1218_skip, output1319_skip]
  kernel_rfl

theorem node1321_cond_eq
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value633 value1 value2 = (output1211, value633, value1))
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value633 value1 value2 = (output1320, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1321 value633 value1 value2 = (output1321, value667, value1) := by
  rw [input1321_def, output1321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1211]
  try dsimp only
  rw [child1320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1211_skip, output1320_skip]
  kernel_rfl

theorem node1322_cond_eq
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value632 value1 value2 = (output1210, value633, value1))
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value633 value1 value2 = (output1321, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1322 value632 value1 value2 = (output1322, value667, value1) := by
  rw [input1322_def, output1322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1210]
  try dsimp only
  rw [child1321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1210_skip, output1321_skip]
  kernel_rfl

theorem node1323_cond_eq
    (child1209 : Flapjack.WordAlloc.removeDeadStructural input1209 value629 value1 value2 = (output1209, value632, value1))
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value632 value1 value2 = (output1322, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1323 value629 value1 value2 = (output1323, value667, value1) := by
  rw [input1323_def, output1323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1209]
  try dsimp only
  rw [child1322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1209_skip, output1322_skip]
  kernel_rfl

theorem node1324_cond_eq
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value629 value1 value2 = (output1204, value629, value1))
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value629 value1 value2 = (output1323, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1324 value629 value1 value2 = (output1324, value667, value1) := by
  rw [input1324_def, output1324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1204]
  try dsimp only
  rw [child1323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1204_skip, output1323_skip]
  kernel_rfl

theorem node1325_cond_eq
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value627 value1 value2 = (output1203, value629, value1))
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value629 value1 value2 = (output1324, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1325 value627 value1 value2 = (output1325, value667, value1) := by
  rw [input1325_def, output1325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1203]
  try dsimp only
  rw [child1324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1203_skip, output1324_skip]
  kernel_rfl

theorem node1326_cond_eq
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value626 value1 value2 = (output1200, value627, value1))
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value627 value1 value2 = (output1325, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1326 value626 value1 value2 = (output1326, value667, value1) := by
  rw [input1326_def, output1326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1200]
  try dsimp only
  rw [child1325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1200_skip, output1325_skip]
  kernel_rfl

theorem node1327_cond_eq
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value625 value1 value2 = (output1199, value626, value1))
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value626 value1 value2 = (output1326, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1327 value625 value1 value2 = (output1327, value667, value1) := by
  rw [input1327_def, output1327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1199]
  try dsimp only
  rw [child1326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1199_skip, output1326_skip]
  kernel_rfl

theorem node1328_cond_eq
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value624 value1 value2 = (output1198, value625, value1))
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value625 value1 value2 = (output1327, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1328 value624 value1 value2 = (output1328, value667, value1) := by
  rw [input1328_def, output1328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1198]
  try dsimp only
  rw [child1327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1198_skip, output1327_skip]
  kernel_rfl

theorem node1329_cond_eq
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value623 value1 value2 = (output1197, value624, value1))
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value624 value1 value2 = (output1328, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1329 value623 value1 value2 = (output1329, value667, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1197]
  try dsimp only
  rw [child1328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1197_skip, output1328_skip]
  kernel_rfl

theorem node1330_cond_eq
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value622 value1 value2 = (output1196, value623, value1))
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value623 value1 value2 = (output1329, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1330 value622 value1 value2 = (output1330, value667, value1) := by
  rw [input1330_def, output1330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1196]
  try dsimp only
  rw [child1329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1196_skip, output1329_skip]
  kernel_rfl

theorem node1331_cond_eq
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value621 value1 value2 = (output1195, value622, value1))
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value622 value1 value2 = (output1330, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1331 value621 value1 value2 = (output1331, value667, value1) := by
  rw [input1331_def, output1331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1195]
  try dsimp only
  rw [child1330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1195_skip, output1330_skip]
  kernel_rfl

theorem node1332_cond_eq
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value620 value1 value2 = (output1194, value621, value1))
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value621 value1 value2 = (output1331, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1332 value620 value1 value2 = (output1332, value667, value1) := by
  rw [input1332_def, output1332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1194]
  try dsimp only
  rw [child1331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1194_skip, output1331_skip]
  kernel_rfl

theorem node1333_cond_eq
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value619 value1 value2 = (output1193, value620, value1))
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value620 value1 value2 = (output1332, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1333 value619 value1 value2 = (output1333, value667, value1) := by
  rw [input1333_def, output1333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1193]
  try dsimp only
  rw [child1332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1193_skip, output1332_skip]
  kernel_rfl

theorem node1334_cond_eq
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value616 value1 value2 = (output1192, value619, value1))
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value619 value1 value2 = (output1333, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1334 value616 value1 value2 = (output1334, value667, value1) := by
  rw [input1334_def, output1334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1192]
  try dsimp only
  rw [child1333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1192_skip, output1333_skip]
  kernel_rfl

theorem node1335_cond_eq
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value616 value1 value2 = (output1187, value616, value1))
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value616 value1 value2 = (output1334, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1335 value616 value1 value2 = (output1335, value667, value1) := by
  rw [input1335_def, output1335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1187]
  try dsimp only
  rw [child1334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1187_skip, output1334_skip]
  kernel_rfl

theorem node1336_cond_eq
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value614 value1 value2 = (output1186, value616, value1))
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value616 value1 value2 = (output1335, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1336 value614 value1 value2 = (output1336, value667, value1) := by
  rw [input1336_def, output1336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1186]
  try dsimp only
  rw [child1335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1186_skip, output1335_skip]
  kernel_rfl

theorem node1337_cond_eq
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value613 value1 value2 = (output1183, value614, value1))
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value614 value1 value2 = (output1336, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1337 value613 value1 value2 = (output1337, value667, value1) := by
  rw [input1337_def, output1337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1183]
  try dsimp only
  rw [child1336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1183_skip, output1336_skip]
  kernel_rfl

theorem node1338_cond_eq
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value612 value1 value2 = (output1182, value613, value1))
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value613 value1 value2 = (output1337, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1338 value612 value1 value2 = (output1338, value667, value1) := by
  rw [input1338_def, output1338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1182]
  try dsimp only
  rw [child1337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1182_skip, output1337_skip]
  kernel_rfl

theorem node1339_cond_eq
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value611 value1 value2 = (output1181, value612, value1))
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value612 value1 value2 = (output1338, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1339 value611 value1 value2 = (output1339, value667, value1) := by
  rw [input1339_def, output1339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1181]
  try dsimp only
  rw [child1338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1181_skip, output1338_skip]
  kernel_rfl

theorem node1340_cond_eq
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value610 value1 value2 = (output1180, value611, value1))
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value611 value1 value2 = (output1339, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1340 value610 value1 value2 = (output1340, value667, value1) := by
  rw [input1340_def, output1340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1180]
  try dsimp only
  rw [child1339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1180_skip, output1339_skip]
  kernel_rfl

theorem node1341_cond_eq
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value609 value1 value2 = (output1179, value610, value1))
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value610 value1 value2 = (output1340, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1341 value609 value1 value2 = (output1341, value667, value1) := by
  rw [input1341_def, output1341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1179]
  try dsimp only
  rw [child1340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1179_skip, output1340_skip]
  kernel_rfl

theorem node1342_cond_eq
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value608 value1 value2 = (output1178, value609, value1))
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value609 value1 value2 = (output1341, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1342 value608 value1 value2 = (output1342, value667, value1) := by
  rw [input1342_def, output1342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1178]
  try dsimp only
  rw [child1341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1178_skip, output1341_skip]
  kernel_rfl

theorem node1343_cond_eq
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value607 value1 value2 = (output1177, value608, value1))
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value608 value1 value2 = (output1342, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1343 value607 value1 value2 = (output1343, value667, value1) := by
  rw [input1343_def, output1343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1177]
  try dsimp only
  rw [child1342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1177_skip, output1342_skip]
  kernel_rfl

theorem node1344_cond_eq
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value606 value1 value2 = (output1176, value607, value1))
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value607 value1 value2 = (output1343, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1344 value606 value1 value2 = (output1344, value667, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1176]
  try dsimp only
  rw [child1343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1176_skip, output1343_skip]
  kernel_rfl

theorem node1345_cond_eq
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value603 value1 value2 = (output1175, value606, value1))
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value606 value1 value2 = (output1344, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1345 value603 value1 value2 = (output1345, value667, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1175]
  try dsimp only
  rw [child1344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1175_skip, output1344_skip]
  kernel_rfl

theorem node1346_cond_eq
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value603 value1 value2 = (output1170, value603, value1))
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value603 value1 value2 = (output1345, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1346 value603 value1 value2 = (output1346, value667, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1170]
  try dsimp only
  rw [child1345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1170_skip, output1345_skip]
  kernel_rfl

theorem node1347_cond_eq
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value601 value1 value2 = (output1169, value603, value1))
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value603 value1 value2 = (output1346, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1347 value601 value1 value2 = (output1347, value667, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1169]
  try dsimp only
  rw [child1346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1169_skip, output1346_skip]
  kernel_rfl

theorem node1348_cond_eq
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value598 value1 value2 = (output1166, value601, value1))
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value601 value1 value2 = (output1347, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1348 value598 value1 value2 = (output1348, value667, value1) := by
  rw [input1348_def, output1348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1166]
  try dsimp only
  rw [child1347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1166_skip, output1347_skip]
  kernel_rfl

theorem node1349_cond_eq
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value598 value1 value2 = (output1161, value598, value1))
    (child1348 : Flapjack.WordAlloc.removeDeadStructural input1348 value598 value1 value2 = (output1348, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1349 value598 value1 value2 = (output1349, value667, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1161]
  try dsimp only
  rw [child1348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1161_skip, output1348_skip]
  kernel_rfl

theorem node1350_cond_eq
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value596 value1 value2 = (output1160, value598, value1))
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value598 value1 value2 = (output1349, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1350 value596 value1 value2 = (output1350, value667, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1160]
  try dsimp only
  rw [child1349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1160_skip, output1349_skip]
  kernel_rfl

theorem node1351_cond_eq
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value595 value1 value2 = (output1157, value596, value1))
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value596 value1 value2 = (output1350, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1351 value595 value1 value2 = (output1351, value667, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1157]
  try dsimp only
  rw [child1350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1157_skip, output1350_skip]
  kernel_rfl

theorem node1352_cond_eq
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value594 value1 value2 = (output1156, value595, value1))
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value595 value1 value2 = (output1351, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1352 value594 value1 value2 = (output1352, value667, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1156]
  try dsimp only
  rw [child1351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1156_skip, output1351_skip]
  kernel_rfl

theorem node1353_cond_eq
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value593 value1 value2 = (output1155, value594, value1))
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value594 value1 value2 = (output1352, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1353 value593 value1 value2 = (output1353, value667, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1155]
  try dsimp only
  rw [child1352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1155_skip, output1352_skip]
  kernel_rfl

theorem node1354_cond_eq
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value592 value1 value2 = (output1154, value593, value1))
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value593 value1 value2 = (output1353, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1354 value592 value1 value2 = (output1354, value667, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1154]
  try dsimp only
  rw [child1353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1154_skip, output1353_skip]
  kernel_rfl

theorem node1355_cond_eq
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value591 value1 value2 = (output1153, value592, value1))
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value592 value1 value2 = (output1354, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1355 value591 value1 value2 = (output1355, value667, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1153]
  try dsimp only
  rw [child1354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1153_skip, output1354_skip]
  kernel_rfl

theorem node1356_cond_eq
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value590 value1 value2 = (output1152, value591, value1))
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value591 value1 value2 = (output1355, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1356 value590 value1 value2 = (output1356, value667, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1152]
  try dsimp only
  rw [child1355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1152_skip, output1355_skip]
  kernel_rfl

theorem node1357_cond_eq
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value589 value1 value2 = (output1151, value590, value1))
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value590 value1 value2 = (output1356, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1357 value589 value1 value2 = (output1357, value667, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1151]
  try dsimp only
  rw [child1356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1151_skip, output1356_skip]
  kernel_rfl

theorem node1358_cond_eq
    (child1150 : Flapjack.WordAlloc.removeDeadStructural input1150 value588 value1 value2 = (output1150, value589, value1))
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value589 value1 value2 = (output1357, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1358 value588 value1 value2 = (output1358, value667, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1150]
  try dsimp only
  rw [child1357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1150_skip, output1357_skip]
  kernel_rfl

theorem node1359_cond_eq
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value585 value1 value2 = (output1149, value588, value1))
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value588 value1 value2 = (output1358, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1359 value585 value1 value2 = (output1359, value667, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1149]
  try dsimp only
  rw [child1358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1149_skip, output1358_skip]
  kernel_rfl

theorem node1360_cond_eq
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value585 value1 value2 = (output1144, value585, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value585 value1 value2 = (output1359, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value585 value1 value2 = (output1360, value667, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1144]
  try dsimp only
  rw [child1359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1144_skip, output1359_skip]
  kernel_rfl

theorem node1361_cond_eq
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value583 value1 value2 = (output1143, value585, value1))
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value585 value1 value2 = (output1360, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1361 value583 value1 value2 = (output1361, value667, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1143]
  try dsimp only
  rw [child1360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1143_skip, output1360_skip]
  kernel_rfl

theorem node1362_cond_eq
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value580 value1 value2 = (output1140, value583, value1))
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value583 value1 value2 = (output1361, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1362 value580 value1 value2 = (output1362, value667, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1140]
  try dsimp only
  rw [child1361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1140_skip, output1361_skip]
  kernel_rfl

theorem node1363_cond_eq
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value580 value1 value2 = (output1135, value580, value1))
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value580 value1 value2 = (output1362, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1363 value580 value1 value2 = (output1363, value667, value1) := by
  rw [input1363_def, output1363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1135]
  try dsimp only
  rw [child1362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1135_skip, output1362_skip]
  kernel_rfl

theorem node1364_cond_eq
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value578 value1 value2 = (output1134, value580, value1))
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value580 value1 value2 = (output1363, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1364 value578 value1 value2 = (output1364, value667, value1) := by
  rw [input1364_def, output1364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1134]
  try dsimp only
  rw [child1363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1134_skip, output1363_skip]
  kernel_rfl

theorem node1365_cond_eq
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value577 value1 value2 = (output1131, value578, value1))
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value578 value1 value2 = (output1364, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1365 value577 value1 value2 = (output1365, value667, value1) := by
  rw [input1365_def, output1365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1131]
  try dsimp only
  rw [child1364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1131_skip, output1364_skip]
  kernel_rfl

theorem node1366_cond_eq
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value576 value1 value2 = (output1130, value577, value1))
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value577 value1 value2 = (output1365, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1366 value576 value1 value2 = (output1366, value667, value1) := by
  rw [input1366_def, output1366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1130]
  try dsimp only
  rw [child1365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1130_skip, output1365_skip]
  kernel_rfl

theorem node1367_cond_eq
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value575 value1 value2 = (output1129, value576, value1))
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value576 value1 value2 = (output1366, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1367 value575 value1 value2 = (output1367, value667, value1) := by
  rw [input1367_def, output1367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1129]
  try dsimp only
  rw [child1366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1129_skip, output1366_skip]
  kernel_rfl

theorem node1368_cond_eq
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value574 value1 value2 = (output1128, value575, value1))
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value575 value1 value2 = (output1367, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1368 value574 value1 value2 = (output1368, value667, value1) := by
  rw [input1368_def, output1368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1128]
  try dsimp only
  rw [child1367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1128_skip, output1367_skip]
  kernel_rfl

theorem node1369_cond_eq
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value573 value1 value2 = (output1127, value574, value1))
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value574 value1 value2 = (output1368, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1369 value573 value1 value2 = (output1369, value667, value1) := by
  rw [input1369_def, output1369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1127]
  try dsimp only
  rw [child1368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1127_skip, output1368_skip]
  kernel_rfl

theorem node1370_cond_eq
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value572 value1 value2 = (output1126, value573, value1))
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value573 value1 value2 = (output1369, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1370 value572 value1 value2 = (output1370, value667, value1) := by
  rw [input1370_def, output1370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1126]
  try dsimp only
  rw [child1369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1126_skip, output1369_skip]
  kernel_rfl

theorem node1371_cond_eq
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value571 value1 value2 = (output1125, value572, value1))
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value572 value1 value2 = (output1370, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1371 value571 value1 value2 = (output1371, value667, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1125]
  try dsimp only
  rw [child1370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1125_skip, output1370_skip]
  kernel_rfl

theorem node1372_cond_eq
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value570 value1 value2 = (output1124, value571, value1))
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value571 value1 value2 = (output1371, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1372 value570 value1 value2 = (output1372, value667, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1124]
  try dsimp only
  rw [child1371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1124_skip, output1371_skip]
  kernel_rfl

theorem node1373_cond_eq
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value567 value1 value2 = (output1123, value570, value1))
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value570 value1 value2 = (output1372, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1373 value567 value1 value2 = (output1373, value667, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1123]
  try dsimp only
  rw [child1372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1123_skip, output1372_skip]
  kernel_rfl

theorem node1374_cond_eq
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value567 value1 value2 = (output1118, value567, value1))
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value567 value1 value2 = (output1373, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1374 value567 value1 value2 = (output1374, value667, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1118]
  try dsimp only
  rw [child1373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1118_skip, output1373_skip]
  kernel_rfl

theorem node1375_cond_eq
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value565 value1 value2 = (output1117, value567, value1))
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value567 value1 value2 = (output1374, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1375 value565 value1 value2 = (output1375, value667, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1117]
  try dsimp only
  rw [child1374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1117_skip, output1374_skip]
  kernel_rfl

theorem node1376_cond_eq
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value564 value1 value2 = (output1114, value565, value1))
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value565 value1 value2 = (output1375, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1376 value564 value1 value2 = (output1376, value667, value1) := by
  rw [input1376_def, output1376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1114]
  try dsimp only
  rw [child1375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1114_skip, output1375_skip]
  kernel_rfl

theorem node1377_cond_eq
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value563 value1 value2 = (output1113, value564, value1))
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value564 value1 value2 = (output1376, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1377 value563 value1 value2 = (output1377, value667, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1113]
  try dsimp only
  rw [child1376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1113_skip, output1376_skip]
  kernel_rfl

theorem node1378_cond_eq
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value562 value1 value2 = (output1112, value563, value1))
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value563 value1 value2 = (output1377, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1378 value562 value1 value2 = (output1378, value667, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1112]
  try dsimp only
  rw [child1377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1112_skip, output1377_skip]
  kernel_rfl

theorem node1379_cond_eq
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value561 value1 value2 = (output1111, value562, value1))
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value562 value1 value2 = (output1378, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1379 value561 value1 value2 = (output1379, value667, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1111]
  try dsimp only
  rw [child1378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1111_skip, output1378_skip]
  kernel_rfl

theorem node1380_cond_eq
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value560 value1 value2 = (output1110, value561, value1))
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value561 value1 value2 = (output1379, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1380 value560 value1 value2 = (output1380, value667, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1110]
  try dsimp only
  rw [child1379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1110_skip, output1379_skip]
  kernel_rfl

theorem node1381_cond_eq
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value559 value1 value2 = (output1109, value560, value1))
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value560 value1 value2 = (output1380, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1381 value559 value1 value2 = (output1381, value667, value1) := by
  rw [input1381_def, output1381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1109]
  try dsimp only
  rw [child1380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1109_skip, output1380_skip]
  kernel_rfl

theorem node1382_cond_eq
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value558 value1 value2 = (output1108, value559, value1))
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value559 value1 value2 = (output1381, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1382 value558 value1 value2 = (output1382, value667, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1108]
  try dsimp only
  rw [child1381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1108_skip, output1381_skip]
  kernel_rfl

theorem node1383_cond_eq
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value557 value1 value2 = (output1107, value558, value1))
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value558 value1 value2 = (output1382, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1383 value557 value1 value2 = (output1383, value667, value1) := by
  rw [input1383_def, output1383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1107]
  try dsimp only
  rw [child1382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1107_skip, output1382_skip]
  kernel_rfl

theorem node1384_cond_eq
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value554 value1 value2 = (output1106, value557, value1))
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value557 value1 value2 = (output1383, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1384 value554 value1 value2 = (output1384, value667, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1106]
  try dsimp only
  rw [child1383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1106_skip, output1383_skip]
  kernel_rfl

theorem node1385_cond_eq
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value554 value1 value2 = (output1101, value554, value1))
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value554 value1 value2 = (output1384, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1385 value554 value1 value2 = (output1385, value667, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1101]
  try dsimp only
  rw [child1384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1101_skip, output1384_skip]
  kernel_rfl

theorem node1386_cond_eq
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value552 value1 value2 = (output1100, value554, value1))
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value554 value1 value2 = (output1385, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1386 value552 value1 value2 = (output1386, value667, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1100]
  try dsimp only
  rw [child1385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1100_skip, output1385_skip]
  kernel_rfl

theorem node1387_cond_eq
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value551 value1 value2 = (output1097, value552, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value552 value1 value2 = (output1386, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value551 value1 value2 = (output1387, value667, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1097]
  try dsimp only
  rw [child1386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1097_skip, output1386_skip]
  kernel_rfl

theorem node1388_cond_eq
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value550 value1 value2 = (output1096, value551, value1))
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value551 value1 value2 = (output1387, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1388 value550 value1 value2 = (output1388, value667, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1096]
  try dsimp only
  rw [child1387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1096_skip, output1387_skip]
  kernel_rfl

theorem node1389_cond_eq
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value549 value1 value2 = (output1095, value550, value1))
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value550 value1 value2 = (output1388, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1389 value549 value1 value2 = (output1389, value667, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1095]
  try dsimp only
  rw [child1388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1095_skip, output1388_skip]
  kernel_rfl

theorem node1390_cond_eq
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value548 value1 value2 = (output1094, value549, value1))
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value549 value1 value2 = (output1389, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1390 value548 value1 value2 = (output1390, value667, value1) := by
  rw [input1390_def, output1390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1094]
  try dsimp only
  rw [child1389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1094_skip, output1389_skip]
  kernel_rfl

theorem node1391_cond_eq
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value547 value1 value2 = (output1093, value548, value1))
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value548 value1 value2 = (output1390, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1391 value547 value1 value2 = (output1391, value667, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1093]
  try dsimp only
  rw [child1390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1093_skip, output1390_skip]
  kernel_rfl

theorem node1392_cond_eq
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value546 value1 value2 = (output1092, value547, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value547 value1 value2 = (output1391, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value546 value1 value2 = (output1392, value667, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1092]
  try dsimp only
  rw [child1391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1092_skip, output1391_skip]
  kernel_rfl

theorem node1393_cond_eq
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value545 value1 value2 = (output1091, value546, value1))
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value546 value1 value2 = (output1392, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1393 value545 value1 value2 = (output1393, value667, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1091]
  try dsimp only
  rw [child1392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1091_skip, output1392_skip]
  kernel_rfl

theorem node1394_cond_eq
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value544 value1 value2 = (output1090, value545, value1))
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value545 value1 value2 = (output1393, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1394 value544 value1 value2 = (output1394, value667, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1090]
  try dsimp only
  rw [child1393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1090_skip, output1393_skip]
  kernel_rfl

theorem node1395_cond_eq
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value541 value1 value2 = (output1089, value544, value1))
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value544 value1 value2 = (output1394, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1395 value541 value1 value2 = (output1395, value667, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1089]
  try dsimp only
  rw [child1394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1089_skip, output1394_skip]
  kernel_rfl

theorem node1396_cond_eq
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value541 value1 value2 = (output1084, value541, value1))
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value541 value1 value2 = (output1395, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1396 value541 value1 value2 = (output1396, value667, value1) := by
  rw [input1396_def, output1396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1084]
  try dsimp only
  rw [child1395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1084_skip, output1395_skip]
  kernel_rfl

theorem node1397_cond_eq
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value539 value1 value2 = (output1083, value541, value1))
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value541 value1 value2 = (output1396, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1397 value539 value1 value2 = (output1397, value667, value1) := by
  rw [input1397_def, output1397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1083]
  try dsimp only
  rw [child1396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1083_skip, output1396_skip]
  kernel_rfl

theorem node1398_cond_eq
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value536 value1 value2 = (output1080, value539, value1))
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value539 value1 value2 = (output1397, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1398 value536 value1 value2 = (output1398, value667, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1080]
  try dsimp only
  rw [child1397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1080_skip, output1397_skip]
  kernel_rfl

theorem node1399_cond_eq
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value536 value1 value2 = (output1075, value536, value1))
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value536 value1 value2 = (output1398, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1399 value536 value1 value2 = (output1399, value667, value1) := by
  rw [input1399_def, output1399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1075]
  try dsimp only
  rw [child1398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1075_skip, output1398_skip]
  kernel_rfl

theorem node1400_cond_eq
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value534 value1 value2 = (output1074, value536, value1))
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value536 value1 value2 = (output1399, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1400 value534 value1 value2 = (output1400, value667, value1) := by
  rw [input1400_def, output1400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1074]
  try dsimp only
  rw [child1399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1074_skip, output1399_skip]
  kernel_rfl

theorem node1401_cond_eq
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value533 value1 value2 = (output1071, value534, value1))
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value534 value1 value2 = (output1400, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1401 value533 value1 value2 = (output1401, value667, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1071]
  try dsimp only
  rw [child1400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1071_skip, output1400_skip]
  kernel_rfl

theorem node1402_cond_eq
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value532 value1 value2 = (output1070, value533, value1))
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value533 value1 value2 = (output1401, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1402 value532 value1 value2 = (output1402, value667, value1) := by
  rw [input1402_def, output1402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1070]
  try dsimp only
  rw [child1401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1070_skip, output1401_skip]
  kernel_rfl

theorem node1403_cond_eq
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value531 value1 value2 = (output1069, value532, value1))
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value532 value1 value2 = (output1402, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1403 value531 value1 value2 = (output1403, value667, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1069]
  try dsimp only
  rw [child1402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1069_skip, output1402_skip]
  kernel_rfl

theorem node1404_cond_eq
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value530 value1 value2 = (output1068, value531, value1))
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value531 value1 value2 = (output1403, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1404 value530 value1 value2 = (output1404, value667, value1) := by
  rw [input1404_def, output1404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1068]
  try dsimp only
  rw [child1403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1068_skip, output1403_skip]
  kernel_rfl

theorem node1405_cond_eq
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value529 value1 value2 = (output1067, value530, value1))
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value530 value1 value2 = (output1404, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1405 value529 value1 value2 = (output1405, value667, value1) := by
  rw [input1405_def, output1405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1067]
  try dsimp only
  rw [child1404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1067_skip, output1404_skip]
  kernel_rfl

theorem node1406_cond_eq
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value528 value1 value2 = (output1066, value529, value1))
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value529 value1 value2 = (output1405, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1406 value528 value1 value2 = (output1406, value667, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1066]
  try dsimp only
  rw [child1405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1066_skip, output1405_skip]
  kernel_rfl

theorem node1407_cond_eq
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value527 value1 value2 = (output1065, value528, value1))
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value528 value1 value2 = (output1406, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1407 value527 value1 value2 = (output1407, value667, value1) := by
  rw [input1407_def, output1407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1065]
  try dsimp only
  rw [child1406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1065_skip, output1406_skip]
  kernel_rfl

theorem node1408_cond_eq
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value526 value1 value2 = (output1064, value527, value1))
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value527 value1 value2 = (output1407, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1408 value526 value1 value2 = (output1408, value667, value1) := by
  rw [input1408_def, output1408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1064]
  try dsimp only
  rw [child1407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1064_skip, output1407_skip]
  kernel_rfl

theorem node1409_cond_eq
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value523 value1 value2 = (output1063, value526, value1))
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value526 value1 value2 = (output1408, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1409 value523 value1 value2 = (output1409, value667, value1) := by
  rw [input1409_def, output1409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1063]
  try dsimp only
  rw [child1408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1063_skip, output1408_skip]
  kernel_rfl

theorem node1410_cond_eq
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value523 value1 value2 = (output1058, value523, value1))
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value523 value1 value2 = (output1409, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1410 value523 value1 value2 = (output1410, value667, value1) := by
  rw [input1410_def, output1410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1058]
  try dsimp only
  rw [child1409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1058_skip, output1409_skip]
  kernel_rfl

theorem node1411_cond_eq
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value521 value1 value2 = (output1057, value523, value1))
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value523 value1 value2 = (output1410, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1411 value521 value1 value2 = (output1411, value667, value1) := by
  rw [input1411_def, output1411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1057]
  try dsimp only
  rw [child1410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1057_skip, output1410_skip]
  kernel_rfl

theorem node1412_cond_eq
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value518 value1 value2 = (output1054, value521, value1))
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value521 value1 value2 = (output1411, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1412 value518 value1 value2 = (output1412, value667, value1) := by
  rw [input1412_def, output1412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1054]
  try dsimp only
  rw [child1411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1054_skip, output1411_skip]
  kernel_rfl

theorem node1413_cond_eq
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value518 value1 value2 = (output1049, value518, value1))
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value518 value1 value2 = (output1412, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1413 value518 value1 value2 = (output1413, value667, value1) := by
  rw [input1413_def, output1413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1049]
  try dsimp only
  rw [child1412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1049_skip, output1412_skip]
  kernel_rfl

theorem node1414_cond_eq
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value516 value1 value2 = (output1048, value518, value1))
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value518 value1 value2 = (output1413, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1414 value516 value1 value2 = (output1414, value667, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1048]
  try dsimp only
  rw [child1413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1048_skip, output1413_skip]
  kernel_rfl

theorem node1415_cond_eq
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value515 value1 value2 = (output1045, value516, value1))
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value516 value1 value2 = (output1414, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1415 value515 value1 value2 = (output1415, value667, value1) := by
  rw [input1415_def, output1415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1045]
  try dsimp only
  rw [child1414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1045_skip, output1414_skip]
  kernel_rfl

theorem node1416_cond_eq
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value514 value1 value2 = (output1044, value515, value1))
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value515 value1 value2 = (output1415, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1416 value514 value1 value2 = (output1416, value667, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1044]
  try dsimp only
  rw [child1415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1044_skip, output1415_skip]
  kernel_rfl

theorem node1417_cond_eq
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value513 value1 value2 = (output1043, value514, value1))
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value514 value1 value2 = (output1416, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1417 value513 value1 value2 = (output1417, value667, value1) := by
  rw [input1417_def, output1417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1043]
  try dsimp only
  rw [child1416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1043_skip, output1416_skip]
  kernel_rfl

theorem node1418_cond_eq
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value512 value1 value2 = (output1042, value513, value1))
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value513 value1 value2 = (output1417, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1418 value512 value1 value2 = (output1418, value667, value1) := by
  rw [input1418_def, output1418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1042]
  try dsimp only
  rw [child1417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1042_skip, output1417_skip]
  kernel_rfl

theorem node1419_cond_eq
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value511 value1 value2 = (output1041, value512, value1))
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value512 value1 value2 = (output1418, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1419 value511 value1 value2 = (output1419, value667, value1) := by
  rw [input1419_def, output1419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1041]
  try dsimp only
  rw [child1418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1041_skip, output1418_skip]
  kernel_rfl

theorem node1420_cond_eq
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value510 value1 value2 = (output1040, value511, value1))
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value511 value1 value2 = (output1419, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1420 value510 value1 value2 = (output1420, value667, value1) := by
  rw [input1420_def, output1420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1040]
  try dsimp only
  rw [child1419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1040_skip, output1419_skip]
  kernel_rfl

theorem node1421_cond_eq
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value509 value1 value2 = (output1039, value510, value1))
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value510 value1 value2 = (output1420, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1421 value509 value1 value2 = (output1421, value667, value1) := by
  rw [input1421_def, output1421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1039]
  try dsimp only
  rw [child1420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1039_skip, output1420_skip]
  kernel_rfl

theorem node1422_cond_eq
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value508 value1 value2 = (output1038, value509, value1))
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value509 value1 value2 = (output1421, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1422 value508 value1 value2 = (output1422, value667, value1) := by
  rw [input1422_def, output1422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1038]
  try dsimp only
  rw [child1421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1038_skip, output1421_skip]
  kernel_rfl

theorem node1423_cond_eq
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value505 value1 value2 = (output1037, value508, value1))
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value508 value1 value2 = (output1422, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1423 value505 value1 value2 = (output1423, value667, value1) := by
  rw [input1423_def, output1423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1037]
  try dsimp only
  rw [child1422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1037_skip, output1422_skip]
  kernel_rfl

theorem node1424_cond_eq
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value505 value1 value2 = (output1032, value505, value1))
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value505 value1 value2 = (output1423, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1424 value505 value1 value2 = (output1424, value667, value1) := by
  rw [input1424_def, output1424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1032]
  try dsimp only
  rw [child1423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1032_skip, output1423_skip]
  kernel_rfl

theorem node1425_cond_eq
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value503 value1 value2 = (output1031, value505, value1))
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value505 value1 value2 = (output1424, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1425 value503 value1 value2 = (output1425, value667, value1) := by
  rw [input1425_def, output1425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1031]
  try dsimp only
  rw [child1424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1031_skip, output1424_skip]
  kernel_rfl

theorem node1426_cond_eq
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value501 value1 value2 = (output1028, value503, value1))
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value503 value1 value2 = (output1425, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1426 value501 value1 value2 = (output1426, value667, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1028]
  try dsimp only
  rw [child1425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1028_skip, output1425_skip]
  kernel_rfl

theorem node1427_cond_eq
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value499 value1 value2 = (output1025, value501, value1))
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value501 value1 value2 = (output1426, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1427 value499 value1 value2 = (output1427, value667, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1025]
  try dsimp only
  rw [child1426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1025_skip, output1426_skip]
  kernel_rfl

theorem node1428_cond_eq
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value497 value1 value2 = (output1022, value499, value1))
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value499 value1 value2 = (output1427, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1428 value497 value1 value2 = (output1428, value667, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1022]
  try dsimp only
  rw [child1427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1022_skip, output1427_skip]
  kernel_rfl

theorem node1429_cond_eq
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value495 value1 value2 = (output1019, value497, value1))
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value497 value1 value2 = (output1428, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1429 value495 value1 value2 = (output1429, value667, value1) := by
  rw [input1429_def, output1429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1019]
  try dsimp only
  rw [child1428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1019_skip, output1428_skip]
  kernel_rfl

theorem node1430_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value493 value1 value2 = (output1016, value495, value1))
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value495 value1 value2 = (output1429, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1430 value493 value1 value2 = (output1430, value667, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  try dsimp only
  rw [child1429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output1429_skip]
  kernel_rfl

theorem node1431_cond_eq
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value491 value1 value2 = (output1013, value493, value1))
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value493 value1 value2 = (output1430, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1431 value491 value1 value2 = (output1431, value667, value1) := by
  rw [input1431_def, output1431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1013]
  try dsimp only
  rw [child1430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1013_skip, output1430_skip]
  kernel_rfl

theorem node1432_cond_eq
    (child1010 : Flapjack.WordAlloc.removeDeadStructural input1010 value489 value1 value2 = (output1010, value491, value1))
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value491 value1 value2 = (output1431, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1432 value489 value1 value2 = (output1432, value667, value1) := by
  rw [input1432_def, output1432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1010]
  try dsimp only
  rw [child1431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1010_skip, output1431_skip]
  kernel_rfl

theorem node1433_cond_eq
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value487 value1 value2 = (output1007, value489, value1))
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value489 value1 value2 = (output1432, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1433 value487 value1 value2 = (output1433, value667, value1) := by
  rw [input1433_def, output1433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1007]
  try dsimp only
  rw [child1432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1007_skip, output1432_skip]
  kernel_rfl

theorem node1434_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value484 value1 value2 = (output1004, value487, value1))
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value487 value1 value2 = (output1433, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1434 value484 value1 value2 = (output1434, value667, value1) := by
  rw [input1434_def, output1434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  try dsimp only
  rw [child1433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output1433_skip]
  kernel_rfl

theorem node1435_cond_eq
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value484 value1 value2 = (output999, value484, value1))
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value484 value1 value2 = (output1434, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1435 value484 value1 value2 = (output1435, value667, value1) := by
  rw [input1435_def, output1435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child999]
  try dsimp only
  rw [child1434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output999_skip, output1434_skip]
  kernel_rfl

theorem node1436_cond_eq
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value482 value1 value2 = (output998, value484, value1))
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value484 value1 value2 = (output1435, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1436 value482 value1 value2 = (output1436, value667, value1) := by
  rw [input1436_def, output1436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child998]
  try dsimp only
  rw [child1435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output998_skip, output1435_skip]
  kernel_rfl

theorem node1437_cond_eq
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value480 value1 value2 = (output995, value482, value1))
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value482 value1 value2 = (output1436, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1437 value480 value1 value2 = (output1437, value667, value1) := by
  rw [input1437_def, output1437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child995]
  try dsimp only
  rw [child1436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output995_skip, output1436_skip]
  kernel_rfl

theorem node1438_cond_eq
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value478 value1 value2 = (output992, value480, value1))
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value480 value1 value2 = (output1437, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1438 value478 value1 value2 = (output1438, value667, value1) := by
  rw [input1438_def, output1438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child992]
  try dsimp only
  rw [child1437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output992_skip, output1437_skip]
  kernel_rfl

theorem node1439_cond_eq
    (child989 : Flapjack.WordAlloc.removeDeadStructural input989 value476 value1 value2 = (output989, value478, value1))
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value478 value1 value2 = (output1438, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1439 value476 value1 value2 = (output1439, value667, value1) := by
  rw [input1439_def, output1439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child989]
  try dsimp only
  rw [child1438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output989_skip, output1438_skip]
  kernel_rfl

theorem node1440_cond_eq
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value474 value1 value2 = (output986, value476, value1))
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value476 value1 value2 = (output1439, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1440 value474 value1 value2 = (output1440, value667, value1) := by
  rw [input1440_def, output1440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child986]
  try dsimp only
  rw [child1439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output986_skip, output1439_skip]
  kernel_rfl

theorem node1441_cond_eq
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value472 value1 value2 = (output983, value474, value1))
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value474 value1 value2 = (output1440, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1441 value472 value1 value2 = (output1441, value667, value1) := by
  rw [input1441_def, output1441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child983]
  try dsimp only
  rw [child1440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output983_skip, output1440_skip]
  kernel_rfl

theorem node1442_cond_eq
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value470 value1 value2 = (output980, value472, value1))
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value472 value1 value2 = (output1441, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1442 value470 value1 value2 = (output1442, value667, value1) := by
  rw [input1442_def, output1442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child980]
  try dsimp only
  rw [child1441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output980_skip, output1441_skip]
  kernel_rfl

theorem node1443_cond_eq
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value468 value1 value2 = (output977, value470, value1))
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value470 value1 value2 = (output1442, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1443 value468 value1 value2 = (output1443, value667, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child977]
  try dsimp only
  rw [child1442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output977_skip, output1442_skip]
  kernel_rfl

theorem node1444_cond_eq
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value466 value1 value2 = (output974, value468, value1))
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value468 value1 value2 = (output1443, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1444 value466 value1 value2 = (output1444, value667, value1) := by
  rw [input1444_def, output1444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child974]
  try dsimp only
  rw [child1443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output974_skip, output1443_skip]
  kernel_rfl

theorem node1445_cond_eq
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value463 value1 value2 = (output971, value466, value1))
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value466 value1 value2 = (output1444, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1445 value463 value1 value2 = (output1445, value667, value1) := by
  rw [input1445_def, output1445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child971]
  try dsimp only
  rw [child1444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output971_skip, output1444_skip]
  kernel_rfl

theorem node1446_cond_eq
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value463 value1 value2 = (output966, value463, value1))
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value463 value1 value2 = (output1445, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1446 value463 value1 value2 = (output1446, value667, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child966]
  try dsimp only
  rw [child1445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output966_skip, output1445_skip]
  kernel_rfl

theorem node1447_cond_eq
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value461 value1 value2 = (output965, value463, value1))
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value463 value1 value2 = (output1446, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1447 value461 value1 value2 = (output1447, value667, value1) := by
  rw [input1447_def, output1447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child965]
  try dsimp only
  rw [child1446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output965_skip, output1446_skip]
  kernel_rfl

theorem node1448_cond_eq
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value459 value1 value2 = (output962, value461, value1))
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value461 value1 value2 = (output1447, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1448 value459 value1 value2 = (output1448, value667, value1) := by
  rw [input1448_def, output1448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child962]
  try dsimp only
  rw [child1447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output962_skip, output1447_skip]
  kernel_rfl

theorem node1449_cond_eq
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value457 value1 value2 = (output959, value459, value1))
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value459 value1 value2 = (output1448, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1449 value457 value1 value2 = (output1449, value667, value1) := by
  rw [input1449_def, output1449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child959]
  try dsimp only
  rw [child1448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output959_skip, output1448_skip]
  kernel_rfl

theorem node1450_cond_eq
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value455 value1 value2 = (output956, value457, value1))
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value457 value1 value2 = (output1449, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1450 value455 value1 value2 = (output1450, value667, value1) := by
  rw [input1450_def, output1450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child956]
  try dsimp only
  rw [child1449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output956_skip, output1449_skip]
  kernel_rfl

theorem node1451_cond_eq
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value453 value1 value2 = (output953, value455, value1))
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value455 value1 value2 = (output1450, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1451 value453 value1 value2 = (output1451, value667, value1) := by
  rw [input1451_def, output1451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child953]
  try dsimp only
  rw [child1450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output953_skip, output1450_skip]
  kernel_rfl

theorem node1452_cond_eq
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value451 value1 value2 = (output950, value453, value1))
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value453 value1 value2 = (output1451, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1452 value451 value1 value2 = (output1452, value667, value1) := by
  rw [input1452_def, output1452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child950]
  try dsimp only
  rw [child1451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output950_skip, output1451_skip]
  kernel_rfl

theorem node1453_cond_eq
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value449 value1 value2 = (output947, value451, value1))
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value451 value1 value2 = (output1452, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1453 value449 value1 value2 = (output1453, value667, value1) := by
  rw [input1453_def, output1453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child947]
  try dsimp only
  rw [child1452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output947_skip, output1452_skip]
  kernel_rfl

theorem node1454_cond_eq
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value447 value1 value2 = (output944, value449, value1))
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value449 value1 value2 = (output1453, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1454 value447 value1 value2 = (output1454, value667, value1) := by
  rw [input1454_def, output1454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child944]
  try dsimp only
  rw [child1453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output944_skip, output1453_skip]
  kernel_rfl

theorem node1455_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value445 value1 value2 = (output941, value447, value1))
    (child1454 : Flapjack.WordAlloc.removeDeadStructural input1454 value447 value1 value2 = (output1454, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1455 value445 value1 value2 = (output1455, value667, value1) := by
  rw [input1455_def, output1455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  try dsimp only
  rw [child1454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output941_skip, output1454_skip]
  kernel_rfl

theorem node1456_cond_eq
    (child938 : Flapjack.WordAlloc.removeDeadStructural input938 value442 value1 value2 = (output938, value445, value1))
    (child1455 : Flapjack.WordAlloc.removeDeadStructural input1455 value445 value1 value2 = (output1455, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1456 value442 value1 value2 = (output1456, value667, value1) := by
  rw [input1456_def, output1456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child938]
  try dsimp only
  rw [child1455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output938_skip, output1455_skip]
  kernel_rfl

theorem node1457_cond_eq
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value442 value1 value2 = (output933, value442, value1))
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value442 value1 value2 = (output1456, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1457 value442 value1 value2 = (output1457, value667, value1) := by
  rw [input1457_def, output1457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child933]
  try dsimp only
  rw [child1456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output933_skip, output1456_skip]
  kernel_rfl

theorem node1458_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value440 value1 value2 = (output932, value442, value1))
    (child1457 : Flapjack.WordAlloc.removeDeadStructural input1457 value442 value1 value2 = (output1457, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1458 value440 value1 value2 = (output1458, value667, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  try dsimp only
  rw [child1457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output1457_skip]
  kernel_rfl

theorem node1459_cond_eq
    (child929 : Flapjack.WordAlloc.removeDeadStructural input929 value438 value1 value2 = (output929, value440, value1))
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value440 value1 value2 = (output1458, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1459 value438 value1 value2 = (output1459, value667, value1) := by
  rw [input1459_def, output1459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child929]
  try dsimp only
  rw [child1458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output929_skip, output1458_skip]
  kernel_rfl

theorem node1460_cond_eq
    (child926 : Flapjack.WordAlloc.removeDeadStructural input926 value436 value1 value2 = (output926, value438, value1))
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value438 value1 value2 = (output1459, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1460 value436 value1 value2 = (output1460, value667, value1) := by
  rw [input1460_def, output1460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child926]
  try dsimp only
  rw [child1459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output926_skip, output1459_skip]
  kernel_rfl

theorem node1461_cond_eq
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value434 value1 value2 = (output923, value436, value1))
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value436 value1 value2 = (output1460, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1461 value434 value1 value2 = (output1461, value667, value1) := by
  rw [input1461_def, output1461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child923]
  try dsimp only
  rw [child1460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output923_skip, output1460_skip]
  kernel_rfl

theorem node1462_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value432 value1 value2 = (output920, value434, value1))
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value434 value1 value2 = (output1461, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1462 value432 value1 value2 = (output1462, value667, value1) := by
  rw [input1462_def, output1462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child1461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output1461_skip]
  kernel_rfl

theorem node1463_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value430 value1 value2 = (output917, value432, value1))
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value432 value1 value2 = (output1462, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1463 value430 value1 value2 = (output1463, value667, value1) := by
  rw [input1463_def, output1463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child1462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output1462_skip]
  kernel_rfl

theorem node1464_cond_eq
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value428 value1 value2 = (output914, value430, value1))
    (child1463 : Flapjack.WordAlloc.removeDeadStructural input1463 value430 value1 value2 = (output1463, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1464 value428 value1 value2 = (output1464, value667, value1) := by
  rw [input1464_def, output1464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child914]
  try dsimp only
  rw [child1463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output914_skip, output1463_skip]
  kernel_rfl

theorem node1465_cond_eq
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value426 value1 value2 = (output911, value428, value1))
    (child1464 : Flapjack.WordAlloc.removeDeadStructural input1464 value428 value1 value2 = (output1464, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1465 value426 value1 value2 = (output1465, value667, value1) := by
  rw [input1465_def, output1465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child911]
  try dsimp only
  rw [child1464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output911_skip, output1464_skip]
  kernel_rfl

theorem node1466_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value424 value1 value2 = (output908, value426, value1))
    (child1465 : Flapjack.WordAlloc.removeDeadStructural input1465 value426 value1 value2 = (output1465, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1466 value424 value1 value2 = (output1466, value667, value1) := by
  rw [input1466_def, output1466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child1465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output1465_skip]
  kernel_rfl

theorem node1467_cond_eq
    (child905 : Flapjack.WordAlloc.removeDeadStructural input905 value421 value1 value2 = (output905, value424, value1))
    (child1466 : Flapjack.WordAlloc.removeDeadStructural input1466 value424 value1 value2 = (output1466, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1467 value421 value1 value2 = (output1467, value667, value1) := by
  rw [input1467_def, output1467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child905]
  try dsimp only
  rw [child1466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output905_skip, output1466_skip]
  kernel_rfl

theorem node1468_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value421 value1 value2 = (output900, value421, value1))
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value421 value1 value2 = (output1467, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1468 value421 value1 value2 = (output1468, value667, value1) := by
  rw [input1468_def, output1468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child1467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output1467_skip]
  kernel_rfl

theorem node1469_cond_eq
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value419 value1 value2 = (output899, value421, value1))
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value421 value1 value2 = (output1468, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1469 value419 value1 value2 = (output1469, value667, value1) := by
  rw [input1469_def, output1469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child899]
  try dsimp only
  rw [child1468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output899_skip, output1468_skip]
  kernel_rfl

theorem node1470_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value417 value1 value2 = (output896, value419, value1))
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value419 value1 value2 = (output1469, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1470 value417 value1 value2 = (output1470, value667, value1) := by
  rw [input1470_def, output1470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  try dsimp only
  rw [child1469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output1469_skip]
  kernel_rfl

theorem node1471_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value415 value1 value2 = (output893, value417, value1))
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value417 value1 value2 = (output1470, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1471 value415 value1 value2 = (output1471, value667, value1) := by
  rw [input1471_def, output1471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  try dsimp only
  rw [child1470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output893_skip, output1470_skip]
  kernel_rfl

theorem node1472_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value413 value1 value2 = (output890, value415, value1))
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value415 value1 value2 = (output1471, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1472 value413 value1 value2 = (output1472, value667, value1) := by
  rw [input1472_def, output1472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child1471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output1471_skip]
  kernel_rfl

theorem node1473_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value411 value1 value2 = (output887, value413, value1))
    (child1472 : Flapjack.WordAlloc.removeDeadStructural input1472 value413 value1 value2 = (output1472, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1473 value411 value1 value2 = (output1473, value667, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child1472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output1472_skip]
  kernel_rfl

theorem node1474_cond_eq
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value409 value1 value2 = (output884, value411, value1))
    (child1473 : Flapjack.WordAlloc.removeDeadStructural input1473 value411 value1 value2 = (output1473, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1474 value409 value1 value2 = (output1474, value667, value1) := by
  rw [input1474_def, output1474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child884]
  try dsimp only
  rw [child1473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output884_skip, output1473_skip]
  kernel_rfl

theorem node1475_cond_eq
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value407 value1 value2 = (output881, value409, value1))
    (child1474 : Flapjack.WordAlloc.removeDeadStructural input1474 value409 value1 value2 = (output1474, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1475 value407 value1 value2 = (output1475, value667, value1) := by
  rw [input1475_def, output1475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child881]
  try dsimp only
  rw [child1474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output881_skip, output1474_skip]
  kernel_rfl

theorem node1476_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value405 value1 value2 = (output878, value407, value1))
    (child1475 : Flapjack.WordAlloc.removeDeadStructural input1475 value407 value1 value2 = (output1475, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1476 value405 value1 value2 = (output1476, value667, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child1475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output1475_skip]
  kernel_rfl

theorem node1477_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value403 value1 value2 = (output875, value405, value1))
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value405 value1 value2 = (output1476, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1477 value403 value1 value2 = (output1477, value667, value1) := by
  rw [input1477_def, output1477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child1476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output1476_skip]
  kernel_rfl

theorem node1478_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value400 value1 value2 = (output872, value403, value1))
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value403 value1 value2 = (output1477, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1478 value400 value1 value2 = (output1478, value667, value1) := by
  rw [input1478_def, output1478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child1477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output1477_skip]
  kernel_rfl

theorem node1479_cond_eq
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value400 value1 value2 = (output867, value400, value1))
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value400 value1 value2 = (output1478, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1479 value400 value1 value2 = (output1479, value667, value1) := by
  rw [input1479_def, output1479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child867]
  try dsimp only
  rw [child1478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output867_skip, output1478_skip]
  kernel_rfl

theorem node1480_cond_eq
    (child866 : Flapjack.WordAlloc.removeDeadStructural input866 value398 value1 value2 = (output866, value400, value1))
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value400 value1 value2 = (output1479, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1480 value398 value1 value2 = (output1480, value667, value1) := by
  rw [input1480_def, output1480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child866]
  try dsimp only
  rw [child1479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output866_skip, output1479_skip]
  kernel_rfl

theorem node1481_cond_eq
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value396 value1 value2 = (output863, value398, value1))
    (child1480 : Flapjack.WordAlloc.removeDeadStructural input1480 value398 value1 value2 = (output1480, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1481 value396 value1 value2 = (output1481, value667, value1) := by
  rw [input1481_def, output1481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child863]
  try dsimp only
  rw [child1480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output863_skip, output1480_skip]
  kernel_rfl

theorem node1482_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value394 value1 value2 = (output860, value396, value1))
    (child1481 : Flapjack.WordAlloc.removeDeadStructural input1481 value396 value1 value2 = (output1481, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1482 value394 value1 value2 = (output1482, value667, value1) := by
  rw [input1482_def, output1482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  try dsimp only
  rw [child1481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output1481_skip]
  kernel_rfl

theorem node1483_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value392 value1 value2 = (output857, value394, value1))
    (child1482 : Flapjack.WordAlloc.removeDeadStructural input1482 value394 value1 value2 = (output1482, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1483 value392 value1 value2 = (output1483, value667, value1) := by
  rw [input1483_def, output1483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  try dsimp only
  rw [child1482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output1482_skip]
  kernel_rfl

theorem node1484_cond_eq
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value390 value1 value2 = (output854, value392, value1))
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value392 value1 value2 = (output1483, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1484 value390 value1 value2 = (output1484, value667, value1) := by
  rw [input1484_def, output1484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child854]
  try dsimp only
  rw [child1483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output854_skip, output1483_skip]
  kernel_rfl

theorem node1485_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value388 value1 value2 = (output851, value390, value1))
    (child1484 : Flapjack.WordAlloc.removeDeadStructural input1484 value390 value1 value2 = (output1484, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1485 value388 value1 value2 = (output1485, value667, value1) := by
  rw [input1485_def, output1485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child1484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output1484_skip]
  kernel_rfl

theorem node1486_cond_eq
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value386 value1 value2 = (output848, value388, value1))
    (child1485 : Flapjack.WordAlloc.removeDeadStructural input1485 value388 value1 value2 = (output1485, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1486 value386 value1 value2 = (output1486, value667, value1) := by
  rw [input1486_def, output1486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child848]
  try dsimp only
  rw [child1485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output848_skip, output1485_skip]
  kernel_rfl

theorem node1487_cond_eq
    (child845 : Flapjack.WordAlloc.removeDeadStructural input845 value384 value1 value2 = (output845, value386, value1))
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value386 value1 value2 = (output1486, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1487 value384 value1 value2 = (output1487, value667, value1) := by
  rw [input1487_def, output1487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child845]
  try dsimp only
  rw [child1486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output845_skip, output1486_skip]
  kernel_rfl

theorem node1488_cond_eq
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value382 value1 value2 = (output842, value384, value1))
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value384 value1 value2 = (output1487, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1488 value382 value1 value2 = (output1488, value667, value1) := by
  rw [input1488_def, output1488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child842]
  try dsimp only
  rw [child1487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output842_skip, output1487_skip]
  kernel_rfl

theorem node1489_cond_eq
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value379 value1 value2 = (output839, value382, value1))
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value382 value1 value2 = (output1488, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1489 value379 value1 value2 = (output1489, value667, value1) := by
  rw [input1489_def, output1489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child839]
  try dsimp only
  rw [child1488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output839_skip, output1488_skip]
  kernel_rfl

theorem node1490_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value379 value1 value2 = (output834, value379, value1))
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value379 value1 value2 = (output1489, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1490 value379 value1 value2 = (output1490, value667, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  try dsimp only
  rw [child1489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output834_skip, output1489_skip]
  kernel_rfl

theorem node1491_cond_eq
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value377 value1 value2 = (output833, value379, value1))
    (child1490 : Flapjack.WordAlloc.removeDeadStructural input1490 value379 value1 value2 = (output1490, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1491 value377 value1 value2 = (output1491, value667, value1) := by
  rw [input1491_def, output1491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child833]
  try dsimp only
  rw [child1490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output833_skip, output1490_skip]
  kernel_rfl

theorem node1492_cond_eq
    (child830 : Flapjack.WordAlloc.removeDeadStructural input830 value375 value1 value2 = (output830, value377, value1))
    (child1491 : Flapjack.WordAlloc.removeDeadStructural input1491 value377 value1 value2 = (output1491, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1492 value375 value1 value2 = (output1492, value667, value1) := by
  rw [input1492_def, output1492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child830]
  try dsimp only
  rw [child1491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output830_skip, output1491_skip]
  kernel_rfl

theorem node1493_cond_eq
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value373 value1 value2 = (output827, value375, value1))
    (child1492 : Flapjack.WordAlloc.removeDeadStructural input1492 value375 value1 value2 = (output1492, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1493 value373 value1 value2 = (output1493, value667, value1) := by
  rw [input1493_def, output1493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child827]
  try dsimp only
  rw [child1492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output827_skip, output1492_skip]
  kernel_rfl

theorem node1494_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value371 value1 value2 = (output824, value373, value1))
    (child1493 : Flapjack.WordAlloc.removeDeadStructural input1493 value373 value1 value2 = (output1493, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1494 value371 value1 value2 = (output1494, value667, value1) := by
  rw [input1494_def, output1494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child1493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output1493_skip]
  kernel_rfl

theorem node1495_cond_eq
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value369 value1 value2 = (output821, value371, value1))
    (child1494 : Flapjack.WordAlloc.removeDeadStructural input1494 value371 value1 value2 = (output1494, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1495 value369 value1 value2 = (output1495, value667, value1) := by
  rw [input1495_def, output1495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child821]
  try dsimp only
  rw [child1494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output821_skip, output1494_skip]
  kernel_rfl

theorem node1496_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value367 value1 value2 = (output818, value369, value1))
    (child1495 : Flapjack.WordAlloc.removeDeadStructural input1495 value369 value1 value2 = (output1495, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1496 value367 value1 value2 = (output1496, value667, value1) := by
  rw [input1496_def, output1496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child1495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output1495_skip]
  kernel_rfl

theorem node1497_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value365 value1 value2 = (output815, value367, value1))
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value367 value1 value2 = (output1496, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1497 value365 value1 value2 = (output1497, value667, value1) := by
  rw [input1497_def, output1497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child1496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output1496_skip]
  kernel_rfl

theorem node1498_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value363 value1 value2 = (output812, value365, value1))
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value365 value1 value2 = (output1497, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1498 value363 value1 value2 = (output1498, value667, value1) := by
  rw [input1498_def, output1498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  try dsimp only
  rw [child1497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output1497_skip]
  kernel_rfl

theorem node1499_cond_eq
    (child809 : Flapjack.WordAlloc.removeDeadStructural input809 value361 value1 value2 = (output809, value363, value1))
    (child1498 : Flapjack.WordAlloc.removeDeadStructural input1498 value363 value1 value2 = (output1498, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1499 value361 value1 value2 = (output1499, value667, value1) := by
  rw [input1499_def, output1499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child809]
  try dsimp only
  rw [child1498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output809_skip, output1498_skip]
  kernel_rfl

theorem node1500_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value358 value1 value2 = (output806, value361, value1))
    (child1499 : Flapjack.WordAlloc.removeDeadStructural input1499 value361 value1 value2 = (output1499, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1500 value358 value1 value2 = (output1500, value667, value1) := by
  rw [input1500_def, output1500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  try dsimp only
  rw [child1499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output806_skip, output1499_skip]
  kernel_rfl

theorem node1501_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value358 value1 value2 = (output801, value358, value1))
    (child1500 : Flapjack.WordAlloc.removeDeadStructural input1500 value358 value1 value2 = (output1500, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1501 value358 value1 value2 = (output1501, value667, value1) := by
  rw [input1501_def, output1501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child1500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output1500_skip]
  kernel_rfl

theorem node1502_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value356 value1 value2 = (output800, value358, value1))
    (child1501 : Flapjack.WordAlloc.removeDeadStructural input1501 value358 value1 value2 = (output1501, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1502 value356 value1 value2 = (output1502, value667, value1) := by
  rw [input1502_def, output1502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  try dsimp only
  rw [child1501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output1501_skip]
  kernel_rfl

theorem node1503_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value354 value1 value2 = (output797, value356, value1))
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value356 value1 value2 = (output1502, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1503 value354 value1 value2 = (output1503, value667, value1) := by
  rw [input1503_def, output1503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  try dsimp only
  rw [child1502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output1502_skip]
  kernel_rfl

theorem node1504_cond_eq
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value352 value1 value2 = (output794, value354, value1))
    (child1503 : Flapjack.WordAlloc.removeDeadStructural input1503 value354 value1 value2 = (output1503, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1504 value352 value1 value2 = (output1504, value667, value1) := by
  rw [input1504_def, output1504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child794]
  try dsimp only
  rw [child1503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output794_skip, output1503_skip]
  kernel_rfl

theorem node1505_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value350 value1 value2 = (output791, value352, value1))
    (child1504 : Flapjack.WordAlloc.removeDeadStructural input1504 value352 value1 value2 = (output1504, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1505 value350 value1 value2 = (output1505, value667, value1) := by
  rw [input1505_def, output1505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child1504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output1504_skip]
  kernel_rfl

theorem node1506_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value348 value1 value2 = (output788, value350, value1))
    (child1505 : Flapjack.WordAlloc.removeDeadStructural input1505 value350 value1 value2 = (output1505, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1506 value348 value1 value2 = (output1506, value667, value1) := by
  rw [input1506_def, output1506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  try dsimp only
  rw [child1505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output788_skip, output1505_skip]
  kernel_rfl

theorem node1507_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value346 value1 value2 = (output785, value348, value1))
    (child1506 : Flapjack.WordAlloc.removeDeadStructural input1506 value348 value1 value2 = (output1506, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1507 value346 value1 value2 = (output1507, value667, value1) := by
  rw [input1507_def, output1507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  try dsimp only
  rw [child1506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output785_skip, output1506_skip]
  kernel_rfl

theorem node1508_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value344 value1 value2 = (output782, value346, value1))
    (child1507 : Flapjack.WordAlloc.removeDeadStructural input1507 value346 value1 value2 = (output1507, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1508 value344 value1 value2 = (output1508, value667, value1) := by
  rw [input1508_def, output1508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child1507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output1507_skip]
  kernel_rfl

theorem node1509_cond_eq
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value342 value1 value2 = (output779, value344, value1))
    (child1508 : Flapjack.WordAlloc.removeDeadStructural input1508 value344 value1 value2 = (output1508, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1509 value342 value1 value2 = (output1509, value667, value1) := by
  rw [input1509_def, output1509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child779]
  try dsimp only
  rw [child1508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output779_skip, output1508_skip]
  kernel_rfl

theorem node1510_cond_eq
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value340 value1 value2 = (output776, value342, value1))
    (child1509 : Flapjack.WordAlloc.removeDeadStructural input1509 value342 value1 value2 = (output1509, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1510 value340 value1 value2 = (output1510, value667, value1) := by
  rw [input1510_def, output1510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child776]
  try dsimp only
  rw [child1509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output776_skip, output1509_skip]
  kernel_rfl

theorem node1511_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value337 value1 value2 = (output773, value340, value1))
    (child1510 : Flapjack.WordAlloc.removeDeadStructural input1510 value340 value1 value2 = (output1510, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1511 value337 value1 value2 = (output1511, value667, value1) := by
  rw [input1511_def, output1511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child1510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output1510_skip]
  kernel_rfl

theorem node1512_cond_eq
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value337 value1 value2 = (output768, value337, value1))
    (child1511 : Flapjack.WordAlloc.removeDeadStructural input1511 value337 value1 value2 = (output1511, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1512 value337 value1 value2 = (output1512, value667, value1) := by
  rw [input1512_def, output1512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child768]
  try dsimp only
  rw [child1511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output768_skip, output1511_skip]
  kernel_rfl

theorem node1513_cond_eq
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value335 value1 value2 = (output767, value337, value1))
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value337 value1 value2 = (output1512, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1513 value335 value1 value2 = (output1513, value667, value1) := by
  rw [input1513_def, output1513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child767]
  try dsimp only
  rw [child1512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output767_skip, output1512_skip]
  kernel_rfl

theorem node1514_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value333 value1 value2 = (output764, value335, value1))
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value335 value1 value2 = (output1513, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1514 value333 value1 value2 = (output1514, value667, value1) := by
  rw [input1514_def, output1514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child1513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output1513_skip]
  kernel_rfl

theorem node1515_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value331 value1 value2 = (output761, value333, value1))
    (child1514 : Flapjack.WordAlloc.removeDeadStructural input1514 value333 value1 value2 = (output1514, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1515 value331 value1 value2 = (output1515, value667, value1) := by
  rw [input1515_def, output1515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  try dsimp only
  rw [child1514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output761_skip, output1514_skip]
  kernel_rfl

theorem node1516_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value329 value1 value2 = (output758, value331, value1))
    (child1515 : Flapjack.WordAlloc.removeDeadStructural input1515 value331 value1 value2 = (output1515, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1516 value329 value1 value2 = (output1516, value667, value1) := by
  rw [input1516_def, output1516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child1515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output1515_skip]
  kernel_rfl

theorem node1517_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value327 value1 value2 = (output755, value329, value1))
    (child1516 : Flapjack.WordAlloc.removeDeadStructural input1516 value329 value1 value2 = (output1516, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1517 value327 value1 value2 = (output1517, value667, value1) := by
  rw [input1517_def, output1517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child1516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output1516_skip]
  kernel_rfl

theorem node1518_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value325 value1 value2 = (output752, value327, value1))
    (child1517 : Flapjack.WordAlloc.removeDeadStructural input1517 value327 value1 value2 = (output1517, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1518 value325 value1 value2 = (output1518, value667, value1) := by
  rw [input1518_def, output1518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child752]
  try dsimp only
  rw [child1517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output752_skip, output1517_skip]
  kernel_rfl

theorem node1519_cond_eq
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value323 value1 value2 = (output749, value325, value1))
    (child1518 : Flapjack.WordAlloc.removeDeadStructural input1518 value325 value1 value2 = (output1518, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1519 value323 value1 value2 = (output1519, value667, value1) := by
  rw [input1519_def, output1519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child749]
  try dsimp only
  rw [child1518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output749_skip, output1518_skip]
  kernel_rfl

theorem node1520_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value321 value1 value2 = (output746, value323, value1))
    (child1519 : Flapjack.WordAlloc.removeDeadStructural input1519 value323 value1 value2 = (output1519, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1520 value321 value1 value2 = (output1520, value667, value1) := by
  rw [input1520_def, output1520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child1519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output1519_skip]
  kernel_rfl

theorem node1521_cond_eq
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value319 value1 value2 = (output743, value321, value1))
    (child1520 : Flapjack.WordAlloc.removeDeadStructural input1520 value321 value1 value2 = (output1520, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1521 value319 value1 value2 = (output1521, value667, value1) := by
  rw [input1521_def, output1521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child743]
  try dsimp only
  rw [child1520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output743_skip, output1520_skip]
  kernel_rfl

theorem node1522_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value316 value1 value2 = (output740, value319, value1))
    (child1521 : Flapjack.WordAlloc.removeDeadStructural input1521 value319 value1 value2 = (output1521, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1522 value316 value1 value2 = (output1522, value667, value1) := by
  rw [input1522_def, output1522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  try dsimp only
  rw [child1521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output1521_skip]
  kernel_rfl

theorem node1523_cond_eq
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value316 value1 value2 = (output735, value316, value1))
    (child1522 : Flapjack.WordAlloc.removeDeadStructural input1522 value316 value1 value2 = (output1522, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1523 value316 value1 value2 = (output1523, value667, value1) := by
  rw [input1523_def, output1523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child735]
  try dsimp only
  rw [child1522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output735_skip, output1522_skip]
  kernel_rfl

theorem node1524_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value314 value1 value2 = (output734, value316, value1))
    (child1523 : Flapjack.WordAlloc.removeDeadStructural input1523 value316 value1 value2 = (output1523, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1524 value314 value1 value2 = (output1524, value667, value1) := by
  rw [input1524_def, output1524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  try dsimp only
  rw [child1523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output734_skip, output1523_skip]
  kernel_rfl

theorem node1525_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value312 value1 value2 = (output731, value314, value1))
    (child1524 : Flapjack.WordAlloc.removeDeadStructural input1524 value314 value1 value2 = (output1524, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1525 value312 value1 value2 = (output1525, value667, value1) := by
  rw [input1525_def, output1525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child1524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output1524_skip]
  kernel_rfl

theorem node1526_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value310 value1 value2 = (output728, value312, value1))
    (child1525 : Flapjack.WordAlloc.removeDeadStructural input1525 value312 value1 value2 = (output1525, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1526 value310 value1 value2 = (output1526, value667, value1) := by
  rw [input1526_def, output1526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child1525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output1525_skip]
  kernel_rfl

theorem node1527_cond_eq
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value308 value1 value2 = (output725, value310, value1))
    (child1526 : Flapjack.WordAlloc.removeDeadStructural input1526 value310 value1 value2 = (output1526, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1527 value308 value1 value2 = (output1527, value667, value1) := by
  rw [input1527_def, output1527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child725]
  try dsimp only
  rw [child1526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output725_skip, output1526_skip]
  kernel_rfl

theorem node1528_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value306 value1 value2 = (output722, value308, value1))
    (child1527 : Flapjack.WordAlloc.removeDeadStructural input1527 value308 value1 value2 = (output1527, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1528 value306 value1 value2 = (output1528, value667, value1) := by
  rw [input1528_def, output1528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child1527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output1527_skip]
  kernel_rfl

theorem node1529_cond_eq
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value304 value1 value2 = (output719, value306, value1))
    (child1528 : Flapjack.WordAlloc.removeDeadStructural input1528 value306 value1 value2 = (output1528, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1529 value304 value1 value2 = (output1529, value667, value1) := by
  rw [input1529_def, output1529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child719]
  try dsimp only
  rw [child1528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output719_skip, output1528_skip]
  kernel_rfl

theorem node1530_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value302 value1 value2 = (output716, value304, value1))
    (child1529 : Flapjack.WordAlloc.removeDeadStructural input1529 value304 value1 value2 = (output1529, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1530 value302 value1 value2 = (output1530, value667, value1) := by
  rw [input1530_def, output1530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child1529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output1529_skip]
  kernel_rfl

theorem node1531_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value300 value1 value2 = (output713, value302, value1))
    (child1530 : Flapjack.WordAlloc.removeDeadStructural input1530 value302 value1 value2 = (output1530, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1531 value300 value1 value2 = (output1531, value667, value1) := by
  rw [input1531_def, output1531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  try dsimp only
  rw [child1530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output713_skip, output1530_skip]
  kernel_rfl

theorem node1532_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value298 value1 value2 = (output710, value300, value1))
    (child1531 : Flapjack.WordAlloc.removeDeadStructural input1531 value300 value1 value2 = (output1531, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1532 value298 value1 value2 = (output1532, value667, value1) := by
  rw [input1532_def, output1532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  try dsimp only
  rw [child1531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output710_skip, output1531_skip]
  kernel_rfl

theorem node1533_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value295 value1 value2 = (output707, value298, value1))
    (child1532 : Flapjack.WordAlloc.removeDeadStructural input1532 value298 value1 value2 = (output1532, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1533 value295 value1 value2 = (output1533, value667, value1) := by
  rw [input1533_def, output1533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child1532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output707_skip, output1532_skip]
  kernel_rfl

theorem node1534_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value295 value1 value2 = (output702, value295, value1))
    (child1533 : Flapjack.WordAlloc.removeDeadStructural input1533 value295 value1 value2 = (output1533, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1534 value295 value1 value2 = (output1534, value667, value1) := by
  rw [input1534_def, output1534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  try dsimp only
  rw [child1533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output702_skip, output1533_skip]
  kernel_rfl

theorem node1535_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value293 value1 value2 = (output701, value295, value1))
    (child1534 : Flapjack.WordAlloc.removeDeadStructural input1534 value295 value1 value2 = (output1534, value667, value1)) : Flapjack.WordAlloc.removeDeadStructural input1535 value293 value1 value2 = (output1535, value667, value1) := by
  rw [input1535_def, output1535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  try dsimp only
  rw [child1534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output1534_skip]
  kernel_rfl

#print axioms node1535_cond_eq
end InitECandidate.Proofs.DeadStages233.Parallel
