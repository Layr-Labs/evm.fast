import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages782.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages782.Parallel
theorem node1280_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value770 value1 value2 = (output1278, value771, value1))
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value771 value1 value2 = (output1279, value772, value1)) : Flapjack.WordAlloc.removeDeadStructural input1280 value770 value1 value2 = (output1280, value772, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  try dsimp only
  rw [child1279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output1279_skip]
  kernel_rfl

theorem node1281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1281 value772 value1 value2 = (output1281, value773, value1) := by
  rw [input1281_def, output1281_def]
  kernel_rfl

theorem node1282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1282 value773 value1 value2 = (output1282, value774, value1) := by
  rw [input1282_def, output1282_def]
  kernel_rfl

theorem node1283_cond_eq
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value772 value1 value2 = (output1281, value773, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value773 value1 value2 = (output1282, value774, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value772 value1 value2 = (output1283, value774, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1281]
  try dsimp only
  rw [child1282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1281_skip, output1282_skip]
  kernel_rfl

theorem node1284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value774 value1 value2 = (output1284, value775, value1) := by
  rw [input1284_def, output1284_def]
  kernel_rfl

theorem node1285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value775 value1 value2 = (output1285, value776, value1) := by
  rw [input1285_def, output1285_def]
  kernel_rfl

theorem node1286_cond_eq
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value774 value1 value2 = (output1284, value775, value1))
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value775 value1 value2 = (output1285, value776, value1)) : Flapjack.WordAlloc.removeDeadStructural input1286 value774 value1 value2 = (output1286, value776, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1284]
  try dsimp only
  rw [child1285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1284_skip, output1285_skip]
  kernel_rfl

theorem node1287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1287 value776 value1 value2 = (output1287, value777, value1) := by
  rw [input1287_def, output1287_def]
  kernel_rfl

theorem node1288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1288 value777 value1 value2 = (output1288, value778, value1) := by
  rw [input1288_def, output1288_def]
  kernel_rfl

theorem node1289_cond_eq
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value776 value1 value2 = (output1287, value777, value1))
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value777 value1 value2 = (output1288, value778, value1)) : Flapjack.WordAlloc.removeDeadStructural input1289 value776 value1 value2 = (output1289, value778, value1) := by
  rw [input1289_def, output1289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1287]
  try dsimp only
  rw [child1288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1287_skip, output1288_skip]
  kernel_rfl

theorem node1290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1290 value778 value1 value2 = (output1290, value779, value1) := by
  rw [input1290_def, output1290_def]
  kernel_rfl

theorem node1291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1291 value779 value1 value2 = (output1291, value780, value1) := by
  rw [input1291_def, output1291_def]
  kernel_rfl

theorem node1292_cond_eq
    (child1290 : Flapjack.WordAlloc.removeDeadStructural input1290 value778 value1 value2 = (output1290, value779, value1))
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value779 value1 value2 = (output1291, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1292 value778 value1 value2 = (output1292, value780, value1) := by
  rw [input1292_def, output1292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1290]
  try dsimp only
  rw [child1291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1290_skip, output1291_skip]
  kernel_rfl

theorem node1293_cond_eq
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value776 value1 value2 = (output1289, value778, value1))
    (child1292 : Flapjack.WordAlloc.removeDeadStructural input1292 value778 value1 value2 = (output1292, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1293 value776 value1 value2 = (output1293, value780, value1) := by
  rw [input1293_def, output1293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1289]
  try dsimp only
  rw [child1292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1289_skip, output1292_skip]
  kernel_rfl

theorem node1294_cond_eq
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value774 value1 value2 = (output1286, value776, value1))
    (child1293 : Flapjack.WordAlloc.removeDeadStructural input1293 value776 value1 value2 = (output1293, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1294 value774 value1 value2 = (output1294, value780, value1) := by
  rw [input1294_def, output1294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1286]
  try dsimp only
  rw [child1293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1286_skip, output1293_skip]
  kernel_rfl

theorem node1295_cond_eq
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value772 value1 value2 = (output1283, value774, value1))
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value774 value1 value2 = (output1294, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1295 value772 value1 value2 = (output1295, value780, value1) := by
  rw [input1295_def, output1295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1283]
  try dsimp only
  rw [child1294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1283_skip, output1294_skip]
  kernel_rfl

theorem node1296_cond_eq
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value770 value1 value2 = (output1280, value772, value1))
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value772 value1 value2 = (output1295, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1296 value770 value1 value2 = (output1296, value780, value1) := by
  rw [input1296_def, output1296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1280]
  try dsimp only
  rw [child1295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1280_skip, output1295_skip]
  kernel_rfl

theorem node1297_cond_eq
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value768 value1 value2 = (output1277, value770, value1))
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value770 value1 value2 = (output1296, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1297 value768 value1 value2 = (output1297, value780, value1) := by
  rw [input1297_def, output1297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1277]
  try dsimp only
  rw [child1296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1277_skip, output1296_skip]
  kernel_rfl

theorem node1298_cond_eq
    (child1274 : Flapjack.WordAlloc.removeDeadStructural input1274 value766 value1 value2 = (output1274, value768, value1))
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value768 value1 value2 = (output1297, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1298 value766 value1 value2 = (output1298, value780, value1) := by
  rw [input1298_def, output1298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1274]
  try dsimp only
  rw [child1297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1274_skip, output1297_skip]
  kernel_rfl

theorem node1299_cond_eq
    (child1271 : Flapjack.WordAlloc.removeDeadStructural input1271 value764 value1 value2 = (output1271, value766, value1))
    (child1298 : Flapjack.WordAlloc.removeDeadStructural input1298 value766 value1 value2 = (output1298, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1299 value764 value1 value2 = (output1299, value780, value1) := by
  rw [input1299_def, output1299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1271]
  try dsimp only
  rw [child1298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1271_skip, output1298_skip]
  kernel_rfl

theorem node1300_cond_eq
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value762 value1 value2 = (output1268, value764, value1))
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value764 value1 value2 = (output1299, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1300 value762 value1 value2 = (output1300, value780, value1) := by
  rw [input1300_def, output1300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1268]
  try dsimp only
  rw [child1299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1268_skip, output1299_skip]
  kernel_rfl

theorem node1301_cond_eq
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value760 value1 value2 = (output1265, value762, value1))
    (child1300 : Flapjack.WordAlloc.removeDeadStructural input1300 value762 value1 value2 = (output1300, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1301 value760 value1 value2 = (output1301, value780, value1) := by
  rw [input1301_def, output1301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1265]
  try dsimp only
  rw [child1300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1265_skip, output1300_skip]
  kernel_rfl

theorem node1302_cond_eq
    (child1262 : Flapjack.WordAlloc.removeDeadStructural input1262 value758 value1 value2 = (output1262, value760, value1))
    (child1301 : Flapjack.WordAlloc.removeDeadStructural input1301 value760 value1 value2 = (output1301, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1302 value758 value1 value2 = (output1302, value780, value1) := by
  rw [input1302_def, output1302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1262]
  try dsimp only
  rw [child1301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1262_skip, output1301_skip]
  kernel_rfl

theorem node1303_cond_eq
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value756 value1 value2 = (output1259, value758, value1))
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value758 value1 value2 = (output1302, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1303 value756 value1 value2 = (output1303, value780, value1) := by
  rw [input1303_def, output1303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1259]
  try dsimp only
  rw [child1302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1259_skip, output1302_skip]
  kernel_rfl

theorem node1304_cond_eq
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value754 value1 value2 = (output1256, value756, value1))
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value756 value1 value2 = (output1303, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1304 value754 value1 value2 = (output1304, value780, value1) := by
  rw [input1304_def, output1304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1256]
  try dsimp only
  rw [child1303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1256_skip, output1303_skip]
  kernel_rfl

theorem node1305_cond_eq
    (child1253 : Flapjack.WordAlloc.removeDeadStructural input1253 value752 value1 value2 = (output1253, value754, value1))
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value754 value1 value2 = (output1304, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1305 value752 value1 value2 = (output1305, value780, value1) := by
  rw [input1305_def, output1305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1253]
  try dsimp only
  rw [child1304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1253_skip, output1304_skip]
  kernel_rfl

theorem node1306_cond_eq
    (child1250 : Flapjack.WordAlloc.removeDeadStructural input1250 value750 value1 value2 = (output1250, value752, value1))
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value752 value1 value2 = (output1305, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1306 value750 value1 value2 = (output1306, value780, value1) := by
  rw [input1306_def, output1306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1250]
  try dsimp only
  rw [child1305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1250_skip, output1305_skip]
  kernel_rfl

theorem node1307_cond_eq
    (child1247 : Flapjack.WordAlloc.removeDeadStructural input1247 value748 value1 value2 = (output1247, value750, value1))
    (child1306 : Flapjack.WordAlloc.removeDeadStructural input1306 value750 value1 value2 = (output1306, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1307 value748 value1 value2 = (output1307, value780, value1) := by
  rw [input1307_def, output1307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1247]
  try dsimp only
  rw [child1306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1247_skip, output1306_skip]
  kernel_rfl

theorem node1308_cond_eq
    (child1244 : Flapjack.WordAlloc.removeDeadStructural input1244 value746 value1 value2 = (output1244, value748, value1))
    (child1307 : Flapjack.WordAlloc.removeDeadStructural input1307 value748 value1 value2 = (output1307, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1308 value746 value1 value2 = (output1308, value780, value1) := by
  rw [input1308_def, output1308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1244]
  try dsimp only
  rw [child1307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1244_skip, output1307_skip]
  kernel_rfl

theorem node1309_cond_eq
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value744 value1 value2 = (output1241, value746, value1))
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value746 value1 value2 = (output1308, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1309 value744 value1 value2 = (output1309, value780, value1) := by
  rw [input1309_def, output1309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1241]
  try dsimp only
  rw [child1308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1241_skip, output1308_skip]
  kernel_rfl

theorem node1310_cond_eq
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value743 value1 value2 = (output1238, value744, value1))
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value744 value1 value2 = (output1309, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1310 value743 value1 value2 = (output1310, value780, value1) := by
  rw [input1310_def, output1310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1238]
  try dsimp only
  rw [child1309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1238_skip, output1309_skip]
  kernel_rfl

theorem node1311_cond_eq
    (child1237 : Flapjack.WordAlloc.removeDeadStructural input1237 value742 value1 value2 = (output1237, value743, value1))
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value743 value1 value2 = (output1310, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1311 value742 value1 value2 = (output1311, value780, value1) := by
  rw [input1311_def, output1311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1237]
  try dsimp only
  rw [child1310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1237_skip, output1310_skip]
  kernel_rfl

theorem node1312_cond_eq
    (child1236 : Flapjack.WordAlloc.removeDeadStructural input1236 value741 value1 value2 = (output1236, value742, value1))
    (child1311 : Flapjack.WordAlloc.removeDeadStructural input1311 value742 value1 value2 = (output1311, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1312 value741 value1 value2 = (output1312, value780, value1) := by
  rw [input1312_def, output1312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1236]
  try dsimp only
  rw [child1311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1236_skip, output1311_skip]
  kernel_rfl

theorem node1313_cond_eq
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value740 value1 value2 = (output1235, value741, value1))
    (child1312 : Flapjack.WordAlloc.removeDeadStructural input1312 value741 value1 value2 = (output1312, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1313 value740 value1 value2 = (output1313, value780, value1) := by
  rw [input1313_def, output1313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1235]
  try dsimp only
  rw [child1312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1235_skip, output1312_skip]
  kernel_rfl

theorem node1314_cond_eq
    (child1234 : Flapjack.WordAlloc.removeDeadStructural input1234 value739 value1 value2 = (output1234, value740, value1))
    (child1313 : Flapjack.WordAlloc.removeDeadStructural input1313 value740 value1 value2 = (output1313, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1314 value739 value1 value2 = (output1314, value780, value1) := by
  rw [input1314_def, output1314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1234]
  try dsimp only
  rw [child1313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1234_skip, output1313_skip]
  kernel_rfl

theorem node1315_cond_eq
    (child1233 : Flapjack.WordAlloc.removeDeadStructural input1233 value738 value1 value2 = (output1233, value739, value1))
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value739 value1 value2 = (output1314, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1315 value738 value1 value2 = (output1315, value780, value1) := by
  rw [input1315_def, output1315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1233]
  try dsimp only
  rw [child1314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1233_skip, output1314_skip]
  kernel_rfl

theorem node1316_cond_eq
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value738 value1 value2 = (output1232, value738, value1))
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value738 value1 value2 = (output1315, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1316 value738 value1 value2 = (output1316, value780, value1) := by
  rw [input1316_def, output1316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1232]
  try dsimp only
  rw [child1315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1232_skip, output1315_skip]
  kernel_rfl

theorem node1317_cond_eq
    (child1231 : Flapjack.WordAlloc.removeDeadStructural input1231 value738 value1 value2 = (output1231, value738, value1))
    (child1316 : Flapjack.WordAlloc.removeDeadStructural input1316 value738 value1 value2 = (output1316, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1317 value738 value1 value2 = (output1317, value780, value1) := by
  rw [input1317_def, output1317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1231]
  try dsimp only
  rw [child1316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1231_skip, output1316_skip]
  kernel_rfl

theorem node1318_cond_eq
    (child1230 : Flapjack.WordAlloc.removeDeadStructural input1230 value738 value1 value2 = (output1230, value738, value1))
    (child1317 : Flapjack.WordAlloc.removeDeadStructural input1317 value738 value1 value2 = (output1317, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1318 value738 value1 value2 = (output1318, value780, value1) := by
  rw [input1318_def, output1318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1230]
  try dsimp only
  rw [child1317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1230_skip, output1317_skip]
  kernel_rfl

theorem node1319_cond_eq
    (child1229 : Flapjack.WordAlloc.removeDeadStructural input1229 value738 value1 value2 = (output1229, value738, value1))
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value738 value1 value2 = (output1318, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1319 value738 value1 value2 = (output1319, value780, value1) := by
  rw [input1319_def, output1319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1229]
  try dsimp only
  rw [child1318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1229_skip, output1318_skip]
  kernel_rfl

theorem node1320_cond_eq
    (child1228 : Flapjack.WordAlloc.removeDeadStructural input1228 value738 value1 value2 = (output1228, value738, value1))
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value738 value1 value2 = (output1319, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1320 value738 value1 value2 = (output1320, value780, value1) := by
  rw [input1320_def, output1320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1228]
  try dsimp only
  rw [child1319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1228_skip, output1319_skip]
  kernel_rfl

theorem node1321_cond_eq
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value738 value1 value2 = (output1227, value738, value1))
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value738 value1 value2 = (output1320, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1321 value738 value1 value2 = (output1321, value780, value1) := by
  rw [input1321_def, output1321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1227]
  try dsimp only
  rw [child1320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1227_skip, output1320_skip]
  kernel_rfl

theorem node1322_cond_eq
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value737 value1 value2 = (output1226, value738, value1))
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value738 value1 value2 = (output1321, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1322 value737 value1 value2 = (output1322, value780, value1) := by
  rw [input1322_def, output1322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1226]
  try dsimp only
  rw [child1321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1226_skip, output1321_skip]
  kernel_rfl

theorem node1323_cond_eq
    (child1225 : Flapjack.WordAlloc.removeDeadStructural input1225 value736 value1 value2 = (output1225, value737, value1))
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value737 value1 value2 = (output1322, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1323 value736 value1 value2 = (output1323, value780, value1) := by
  rw [input1323_def, output1323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1225]
  try dsimp only
  rw [child1322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1225_skip, output1322_skip]
  kernel_rfl

theorem node1324_cond_eq
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value735 value1 value2 = (output1224, value736, value1))
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value736 value1 value2 = (output1323, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1324 value735 value1 value2 = (output1324, value780, value1) := by
  rw [input1324_def, output1324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1224]
  try dsimp only
  rw [child1323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1224_skip, output1323_skip]
  kernel_rfl

theorem node1325_cond_eq
    (child1223 : Flapjack.WordAlloc.removeDeadStructural input1223 value734 value1 value2 = (output1223, value735, value1))
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value735 value1 value2 = (output1324, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1325 value734 value1 value2 = (output1325, value780, value1) := by
  rw [input1325_def, output1325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1223]
  try dsimp only
  rw [child1324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1223_skip, output1324_skip]
  kernel_rfl

theorem node1326_cond_eq
    (child1222 : Flapjack.WordAlloc.removeDeadStructural input1222 value733 value1 value2 = (output1222, value734, value1))
    (child1325 : Flapjack.WordAlloc.removeDeadStructural input1325 value734 value1 value2 = (output1325, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1326 value733 value1 value2 = (output1326, value780, value1) := by
  rw [input1326_def, output1326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1222]
  try dsimp only
  rw [child1325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1222_skip, output1325_skip]
  kernel_rfl

theorem node1327_cond_eq
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value732 value1 value2 = (output1221, value733, value1))
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value733 value1 value2 = (output1326, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1327 value732 value1 value2 = (output1327, value780, value1) := by
  rw [input1327_def, output1327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1221]
  try dsimp only
  rw [child1326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1221_skip, output1326_skip]
  kernel_rfl

theorem node1328_cond_eq
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value729 value1 value2 = (output1220, value732, value1))
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value732 value1 value2 = (output1327, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1328 value729 value1 value2 = (output1328, value780, value1) := by
  rw [input1328_def, output1328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1220]
  try dsimp only
  rw [child1327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1220_skip, output1327_skip]
  kernel_rfl

theorem node1329_cond_eq
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value729 value1 value2 = (output1215, value729, value1))
    (child1328 : Flapjack.WordAlloc.removeDeadStructural input1328 value729 value1 value2 = (output1328, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1329 value729 value1 value2 = (output1329, value780, value1) := by
  rw [input1329_def, output1329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1215]
  try dsimp only
  rw [child1328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1215_skip, output1328_skip]
  kernel_rfl

theorem node1330_cond_eq
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value728 value1 value2 = (output1214, value729, value1))
    (child1329 : Flapjack.WordAlloc.removeDeadStructural input1329 value729 value1 value2 = (output1329, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1330 value728 value1 value2 = (output1330, value780, value1) := by
  rw [input1330_def, output1330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1214]
  try dsimp only
  rw [child1329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1214_skip, output1329_skip]
  kernel_rfl

theorem node1331_cond_eq
    (child1213 : Flapjack.WordAlloc.removeDeadStructural input1213 value727 value1 value2 = (output1213, value728, value1))
    (child1330 : Flapjack.WordAlloc.removeDeadStructural input1330 value728 value1 value2 = (output1330, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1331 value727 value1 value2 = (output1331, value780, value1) := by
  rw [input1331_def, output1331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1213]
  try dsimp only
  rw [child1330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1213_skip, output1330_skip]
  kernel_rfl

theorem node1332_cond_eq
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value448 value1 value2 = (output1212, value727, value1))
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value727 value1 value2 = (output1331, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1332 value448 value1 value2 = (output1332, value780, value1) := by
  rw [input1332_def, output1332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1212]
  try dsimp only
  rw [child1331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1212_skip, output1331_skip]
  kernel_rfl

theorem node1333_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value448 value1 value2 = (output545, value448, value1))
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value448 value1 value2 = (output1332, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1333 value448 value1 value2 = (output1333, value780, value1) := by
  rw [input1333_def, output1333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child1332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output1332_skip]
  kernel_rfl

theorem node1334_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value447 value1 value2 = (output544, value448, value1))
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value448 value1 value2 = (output1333, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1334 value447 value1 value2 = (output1334, value780, value1) := by
  rw [input1334_def, output1334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child1333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output1333_skip]
  kernel_rfl

theorem node1335_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value446 value1 value2 = (output543, value447, value1))
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value447 value1 value2 = (output1334, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1335 value446 value1 value2 = (output1335, value780, value1) := by
  rw [input1335_def, output1335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child1334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output1334_skip]
  kernel_rfl

theorem node1336_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value445 value1 value2 = (output542, value446, value1))
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value446 value1 value2 = (output1335, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1336 value445 value1 value2 = (output1336, value780, value1) := by
  rw [input1336_def, output1336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child1335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output1335_skip]
  kernel_rfl

theorem node1337_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value444 value1 value2 = (output541, value445, value1))
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value445 value1 value2 = (output1336, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1337 value444 value1 value2 = (output1337, value780, value1) := by
  rw [input1337_def, output1337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child1336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output1336_skip]
  kernel_rfl

theorem node1338_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value443 value1 value2 = (output540, value444, value1))
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value444 value1 value2 = (output1337, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1338 value443 value1 value2 = (output1338, value780, value1) := by
  rw [input1338_def, output1338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child1337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output1337_skip]
  kernel_rfl

theorem node1339_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value442 value1 value2 = (output539, value443, value1))
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value443 value1 value2 = (output1338, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1339 value442 value1 value2 = (output1339, value780, value1) := by
  rw [input1339_def, output1339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child1338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output1338_skip]
  kernel_rfl

theorem node1340_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value439 value1 value2 = (output538, value442, value1))
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value442 value1 value2 = (output1339, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1340 value439 value1 value2 = (output1340, value780, value1) := by
  rw [input1340_def, output1340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child1339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output1339_skip]
  kernel_rfl

theorem node1341_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value439 value1 value2 = (output533, value439, value1))
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value439 value1 value2 = (output1340, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1341 value439 value1 value2 = (output1341, value780, value1) := by
  rw [input1341_def, output1341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child1340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output1340_skip]
  kernel_rfl

theorem node1342_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value438 value1 value2 = (output532, value439, value1))
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value439 value1 value2 = (output1341, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1342 value438 value1 value2 = (output1342, value780, value1) := by
  rw [input1342_def, output1342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  try dsimp only
  rw [child1341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output1341_skip]
  kernel_rfl

theorem node1343_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value437 value1 value2 = (output531, value438, value1))
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value438 value1 value2 = (output1342, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1343 value437 value1 value2 = (output1343, value780, value1) := by
  rw [input1343_def, output1343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child1342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output1342_skip]
  kernel_rfl

theorem node1344_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value436 value1 value2 = (output530, value437, value1))
    (child1343 : Flapjack.WordAlloc.removeDeadStructural input1343 value437 value1 value2 = (output1343, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1344 value436 value1 value2 = (output1344, value780, value1) := by
  rw [input1344_def, output1344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child1343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output1343_skip]
  kernel_rfl

theorem node1345_cond_eq
    (child529 : Flapjack.WordAlloc.removeDeadStructural input529 value435 value1 value2 = (output529, value436, value1))
    (child1344 : Flapjack.WordAlloc.removeDeadStructural input1344 value436 value1 value2 = (output1344, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1345 value435 value1 value2 = (output1345, value780, value1) := by
  rw [input1345_def, output1345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child529]
  try dsimp only
  rw [child1344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output529_skip, output1344_skip]
  kernel_rfl

theorem node1346_cond_eq
    (child528 : Flapjack.WordAlloc.removeDeadStructural input528 value434 value1 value2 = (output528, value435, value1))
    (child1345 : Flapjack.WordAlloc.removeDeadStructural input1345 value435 value1 value2 = (output1345, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1346 value434 value1 value2 = (output1346, value780, value1) := by
  rw [input1346_def, output1346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child528]
  try dsimp only
  rw [child1345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output528_skip, output1345_skip]
  kernel_rfl

theorem node1347_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value433 value1 value2 = (output527, value434, value1))
    (child1346 : Flapjack.WordAlloc.removeDeadStructural input1346 value434 value1 value2 = (output1346, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1347 value433 value1 value2 = (output1347, value780, value1) := by
  rw [input1347_def, output1347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child1346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output1346_skip]
  kernel_rfl

theorem node1348_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value432 value1 value2 = (output526, value433, value1))
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value433 value1 value2 = (output1347, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1348 value432 value1 value2 = (output1348, value780, value1) := by
  rw [input1348_def, output1348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child1347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output1347_skip]
  kernel_rfl

theorem node1349_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value431 value1 value2 = (output525, value432, value1))
    (child1348 : Flapjack.WordAlloc.removeDeadStructural input1348 value432 value1 value2 = (output1348, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1349 value431 value1 value2 = (output1349, value780, value1) := by
  rw [input1349_def, output1349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child1348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output1348_skip]
  kernel_rfl

theorem node1350_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value430 value1 value2 = (output524, value431, value1))
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value431 value1 value2 = (output1349, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1350 value430 value1 value2 = (output1350, value780, value1) := by
  rw [input1350_def, output1350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child1349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output1349_skip]
  kernel_rfl

theorem node1351_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value429 value1 value2 = (output523, value430, value1))
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value430 value1 value2 = (output1350, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1351 value429 value1 value2 = (output1351, value780, value1) := by
  rw [input1351_def, output1351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child1350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output1350_skip]
  kernel_rfl

theorem node1352_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value428 value1 value2 = (output522, value429, value1))
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value429 value1 value2 = (output1351, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1352 value428 value1 value2 = (output1352, value780, value1) := by
  rw [input1352_def, output1352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child1351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output1351_skip]
  kernel_rfl

theorem node1353_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value427 value1 value2 = (output521, value428, value1))
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value428 value1 value2 = (output1352, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1353 value427 value1 value2 = (output1353, value780, value1) := by
  rw [input1353_def, output1353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child1352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output1352_skip]
  kernel_rfl

theorem node1354_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value424 value1 value2 = (output520, value427, value1))
    (child1353 : Flapjack.WordAlloc.removeDeadStructural input1353 value427 value1 value2 = (output1353, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1354 value424 value1 value2 = (output1354, value780, value1) := by
  rw [input1354_def, output1354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child1353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output1353_skip]
  kernel_rfl

theorem node1355_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value424 value1 value2 = (output515, value424, value1))
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value424 value1 value2 = (output1354, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1355 value424 value1 value2 = (output1355, value780, value1) := by
  rw [input1355_def, output1355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child1354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output1354_skip]
  kernel_rfl

theorem node1356_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value423 value1 value2 = (output514, value424, value1))
    (child1355 : Flapjack.WordAlloc.removeDeadStructural input1355 value424 value1 value2 = (output1355, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1356 value423 value1 value2 = (output1356, value780, value1) := by
  rw [input1356_def, output1356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child1355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output1355_skip]
  kernel_rfl

theorem node1357_cond_eq
    (child513 : Flapjack.WordAlloc.removeDeadStructural input513 value422 value1 value2 = (output513, value423, value1))
    (child1356 : Flapjack.WordAlloc.removeDeadStructural input1356 value423 value1 value2 = (output1356, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1357 value422 value1 value2 = (output1357, value780, value1) := by
  rw [input1357_def, output1357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child513]
  try dsimp only
  rw [child1356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output513_skip, output1356_skip]
  kernel_rfl

theorem node1358_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value421 value1 value2 = (output512, value422, value1))
    (child1357 : Flapjack.WordAlloc.removeDeadStructural input1357 value422 value1 value2 = (output1357, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1358 value421 value1 value2 = (output1358, value780, value1) := by
  rw [input1358_def, output1358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child1357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output1357_skip]
  kernel_rfl

theorem node1359_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value420 value1 value2 = (output511, value421, value1))
    (child1358 : Flapjack.WordAlloc.removeDeadStructural input1358 value421 value1 value2 = (output1358, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1359 value420 value1 value2 = (output1359, value780, value1) := by
  rw [input1359_def, output1359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child1358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output1358_skip]
  kernel_rfl

theorem node1360_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value419 value1 value2 = (output510, value420, value1))
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value420 value1 value2 = (output1359, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1360 value419 value1 value2 = (output1360, value780, value1) := by
  rw [input1360_def, output1360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child1359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output1359_skip]
  kernel_rfl

theorem node1361_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value418 value1 value2 = (output509, value419, value1))
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value419 value1 value2 = (output1360, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1361 value418 value1 value2 = (output1361, value780, value1) := by
  rw [input1361_def, output1361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child1360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output1360_skip]
  kernel_rfl

theorem node1362_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value417 value1 value2 = (output508, value418, value1))
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value418 value1 value2 = (output1361, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1362 value417 value1 value2 = (output1362, value780, value1) := by
  rw [input1362_def, output1362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child1361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output1361_skip]
  kernel_rfl

theorem node1363_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value416 value1 value2 = (output507, value417, value1))
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value417 value1 value2 = (output1362, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1363 value416 value1 value2 = (output1363, value780, value1) := by
  rw [input1363_def, output1363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child1362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output1362_skip]
  kernel_rfl

theorem node1364_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value415 value1 value2 = (output506, value416, value1))
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value416 value1 value2 = (output1363, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1364 value415 value1 value2 = (output1364, value780, value1) := by
  rw [input1364_def, output1364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child1363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output1363_skip]
  kernel_rfl

theorem node1365_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value414 value1 value2 = (output505, value415, value1))
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value415 value1 value2 = (output1364, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1365 value414 value1 value2 = (output1365, value780, value1) := by
  rw [input1365_def, output1365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child1364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output1364_skip]
  kernel_rfl

theorem node1366_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value413 value1 value2 = (output504, value414, value1))
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value414 value1 value2 = (output1365, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1366 value413 value1 value2 = (output1366, value780, value1) := by
  rw [input1366_def, output1366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child1365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output1365_skip]
  kernel_rfl

theorem node1367_cond_eq
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value412 value1 value2 = (output503, value413, value1))
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value413 value1 value2 = (output1366, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1367 value412 value1 value2 = (output1367, value780, value1) := by
  rw [input1367_def, output1367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child503]
  try dsimp only
  rw [child1366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output503_skip, output1366_skip]
  kernel_rfl

theorem node1368_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value409 value1 value2 = (output502, value412, value1))
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value412 value1 value2 = (output1367, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1368 value409 value1 value2 = (output1368, value780, value1) := by
  rw [input1368_def, output1368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child1367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output1367_skip]
  kernel_rfl

theorem node1369_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value409 value1 value2 = (output497, value409, value1))
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value409 value1 value2 = (output1368, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1369 value409 value1 value2 = (output1369, value780, value1) := by
  rw [input1369_def, output1369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child1368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output1368_skip]
  kernel_rfl

theorem node1370_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value408 value1 value2 = (output496, value409, value1))
    (child1369 : Flapjack.WordAlloc.removeDeadStructural input1369 value409 value1 value2 = (output1369, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1370 value408 value1 value2 = (output1370, value780, value1) := by
  rw [input1370_def, output1370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child1369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output1369_skip]
  kernel_rfl

theorem node1371_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value407 value1 value2 = (output495, value408, value1))
    (child1370 : Flapjack.WordAlloc.removeDeadStructural input1370 value408 value1 value2 = (output1370, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1371 value407 value1 value2 = (output1371, value780, value1) := by
  rw [input1371_def, output1371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child1370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output1370_skip]
  kernel_rfl

theorem node1372_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value406 value1 value2 = (output494, value407, value1))
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value407 value1 value2 = (output1371, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1372 value406 value1 value2 = (output1372, value780, value1) := by
  rw [input1372_def, output1372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child1371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output1371_skip]
  kernel_rfl

theorem node1373_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value405 value1 value2 = (output493, value406, value1))
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value406 value1 value2 = (output1372, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1373 value405 value1 value2 = (output1373, value780, value1) := by
  rw [input1373_def, output1373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child1372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output1372_skip]
  kernel_rfl

theorem node1374_cond_eq
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value404 value1 value2 = (output492, value405, value1))
    (child1373 : Flapjack.WordAlloc.removeDeadStructural input1373 value405 value1 value2 = (output1373, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1374 value404 value1 value2 = (output1374, value780, value1) := by
  rw [input1374_def, output1374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child492]
  try dsimp only
  rw [child1373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output492_skip, output1373_skip]
  kernel_rfl

theorem node1375_cond_eq
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value403 value1 value2 = (output491, value404, value1))
    (child1374 : Flapjack.WordAlloc.removeDeadStructural input1374 value404 value1 value2 = (output1374, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1375 value403 value1 value2 = (output1375, value780, value1) := by
  rw [input1375_def, output1375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child491]
  try dsimp only
  rw [child1374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output491_skip, output1374_skip]
  kernel_rfl

theorem node1376_cond_eq
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value402 value1 value2 = (output490, value403, value1))
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value403 value1 value2 = (output1375, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1376 value402 value1 value2 = (output1376, value780, value1) := by
  rw [input1376_def, output1376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child490]
  try dsimp only
  rw [child1375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output490_skip, output1375_skip]
  kernel_rfl

theorem node1377_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value401 value1 value2 = (output489, value402, value1))
    (child1376 : Flapjack.WordAlloc.removeDeadStructural input1376 value402 value1 value2 = (output1376, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1377 value401 value1 value2 = (output1377, value780, value1) := by
  rw [input1377_def, output1377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child1376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output1376_skip]
  kernel_rfl

theorem node1378_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value400 value1 value2 = (output488, value401, value1))
    (child1377 : Flapjack.WordAlloc.removeDeadStructural input1377 value401 value1 value2 = (output1377, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1378 value400 value1 value2 = (output1378, value780, value1) := by
  rw [input1378_def, output1378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child1377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output1377_skip]
  kernel_rfl

theorem node1379_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value399 value1 value2 = (output487, value400, value1))
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value400 value1 value2 = (output1378, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1379 value399 value1 value2 = (output1379, value780, value1) := by
  rw [input1379_def, output1379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  try dsimp only
  rw [child1378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output487_skip, output1378_skip]
  kernel_rfl

theorem node1380_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value398 value1 value2 = (output486, value399, value1))
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value399 value1 value2 = (output1379, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1380 value398 value1 value2 = (output1380, value780, value1) := by
  rw [input1380_def, output1380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child1379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output1379_skip]
  kernel_rfl

theorem node1381_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value397 value1 value2 = (output485, value398, value1))
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value398 value1 value2 = (output1380, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1381 value397 value1 value2 = (output1381, value780, value1) := by
  rw [input1381_def, output1381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child1380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output1380_skip]
  kernel_rfl

theorem node1382_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value394 value1 value2 = (output484, value397, value1))
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value397 value1 value2 = (output1381, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1382 value394 value1 value2 = (output1382, value780, value1) := by
  rw [input1382_def, output1382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child1381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output1381_skip]
  kernel_rfl

theorem node1383_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value394 value1 value2 = (output479, value394, value1))
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value394 value1 value2 = (output1382, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1383 value394 value1 value2 = (output1383, value780, value1) := by
  rw [input1383_def, output1383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child1382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output1382_skip]
  kernel_rfl

theorem node1384_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value393 value1 value2 = (output478, value394, value1))
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value394 value1 value2 = (output1383, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1384 value393 value1 value2 = (output1384, value780, value1) := by
  rw [input1384_def, output1384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child1383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output1383_skip]
  kernel_rfl

theorem node1385_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value392 value1 value2 = (output477, value393, value1))
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value393 value1 value2 = (output1384, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1385 value392 value1 value2 = (output1385, value780, value1) := by
  rw [input1385_def, output1385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child1384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output1384_skip]
  kernel_rfl

theorem node1386_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value391 value1 value2 = (output476, value392, value1))
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value392 value1 value2 = (output1385, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1386 value391 value1 value2 = (output1386, value780, value1) := by
  rw [input1386_def, output1386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  try dsimp only
  rw [child1385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output476_skip, output1385_skip]
  kernel_rfl

theorem node1387_cond_eq
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value390 value1 value2 = (output475, value391, value1))
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value391 value1 value2 = (output1386, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1387 value390 value1 value2 = (output1387, value780, value1) := by
  rw [input1387_def, output1387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child475]
  try dsimp only
  rw [child1386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output475_skip, output1386_skip]
  kernel_rfl

theorem node1388_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value389 value1 value2 = (output474, value390, value1))
    (child1387 : Flapjack.WordAlloc.removeDeadStructural input1387 value390 value1 value2 = (output1387, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1388 value389 value1 value2 = (output1388, value780, value1) := by
  rw [input1388_def, output1388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child1387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output1387_skip]
  kernel_rfl

theorem node1389_cond_eq
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value388 value1 value2 = (output473, value389, value1))
    (child1388 : Flapjack.WordAlloc.removeDeadStructural input1388 value389 value1 value2 = (output1388, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1389 value388 value1 value2 = (output1389, value780, value1) := by
  rw [input1389_def, output1389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child473]
  try dsimp only
  rw [child1388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output473_skip, output1388_skip]
  kernel_rfl

theorem node1390_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value387 value1 value2 = (output472, value388, value1))
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value388 value1 value2 = (output1389, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1390 value387 value1 value2 = (output1390, value780, value1) := by
  rw [input1390_def, output1390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child1389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output1389_skip]
  kernel_rfl

theorem node1391_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value386 value1 value2 = (output471, value387, value1))
    (child1390 : Flapjack.WordAlloc.removeDeadStructural input1390 value387 value1 value2 = (output1390, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1391 value386 value1 value2 = (output1391, value780, value1) := by
  rw [input1391_def, output1391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  try dsimp only
  rw [child1390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output471_skip, output1390_skip]
  kernel_rfl

theorem node1392_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value385 value1 value2 = (output470, value386, value1))
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value386 value1 value2 = (output1391, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1392 value385 value1 value2 = (output1392, value780, value1) := by
  rw [input1392_def, output1392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child1391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output1391_skip]
  kernel_rfl

theorem node1393_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value384 value1 value2 = (output469, value385, value1))
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value385 value1 value2 = (output1392, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1393 value384 value1 value2 = (output1393, value780, value1) := by
  rw [input1393_def, output1393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child1392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output1392_skip]
  kernel_rfl

theorem node1394_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value383 value1 value2 = (output468, value384, value1))
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value384 value1 value2 = (output1393, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1394 value383 value1 value2 = (output1394, value780, value1) := by
  rw [input1394_def, output1394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child1393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output1393_skip]
  kernel_rfl

theorem node1395_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value382 value1 value2 = (output467, value383, value1))
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value383 value1 value2 = (output1394, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1395 value382 value1 value2 = (output1395, value780, value1) := by
  rw [input1395_def, output1395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child1394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output1394_skip]
  kernel_rfl

theorem node1396_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value379 value1 value2 = (output466, value382, value1))
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value382 value1 value2 = (output1395, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1396 value379 value1 value2 = (output1396, value780, value1) := by
  rw [input1396_def, output1396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child1395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output1395_skip]
  kernel_rfl

theorem node1397_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value379 value1 value2 = (output461, value379, value1))
    (child1396 : Flapjack.WordAlloc.removeDeadStructural input1396 value379 value1 value2 = (output1396, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1397 value379 value1 value2 = (output1397, value780, value1) := by
  rw [input1397_def, output1397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child1396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output1396_skip]
  kernel_rfl

theorem node1398_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value378 value1 value2 = (output460, value379, value1))
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value379 value1 value2 = (output1397, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1398 value378 value1 value2 = (output1398, value780, value1) := by
  rw [input1398_def, output1398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child1397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output1397_skip]
  kernel_rfl

theorem node1399_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value377 value1 value2 = (output459, value378, value1))
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value378 value1 value2 = (output1398, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1399 value377 value1 value2 = (output1399, value780, value1) := by
  rw [input1399_def, output1399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child1398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output1398_skip]
  kernel_rfl

theorem node1400_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value376 value1 value2 = (output458, value377, value1))
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value377 value1 value2 = (output1399, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1400 value376 value1 value2 = (output1400, value780, value1) := by
  rw [input1400_def, output1400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child1399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output1399_skip]
  kernel_rfl

theorem node1401_cond_eq
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value375 value1 value2 = (output457, value376, value1))
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value376 value1 value2 = (output1400, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1401 value375 value1 value2 = (output1401, value780, value1) := by
  rw [input1401_def, output1401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child457]
  try dsimp only
  rw [child1400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output457_skip, output1400_skip]
  kernel_rfl

theorem node1402_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value374 value1 value2 = (output456, value375, value1))
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value375 value1 value2 = (output1401, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1402 value374 value1 value2 = (output1402, value780, value1) := by
  rw [input1402_def, output1402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child1401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output1401_skip]
  kernel_rfl

theorem node1403_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value373 value1 value2 = (output455, value374, value1))
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value374 value1 value2 = (output1402, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1403 value373 value1 value2 = (output1403, value780, value1) := by
  rw [input1403_def, output1403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child1402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output1402_skip]
  kernel_rfl

theorem node1404_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value372 value1 value2 = (output454, value373, value1))
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value373 value1 value2 = (output1403, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1404 value372 value1 value2 = (output1404, value780, value1) := by
  rw [input1404_def, output1404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child1403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output1403_skip]
  kernel_rfl

theorem node1405_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value371 value1 value2 = (output453, value372, value1))
    (child1404 : Flapjack.WordAlloc.removeDeadStructural input1404 value372 value1 value2 = (output1404, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1405 value371 value1 value2 = (output1405, value780, value1) := by
  rw [input1405_def, output1405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  try dsimp only
  rw [child1404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output453_skip, output1404_skip]
  kernel_rfl

theorem node1406_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value370 value1 value2 = (output452, value371, value1))
    (child1405 : Flapjack.WordAlloc.removeDeadStructural input1405 value371 value1 value2 = (output1405, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1406 value370 value1 value2 = (output1406, value780, value1) := by
  rw [input1406_def, output1406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child1405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output1405_skip]
  kernel_rfl

theorem node1407_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value369 value1 value2 = (output451, value370, value1))
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value370 value1 value2 = (output1406, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1407 value369 value1 value2 = (output1407, value780, value1) := by
  rw [input1407_def, output1407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child1406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output1406_skip]
  kernel_rfl

theorem node1408_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value368 value1 value2 = (output450, value369, value1))
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value369 value1 value2 = (output1407, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1408 value368 value1 value2 = (output1408, value780, value1) := by
  rw [input1408_def, output1408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child1407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output1407_skip]
  kernel_rfl

theorem node1409_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value367 value1 value2 = (output449, value368, value1))
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value368 value1 value2 = (output1408, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1409 value367 value1 value2 = (output1409, value780, value1) := by
  rw [input1409_def, output1409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child1408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output1408_skip]
  kernel_rfl

theorem node1410_cond_eq
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value364 value1 value2 = (output448, value367, value1))
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value367 value1 value2 = (output1409, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1410 value364 value1 value2 = (output1410, value780, value1) := by
  rw [input1410_def, output1410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child448]
  try dsimp only
  rw [child1409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output448_skip, output1409_skip]
  kernel_rfl

theorem node1411_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value364 value1 value2 = (output443, value364, value1))
    (child1410 : Flapjack.WordAlloc.removeDeadStructural input1410 value364 value1 value2 = (output1410, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1411 value364 value1 value2 = (output1411, value780, value1) := by
  rw [input1411_def, output1411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child1410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output1410_skip]
  kernel_rfl

theorem node1412_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value363 value1 value2 = (output442, value364, value1))
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value364 value1 value2 = (output1411, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1412 value363 value1 value2 = (output1412, value780, value1) := by
  rw [input1412_def, output1412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child1411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output1411_skip]
  kernel_rfl

theorem node1413_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value362 value1 value2 = (output441, value363, value1))
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value363 value1 value2 = (output1412, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1413 value362 value1 value2 = (output1413, value780, value1) := by
  rw [input1413_def, output1413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child1412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output1412_skip]
  kernel_rfl

theorem node1414_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value361 value1 value2 = (output440, value362, value1))
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value362 value1 value2 = (output1413, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1414 value361 value1 value2 = (output1414, value780, value1) := by
  rw [input1414_def, output1414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child1413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output1413_skip]
  kernel_rfl

theorem node1415_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value360 value1 value2 = (output439, value361, value1))
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value361 value1 value2 = (output1414, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1415 value360 value1 value2 = (output1415, value780, value1) := by
  rw [input1415_def, output1415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child1414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output1414_skip]
  kernel_rfl

theorem node1416_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value359 value1 value2 = (output438, value360, value1))
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value360 value1 value2 = (output1415, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1416 value359 value1 value2 = (output1416, value780, value1) := by
  rw [input1416_def, output1416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  try dsimp only
  rw [child1415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output438_skip, output1415_skip]
  kernel_rfl

theorem node1417_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value358 value1 value2 = (output437, value359, value1))
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value359 value1 value2 = (output1416, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1417 value358 value1 value2 = (output1417, value780, value1) := by
  rw [input1417_def, output1417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child1416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output1416_skip]
  kernel_rfl

theorem node1418_cond_eq
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value357 value1 value2 = (output436, value358, value1))
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value358 value1 value2 = (output1417, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1418 value357 value1 value2 = (output1418, value780, value1) := by
  rw [input1418_def, output1418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child436]
  try dsimp only
  rw [child1417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output436_skip, output1417_skip]
  kernel_rfl

theorem node1419_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value356 value1 value2 = (output435, value357, value1))
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value357 value1 value2 = (output1418, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1419 value356 value1 value2 = (output1419, value780, value1) := by
  rw [input1419_def, output1419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child1418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output1418_skip]
  kernel_rfl

theorem node1420_cond_eq
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value355 value1 value2 = (output434, value356, value1))
    (child1419 : Flapjack.WordAlloc.removeDeadStructural input1419 value356 value1 value2 = (output1419, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1420 value355 value1 value2 = (output1420, value780, value1) := by
  rw [input1420_def, output1420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child434]
  try dsimp only
  rw [child1419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output434_skip, output1419_skip]
  kernel_rfl

theorem node1421_cond_eq
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value354 value1 value2 = (output433, value355, value1))
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value355 value1 value2 = (output1420, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1421 value354 value1 value2 = (output1421, value780, value1) := by
  rw [input1421_def, output1421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child433]
  try dsimp only
  rw [child1420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output433_skip, output1420_skip]
  kernel_rfl

theorem node1422_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value353 value1 value2 = (output432, value354, value1))
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value354 value1 value2 = (output1421, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1422 value353 value1 value2 = (output1422, value780, value1) := by
  rw [input1422_def, output1422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child1421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output1421_skip]
  kernel_rfl

theorem node1423_cond_eq
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value352 value1 value2 = (output431, value353, value1))
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value353 value1 value2 = (output1422, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1423 value352 value1 value2 = (output1423, value780, value1) := by
  rw [input1423_def, output1423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child431]
  try dsimp only
  rw [child1422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output431_skip, output1422_skip]
  kernel_rfl

theorem node1424_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value349 value1 value2 = (output430, value352, value1))
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value352 value1 value2 = (output1423, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1424 value349 value1 value2 = (output1424, value780, value1) := by
  rw [input1424_def, output1424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child1423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output1423_skip]
  kernel_rfl

theorem node1425_cond_eq
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value349 value1 value2 = (output425, value349, value1))
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value349 value1 value2 = (output1424, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1425 value349 value1 value2 = (output1425, value780, value1) := by
  rw [input1425_def, output1425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child425]
  try dsimp only
  rw [child1424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output425_skip, output1424_skip]
  kernel_rfl

theorem node1426_cond_eq
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value348 value1 value2 = (output424, value349, value1))
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value349 value1 value2 = (output1425, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1426 value348 value1 value2 = (output1426, value780, value1) := by
  rw [input1426_def, output1426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child424]
  try dsimp only
  rw [child1425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output424_skip, output1425_skip]
  kernel_rfl

theorem node1427_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value347 value1 value2 = (output423, value348, value1))
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value348 value1 value2 = (output1426, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1427 value347 value1 value2 = (output1427, value780, value1) := by
  rw [input1427_def, output1427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child1426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output1426_skip]
  kernel_rfl

theorem node1428_cond_eq
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value346 value1 value2 = (output422, value347, value1))
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value347 value1 value2 = (output1427, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1428 value346 value1 value2 = (output1428, value780, value1) := by
  rw [input1428_def, output1428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child422]
  try dsimp only
  rw [child1427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output422_skip, output1427_skip]
  kernel_rfl

theorem node1429_cond_eq
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value345 value1 value2 = (output421, value346, value1))
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value346 value1 value2 = (output1428, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1429 value345 value1 value2 = (output1429, value780, value1) := by
  rw [input1429_def, output1429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child421]
  try dsimp only
  rw [child1428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output421_skip, output1428_skip]
  kernel_rfl

theorem node1430_cond_eq
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value344 value1 value2 = (output420, value345, value1))
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value345 value1 value2 = (output1429, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1430 value344 value1 value2 = (output1430, value780, value1) := by
  rw [input1430_def, output1430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child420]
  try dsimp only
  rw [child1429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output420_skip, output1429_skip]
  kernel_rfl

theorem node1431_cond_eq
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value343 value1 value2 = (output419, value344, value1))
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value344 value1 value2 = (output1430, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1431 value343 value1 value2 = (output1431, value780, value1) := by
  rw [input1431_def, output1431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child419]
  try dsimp only
  rw [child1430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output419_skip, output1430_skip]
  kernel_rfl

theorem node1432_cond_eq
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value342 value1 value2 = (output418, value343, value1))
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value343 value1 value2 = (output1431, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1432 value342 value1 value2 = (output1432, value780, value1) := by
  rw [input1432_def, output1432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child418]
  try dsimp only
  rw [child1431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output418_skip, output1431_skip]
  kernel_rfl

theorem node1433_cond_eq
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value341 value1 value2 = (output417, value342, value1))
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value342 value1 value2 = (output1432, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1433 value341 value1 value2 = (output1433, value780, value1) := by
  rw [input1433_def, output1433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child417]
  try dsimp only
  rw [child1432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output417_skip, output1432_skip]
  kernel_rfl

theorem node1434_cond_eq
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value340 value1 value2 = (output416, value341, value1))
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value341 value1 value2 = (output1433, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1434 value340 value1 value2 = (output1434, value780, value1) := by
  rw [input1434_def, output1434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child416]
  try dsimp only
  rw [child1433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output416_skip, output1433_skip]
  kernel_rfl

theorem node1435_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value339 value1 value2 = (output415, value340, value1))
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value340 value1 value2 = (output1434, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1435 value339 value1 value2 = (output1435, value780, value1) := by
  rw [input1435_def, output1435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  try dsimp only
  rw [child1434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output415_skip, output1434_skip]
  kernel_rfl

theorem node1436_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value338 value1 value2 = (output414, value339, value1))
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value339 value1 value2 = (output1435, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1436 value338 value1 value2 = (output1436, value780, value1) := by
  rw [input1436_def, output1436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child1435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output1435_skip]
  kernel_rfl

theorem node1437_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value337 value1 value2 = (output413, value338, value1))
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value338 value1 value2 = (output1436, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1437 value337 value1 value2 = (output1437, value780, value1) := by
  rw [input1437_def, output1437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  try dsimp only
  rw [child1436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output1436_skip]
  kernel_rfl

theorem node1438_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value334 value1 value2 = (output412, value337, value1))
    (child1437 : Flapjack.WordAlloc.removeDeadStructural input1437 value337 value1 value2 = (output1437, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1438 value334 value1 value2 = (output1438, value780, value1) := by
  rw [input1438_def, output1438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child1437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output1437_skip]
  kernel_rfl

theorem node1439_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value334 value1 value2 = (output407, value334, value1))
    (child1438 : Flapjack.WordAlloc.removeDeadStructural input1438 value334 value1 value2 = (output1438, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1439 value334 value1 value2 = (output1439, value780, value1) := by
  rw [input1439_def, output1439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child1438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output1438_skip]
  kernel_rfl

theorem node1440_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value333 value1 value2 = (output406, value334, value1))
    (child1439 : Flapjack.WordAlloc.removeDeadStructural input1439 value334 value1 value2 = (output1439, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1440 value333 value1 value2 = (output1440, value780, value1) := by
  rw [input1440_def, output1440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child1439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output1439_skip]
  kernel_rfl

theorem node1441_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value332 value1 value2 = (output405, value333, value1))
    (child1440 : Flapjack.WordAlloc.removeDeadStructural input1440 value333 value1 value2 = (output1440, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1441 value332 value1 value2 = (output1441, value780, value1) := by
  rw [input1441_def, output1441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child1440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output1440_skip]
  kernel_rfl

theorem node1442_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value331 value1 value2 = (output404, value332, value1))
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value332 value1 value2 = (output1441, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1442 value331 value1 value2 = (output1442, value780, value1) := by
  rw [input1442_def, output1442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child1441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output1441_skip]
  kernel_rfl

theorem node1443_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value330 value1 value2 = (output403, value331, value1))
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value331 value1 value2 = (output1442, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1443 value330 value1 value2 = (output1443, value780, value1) := by
  rw [input1443_def, output1443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child1442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output1442_skip]
  kernel_rfl

theorem node1444_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value329 value1 value2 = (output402, value330, value1))
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value330 value1 value2 = (output1443, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1444 value329 value1 value2 = (output1444, value780, value1) := by
  rw [input1444_def, output1444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child1443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output1443_skip]
  kernel_rfl

theorem node1445_cond_eq
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value328 value1 value2 = (output401, value329, value1))
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value329 value1 value2 = (output1444, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1445 value328 value1 value2 = (output1445, value780, value1) := by
  rw [input1445_def, output1445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child401]
  try dsimp only
  rw [child1444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output401_skip, output1444_skip]
  kernel_rfl

theorem node1446_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value327 value1 value2 = (output400, value328, value1))
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value328 value1 value2 = (output1445, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1446 value327 value1 value2 = (output1446, value780, value1) := by
  rw [input1446_def, output1446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child1445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output1445_skip]
  kernel_rfl

theorem node1447_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value326 value1 value2 = (output399, value327, value1))
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value327 value1 value2 = (output1446, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1447 value326 value1 value2 = (output1447, value780, value1) := by
  rw [input1447_def, output1447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child1446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output1446_skip]
  kernel_rfl

theorem node1448_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value325 value1 value2 = (output398, value326, value1))
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value326 value1 value2 = (output1447, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1448 value325 value1 value2 = (output1448, value780, value1) := by
  rw [input1448_def, output1448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child1447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output1447_skip]
  kernel_rfl

theorem node1449_cond_eq
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value324 value1 value2 = (output397, value325, value1))
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value325 value1 value2 = (output1448, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1449 value324 value1 value2 = (output1449, value780, value1) := by
  rw [input1449_def, output1449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child397]
  try dsimp only
  rw [child1448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output397_skip, output1448_skip]
  kernel_rfl

theorem node1450_cond_eq
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value323 value1 value2 = (output396, value324, value1))
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value324 value1 value2 = (output1449, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1450 value323 value1 value2 = (output1450, value780, value1) := by
  rw [input1450_def, output1450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child396]
  try dsimp only
  rw [child1449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output396_skip, output1449_skip]
  kernel_rfl

theorem node1451_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value322 value1 value2 = (output395, value323, value1))
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value323 value1 value2 = (output1450, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1451 value322 value1 value2 = (output1451, value780, value1) := by
  rw [input1451_def, output1451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child1450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output1450_skip]
  kernel_rfl

theorem node1452_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value319 value1 value2 = (output394, value322, value1))
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value322 value1 value2 = (output1451, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1452 value319 value1 value2 = (output1452, value780, value1) := by
  rw [input1452_def, output1452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child1451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output1451_skip]
  kernel_rfl

theorem node1453_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value319 value1 value2 = (output389, value319, value1))
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value319 value1 value2 = (output1452, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1453 value319 value1 value2 = (output1453, value780, value1) := by
  rw [input1453_def, output1453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  try dsimp only
  rw [child1452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output389_skip, output1452_skip]
  kernel_rfl

theorem node1454_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value318 value1 value2 = (output388, value319, value1))
    (child1453 : Flapjack.WordAlloc.removeDeadStructural input1453 value319 value1 value2 = (output1453, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1454 value318 value1 value2 = (output1454, value780, value1) := by
  rw [input1454_def, output1454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child1453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output1453_skip]
  kernel_rfl

theorem node1455_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value317 value1 value2 = (output387, value318, value1))
    (child1454 : Flapjack.WordAlloc.removeDeadStructural input1454 value318 value1 value2 = (output1454, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1455 value317 value1 value2 = (output1455, value780, value1) := by
  rw [input1455_def, output1455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child1454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output1454_skip]
  kernel_rfl

theorem node1456_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value316 value1 value2 = (output386, value317, value1))
    (child1455 : Flapjack.WordAlloc.removeDeadStructural input1455 value317 value1 value2 = (output1455, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1456 value316 value1 value2 = (output1456, value780, value1) := by
  rw [input1456_def, output1456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child1455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output1455_skip]
  kernel_rfl

theorem node1457_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value315 value1 value2 = (output385, value316, value1))
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value316 value1 value2 = (output1456, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1457 value315 value1 value2 = (output1457, value780, value1) := by
  rw [input1457_def, output1457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child1456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output1456_skip]
  kernel_rfl

theorem node1458_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value314 value1 value2 = (output384, value315, value1))
    (child1457 : Flapjack.WordAlloc.removeDeadStructural input1457 value315 value1 value2 = (output1457, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1458 value314 value1 value2 = (output1458, value780, value1) := by
  rw [input1458_def, output1458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child1457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output1457_skip]
  kernel_rfl

theorem node1459_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value313 value1 value2 = (output383, value314, value1))
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value314 value1 value2 = (output1458, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1459 value313 value1 value2 = (output1459, value780, value1) := by
  rw [input1459_def, output1459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child1458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output1458_skip]
  kernel_rfl

theorem node1460_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value310 value1 value2 = (output382, value313, value1))
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value313 value1 value2 = (output1459, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1460 value310 value1 value2 = (output1460, value780, value1) := by
  rw [input1460_def, output1460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child1459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output1459_skip]
  kernel_rfl

theorem node1461_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value310 value1 value2 = (output377, value310, value1))
    (child1460 : Flapjack.WordAlloc.removeDeadStructural input1460 value310 value1 value2 = (output1460, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1461 value310 value1 value2 = (output1461, value780, value1) := by
  rw [input1461_def, output1461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child1460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output1460_skip]
  kernel_rfl

theorem node1462_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value309 value1 value2 = (output376, value310, value1))
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value310 value1 value2 = (output1461, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1462 value309 value1 value2 = (output1462, value780, value1) := by
  rw [input1462_def, output1462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child1461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output1461_skip]
  kernel_rfl

theorem node1463_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value308 value1 value2 = (output375, value309, value1))
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value309 value1 value2 = (output1462, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1463 value308 value1 value2 = (output1463, value780, value1) := by
  rw [input1463_def, output1463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child1462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output1462_skip]
  kernel_rfl

theorem node1464_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value307 value1 value2 = (output374, value308, value1))
    (child1463 : Flapjack.WordAlloc.removeDeadStructural input1463 value308 value1 value2 = (output1463, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1464 value307 value1 value2 = (output1464, value780, value1) := by
  rw [input1464_def, output1464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child1463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output1463_skip]
  kernel_rfl

theorem node1465_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value306 value1 value2 = (output373, value307, value1))
    (child1464 : Flapjack.WordAlloc.removeDeadStructural input1464 value307 value1 value2 = (output1464, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1465 value306 value1 value2 = (output1465, value780, value1) := by
  rw [input1465_def, output1465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child1464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output1464_skip]
  kernel_rfl

theorem node1466_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value305 value1 value2 = (output372, value306, value1))
    (child1465 : Flapjack.WordAlloc.removeDeadStructural input1465 value306 value1 value2 = (output1465, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1466 value305 value1 value2 = (output1466, value780, value1) := by
  rw [input1466_def, output1466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child1465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output1465_skip]
  kernel_rfl

theorem node1467_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value304 value1 value2 = (output371, value305, value1))
    (child1466 : Flapjack.WordAlloc.removeDeadStructural input1466 value305 value1 value2 = (output1466, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1467 value304 value1 value2 = (output1467, value780, value1) := by
  rw [input1467_def, output1467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child1466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output1466_skip]
  kernel_rfl

theorem node1468_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value303 value1 value2 = (output370, value304, value1))
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value304 value1 value2 = (output1467, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1468 value303 value1 value2 = (output1468, value780, value1) := by
  rw [input1468_def, output1468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child1467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output1467_skip]
  kernel_rfl

theorem node1469_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value302 value1 value2 = (output369, value303, value1))
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value303 value1 value2 = (output1468, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1469 value302 value1 value2 = (output1469, value780, value1) := by
  rw [input1469_def, output1469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child1468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output1468_skip]
  kernel_rfl

theorem node1470_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value301 value1 value2 = (output368, value302, value1))
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value302 value1 value2 = (output1469, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1470 value301 value1 value2 = (output1470, value780, value1) := by
  rw [input1470_def, output1470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child1469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output1469_skip]
  kernel_rfl

theorem node1471_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value300 value1 value2 = (output367, value301, value1))
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value301 value1 value2 = (output1470, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1471 value300 value1 value2 = (output1471, value780, value1) := by
  rw [input1471_def, output1471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child1470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output1470_skip]
  kernel_rfl

theorem node1472_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value299 value1 value2 = (output366, value300, value1))
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value300 value1 value2 = (output1471, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1472 value299 value1 value2 = (output1472, value780, value1) := by
  rw [input1472_def, output1472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child1471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output1471_skip]
  kernel_rfl

theorem node1473_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value298 value1 value2 = (output365, value299, value1))
    (child1472 : Flapjack.WordAlloc.removeDeadStructural input1472 value299 value1 value2 = (output1472, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1473 value298 value1 value2 = (output1473, value780, value1) := by
  rw [input1473_def, output1473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child1472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output1472_skip]
  kernel_rfl

theorem node1474_cond_eq
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value295 value1 value2 = (output364, value298, value1))
    (child1473 : Flapjack.WordAlloc.removeDeadStructural input1473 value298 value1 value2 = (output1473, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1474 value295 value1 value2 = (output1474, value780, value1) := by
  rw [input1474_def, output1474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child364]
  try dsimp only
  rw [child1473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output364_skip, output1473_skip]
  kernel_rfl

theorem node1475_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value295 value1 value2 = (output359, value295, value1))
    (child1474 : Flapjack.WordAlloc.removeDeadStructural input1474 value295 value1 value2 = (output1474, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1475 value295 value1 value2 = (output1475, value780, value1) := by
  rw [input1475_def, output1475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child1474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output1474_skip]
  kernel_rfl

theorem node1476_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value294 value1 value2 = (output358, value295, value1))
    (child1475 : Flapjack.WordAlloc.removeDeadStructural input1475 value295 value1 value2 = (output1475, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1476 value294 value1 value2 = (output1476, value780, value1) := by
  rw [input1476_def, output1476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child1475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output1475_skip]
  kernel_rfl

theorem node1477_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value293 value1 value2 = (output357, value294, value1))
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value294 value1 value2 = (output1476, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1477 value293 value1 value2 = (output1477, value780, value1) := by
  rw [input1477_def, output1477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child1476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output1476_skip]
  kernel_rfl

theorem node1478_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value292 value1 value2 = (output356, value293, value1))
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value293 value1 value2 = (output1477, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1478 value292 value1 value2 = (output1478, value780, value1) := by
  rw [input1478_def, output1478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child1477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output1477_skip]
  kernel_rfl

theorem node1479_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value291 value1 value2 = (output355, value292, value1))
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value292 value1 value2 = (output1478, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1479 value291 value1 value2 = (output1479, value780, value1) := by
  rw [input1479_def, output1479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child1478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output1478_skip]
  kernel_rfl

theorem node1480_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value290 value1 value2 = (output354, value291, value1))
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value291 value1 value2 = (output1479, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1480 value290 value1 value2 = (output1480, value780, value1) := by
  rw [input1480_def, output1480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child1479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output1479_skip]
  kernel_rfl

theorem node1481_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value289 value1 value2 = (output353, value290, value1))
    (child1480 : Flapjack.WordAlloc.removeDeadStructural input1480 value290 value1 value2 = (output1480, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1481 value289 value1 value2 = (output1481, value780, value1) := by
  rw [input1481_def, output1481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child1480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output1480_skip]
  kernel_rfl

theorem node1482_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value286 value1 value2 = (output352, value289, value1))
    (child1481 : Flapjack.WordAlloc.removeDeadStructural input1481 value289 value1 value2 = (output1481, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1482 value286 value1 value2 = (output1482, value780, value1) := by
  rw [input1482_def, output1482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child1481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output1481_skip]
  kernel_rfl

theorem node1483_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value286 value1 value2 = (output347, value286, value1))
    (child1482 : Flapjack.WordAlloc.removeDeadStructural input1482 value286 value1 value2 = (output1482, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1483 value286 value1 value2 = (output1483, value780, value1) := by
  rw [input1483_def, output1483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child1482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output1482_skip]
  kernel_rfl

theorem node1484_cond_eq
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value285 value1 value2 = (output346, value286, value1))
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value286 value1 value2 = (output1483, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1484 value285 value1 value2 = (output1484, value780, value1) := by
  rw [input1484_def, output1484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child346]
  try dsimp only
  rw [child1483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output346_skip, output1483_skip]
  kernel_rfl

theorem node1485_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value284 value1 value2 = (output345, value285, value1))
    (child1484 : Flapjack.WordAlloc.removeDeadStructural input1484 value285 value1 value2 = (output1484, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1485 value284 value1 value2 = (output1485, value780, value1) := by
  rw [input1485_def, output1485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child1484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output1484_skip]
  kernel_rfl

theorem node1486_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value283 value1 value2 = (output344, value284, value1))
    (child1485 : Flapjack.WordAlloc.removeDeadStructural input1485 value284 value1 value2 = (output1485, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1486 value283 value1 value2 = (output1486, value780, value1) := by
  rw [input1486_def, output1486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child1485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output1485_skip]
  kernel_rfl

theorem node1487_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value282 value1 value2 = (output343, value283, value1))
    (child1486 : Flapjack.WordAlloc.removeDeadStructural input1486 value283 value1 value2 = (output1486, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1487 value282 value1 value2 = (output1487, value780, value1) := by
  rw [input1487_def, output1487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child1486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output1486_skip]
  kernel_rfl

theorem node1488_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value281 value1 value2 = (output342, value282, value1))
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value282 value1 value2 = (output1487, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1488 value281 value1 value2 = (output1488, value780, value1) := by
  rw [input1488_def, output1488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child1487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output1487_skip]
  kernel_rfl

theorem node1489_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value280 value1 value2 = (output341, value281, value1))
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value281 value1 value2 = (output1488, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1489 value280 value1 value2 = (output1489, value780, value1) := by
  rw [input1489_def, output1489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child1488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output1488_skip]
  kernel_rfl

theorem node1490_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value279 value1 value2 = (output340, value280, value1))
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value280 value1 value2 = (output1489, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1490 value279 value1 value2 = (output1490, value780, value1) := by
  rw [input1490_def, output1490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child1489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output1489_skip]
  kernel_rfl

theorem node1491_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value278 value1 value2 = (output339, value279, value1))
    (child1490 : Flapjack.WordAlloc.removeDeadStructural input1490 value279 value1 value2 = (output1490, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1491 value278 value1 value2 = (output1491, value780, value1) := by
  rw [input1491_def, output1491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child1490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output1490_skip]
  kernel_rfl

theorem node1492_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value277 value1 value2 = (output338, value278, value1))
    (child1491 : Flapjack.WordAlloc.removeDeadStructural input1491 value278 value1 value2 = (output1491, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1492 value277 value1 value2 = (output1492, value780, value1) := by
  rw [input1492_def, output1492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child1491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output1491_skip]
  kernel_rfl

theorem node1493_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value276 value1 value2 = (output337, value277, value1))
    (child1492 : Flapjack.WordAlloc.removeDeadStructural input1492 value277 value1 value2 = (output1492, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1493 value276 value1 value2 = (output1493, value780, value1) := by
  rw [input1493_def, output1493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child1492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output1492_skip]
  kernel_rfl

theorem node1494_cond_eq
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value275 value1 value2 = (output336, value276, value1))
    (child1493 : Flapjack.WordAlloc.removeDeadStructural input1493 value276 value1 value2 = (output1493, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1494 value275 value1 value2 = (output1494, value780, value1) := by
  rw [input1494_def, output1494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child336]
  try dsimp only
  rw [child1493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output336_skip, output1493_skip]
  kernel_rfl

theorem node1495_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value274 value1 value2 = (output335, value275, value1))
    (child1494 : Flapjack.WordAlloc.removeDeadStructural input1494 value275 value1 value2 = (output1494, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1495 value274 value1 value2 = (output1495, value780, value1) := by
  rw [input1495_def, output1495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child1494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output1494_skip]
  kernel_rfl

theorem node1496_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value271 value1 value2 = (output334, value274, value1))
    (child1495 : Flapjack.WordAlloc.removeDeadStructural input1495 value274 value1 value2 = (output1495, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1496 value271 value1 value2 = (output1496, value780, value1) := by
  rw [input1496_def, output1496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child1495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output1495_skip]
  kernel_rfl

theorem node1497_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value271 value1 value2 = (output329, value271, value1))
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value271 value1 value2 = (output1496, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1497 value271 value1 value2 = (output1497, value780, value1) := by
  rw [input1497_def, output1497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child1496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output1496_skip]
  kernel_rfl

theorem node1498_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value270 value1 value2 = (output328, value271, value1))
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value271 value1 value2 = (output1497, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1498 value270 value1 value2 = (output1498, value780, value1) := by
  rw [input1498_def, output1498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child1497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output1497_skip]
  kernel_rfl

theorem node1499_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value269 value1 value2 = (output327, value270, value1))
    (child1498 : Flapjack.WordAlloc.removeDeadStructural input1498 value270 value1 value2 = (output1498, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1499 value269 value1 value2 = (output1499, value780, value1) := by
  rw [input1499_def, output1499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child1498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output1498_skip]
  kernel_rfl

theorem node1500_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value268 value1 value2 = (output326, value269, value1))
    (child1499 : Flapjack.WordAlloc.removeDeadStructural input1499 value269 value1 value2 = (output1499, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1500 value268 value1 value2 = (output1500, value780, value1) := by
  rw [input1500_def, output1500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child1499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output1499_skip]
  kernel_rfl

theorem node1501_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value267 value1 value2 = (output325, value268, value1))
    (child1500 : Flapjack.WordAlloc.removeDeadStructural input1500 value268 value1 value2 = (output1500, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1501 value267 value1 value2 = (output1501, value780, value1) := by
  rw [input1501_def, output1501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child1500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output1500_skip]
  kernel_rfl

theorem node1502_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value266 value1 value2 = (output324, value267, value1))
    (child1501 : Flapjack.WordAlloc.removeDeadStructural input1501 value267 value1 value2 = (output1501, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1502 value266 value1 value2 = (output1502, value780, value1) := by
  rw [input1502_def, output1502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child1501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output1501_skip]
  kernel_rfl

theorem node1503_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value265 value1 value2 = (output323, value266, value1))
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value266 value1 value2 = (output1502, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1503 value265 value1 value2 = (output1503, value780, value1) := by
  rw [input1503_def, output1503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child1502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output1502_skip]
  kernel_rfl

theorem node1504_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value264 value1 value2 = (output322, value265, value1))
    (child1503 : Flapjack.WordAlloc.removeDeadStructural input1503 value265 value1 value2 = (output1503, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1504 value264 value1 value2 = (output1504, value780, value1) := by
  rw [input1504_def, output1504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child1503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output1503_skip]
  kernel_rfl

theorem node1505_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value263 value1 value2 = (output321, value264, value1))
    (child1504 : Flapjack.WordAlloc.removeDeadStructural input1504 value264 value1 value2 = (output1504, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1505 value263 value1 value2 = (output1505, value780, value1) := by
  rw [input1505_def, output1505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child1504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output1504_skip]
  kernel_rfl

theorem node1506_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value262 value1 value2 = (output320, value263, value1))
    (child1505 : Flapjack.WordAlloc.removeDeadStructural input1505 value263 value1 value2 = (output1505, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1506 value262 value1 value2 = (output1506, value780, value1) := by
  rw [input1506_def, output1506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child1505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output1505_skip]
  kernel_rfl

theorem node1507_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value261 value1 value2 = (output319, value262, value1))
    (child1506 : Flapjack.WordAlloc.removeDeadStructural input1506 value262 value1 value2 = (output1506, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1507 value261 value1 value2 = (output1507, value780, value1) := by
  rw [input1507_def, output1507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child1506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output1506_skip]
  kernel_rfl

theorem node1508_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value260 value1 value2 = (output318, value261, value1))
    (child1507 : Flapjack.WordAlloc.removeDeadStructural input1507 value261 value1 value2 = (output1507, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1508 value260 value1 value2 = (output1508, value780, value1) := by
  rw [input1508_def, output1508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  try dsimp only
  rw [child1507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output1507_skip]
  kernel_rfl

theorem node1509_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value259 value1 value2 = (output317, value260, value1))
    (child1508 : Flapjack.WordAlloc.removeDeadStructural input1508 value260 value1 value2 = (output1508, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1509 value259 value1 value2 = (output1509, value780, value1) := by
  rw [input1509_def, output1509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  try dsimp only
  rw [child1508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output1508_skip]
  kernel_rfl

theorem node1510_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value256 value1 value2 = (output316, value259, value1))
    (child1509 : Flapjack.WordAlloc.removeDeadStructural input1509 value259 value1 value2 = (output1509, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1510 value256 value1 value2 = (output1510, value780, value1) := by
  rw [input1510_def, output1510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child1509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output1509_skip]
  kernel_rfl

theorem node1511_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value256 value1 value2 = (output311, value256, value1))
    (child1510 : Flapjack.WordAlloc.removeDeadStructural input1510 value256 value1 value2 = (output1510, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1511 value256 value1 value2 = (output1511, value780, value1) := by
  rw [input1511_def, output1511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child1510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output1510_skip]
  kernel_rfl

theorem node1512_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value255 value1 value2 = (output310, value256, value1))
    (child1511 : Flapjack.WordAlloc.removeDeadStructural input1511 value256 value1 value2 = (output1511, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1512 value255 value1 value2 = (output1512, value780, value1) := by
  rw [input1512_def, output1512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child1511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output1511_skip]
  kernel_rfl

theorem node1513_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value254 value1 value2 = (output309, value255, value1))
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value255 value1 value2 = (output1512, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1513 value254 value1 value2 = (output1513, value780, value1) := by
  rw [input1513_def, output1513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child1512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output1512_skip]
  kernel_rfl

theorem node1514_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value253 value1 value2 = (output308, value254, value1))
    (child1513 : Flapjack.WordAlloc.removeDeadStructural input1513 value254 value1 value2 = (output1513, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1514 value253 value1 value2 = (output1514, value780, value1) := by
  rw [input1514_def, output1514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child1513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output1513_skip]
  kernel_rfl

theorem node1515_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value252 value1 value2 = (output307, value253, value1))
    (child1514 : Flapjack.WordAlloc.removeDeadStructural input1514 value253 value1 value2 = (output1514, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1515 value252 value1 value2 = (output1515, value780, value1) := by
  rw [input1515_def, output1515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  try dsimp only
  rw [child1514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output307_skip, output1514_skip]
  kernel_rfl

theorem node1516_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value251 value1 value2 = (output306, value252, value1))
    (child1515 : Flapjack.WordAlloc.removeDeadStructural input1515 value252 value1 value2 = (output1515, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1516 value251 value1 value2 = (output1516, value780, value1) := by
  rw [input1516_def, output1516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child1515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output1515_skip]
  kernel_rfl

theorem node1517_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value250 value1 value2 = (output305, value251, value1))
    (child1516 : Flapjack.WordAlloc.removeDeadStructural input1516 value251 value1 value2 = (output1516, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1517 value250 value1 value2 = (output1517, value780, value1) := by
  rw [input1517_def, output1517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child1516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output1516_skip]
  kernel_rfl

theorem node1518_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value249 value1 value2 = (output304, value250, value1))
    (child1517 : Flapjack.WordAlloc.removeDeadStructural input1517 value250 value1 value2 = (output1517, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1518 value249 value1 value2 = (output1518, value780, value1) := by
  rw [input1518_def, output1518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child1517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output1517_skip]
  kernel_rfl

theorem node1519_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value248 value1 value2 = (output303, value249, value1))
    (child1518 : Flapjack.WordAlloc.removeDeadStructural input1518 value249 value1 value2 = (output1518, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1519 value248 value1 value2 = (output1519, value780, value1) := by
  rw [input1519_def, output1519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child1518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output1518_skip]
  kernel_rfl

theorem node1520_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value247 value1 value2 = (output302, value248, value1))
    (child1519 : Flapjack.WordAlloc.removeDeadStructural input1519 value248 value1 value2 = (output1519, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1520 value247 value1 value2 = (output1520, value780, value1) := by
  rw [input1520_def, output1520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child1519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output1519_skip]
  kernel_rfl

theorem node1521_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value246 value1 value2 = (output301, value247, value1))
    (child1520 : Flapjack.WordAlloc.removeDeadStructural input1520 value247 value1 value2 = (output1520, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1521 value246 value1 value2 = (output1521, value780, value1) := by
  rw [input1521_def, output1521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child1520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output1520_skip]
  kernel_rfl

theorem node1522_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value245 value1 value2 = (output300, value246, value1))
    (child1521 : Flapjack.WordAlloc.removeDeadStructural input1521 value246 value1 value2 = (output1521, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1522 value245 value1 value2 = (output1522, value780, value1) := by
  rw [input1522_def, output1522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child1521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output1521_skip]
  kernel_rfl

theorem node1523_cond_eq
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value244 value1 value2 = (output299, value245, value1))
    (child1522 : Flapjack.WordAlloc.removeDeadStructural input1522 value245 value1 value2 = (output1522, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1523 value244 value1 value2 = (output1523, value780, value1) := by
  rw [input1523_def, output1523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child299]
  try dsimp only
  rw [child1522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output299_skip, output1522_skip]
  kernel_rfl

theorem node1524_cond_eq
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value241 value1 value2 = (output298, value244, value1))
    (child1523 : Flapjack.WordAlloc.removeDeadStructural input1523 value244 value1 value2 = (output1523, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1524 value241 value1 value2 = (output1524, value780, value1) := by
  rw [input1524_def, output1524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child298]
  try dsimp only
  rw [child1523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output298_skip, output1523_skip]
  kernel_rfl

theorem node1525_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value241 value1 value2 = (output293, value241, value1))
    (child1524 : Flapjack.WordAlloc.removeDeadStructural input1524 value241 value1 value2 = (output1524, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1525 value241 value1 value2 = (output1525, value780, value1) := by
  rw [input1525_def, output1525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child1524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output1524_skip]
  kernel_rfl

theorem node1526_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value240 value1 value2 = (output292, value241, value1))
    (child1525 : Flapjack.WordAlloc.removeDeadStructural input1525 value241 value1 value2 = (output1525, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1526 value240 value1 value2 = (output1526, value780, value1) := by
  rw [input1526_def, output1526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child1525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output1525_skip]
  kernel_rfl

theorem node1527_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value239 value1 value2 = (output291, value240, value1))
    (child1526 : Flapjack.WordAlloc.removeDeadStructural input1526 value240 value1 value2 = (output1526, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1527 value239 value1 value2 = (output1527, value780, value1) := by
  rw [input1527_def, output1527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child1526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output1526_skip]
  kernel_rfl

theorem node1528_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value238 value1 value2 = (output290, value239, value1))
    (child1527 : Flapjack.WordAlloc.removeDeadStructural input1527 value239 value1 value2 = (output1527, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1528 value238 value1 value2 = (output1528, value780, value1) := by
  rw [input1528_def, output1528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child1527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output1527_skip]
  kernel_rfl

theorem node1529_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value237 value1 value2 = (output289, value238, value1))
    (child1528 : Flapjack.WordAlloc.removeDeadStructural input1528 value238 value1 value2 = (output1528, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1529 value237 value1 value2 = (output1529, value780, value1) := by
  rw [input1529_def, output1529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child1528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output1528_skip]
  kernel_rfl

theorem node1530_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value236 value1 value2 = (output288, value237, value1))
    (child1529 : Flapjack.WordAlloc.removeDeadStructural input1529 value237 value1 value2 = (output1529, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1530 value236 value1 value2 = (output1530, value780, value1) := by
  rw [input1530_def, output1530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child1529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output1529_skip]
  kernel_rfl

theorem node1531_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value235 value1 value2 = (output287, value236, value1))
    (child1530 : Flapjack.WordAlloc.removeDeadStructural input1530 value236 value1 value2 = (output1530, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1531 value235 value1 value2 = (output1531, value780, value1) := by
  rw [input1531_def, output1531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child1530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output1530_skip]
  kernel_rfl

theorem node1532_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value234 value1 value2 = (output286, value235, value1))
    (child1531 : Flapjack.WordAlloc.removeDeadStructural input1531 value235 value1 value2 = (output1531, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1532 value234 value1 value2 = (output1532, value780, value1) := by
  rw [input1532_def, output1532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child1531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output1531_skip]
  kernel_rfl

theorem node1533_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value233 value1 value2 = (output285, value234, value1))
    (child1532 : Flapjack.WordAlloc.removeDeadStructural input1532 value234 value1 value2 = (output1532, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1533 value233 value1 value2 = (output1533, value780, value1) := by
  rw [input1533_def, output1533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  try dsimp only
  rw [child1532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output285_skip, output1532_skip]
  kernel_rfl

theorem node1534_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value232 value1 value2 = (output284, value233, value1))
    (child1533 : Flapjack.WordAlloc.removeDeadStructural input1533 value233 value1 value2 = (output1533, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1534 value232 value1 value2 = (output1534, value780, value1) := by
  rw [input1534_def, output1534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child1533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output1533_skip]
  kernel_rfl

theorem node1535_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value231 value1 value2 = (output283, value232, value1))
    (child1534 : Flapjack.WordAlloc.removeDeadStructural input1534 value232 value1 value2 = (output1534, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input1535 value231 value1 value2 = (output1535, value780, value1) := by
  rw [input1535_def, output1535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child1534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output1534_skip]
  kernel_rfl

#print axioms node1535_cond_eq
end InitECandidate.Proofs.DeadStages782.Parallel
